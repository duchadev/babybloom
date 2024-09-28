<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Login</title>
    <link rel="stylesheet" href="./css/login.css" />
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
      rel="stylesheet"
    />
    <!-- FontAwesome for social icons -->
    <link
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"
      rel="stylesheet"
    />
    <style>
      .login-container {
        max-width: 500px;
        margin: 50px auto;
        padding: 20px;
        background-color: #fff;
        border-radius: 10px;
        box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
        text-align: center;
      }
      .login-container img {
        max-width: 150px;
        margin-bottom: 20px;
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
      .social-login a {
        font-size: 30px;
        margin: 0 10px;
        color: #6c757d;
      }
      .social-login a:hover {
        color: #495057;
      }
      .nav-tabs .nav-link.active {
        color: #495057;
        background-color: #f8f9fa;
        border-color: #dee2e6 #dee2e6 #fff;
      }
    </style>
  </head>
  <body>
    <div class="login-container">
      <!-- Logo -->
      <img src="../BabyBloom/assets/img/logo.jpeg" alt="Baby Bloom Logo" />

      <!-- Title -->
      <h2>ĐĂNG NHẬP</h2>

      <!-- Tabbed Phone or Email Input -->
      <ul
        class="nav nav-tabs d-flex justify-content-between mb-2"
        id="myTab"
        role="tablist"
      >
        <li class="nav-item" role="presentation">
          <button
            class="nav-link active"
            id="phone-tab"
           
            data-bs-toggle="tab"
            data-bs-target="#phone"
            type="button"
            role="tab"
            aria-controls="phone"
            aria-selected="true"
          >
            Số điện thoại
          </button>
        </li>
        <li class="nav-item" role="presentation">
          <button
            class="nav-link"
            id="email-tab"
            data-bs-toggle="tab"
            data-bs-target="#email"
            type="button"
            role="tab"
            aria-controls="email"
            aria-selected="false"
          >
            Email
          </button>
        </li>
      </ul>
      <form action="/BabyBloom/login" method="post">
     
      <div class="tab-content" id="myTabContent">
        <div
          class="tab-pane fade show active"
          id="phone"
          role="tabpanel"
          aria-labelledby="phone-tab"
        >
          <div class="input-group mb-3">
            <input
              type="text"
              class="form-control"
               name="phone"
              placeholder="Số điện thoại của bạn"
              aria-label="phone-number"
              required
            />
          </div>
        </div>
        <div
          class="tab-pane fade"
          id="email"
          role="tabpanel"
          aria-labelledby="email-tab"
        >
          <div class="input-group mb-3">
            <input
              type="email"
              name="email"
              class="form-control"
              placeholder="Email của bạn"
              aria-label="Email"
              required
            />
          </div>
        </div>
      </div>

      <!-- Password Input with Eye Icon -->
      <div class="input-group mb-3">
        <input
          type="password"
          class="form-control"
          name="password"
          id="password"
          placeholder="Mật khẩu"
          required
        />
      </div>

      <!-- Login Button -->
      <button type="submit" class="btn btn-primary w-100 rounded-pill">
        ĐĂNG NHẬP
      </button>
 </form>
      <!-- Remember Me & Forgot Password -->
      <div class="d-flex justify-content-between mt-3">
        <div class="form-check form-check-inline">
          <input class="form-check-input" type="checkbox" id="rememberMe" />
          <label class="form-check-label" for="rememberMe"
            >Ghi nhớ mật khẩu</label
          >
        </div>
        <a href="#" class="forgot-password">Quên mật khẩu?</a>
      </div>

      <!-- Divider -->
      <div class="divider"></div>

      <!-- Social Login -->
      <p>HOẶC</p>
      <div class="social-login">
        <a href="#"><i class="fab fa-facebook-f"></i></a>
        <a href="#"><i class="fab fa-google"></i></a>
      </div>

      <!-- Register Link -->
      <p class="register mt-3">
        Bạn chưa có tài khoản? <a href="register.html">Đăng ký</a>
      </p>
    </div>
<script>
  document.addEventListener('DOMContentLoaded', function () {
    const phoneInput = document.querySelector('input[name="phone"]');
    const emailInput = document.querySelector('input[name="email"]');
    const phoneTab = document.querySelector('#phone-tab');
    const emailTab = document.querySelector('#email-tab');

    // Disable required attribute on the hidden field when switching tabs
    phoneTab.addEventListener('click', function () {
      phoneInput.required = true;
      emailInput.required = false;
    });

    emailTab.addEventListener('click', function () {
      emailInput.required = true;
      phoneInput.required = false;
    });
  });
</script>
    <!-- Bootstrap JS and FontAwesome Script for the eye icon -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free/js/all.min.js"></script>
  </body>
</html>
