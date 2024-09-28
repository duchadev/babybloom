package com.babybloom.services;
import java.util.HashMap;
import java.util.Map;

import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.util.EntityUtils;
import org.springframework.stereotype.Service;
import com.fasterxml.jackson.databind.ObjectMapper;


@Service
public class VietQRService {
	 private static final String API_URL = "https://api.vietqr.vn/v2/generate"; // URL giả định, thực tế lấy từ VietQR hoặc ngân hàng

	    public String generateQRCode(String orderId, String amount, String bankCode, String accountName, String accountNumber) throws Exception {
	        CloseableHttpClient httpClient = HttpClients.createDefault();
	        HttpPost httpPost = new HttpPost(API_URL);

	        Map<String, String> requestData = new HashMap<>();
	        requestData.put("orderId", orderId);
	        requestData.put("amount", amount);
	        requestData.put("bankCode", bankCode);
	        requestData.put("accountName", accountName);
	        requestData.put("accountNumber", accountNumber);

	        // Thêm các thông tin khác như Merchant ID, Secret Key nếu cần
	        // requestData.put("merchantId", "YOUR_MERCHANT_ID");
	        // requestData.put("secretKey", "YOUR_SECRET_KEY");

	        ObjectMapper objectMapper = new ObjectMapper();
	        String jsonRequest = objectMapper.writeValueAsString(requestData);

	        StringEntity entity = new StringEntity(jsonRequest);
	        httpPost.setEntity(entity);
	        httpPost.setHeader("Content-type", "application/json");

	        String response = EntityUtils.toString(httpClient.execute(httpPost).getEntity());
	        return response; // Thông thường, API sẽ trả về URL hoặc hình ảnh của mã QR code
	    }
}
