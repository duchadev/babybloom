<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <form action="/BabyBloom/register" method="POST" class="position-relative">
            <h3 style="font-size: 45px;
                font-weight: 700;">SIGN UP</h3>
          <!-- Email input -->
          <div class="form-outline mb-4">
            <input type="text" id="form1Example13" class="form-control form-control-lg" name="username" />
            <label class="form-label" for="form1Example13">User Account</label>
             <span class="form-message mt-2 position-absolute" style="color:red; right: 0; ">${tbTk}</span>
          </div>

          <div class="form-outline mb-4">
            <input type="text" id="form1Example13" class="form-control form-control-lg" name="email" />
            <label class="form-label" for="form1Example13">Enter Your Email</label>
            <span class="form-message mt-2 position-absolute" style="color:red; right: 0; ">${tbEmail}</span>
          </div>
          
          <div class="form-outline mb-4">
            <input type="password" id="form1Example13" class="form-control form-control-lg" name="password"/>
            <label class="form-label" for="form1Example13">Enter Your Password</label>
            <span class="form-message mt-2 position-absolute" style="color:red;right: 0;">${tbPass}</span>
          </div>
          
          <!-- Password input -->
          <div class="form-outline mb-4">
            <input type="password" id="form1Example23" class="form-control form-control-lg" name="password_confirmation"/>
            <label class="form-label" for="form1Example23">Enter Your Password Again</label>
            <span class="form-message mt-2 position-absolute" style="color:red; right: 0; ">${tbPass2}</span>
          </div>
          <div style="display: grid;">
          <!-- Submit button -->
          <button type="submit" class="btn btn-primary btn-lg btn-block mb-4 form-submit">Sign Up</button>
           <a class="btn btn-danger btn-lg btn-block" href="https://accounts.google.com/o/oauth2/auth?scope=email&redirect_uri=http://localhost:8080/FastFoodStore/LoginGoogle&response_type=code
		   &client_id=231664848378-c2vupriqqpajggj6sj9b4dmq4jknu72g.apps.googleusercontent.com&approval_prompt=force"
            role="button">
           <i class="fa-brands fa-google" style="color: #ffffff; margin-right: 10px;"></i>Continue with Google
          </a>
          <p style="margin: 20px auto;">Do you already have an account ? <a class="btn btn-secondary" href="login.jsp">Login</a></p>
          </div>
        </form>
</body>
</html>