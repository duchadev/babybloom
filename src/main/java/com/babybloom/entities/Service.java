package com.babybloom.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="SERVICE")
public class Service {
@Id
@GeneratedValue(strategy = GenerationType.IDENTITY)
@Column(name="serviceId")
private int serviceId;
@Column(name="serviceName")
private String serviceName;
@Column(name="description")
private String description;
@Column(name="price")
private double price;
@Column(name="image")
private String image;
@Column(name="typeOfService")
private String typeOfService;
@Column(name="timeOfExecution")
private double timeOfExecution;
@Column(name="status")
private String status;
public Service() {
	super();
}
public Service(int serviceId, String serviceName, String description, double price, String image, String typeOfService,
		double timeOfExecution, String status) {
	super();
	this.serviceId = serviceId;
	this.serviceName = serviceName;
	this.description = description;
	this.price = price;
	this.image = image;
	this.typeOfService = typeOfService;
	this.timeOfExecution = timeOfExecution;
	this.status = status;
}
public int getServiceId() {
	return serviceId;
}
public void setServiceId(int serviceId) {
	this.serviceId = serviceId;
}
public String getServiceName() {
	return serviceName;
}
public void setServiceName(String serviceName) {
	this.serviceName = serviceName;
}
public String getDescription() {
	return description;
}
public void setDescription(String description) {
	this.description = description;
}
public double getPrice() {
	return price;
}
public void setPrice(double price) {
	this.price = price;
}
public String getImage() {
	return image;
}
public void setImage(String image) {
	this.image = image;
}
public String getTypeOfService() {
	return typeOfService;
}
public void setTypeOfService(String typeOfService) {
	this.typeOfService = typeOfService;
}
public double getTimeOfExecution() {
	return timeOfExecution;
}
public void setTimeOfExecution(double timeOfExecution) {
	this.timeOfExecution = timeOfExecution;
}
public String getStatus() {
	return status;
}
public void setStatus(String status) {
	this.status = status;
}
@Override
public String toString() {
	return "Service [serviceId=" + serviceId + ", serviceName=" + serviceName + ", description=" + description
			+ ", price=" + price + ", image=" + image + ", typeOfService=" + typeOfService + ", timeOfExecution="
			+ timeOfExecution + ", status=" + status + "]";
}

}