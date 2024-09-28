package com.babybloom.controller;

import java.lang.System.Logger;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.Base64;
import java.util.Properties;
import java.util.Random;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.babybloom.entities.Customers;
import com.babybloom.repository.AccountRepository;

import jakarta.mail.Authenticator;
import jakarta.mail.Message;
import jakarta.mail.MessagingException;
import jakarta.mail.PasswordAuthentication;
import jakarta.mail.Session;
import jakarta.mail.Transport;
import jakarta.mail.internet.InternetAddress;
import jakarta.mail.internet.MimeMessage;

@Controller

public class AuthController {
	@Autowired
	AccountRepository accountRepository;

	@GetMapping("/login")
	public String loginPage() {
		return "jsp/login-page";
	}

	@PostMapping("/login")
	public String login(@RequestParam(value = "email", defaultValue = "") String email,
			@RequestParam(value = "phone", defaultValue = "") String phoneNumber,
			@RequestParam("password") String password, Model model) {
		Base64.Encoder encoder = Base64.getEncoder();
		String encodePass = encoder.encodeToString(password.getBytes());
		if (!email.isBlank()) {
			Customers customers = accountRepository.findAccountByEmail(email);
			if (customers != null) {
				if (customers.getPassword().trim().equalsIgnoreCase(encodePass.trim())) {
					System.out.println("Login successfully: " + customers);
					return "jsp/index";
				} else {
					System.out.println("Login failed: " + customers);
					return "jsp/login-page";
				}
			} else {
				return "jsp/login-page";
			}
		} else {
			Customers customers = accountRepository.findCustomersByPhoneNumber(phoneNumber);
			if (customers != null) {
				if (customers.getPassword().trim().equalsIgnoreCase(encodePass.trim())) {
					System.out.println("Login successfully: " + customers);
					return "jsp/index";
				} else {
					System.out.println("Login falied!: ");
					return "jsp/login-page";
				}
			} else {
				return "jsp/login-page";
			}
		}

	}

	@GetMapping("/register")
	public String registerPage() {
		return "jsp/register-page";
	}

	@PostMapping("/register")
	public String register(@RequestParam("username") String username, @RequestParam("email") String email,
			@RequestParam("password") String password, @RequestParam("password_confirmation") String confirmPassword,
			@RequestParam("phone") String phone, Model model, HttpServletRequest request) {
		boolean nameNull = isNull(username);
		boolean phoneNull = isNull(username);
		boolean emailNull = isNull(email);
		boolean passNull = isNull(password);
		boolean pass2Null = isNull(confirmPassword);
		boolean nameValid = isValidUsername(username);
		boolean emailValid = isValidEmail(email);
		boolean passValid = isValidPassword(password);
		boolean pass2Valid = true;
		boolean nameAdmin = isAdmin(username);
		boolean phoneValid = isValidPhoneNumber(phone);
		if (nameNull) {
			if (nameValid) {
				if (nameAdmin) {

					if (accountRepository.findAccountByUsername(username.trim()) != null) {

						model.addAttribute("tbTk", "Tài khoản đã tồn tại");

					}

				} else {
					model.addAttribute("tbTk", "Vui lòng nhập tài khoản không chứa từ đặc biệt");

				}
			} else {
				model.addAttribute("tbTk", "Vui lòng nhập tài khoản từ 6 đến 16 kí tự");

			}
		} else {
			model.addAttribute("tbTk", "Vui lòng nhập tài khoản");

		}
//    ------------------------------------------
		if (emailNull) {
			if (emailValid) {
				try {
					if (accountRepository.findAccountByEmail(email) != null) {

						model.addAttribute("tbEmail", "Email đã tồn tại");
					}
				} catch (Exception ex) {
					ex.printStackTrace();
					return "jsp/register";
				}
			} else {
				model.addAttribute("tbEmail", "Vui lòng nhập đúng định dạng Email");

			}
		} else {
			model.addAttribute("tbEmail", "Vui lòng nhập Email");

		}
//    ------------------------------------------
		if (phoneNull) {
			if (phoneValid) {
				try {
					if (accountRepository.findCustomersByPhoneNumber(phone) != null) {

						model.addAttribute("tbEmail", "Số điện thoại đã tồn tại");
					}
				} catch (Exception ex) {
					ex.printStackTrace();
					return "jsp/register";
				}
			} else {
				model.addAttribute("tbEmail", "Vui lòng nhập đúng định dạng số điện thoại");

			}
		} else {
			model.addAttribute("tbEmail", "Vui lòng nhập số điện thoại");

		}
//    ------------------------------------------
		if (passNull) {
			if (!passValid) {
				model.addAttribute("tbPass", "Vui lòng nhập mật khẩu có chữ và số, có từ 8 đến 24 kí tự");
			}
		} else {
			model.addAttribute("tbPass", "Vui lòng nhập mật khẩu");
		}
//    ------------------------------------------
		if (pass2Null) {
			if (!confirmPassword.equalsIgnoreCase(password)) {
				model.addAttribute("tbPass2", "Mật khẩu không khớp");
				pass2Valid = false;
			} else {
				pass2Valid = true;
			}
		} else {
			model.addAttribute("tbPass2", "Vui lòng nhập lại mật khẩu");
		}
		try {
			// ------------------------------------------
			if (nameNull && nameValid && emailNull && emailValid && passNull && passValid && pass2Null && pass2Valid
					&& nameAdmin && accountRepository.findAccountByUsername(username) == null
					&& accountRepository.findAccountByEmail(email) == null) {
				try {
					RequestDispatcher dispatcher = null;
					int otpvalue = 0;
					HttpSession mySession = request.getSession();

					if (email != null || !email.equals("")) {
						// sending otp
						Random rand = new Random();
						otpvalue = rand.nextInt(1255650);

						String to = email;// change accordingly

						// Get the session object
						Properties props = new Properties();
						props.put("mail.smtp.host", "smtp.gmail.com");
						props.put("mail.smtp.socketFactory.port", "465");
						props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
						props.put("mail.smtp.auth", "true");
						props.put("mail.smtp.port", "465");
						Session session = Session.getDefaultInstance(props, new Authenticator() {
							@Override
							protected PasswordAuthentication getPasswordAuthentication() {
								return new PasswordAuthentication("anhhoangduc145@gmail.com", "zzttruhcmduedkyk");// Put
																													// your
																													// email
								// password here
							}
						});
						// compose message
						try {
							MimeMessage message = new MimeMessage(session);
							message.setFrom(new InternetAddress(email));// change accordingly
							message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
							message.setSubject("Mã OTP Xác Nhận Đăng Kí Tài Khoản Mới");
							message.setText("Chào bạn,\n" + "\n"
									+ "Cảm ơn bạn đã đăng ký tài khoản tại FastFood Store. Để hoàn tất quá trình đăng ký, vui lòng sử dụng mã OTP dưới đây:\n"
									+ "\n" + "Mã OTP của bạn là: " + otpvalue + "\n" + "\n"
									+ "Vui lòng nhập mã OTP này vào trang đăng ký để kích hoạt tài khoản của bạn. Xin lưu ý rằng mã OTP này sẽ hết hạn sau 100 giây.\n"
									+ "\n"
									+ "Nếu bạn không yêu cầu mã OTP này, vui lòng liên hệ với chúng tôi ngay để bảo vệ tài khoản của bạn.\n"
									+ "\n"
									+ "Nếu bạn cần hỗ trợ hoặc có bất kỳ câu hỏi nào, đừng ngần ngại liên hệ với chúng tôi qua địa chỉ email [babybloom@gmail.com] hoặc số điện thoại 086868686.\n"
									+ "\n" + "Trân trọng,\n" + "BabyBloom");
							// send message
							Transport.send(message);
							System.out.println("message sent successfully");
						} catch (MessagingException e) {
							throw new RuntimeException(e);
						}
						dispatcher = request.getRequestDispatcher("OtpNewAccount.jsp");
						request.setAttribute("message", "OTP is sent to your email");

						mySession.setAttribute("otp", otpvalue);
						mySession.setAttribute("email", email);

						return "jsp/otp-new-account";
					}

				} catch (Exception ex) {
					ex.printStackTrace();
					return "jsp/register-page";
				}

			} else {
				model.addAttribute("phone", phone);
				model.addAttribute("email", email);
				model.addAttribute("username", username);
				model.addAttribute("password", password);
				return "jsp/register-page";

			}
		} catch (Exception ex) {
			ex.printStackTrace();
			return "jsp/register-page";
		}
		return "jsp/register-page";
	}

	private boolean isNull(String text) {
		if (text.equals("")) {
			return false;
		} else {
			return true;
		}
	}

	// Hàm kiểm tra email hợp lệ
	private boolean isValidEmail(String email) {
		String regex = "^[A-Za-z0-9+_.-]+@(.+)$";
		Pattern pattern = Pattern.compile(regex);
		Matcher matcher = pattern.matcher(email);
		return matcher.matches() && email.endsWith("gmail.com");
	}

	// Hàm kiểm tra tài khoản hợp lệ
	private boolean isValidUsername(String username) {
		return username.length() >= 6 && username.length() <= 16;
	}

	// Hàm kiểm tra mật khẩu hợp lệ
	private boolean isValidPassword(String password) {
		String regex = "^(?=.*[A-Za-z])(?=.*\\d).{8,24}$";
		return password.matches(regex);
	}

	public static boolean isValidPhoneNumber(String phoneNumber) {
		// Check if the phone number matches the pattern
		Pattern pattern = Pattern.compile("^0\\d{9}$");
		Matcher matcher = pattern.matcher(phoneNumber);
		return matcher.matches();
	}

	private boolean isAdmin(String username) {
		if (username.contains("admin")) {
			return false;
		} else {
			return true;
		}
	}

	@PostMapping("/otp-validate")
	public String otpValidate(@RequestParam("otp") int otp, Model model,
			@RequestParam(value = "otp1", required = false, defaultValue = "0") int value,
			@RequestParam("username") String username, @RequestParam("password") String password,
			@RequestParam("email") String email, @RequestParam("phone") String phone) {
		if (otp != 0) {
			if (value == otp) {
				try {
					Customers account = new Customers();
					Base64.Encoder encoder = Base64.getEncoder();
					String encodePass = encoder.encodeToString(password.getBytes());

					String phoneNumber = phone;

					String nameString = "";
					String address = "";
					account.setPhoneNumber(phoneNumber);
					account.setName(username);
					account.setName(nameString);
					account.setAddress(address);
					account.setEmail(email);
					account.setPassword(encodePass);
					account.setPhoneNumber(phoneNumber);

					accountRepository.save(account);
					return "jsp/login-page";
				} catch (Exception ex) {
					ex.printStackTrace();
					return "jsp/otp-new-account";
				}
			} else {
				model.addAttribute("message", "Mã OTP sai !");
				return "jsp/otp-new-account";

			}
		} else {

			model.addAttribute("message", "Mã OTP đã hết hạn!");
			return "jsp/otp-new-account";
		}

	}

	@GetMapping("/forgot-password")
	public String forgotPass() {
		return "jsp/forgotPassword";
	}

	@PostMapping("/forgot-password")
	public String changePass(@RequestParam("email") String email, HttpServletRequest request, Model model) {

		Customers customer = new Customers();
		customer = accountRepository.findAccountByEmail(email);
		if (customer != null) {
			RequestDispatcher dispatcher = null;
			int otpvalue = 0;
			final HttpSession mySession = request.getSession();

			if (email != null || !email.equals("")) {
				// sending otp
				Random rand = new Random();
				otpvalue = rand.nextInt(1255650);

				String to = email;// change accordingly

				// Get the session object
				Properties props = new Properties();
				props.put("mail.smtp.auth", "true");
				props.put("mail.smtp.starttls.enable", "true");
				props.put("mail.smtp.host", "smtp.gmail.com");
				props.put("mail.smtp.port", "587");
				Session session = Session.getDefaultInstance(props, new Authenticator() {
					@Override
					protected PasswordAuthentication getPasswordAuthentication() {
						return new PasswordAuthentication("duchadev145@gmail.com", "visalfxbxsiokmot");// Put your email
						// password here
					}
				});
				// compose message
				try {
					MimeMessage message = new MimeMessage(session);
					message.setFrom(new InternetAddress(email));// change accordingly
					message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
					message.setSubject("Thông Tin Mã OTP Cho Quá Trình Thiết Lập Lại Mật Khẩu");
					message.setText("Chào bạn,\n" + "\n"
							+ "Chúng tôi nhận được yêu cầu thiết lập lại mật khẩu từ bạn. Để tiếp tục quá trình này, vui lòng sử dụng mã OTP dưới đây:\n"
							+ "\n" + "Mã OTP của bạn là: " + otpvalue + "\n" + "\n"
							+ "Vui lòng nhập mã OTP này vào trang thiết lập lại mật khẩu để tiếp tục quá trình thiết lập lại mật khẩu. Xin lưu ý rằng mã OTP này sẽ hết hạn sau 100 giây.\n"
							+ "\n"
							+ "Nếu bạn không yêu cầu thiết lập lại mật khẩu, vui lòng liên hệ với chúng tôi ngay để bảo vệ tài khoản của bạn.\n"
							+ "\n"
							+ "Nếu bạn cần hỗ trợ hoặc có bất kỳ câu hỏi nào, đừng ngần ngại liên hệ với chúng tôi qua địa chỉ email [420ent@gmail.com] hoặc số điện thoại 0868686868.\n"
							+ "\n" + "Trân trọng,\n" + "FastFood Store");
					// send message
					Transport.send(message);
					System.out.println("message sent successfully");
				} catch (MessagingException e) {
					System.out.println("Loi");
					throw new RuntimeException(e);
				}

				mySession.setAttribute("otp", otpvalue);
				mySession.setAttribute("email", email);

				model.addAttribute("message", "OTP is sent to your email");
				return "jsp/enterOtp";
			} else {

				model.addAttribute("message", "No email found!");
				return "jsp/forgotPassword";
			}

		} else {

			model.addAttribute("message", "No email found!");
			return "jsp/forgotPassword";
		}

	}

	@PostMapping("/new-password")
	public String newPassword(HttpServletRequest request, Model model, @RequestParam("password") String newPassword,
			@RequestParam("confPassword") String confPassword) {
		HttpSession session = request.getSession();
		
		Base64.Encoder encoder = Base64.getEncoder();
		
		String encodePass = encoder.encodeToString(newPassword.getBytes());
		RequestDispatcher dispatcher = null;
		if (newPassword != null && confPassword != null && newPassword.equals(confPassword)) {

			try {
				Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
				Connection con = DriverManager.getConnection(
						"jdbc:sqlserver://127.0.0.1:1433;DatabaseName=BabyBlom;encrypt=true;trustServerCertificate=true;",
						"sa", "admin");
				PreparedStatement pst = con.prepareStatement("update Customers set password = ? where  email   = ? ");
				pst.setString(1, encodePass);
				pst.setString(2, (String) session.getAttribute("email"));

				int rowCount = pst.executeUpdate();
				if (rowCount > 0) {
					request.setAttribute("status", "resetSuccess");
					model.addAttribute("status", "resetSuccess");
					return "jsp/login-page";
				} else {
					request.setAttribute("status", "resetFail");
					model.addAttribute("status", "resetSuccess");
					return "jsp/login-page";
				}

			} catch (Exception e) {
				
				e.printStackTrace();
				return "jsp/newPassword";
			}
		} else {
			return "jsp/newPassword";
		}
	}
	
	@PostMapping("/validate-otp")
	public String validateOtp(HttpServletRequest request, Model model )
	{
		  int value = (request.getParameter("otp1") != null) ? Integer.parseInt(request.getParameter("otp1")) : 0;

	        int otp = Integer.parseInt(request.getParameter("otp"));

	        RequestDispatcher dispatcher = null;

	        if (otp != 0) {
	            if (value == otp) {
	            	model.addAttribute("email", request.getParameter("email"));
	            	model.addAttribute("status", "success");
	               return "jsp/newPassword";
	               
	                

	            } else {
	            	model.addAttribute("message", "wrong otp");
	               return "jsp/otp-new-account";
	            }
	        } else {
	        	model.addAttribute("message", "otp expired!");
	               return "jsp/otp-new-account";
	        }
	}
}
