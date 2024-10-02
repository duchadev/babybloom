<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title></title>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="../BabyBloom/assets/css/common.css" />
    <link rel="stylesheet" href="../BabyBloom/assets/css/service.css" />
    <link rel="stylesheet" href="../BabyBloom/assets/css/about.css" />

    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
      crossorigin="anonymous"
    />
    <script
      src="https://kit.fontawesome.com/35390c8f61.js"
      crossorigin="anonymous"
    ></script>
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
              <a class="nav-link" href="service.html">Dịch Vụ</a>
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
    <!-- Header -->

    <div class="mt-2 container" style="text-align: center; margin-bottom: 40px">
      <div class="row">
        <div class="col-md-4"></div>
        <div class="col-md-4">
          <h4>DỊCH VỤ CHO MẸ</h4>
        </div>
        <div class="col-md-4">
          <div class="row" style="padding-bottom: 20px">
            <div class="col-md-6"></div>
            <div class="col-md-6">
              <p><strong>Hotline:</strong> <strong>0000 000 000</strong></p>

              <a
                href="#"
                class="btn btn-outline-dark"
                style="border-radius: 20px"
              >
                <strong>Liên Hệ Ngay</strong>
              </a>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="container">
      <div class="row">
        <div class="col-md-4">
          <div class="card" style="width: 18rem; border: none">
            <img
              src="https://via.placeholder.com/700x400"
              alt="Placeholder Image"
              class="card-img-top"
              alt="..."
            />
            <div class="card-body">
            <form action="/BabyBloom/add-service">
              <h6 class="card-title" style="margin-bottom: 30px">
                GÓI MASSAGE BẦU THƯ GIÃN
              </h6>
              <p style="margin-bottom: 20px">Thời gian: 90 phút/ buổi</p>
              <p style="margin-bottom: 20px">Liệu pháp: 4</p>
              <ol>
                <li>Ngâm chân</li>
                <li>Massage chân</li>
                <li>Massage body</li>
                <li>Massage đầu, cổ, vai, gáy</li>
              </ol>
              <h6
                class="card-title"
                style="text-align: center; margin-bottom: 25px"
              >
                Giá: 490.000
              </h6>
              <div class="button-add-to-cart">
              
                <div class="add">
                <input type="hidden" name="serviceId" value="1" />
                  <button type="submit">
                    Đặt ngay <i class="fa-solid fa-cart-shopping"></i>
                  </button>
                </div>
                </form>
                <div class="more">
                  <button>Tìm hiểu thêm</button>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="card" style="width: 18rem; border: none">
            <img
              src="https://via.placeholder.com/700x400"
              alt="Placeholder Image"
              class="card-img-top"
              alt="..."
            />
            <div class="card-body">
              <h6 class="card-title" style="margin-bottom: 20px">
                GÓI MASSAGE BẦU THƯ GIÃN
              </h6>
              <p style="margin-bottom: 20px">Thời gian: 90 phút/ buổi</p>
              <p style="margin-bottom: 0">Liệu pháp: 4</p>
              <ol>
                <li>Ngâm chân</li>
                <li>Massage chân</li>
                <li>Massage body</li>
                <li>Massage đầu, cổ, vai, gáy</li>
                <li>Massage đầu, cổ, vai, gáy</li>
                <li>Nằm túi thảo dược</li>
              </ol>
              <h6 class="card-title" style="text-align: center">
                Giá: 550.000
              </h6>
              <div class="button-add-to-cart">
                <div class="add">
                  <button>
                    Đặt ngay <i class="fa-solid fa-cart-shopping"></i>
                  </button>
                </div>
                <div class="more">
                  <button>Tìm hiểu thêm</button>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="card" style="width: 18rem; border: none">
            <img
              src="https://via.placeholder.com/700x400"
              alt="Placeholder Image"
              class="card-img-top"
              alt="..."
            />
            <div class="card-body">
              <h6 class="card-title" style="margin-bottom: 0">
                GÓI MASSAGE BẦU THƯ GIÃN
              </h6>
              <p style="margin-bottom: 0">Thời gian: 90 phút/ buổi</p>
              <ol>
                <li>Ngâm chân</li>
                <li>Đi đá nóng</li>
                <li>Massage chân giảm phù nề</li>
                <li>Massage body</li>
                <li>Massage đầu, cổ, vai, gáy</li>
                <li>Nằm túi thảo dược</li>
                <li>
                  Chăm sóc da mặt mẹ bầu (Chăm sóc 6 bước chuyên sâu dành cho da
                  khô, sạm, nám, mụn...)
                </li>
              </ol>
              <div class="button-add-to-cart">
                <div class="add">
                  <button>
                    Đặt ngay <i class="fa-solid fa-cart-shopping"></i>
                  </button>
                </div>
                <div class="more">
                  <button>Tìm hiểu thêm</button>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="mt-4" style="text-align: center; margin-bottom: 80px">
      <h4>DỊCH VỤ CHO MẸ</h4>
    </div>
    <div class="container">
      <div class="row">
        <div class="col-md-4">
          <div class="card" style="width: 18rem; border: none">
            <img
              src="https://via.placeholder.com/700x400"
              alt="Placeholder Image"
              class="card-img-top"
              alt="..."
            />
            <div class="card-body">
              <h6 class="card-title" style="margin-bottom: 30px">
                GÓI MASSAGE BẦU THƯ GIÃN
              </h6>
              <p style="margin-bottom: 20px">Thời gian: 90 phút/ buổi</p>
              <p style="margin-bottom: 20px">Liệu pháp: 4</p>
              <ol>
                <li>Ngâm chân</li>
                <li>Massage chân</li>
                <li>Massage body</li>
                <li>Massage đầu, cổ, vai, gáy</li>
              </ol>
              <h6
                class="card-title"
                style="text-align: center; margin-bottom: 25px"
              >
                Giá: 490.000
              </h6>
              <div class="button-add-to-cart">
                <div class="add">
                  <button>
                    Đặt ngay <i class="fa-solid fa-cart-shopping"></i>
                  </button>
                </div>
                <div class="more">
                  <button>Tìm hiểu thêm</button>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="card" style="width: 18rem; border: none">
            <img
              src="https://via.placeholder.com/700x400"
              alt="Placeholder Image"
              class="card-img-top"
              alt="..."
            />
            <div class="card-body">
              <h6 class="card-title" style="margin-bottom: 20px">
                GÓI MASSAGE BẦU THƯ GIÃN
              </h6>
              <p style="margin-bottom: 20px">Thời gian: 90 phút/ buổi</p>
              <p style="margin-bottom: 0">Liệu pháp: 4</p>
              <ol>
                <li>Ngâm chân</li>
                <li>Massage chân</li>
                <li>Massage body</li>
                <li>Massage đầu, cổ, vai, gáy</li>
                <li>Massage đầu, cổ, vai, gáy</li>
                <li>Nằm túi thảo dược</li>
              </ol>
              <h6 class="card-title" style="text-align: center">
                Giá: 550.000
              </h6>
              <div class="button-add-to-cart">
                <div class="add">
                  <button>
                    Đặt ngay <i class="fa-solid fa-cart-shopping"></i>
                  </button>
                </div>
                <div class="more">
                  <button>Tìm hiểu thêm</button>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="card" style="width: 18rem; border: none">
            <img
              src="https://via.placeholder.com/700x400"
              alt="Placeholder Image"
              class="card-img-top"
              alt="..."
            />
            <div class="card-body">
              <h6 class="card-title" style="margin-bottom: 0">
                GÓI MASSAGE BẦU THƯ GIÃN
              </h6>
              <p style="margin-bottom: 0">Thời gian: 90 phút/ buổi</p>
              <ol>
                <li>Ngâm chân</li>
                <li>Đi đá nóng</li>
                <li>Massage chân giảm phù nề</li>
                <li>Massage body</li>
                <li>Massage đầu, cổ, vai, gáy</li>
                <li>Nằm túi thảo dược</li>
                <li>
                  Chăm sóc da mặt mẹ bầu (Chăm sóc 6 bước chuyên sâu dành cho da
                  khô, sạm, nám, mụn...)
                </li>
              </ol>
              <div class="button-add-to-cart">
                <div class="add">
                  <button>
                    Đặt ngay <i class="fa-solid fa-cart-shopping"></i>
                  </button>
                </div>
                <div class="more">
                  <button>Tìm hiểu thêm</button>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="mt-4" style="text-align: center; margin-bottom: 80px">
      <h4>DỊCH VỤ CHO MẸ</h4>
    </div>
    <div class="container">
      <div class="row">
        <div class="col-md-4">
          <div class="card" style="width: 18rem; border: none">
            <img
              src="https://via.placeholder.com/700x400"
              alt="Placeholder Image"
              class="card-img-top"
              alt="..."
            />
            <div class="card-body">
              <h6 class="card-title" style="margin-bottom: 30px">
                GÓI MASSAGE BẦU THƯ GIÃN
              </h6>
              <p style="margin-bottom: 20px">Thời gian: 90 phút/ buổi</p>
              <p style="margin-bottom: 20px">Liệu pháp: 4</p>
              <ol>
                <li>Ngâm chân</li>
                <li>Massage chân</li>
                <li>Massage body</li>
                <li>Massage đầu, cổ, vai, gáy</li>
              </ol>
              <h6
                class="card-title"
                style="text-align: center; margin-bottom: 25px"
              >
                Giá: 490.000
              </h6>
              <div class="button-add-to-cart">
                <div class="add">
                  <button>
                    Đặt ngay <i class="fa-solid fa-cart-shopping"></i>
                  </button>
                </div>
                <div class="more">
                  <button>Tìm hiểu thêm</button>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="card" style="width: 18rem; border: none">
            <img
              src="https://via.placeholder.com/700x400"
              alt="Placeholder Image"
              class="card-img-top"
              alt="..."
            />
            <div class="card-body">
              <h6 class="card-title" style="margin-bottom: 20px">
                GÓI MASSAGE BẦU THƯ GIÃN
              </h6>
              <p style="margin-bottom: 20px">Thời gian: 90 phút/ buổi</p>
              <p style="margin-bottom: 0">Liệu pháp: 4</p>
              <ol>
                <li>Ngâm chân</li>
                <li>Massage chân</li>
                <li>Massage body</li>
                <li>Massage đầu, cổ, vai, gáy</li>
                <li>Massage đầu, cổ, vai, gáy</li>
                <li>Nằm túi thảo dược</li>
              </ol>
              <h6 class="card-title" style="text-align: center">
                Giá: 550.000
              </h6>
              <div class="button-add-to-cart">
                <div class="add">
                  <button>
                    Đặt ngay <i class="fa-solid fa-cart-shopping"></i>
                  </button>
                </div>
                <div class="more">
                  <button>Tìm hiểu thêm</button>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="card" style="width: 18rem; border: none">
            <img
              src="https://via.placeholder.com/700x400"
              alt="Placeholder Image"
              class="card-img-top"
              alt="..."
            />
            <div class="card-body">
              <h6 class="card-title" style="margin-bottom: 0">
                GÓI MASSAGE BẦU THƯ GIÃN
              </h6>
              <p style="margin-bottom: 0">Thời gian: 90 phút/ buổi</p>
              <ol>
                <li>Ngâm chân</li>
                <li>Đi đá nóng</li>
                <li>Massage chân giảm phù nề</li>
                <li>Massage body</li>
                <li>Massage đầu, cổ, vai, gáy</li>
                <li>Nằm túi thảo dược</li>
                <li>
                  Chăm sóc da mặt mẹ bầu (Chăm sóc 6 bước chuyên sâu dành cho da
                  khô, sạm, nám, mụn...)
                </li>
              </ol>
              <div class="button-add-to-cart">
                <div class="add">
                  <button>
                    Đặt ngay <i class="fa-solid fa-cart-shopping"></i>
                  </button>
                </div>
                <div class="more">
                  <button>Tìm hiểu thêm</button>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Thông tin chuyên viên -->
    <div class="mt-4" style="text-align: center; margin-bottom: 30px">
      <h4>THÔNG TIN CHUYÊN VIÊN</h4>
    </div>
    <div class="container">
      <h5>Đội ngũ chuyên viên đầy kinh nghiệm</h5>
      <p>
        Liệu trình chăm sóc tuân thủ nghiêm ngặt nguyên tắc Y Khoa cùng với Đội
        ngũ hơn 100% điều dưỡng giỏi chuyên môn và giàu kinh nghiệm được dẫn dắt
        bởi các bác sĩ đầu ngành về Sản - Nhi chăm sóc Tiền Hậu Sản, BabyBlom
        cam kết mang đến giải pháp chăm sóc tại nhà an toàn và hiệu quả nhất cho
        Mẹ ngay khi xuất viện.
      </p>
      <div class="row">
        <div class="col-md-4">
          <div class="card team-card">
            <img src="https://via.placeholder.com/400x250" alt="Placeholder" />
            <div class="card-body">
              <h5>ThS. Trần Thị Sáng</h5>
              <p>Bệnh viện Từ Dũ</p>
              <p>Bệnh viện FV</p>
              <p>CMI Việt Nam</p>
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="card team-card">
            <img src="https://via.placeholder.com/400x250" alt="Placeholder" />
            <div class="card-body">
              <h5>ThS. Trần Thị Sáng</h5>
              <p>Bệnh viện Từ Dũ</p>
              <p>Bệnh viện FV</p>
              <p>CMI Việt Nam</p>
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="card team-card">
            <img src="https://via.placeholder.com/400x250" alt="Placeholder" />
            <div class="card-body">
              <h5>ThS. Trần Thị Sáng</h5>
              <p>Bệnh viện Từ Dũ</p>
              <p>Bệnh viện FV</p>
              <p>CMI Việt Nam</p>
            </div>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-md-4">
          <div class="card team-card">
            <img src="https://via.placeholder.com/400x250" alt="Placeholder" />
            <div class="card-body">
              <h5>ThS. Trần Thị Sáng</h5>
              <p>Bệnh viện Từ Dũ</p>
              <p>Bệnh viện FV</p>
              <p>CMI Việt Nam</p>
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="card team-card">
            <img src="https://via.placeholder.com/400x250" alt="Placeholder" />
            <div class="card-body">
              <h5>ThS. Trần Thị Sáng</h5>
              <p>Bệnh viện Từ Dũ</p>
              <p>Bệnh viện FV</p>
              <p>CMI Việt Nam</p>
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="card team-card">
            <img src="https://via.placeholder.com/400x250" alt="Placeholder" />
            <div class="card-body">
              <h5>ThS. Trần Thị Sáng</h5>
              <p>Bệnh viện Từ Dũ</p>
              <p>Bệnh viện FV</p>
              <p>CMI Việt Nam</p>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Thông tin chuyên viên -->
    <!-- Footer Section -->
    <footer class="footer">
      <div class="container">
        <div class="row">
          <div class="col-md-12 text-center logo">
            <img src="./img/logo.jpeg" alt="Baby Bloom Logo" />
          </div>
        <div class="row mt-3">
          <!-- Left Section -->
          <div class="col-md-4 text-center">
            <h6>Baby Bloom - Spa cho mẹ và bé tại nhà</h6>
            <p>Vì sức khoẻ của mẹ và bé</p>
            <p>Nhiệt tình - Tận tâm - Hiệu quả</p>
          </div>

          

          <!-- Right Section -->
          <div class="col-md-4 text-center">
            <h6>DỊCH VỤ</h6>
            <ul class="list-unstyled">
              <li>Massage bầu</li>
              <li>Massage em bé</li>
              <li>Chăm sóc mẹ sau sinh</li>
              <li>Chăm sóc em bé sơ sinh</li>
            </ul>
          </div>

          <!-- Info Section -->
          <div class="col-md-4 text-center mt-3">
            <h6>THÔNG TIN</h6>
            <ul class="list-unstyled">
              <li>Giới thiệu</li>
              <li>Dịch vụ</li>
            </ul>
          </div>
        </div>
      </div>
    </footer>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
      crossorigin="anonymous"
    ></script>
    <script
      src="https://code.jquery.com/jquery-3.6.0.min.js"
      integrity="sha384-KyZXEAg3QhqLMpG8r+Knujsl5/6U2m8C4lQV7Er2VPJrMf5J1+8K1sk4d2vIM5fo"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
