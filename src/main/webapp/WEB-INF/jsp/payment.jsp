<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>QR Code Payment</title>
</head>
<body>
    <h1>Thanh toán bằng QR code</h1>
    <img th:src="${qrCodeUrl}" alt="QR Code" />
</body>
</html>