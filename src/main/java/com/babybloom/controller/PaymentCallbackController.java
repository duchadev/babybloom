package com.babybloom.controller;

import java.util.Map;

import org.apache.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class PaymentCallbackController {
	 @PostMapping("/paymentCallback")
	    public ResponseEntity<String> handlePaymentCallback(@RequestBody Map<String, Object> payload) {
	        String status = (String) payload.get("status"); // Kiểm tra trạng thái thanh toán
	        if ("SUCCESS".equals(status)) {
	            // Xử lý khi thanh toán thành công
	            return ResponseEntity.ok("Payment success");
	        } else {
	            // Xử lý khi thanh toán thất bại
	            return ResponseEntity.status(HttpStatus.SC_BAD_REQUEST).body("Payment failed");
	        }
	    }
}
