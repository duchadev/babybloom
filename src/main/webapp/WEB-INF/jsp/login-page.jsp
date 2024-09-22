<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <form action="LoginCustomer" method="POST">
            <h3 style="font-size: 45px;
                font-weight: 700;">LOGIN</h3>
          <!-- Email input -->
          <div class="form-outline mb-4">
              <input type="text" id="form1Example13" class="form-control form-control-lg" name="username" />
            <label class="form-label" for="form1Example13">User Account</label>
            <span class="form-message" style="color:red;">${tbTk}</span>
          </div>

          <!-- Password input -->
          <div class="form-outline mb-4">
            <input type="password" id="form1Example23" class="form-control form-control-lg" name="password" />
            <label class="form-label" for="form1Example23">Password</label>
             
             <span class="form-message" style="color:red;">${tbPass}</span>
          </div>

          <div class="d-flex justify-content-around align-items-center mb-4">
            <!-- Checkbox -->
            <a href="forgotPassword.jsp">Forgot password?</a>
          </div>
          <div style="display: grid;">
          <!-- Submit button -->
          <button type="submit" class="btn btn-primary btn-lg btn-block mb-4">Sign in</button>
          <span class="form-message mb-2" style="color:red; margin: 0 auto;">${tbsubmit}</span>

          <a class="btn btn-danger btn-lg btn-block" href="https://accounts.google.com/o/oauth2/auth?scope=email&redirect_uri=http://localhost:8080/FastFoodStore/LoginGoogle&response_type=code
		   &client_id=231664848378-c2vupriqqpajggj6sj9b4dmq4jknu72g.apps.googleusercontent.com&approval_prompt=force"
            role="button">
            <i class="fa-brands fa-google" style="color: #ffffff; margin-right: 10px;"></i>Continue with Google
          </a>
         
          <p style="margin: 20px auto;">Don't have an account ? <a class="btn btn-secondary" href="register.jsp">Sign up</a></p>
          </div>
        </form>
</body>
</html>