<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
      rel="stylesheet"
    />
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f8f9fa;
	height: 100vh;
	display: flex;
	justify-content: center;
	align-items: center;
}

.register-container {
	background-color: #fff;
	padding: 40px;
	border-radius: 10px;
	box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
	text-align: center;
	max-width: 500px;
	width: 100%;
}

.register-container img {
	max-width: 150px;
	margin-bottom: 20px;
}

.register-container h2 {
	margin-bottom: 20px;
	font-weight: bold;
}

.divider {
	margin: 20px 0;
	border-bottom: 1px solid #ccc;
}

.form-control {
	border-radius: 50px;
	padding-left: 20px;
}

.input-group-text {
	background-color: transparent;
	border: none;
}

.login-link, .register {
	font-size: 0.9rem;
	color: #6c757d;
}

.login-link a:hover, .register a:hover {
	text-decoration: underline;
}
</style>
</head>
<body>
	<div class="register-container">
		<!-- Logo -->
		<img src="../BabyBloom/assets/img/logo.jpeg" alt="Baby Bloom Logo" />

		<!-- Title -->
		<h2>ĐĂNG KÝ</h2>

		<!-- Name Input -->
		<form action="/BabyBloom/register" method="post">
		<div class="input-group mb-3">
			<input type="text" name="username" class="form-control" placeholder="Tên tài khoản"
				aria-label="Name" required />
		</div>

		<!-- Phone Number Input -->
		<div class="input-group mb-3">
			<input type="text" class="form-control" placeholder="Số điện thoại" name="phone"
				aria-label="Phone Number" required />
		</div>

		<!-- Email Input -->
		<div class="input-group mb-3">
			<input type="email" name="email" class="form-control" placeholder="Email của bạn"
				aria-label="Email" required />
		</div>

		<!-- Password Input with Eye Icon -->
		<div class="input-group mb-3">
			<input type="password" name="password" class="form-control" id="password"
				placeholder="Mật khẩu" required />
				<span>${tbEmail}</span>
		</div>

		<!-- Confirm Password Input with Eye Icon -->
		<div class="input-group mb-3">
			<input type="password" name="password_confirmation" class="form-control" id="confirmPassword"
				placeholder="Xác nhận mật khẩu" required />
		</div>

		<!-- Register Button -->
		<button type="submit" class="btn btn-primary w-100 rounded-pill">
			ĐĂNG KÝ</button>
		</form>
		

		<!-- Login Link -->
		<p class="login-link mt-3">
			Bạn đã có tài khoản? <a href="login.html">Đăng nhập</a>
		</p>
	</div>

	<!-- Bootstrap JS and Icon Script (for the eye icon) -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.js"></script>

	<!-- Toggle Password Visibility Script -->
<!-- 	<script>
		const togglePassword = document.querySelector("#togglePassword");
		const password = document.querySelector("#password");
		const toggleConfirmPassword = document
				.querySelector("#toggleConfirmPassword");
		const confirmPassword = document.querySelector("#confirmPassword");

		togglePassword.addEventListener("click", function() {
			const type = password.getAttribute("type") === "password" ? "text"
					: "password";
			password.setAttribute("type", type);
			this.classList.toggle("bi-eye");
		});

		toggleConfirmPassword
				.addEventListener(
						"click",
						function() {
							const type = confirmPassword.getAttribute("type") === "password" ? "text"
									: "password";
							confirmPassword.setAttribute("type", type);
							this.classList.toggle("bi-eye");
						});
	</script>
	 -->
</body>
</html>