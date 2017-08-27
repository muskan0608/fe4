package com.beauty.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
public class ShippingAddress {

	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;

	@NotEmpty(message="streetname is mandatory")
	private String streetname;

	@NotEmpty(message="apartment number is mandatory")
	private String apartmentnumber;
	@NotEmpty(message="city is mandatory")
	private String city;

	@NotEmpty(message="state is mandatory")
	private String state;

	@NotEmpty(message="country is mandatory")
	private String country;
	
	@Size(max=6,min=6,message="it should be of 6 digits")
	@NotEmpty(message="zipcode is mandatory")
	@Pattern(regexp="^[0-9]{6}$",message="it should contain numbers")
	private String zipcode;
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getStreetname() {
		return streetname;
	}

	public void setStreetname(String streetname) {
		this.streetname = streetname;
	}

	public String getApartmentnumber() {
		return apartmentnumber;
	}

	public void setApartmentnumber(String apartmentnumber) {
		this.apartmentnumber = apartmentnumber;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getZipcode() {
		return zipcode;
	}

	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}

	
}
