package com.babybloom.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.babybloom.services.VietQRService;

@Controller
public class PaymentController {
	 @Autowired
	    private VietQRService vietQRService;

	    @GetMapping("/generateQR")
	    public String generateQRCode(Model model) throws Exception {
	        String qrCodeUrl = vietQRService.generateQRCode("123456", "50000", "BIDV", "Nguyen Van A", "123456789");
	        model.addAttribute("qrCodeUrl", qrCodeUrl);
	        return "jsp/payment";
	    }
}
