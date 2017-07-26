package com.beauty.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Transient;
import javax.validation.constraints.Min;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.web.multipart.MultipartFile;

@Entity
public class Product {
@Id
@GeneratedValue(strategy=GenerationType.AUTO)
private int id;
@NotEmpty(message="Required field needs to be filled")
private String ProductName;

@Min(value=50)

private int Price;

@Min(value=1)
private int Quantity;
@NotEmpty(message="Required field needs to be filled")
private String Description;
@ManyToOne
@JoinColumn(name="cid")
private Category category;
@Transient
private MultipartFile image;
public MultipartFile getImage() {
	return image;
}
public void setImage(MultipartFile image) {
	this.image = image;
}
public Category getCategory() {
	return category;
}
public void setCategory(Category category) {
	this.category = category;
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getProductName() {
	return ProductName;
}
public void setProductName(String productName) {
	ProductName = productName;
}
public int getPrice() {
	return Price;
}
public void setPrice(int price) {
	Price = price;
}
public int getQuantity() {
	return Quantity;
}
public void setQuantity(int quantity) {
	Quantity = quantity;
}
public String getDescription() {
	return Description;
}
public void setDescription(String description) {
	Description = description;
}

}
