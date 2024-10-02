<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title></title>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="../BabyBloom/assets/css/common.css" />
<link rel="stylesheet" href="../BabyBloom/assets/css/payment.css" />
<link rel="stylesheet" href="../BabyBloom/assets/css/about.css" />

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous" />
<script src="https://kit.fontawesome.com/35390c8f61.js"
	crossorigin="anonymous"></script>
</head>
<body>
	<!-- Header -->
	<div class="container">
		<div class="row">
			<div class="col-md-12 text-center logo-1">
				<img style="width: 20%" src="../BabyBloom/assets/img/logo.jpeg"
					alt="Baby Bloom Logo" />
			</div>
		</div>
	</div>
	<!-- Header -->
	<div class="mt-4" style="text-align: center; margin-bottom: 50px">
		<h4>Thanh toán</h4>
	</div>
	<div class="container d-flex align-items-center justify-content-center"
		style="text-align: center">
		<div class="row">
			<div>
				<form action="/BabyBloom/add-service" method="POST">
					<div class="mb-12">
						<input type="text" name="workPlace" class="form-control" id="exampleInputEmail1"
							aria-describedby="emailHelp" placeholder="Nơi làm việc" />
					</div>
					<div class="mb-3">
						<input type="text" name="address" class="form-control" id="exampleInputEmail1"
							aria-describedby="emailHelp" placeholder="Số nhà / Căn hộ" />
					</div>
					<div class="mb-3">
						<input type="text" name="serviceName" class="form-control" id="exampleInputEmail1"
							aria-describedby="emailHelp" value="${serviceName }" />
					</div>

					<div class="row" style="margin-bottom: 20px">
						<div class="col-md-8">
							<input type="date" name="startDate" style="border-radius: 20px; height: 30px" />
						</div>
						<div class="col-md-4">
							<input type="time" name="startTime" style="border-radius: 20px; height: 30px" />
						</div>
					</div>

					<div class="row" style="margin-bottom: 20px">
						<div class="col-md-7">
							<div style="text-align: right">
								<h5>Tổng hóa đơn</h5>
							</div>
						</div>
						<div class="col-md-5">
							<input type="text" name="price" value="${servicePrice}"
								style="border-radius: 20px; height: 30px" />
						</div>
					</div>
					<div class="row" style="margin-bottom: 20px">
						<div class="col-md-6">


							<div>
								<select id="add-btn" name="method"
									style="width: 80%; border-radius: 20px; height: 33px;">
									<option value= "1">Cash on delivery</option>
									<option value= "2">QR Code</option>
								</select>
							</div>

						</div>
						<div class="col-md-6">
						<input type="hidden" name="serviceId" value="${serviceId }" />
							<button type="submit" id="regis-btn" class="pay-btn">
								Thanh toán</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	<!-- Thông tin chuyên viên -->
	<!-- Footer Section -->
	<footer class="footer">
		<div class="container">
			<div class="row">
				<div class="col-md-12 text-center logo">
					<img src="../BabyBloom/assets/img/logo.jpeg" alt="Baby Bloom Logo" />
				</div>
			</div>
			<div class="row">
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
		crossorigin="anonymous"></script>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"
		integrity="sha384-KyZXEAg3QhqLMpG8r+Knujsl5/6U2m8C4lQV7Er2VPJrMf5J1+8K1sk4d2vIM5fo"
		crossorigin="anonymous"></script>
</body>
</html>
