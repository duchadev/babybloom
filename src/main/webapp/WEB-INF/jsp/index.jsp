<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Baby Bloom Việt Nam</title>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
      rel="stylesheet"
    />
    <link rel="stylesheet" href="../BabyBloom/assets/css/common.css" />
    <link rel="stylesheet" href="../BabyBloom/assets/css/index.css" />
  </head>
  <body>
    <!-- Header -->
    <nav class="navbar navbar-expand-lg">
      <div class="container-fluid">
        <a class="navbar-brand" href="./index.html">
          <img src="../BabyBloom/assets/img/logo.jpeg" alt="Baby Bloom" width="150" />
        </a>
        <button
          class="navbar-toggler"
          type="button"
          data-bs-toggle="collapse"
          data-bs-target="#navbarNav"
          aria-controls="navbarNav"
          aria-expanded="false"
          aria-label="Toggle navigation"
        >
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
          <ul class="navbar-nav ms-auto">
            <li class="nav-item">
              <a class="nav-link" href="about.html">Về Baby Bloom</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="/BabyBloom/service">Dịch Vụ</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="rewards.html">Baby Bloom Rewards</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="partners.html">Trở Thành Đối Tác</a>
            </li>
            <li class="nav-item dropdown">
              <a
                class="nav-link dropdown-toggle"
                href="#"
                id="languageDropdown"
                role="button"
                data-bs-toggle="dropdown"
                aria-expanded="false"
              >
                Ngôn Ngữ
              </a>
              <ul class="dropdown-menu" aria-labelledby="languageDropdown">
                <li>
                  <a class="dropdown-item" href="#">
                    <img
                      src="../BabyBloom/assets/img/vietnam-icon.png"
                      alt="Vietnam"
                      width="20"
                      height="15"
                      class="me-2"
                    />
                    Tiếng Việt
                  </a>
                </li>
                <li>
                  <a class="dropdown-item" href="#">
                    <img
                      src="../BabyBloom/assets/img/english-icon.png"
                      alt="English"
                      width="20"
                      height="15"
                      class="me-2"
                    />
                    English
                  </a>
                </li>
              </ul>
            </li>

            <li class="nav-item">
              <a class="nav-link" href="/BabyBloom/register">Đăng Ký</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="/BabyBloom/login">Đăng Nhập</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>

    <!-- Banner -->
    <div class="banner">
      <h1>Baby Bloom Việt Nam</h1>
      <p>
        Baby Bloom là website cung cấp các dịch vụ spa bầu, chăm sóc mẹ và bé
        tại nhà. Với mong muốn mang lại sự tiện lợi và những dịch vụ chăm sóc
        tốt nhất cho mẹ và bé.
      </p>
      <a href="#" class="btn btn-outline-dark">Đặt Dịch Vụ Ngay</a>
      <a href="#" class="btn btn-outline-dark">Liên Hệ Ngay</a>
      <p class="mt-3"><strong>Hotline:</strong> 0000 000 000</p>
    </div>

    <div class="container text-center mt-5">
      <!-- Header -->
      <h1 class="fw-bold">CHÀO MẸ,</h1>
      <h2 class="fw-bold">CẢM ƠN MẸ ĐÃ Ở ĐÂY</h2>
      <p class="mt-3">
        Lorem ipsum dolor sit amet consectetur. Laoreet at fermentum sed eu
        scelerisque massa rhoncus. Vivamus sit quisque nulla tempus mattis. Elit
        pretium maecenas non orci diam donec fringilla eu mi. Dolor sapien et
        vitae sollicitudin eu dui malesuada.
      </p>

      <!-- Main Title -->
      <h2 class="section-title mt-5">
        BABY BLOOM CUNG CẤP TẤT CẢ NHỮNG GÌ TỐT NHẤT CHO MẸ VÀ BÉ "TẠI NHÀ"
      </h2>
      <hr />
      <!-- Service Boxes (Top Row) -->
      <div class="row mt-4">
        <!-- First Service Box -->
        <div class="col-md-6 service-box">
          <div class="placeholder-image">
            <img src="" alt="Chăm sóc mẹ và bé sau sinh" />
          </div>
          <h3 class="section-subtitle mt-3">CHĂM SÓC MẸ VÀ BÉ SAU SINH</h3>
          <p>
            Lorem ipsum dolor sit amet consectetur. Tempus pharetra elit dolor
            erat diam mauris cras magna nunc. Est bibendum blandit pretium leo
            pretium non et. Vestibulum cras pulvinar nibh vel eu.
          </p>
        </div>

        <!-- Second Service Box -->
        <div class="col-md-6 service-box">
          <div class="placeholder-image">
            <img src="" alt="Massage mẹ và bé" />
          </div>
          <h3 class="section-subtitle mt-3">MASSAGE MẸ VÀ BÉ</h3>
          <p>
            Lorem ipsum dolor sit amet consectetur. Tempus pharetra elit dolor
            erat diam mauris cras magna nunc. Est bibendum blandit pretium leo
            pretium non et. Vestibulum cras pulvinar nibh vel eu.
          </p>
        </div>
      </div>
      <hr />
      <!-- Service Info Section -->
      <h2 class="section-title mt-5">THÔNG TIN CƠ BẢN DỊCH VỤ</h2>
      <div class="row mt-4">
        <!-- Service 1 -->
        <div class="col-md-4 service-box">
          <img src="" alt="Chăm sóc bé sau sinh" />
          <h3 class="section-subtitle mt-3">CHĂM SÓC BÉ SAU SINH</h3>
          <div class="service-info">
            <p>Thời gian của liệu trình: ~45 phút</p>
            <p>Giá mỗi buổi: 150.000 VND</p>
            <p>Giá gói: 1.800.000 đến 3.750.000 VND (12-25 buổi)</p>
          </div>
          <button class="btn btn-book">ĐẶT NGAY</button>
          <div class="rating-info">
            <span class="rating">★★★★★</span>
            <span>00 Đánh giá</span>
          </div>
        </div>

        <!-- Service 2 -->
        <div class="col-md-4 service-box">
          <img src="" alt="Chăm sóc mẹ sau sinh gói tiêu chuẩn" />
          <h3 class="section-subtitle mt-3">
            CHĂM SÓC MẸ SAU SINH Gói tiêu chuẩn
          </h3>
          <div class="service-info">
            <p>Thời gian của liệu trình: ~45 phút</p>
            <p>Giá mỗi buổi: 150.000 VND</p>
            <p>Giá gói: 1.800.000 đến 3.750.000 VND (12-25 buổi)</p>
          </div>
          <button class="btn btn-book">ĐẶT NGAY</button>
          <div class="rating-info">
            <span class="rating">★★★★★</span>
            <span>00 Đánh giá</span>
          </div>
        </div>

        <!-- Service 3 -->
        <div class="col-md-4 service-box">
          <img src="" alt="Chăm sóc mẹ sau sinh gói nâng cao" />
          <h3 class="section-subtitle mt-3">
            CHĂM SÓC MẸ SAU SINH Gói nâng cao
          </h3>
          <div class="service-info">
            <p>Thời gian của liệu trình: ~45 phút</p>
            <p>Giá mỗi buổi: 150.000 VND</p>
            <p>Giá gói: 1.800.000 đến 3.750.000 VND (12-25 buổi)</p>
          </div>
          <button class="btn btn-book">ĐẶT NGAY</button>
          <div class="rating-info">
            <span class="rating">★★★★★</span>
            <span>00 Đánh giá</span>
          </div>
        </div>
      </div>

      <div class="row mt-4">
        <!-- Service 4 -->
        <div class="col-md-6 service-box">
          <img src="" alt="Massage mẹ bầu" />
          <h3 class="section-subtitle mt-3">MASSAGE MẸ BẦU</h3>
          <div class="service-info">
            <p>Thời gian của liệu trình: ~45 phút</p>
            <p>Giá mỗi buổi: 150.000 VND</p>
            <p>Giá gói: 1.800.000 đến 3.750.000 VND (12-25 buổi)</p>
          </div>
          <button class="btn btn-book">ĐẶT NGAY</button>
          <div class="rating-info">
            <span class="rating">★★★★★</span>
            <span>00 Đánh giá</span>
          </div>
        </div>

        <!-- Service 5 -->
        <div class="col-md-6 service-box">
          <img src="" alt="Massage bé" />
          <h3 class="section-subtitle mt-3">MASSAGE BÉ</h3>
          <div class="service-info">
            <p>Thời gian của liệu trình: ~45 phút</p>
            <p>Giá mỗi buổi: 150.000 VND</p>
            <p>Giá gói: 1.800.000 đến 3.750.000 VND (12-25 buổi)</p>
          </div>
          <button class="btn btn-book">ĐẶT NGAY</button>
          <div class="rating-info">
            <span class="rating">★★★★★</span>
            <span>00 Đánh giá</span>
          </div>
        </div>
      </div>
    </div>

    <hr />

    <!-- Phần Tại sao mẹ nên sử dụng dịch vụ của Baby Bloom -->
    <section class="why-choose">
      <div class="container">
        <h2>TẠI SAO MẸ NÊN SỬ DỤNG DỊCH VỤ CỦA BABY BLOOM?</h2>
        <p class="description">
          Đội ngũ chuyên viên đầy kinh nghiệm Lorem ipsum dolor sit amet
          consectetur. Tempus pharetra elit dolor erat diam mauris cras magna
          nunc.
        </p>

        <!-- Hàng đầu tiên -->
        <div class="row content-row">
          <div class="col-md-6 col-lg-4">
            <img src="https://via.placeholder.com/400x300" alt="Image 1" />
          </div>
          <div class="col-md-6 col-lg-4 text-content">
            <h5>LOREM IPSUM DOLOR</h5>
            <p><strong>Sed ut perspiciatis unde omnis iste</strong></p>
            <p>
              Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
              eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
              enim ad minim veniam, quis nostrud exercitation ullamco laboris
              nisi ut aliquip ex ea commodo consequat.
            </p>
          </div>
          <div class="col-md-6 col-lg-4">
            <img src="https://via.placeholder.com/400x300" alt="Image 2" />
          </div>
        </div>

        <!-- Hàng thứ hai -->
        <div class="row content-row">
          <div class="col-md-6 col-lg-4 text-content">
            <h5>LOREM IPSUM DOLOR</h5>
            <p><strong>Sed ut perspiciatis unde omnis iste</strong></p>
            <p>
              Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
              eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
              enim ad minim veniam, quis nostrud exercitation ullamco laboris
              nisi ut aliquip ex ea commodo consequat.
            </p>
          </div>
          <div class="col-md-6 col-lg-4">
            <img src="https://via.placeholder.com/400x300" alt="Image 3" />
          </div>
          <div class="col-md-6 col-lg-4 text-content">
            <h5>LOREM IPSUM DOLOR</h5>
            <p><strong>Sed ut perspiciatis unde omnis iste</strong></p>
            <p>
              Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
              eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
              enim ad minim veniam, quis nostrud exercitation ullamco laboris
              nisi ut aliquip ex ea commodo consequat.
            </p>
          </div>
        </div>
      </div>
    </section>
    <hr />
    <!-- Phần quy trinh dich vu -->
    <div class="process">
      <h1>Quy Trình Sử Dụng Dịch Vụ Của Baby Bloom</h1>

      <div class="step">
        <img src="https://via.placeholder.com/150x100" alt="Chọn Dịch Vụ" />
        <div class="step-content">
          <h3>Chọn Dịch Vụ</h3>
          <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem.</p>
        </div>
      </div>

      <div class="step">
        <img
          src="https://via.placeholder.com/150x100"
          alt="Chọn Thời Gian, Địa Điểm"
        />
        <div class="step-content">
          <h3>Chọn Thời Gian, Địa Điểm</h3>
          <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem.</p>
        </div>
      </div>

      <div class="step">
        <img
          src="https://via.placeholder.com/150x100"
          alt="Chọn Chuyên Viên Spa (Nếu Có Mong Muốn)"
        />
        <div class="step-content">
          <h3>Chọn Chuyên Viên Spa (Nếu Có Mong Muốn)</h3>
          <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem.</p>
        </div>
      </div>

      <div class="step">
        <img
          src="https://via.placeholder.com/150x100"
          alt="Tiến Hành Công Việc"
        />
        <div class="step-content">
          <h3>Tiến Hành Công Việc</h3>
          <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem.</p>
        </div>
      </div>

      <div class="step">
        <img
          src="https://via.placeholder.com/150x100"
          alt="Đánh Giá Và Xếp Hạng"
        />
        <div class="step-content">
          <h3>Đánh Giá Và Xếp Hạng</h3>
          <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem.</p>
        </div>
      </div>
    </div>
    <hr />
    <!-- CTA Section -->
    <section class="cta-section">
      <h2>Đăng ký ngay hôm nay</h2>
      <p>
        Bạn đã sẵn sàng trải nghiệm Baby Bloom chưa? Bắt đầu ngay với việc đặt
        lịch đầu tiên của bạn
      </p>
      <a href="#" class="cta-btn">TRẢI NGHIỆM DỊCH VỤ NGAY</a>
    </section>

    <!-- Footer Section -->
    <footer class="footer">
      <div class="container">
        <div class="row">
          <!-- Left Section -->
          <div class="col-md-4 text-start">
            <h6>Baby Bloom - Spa cho mẹ và bé tại nhà</h6>
            <p>Vì sức khoẻ của mẹ và bé</p>
            <p>Nhiệt tình - Tận tâm - Hiệu quả</p>
          </div>

          <!-- Center Section (Logo) -->
          <div class="col-md-4 text-center logo">
            <img src="./img/logo.jpeg" alt="Baby Bloom Logo" />
          </div>

          <!-- Right Section -->
          <div class="col-md-4 text-start">
            <h6>DỊCH VỤ</h6>
            <ul class="list-unstyled">
              <li>Massage bầu</li>
              <li>Massage em bé</li>
              <li>Chăm sóc mẹ sau sinh</li>
              <li>Chăm sóc em bé sơ sinh</li>
            </ul>
          </div>

          <!-- Info Section -->
          <div class="col-md-4 text-start mt-3">
            <h6>THÔNG TIN</h6>
            <ul class="list-unstyled">
              <li>Giới thiệu</li>
              <li>Dịch vụ</li>
            </ul>
          </div>
        </div>
      </div>
    </footer>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
  </body>
</html>
