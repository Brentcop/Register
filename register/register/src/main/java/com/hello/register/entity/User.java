package com.hello.register.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

@Entity
@Table(name = "users")
public class User {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int pk;
	@JoinColumn(name="users")
	private String first;
	@JoinColumn(name="users")
	private String last;
	@JoinColumn(name="users")
	private String address1;
	@JoinColumn(name="users")
	private String address2;
	@JoinColumn(name="users")
	private String city;
	@JoinColumn(name="users")
	private String state;
	@JoinColumn(name="users")
	private int zip;
	@JoinColumn(name="users")
	private String country;
	@JoinColumn(name="users")
	private String date;
	
	public User() {
		
	}

	public int getPk() {
		return pk;
	}

	public void setPk(int pk) {
		this.pk = pk;
	}

	public String getFirst() {
		return first;
	}

	public void setFirst(String first) {
		this.first = first;
	}

	public String getLast() {
		return last;
	}

	public void setLast(String last) {
		this.last = last;
	}

	public String getAddress1() {
		return address1;
	}

	public void setAddress1(String address1) {
		this.address1 = address1;
	}

	public String getAddress2() {
		return address2;
	}

	public void setAddress2(String address2) {
		this.address2 = address2;
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

	public int getZip() {
		return zip;
	}

	public void setZip(int zip) {
		this.zip = zip;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public User(int pk, String first, String last, String address1, String address2, String city, String state, int zip,
			String country, String date) {
		super();
		this.pk = pk;
		this.first = first;
		this.last = last;
		this.address1 = address1;
		this.address2 = address2;
		this.city = city;
		this.state = state;
		this.zip = zip;
		this.country = country;
		this.date = date;
	}
	public User(int pk, String first, String last, String address1, String city, String state, int zip, String country,
			String date) {
		super();
		this.pk = pk;
		this.first = first;
		this.last = last;
		this.address1 = address1;
		this.city = city;
		this.state = state;
		this.zip = zip;
		this.country = country;
		this.date = date;
	}
	

	public User(String first, String last, String address1, String address2, String city, String state, int zip,
			String country, String date) {
		super();
		this.first = first;
		this.last = last;
		this.address1 = address1;
		this.address2 = address2;
		this.city = city;
		this.state = state;
		this.zip = zip;
		this.country = country;
		this.date = date;
	}

	public User(String first, String last, String address1, String city, String state, int zip, String country,
			String date) {
		super();
		this.first = first;
		this.last = last;
		this.address1 = address1;
		this.city = city;
		this.state = state;
		this.zip = zip;
		this.country = country;
		this.date = date;
	}

	@Override
	public String toString() {
		return "User [pk=" + pk + ", first=" + first + ", last=" + last + ", address1=" + address1 + ", address2="
				+ address2 + ", city=" + city + ", state=" + state + ", zip=" + zip + ", country=" + country + ", date="
				+ date + "]";
	}

}

