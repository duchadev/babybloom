package com.babybloom.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Customers")
public class Customers {
@Id
@GeneratedValue(strategy = GenerationType.IDENTITY)
@Column(name="customer_id")
private int customerId;
@Column(name="name")
private String name;
@Column(name="email")
private String email;
@Column(name ="username")
private String username;
@Column(name="password")
private String password;
@Column(name="phone_number")
private String phoneNumber;

@Column(name="address")
private String address;

public Customers() {
	super();
}

public Customers(int customerId, String name, String email, String username, String password, String phoneNumber,
		String address) {
	super();
	this.customerId = customerId;
	this.name = name;
	this.email = email;
	this.username = username;
	this.password = password;
	this.phoneNumber = phoneNumber;
	this.address = address;
}

public int getCustomerId() {
	return customerId;
}

public void setCustomerId(int customerId) {
	this.customerId = customerId;
}

public String getName() {
	return name;
}

public void setName(String name) {
	this.name = name;
}

public String getEmail() {
	return email;
}

public void setEmail(String email) {
	this.email = email;
}

public String getUsername() {
	return username;
}

public void setUsername(String username) {
	this.username = username;
}

public String getPassword() {
	return password;
}

public void setPassword(String password) {
	this.password = password;
}

public String getPhoneNumber() {
	return phoneNumber;
}

public void setPhoneNumber(String phoneNumber) {
	this.phoneNumber = phoneNumber;
}

public String getAddress() {
	return address;
}

public void setAddress(String address) {
	this.address = address;
}

@Override
public String toString() {
	return "Customers [customerId=" + customerId + ", name=" + name + ", email=" + email + ", username=" + username
			+ ", password=" + password + ", phoneNumber=" + phoneNumber + ", address=" + address + "]";
}

}
