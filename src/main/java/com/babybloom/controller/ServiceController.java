package com.babybloom.controller;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.babybloom.entities.Bookings;
import com.babybloom.entities.Customers;
import com.babybloom.entities.Services;
import com.babybloom.repository.AccountRepository;
import com.babybloom.repository.BookingRepository;
import com.babybloom.repository.ServiceRepository;

@Controller
public class ServiceController {
	@Autowired
	ServiceRepository serviceRepository;
	@Autowired
	AccountRepository accountRepository;
	@Autowired
	BookingRepository bookingRepository;

	@GetMapping("/service")
	public String getService() {
		return "jsp/service";
	}

	@GetMapping("/add-service")
	public String addService(@RequestParam("serviceId") int serviceId, Model model, HttpSession session) {
		Services service = serviceRepository.findServiceByServiceId(serviceId);
		model.addAttribute("serviceName", service.getServiceName());
		model.addAttribute("servicePrice", service.getPrice());
		model.addAttribute("serviceId", service.getServiceId());
		System.err.println("Customer: " + session.getAttribute("customerId"));
		return "jsp/payment";
	}

	@PostMapping("/add-service")
	public String addToBooking(@RequestParam("method") String method, @RequestParam("serviceId") int serviceId,
			HttpSession session, @RequestParam("price") double price, @RequestParam("address") String address,
			@RequestParam("startDate") @DateTimeFormat(iso = DateTimeFormat.ISO.DATE) LocalDate startDate,
			@RequestParam("startTime") @DateTimeFormat(iso = DateTimeFormat.ISO.TIME) LocalTime startTime) {
		try {
			Bookings bookings = new Bookings();
			int customerId = (int) session.getAttribute("customerId");
			Customers customers = accountRepository.findCustomersByCustomerId(customerId);
			Services services = serviceRepository.findServiceByServiceId(serviceId);
			LocalDateTime dateTime = LocalDateTime.now();
			bookings.setBookingDate(dateTime);
			bookings.setHouseAddress(customers.getAddress());
			bookings.setTotalBill(price);
			bookings.setWorkDate(startDate);
			bookings.setWorkTime(startTime);
			bookings.setWorkLocation(address);
			bookings.setCustomer(customers);
			bookings.setService(services);
			bookingRepository.save(bookings);
			return "jsp/index";
		} catch (Exception e) {
			e.printStackTrace();
			return "jsp/error";
		}

	}

}
