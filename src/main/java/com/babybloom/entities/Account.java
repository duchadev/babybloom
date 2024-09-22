package com.babybloom.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="ACOUNT")
public class Account {
@Id
@GeneratedValue(strategy = GenerationType.IDENTITY)
@Column(name="accountId")
private int accountId;
@Column(name="firstName")
private String firstName;
@Column(name="lastName")
private String lastName;
@Column(name="email")
private String email;
@Column(name ="username")
private String username;
@Column(name="password")
private String password;
@Column(name="phoneNumber")
private String phoneNumber;
@Column(name="role")
private String role;
@Column(name="address")
private String address;
public Account() {
	super();
}
public Account(int accountId, String firstName, String lastName, String email, String password, String phoneNumber,
		String role, String address) {
	super();
	this.accountId = accountId;
	this.firstName = firstName;
	this.lastName = lastName;
	this.email = email;
	this.password = password;
	this.phoneNumber = phoneNumber;
	this.role = role;
	this.address = address;
}
public int getAccountId() {
	return accountId;
}
public void setAccountId(int accountId) {
	this.accountId = accountId;
}
public String getFirstName() {
	return firstName;
}
public void setFirstName(String firstName) {
	this.firstName = firstName;
}
public String getLastName() {
	return lastName;
}
public void setLastName(String lastName) {
	this.lastName = lastName;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
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
public String getRole() {
	return role;
}
public void setRole(String role) {
	this.role = role;
}
public String getAddress() {
	return address;
}
public void setAddress(String address) {
	this.address = address;
}
@Override
public String toString() {
	return "Account [accountId=" + accountId + ", firstName=" + firstName + ", lastName=" + lastName + ", email="
			+ email + ", password=" + password + ", phoneNumber=" + phoneNumber + ", role=" + role + ", address="
			+ address + "]";
}

}
