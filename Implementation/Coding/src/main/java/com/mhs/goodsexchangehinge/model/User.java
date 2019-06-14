package com.mhs.goodsexchangehinge.model;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "user_details")
public class User {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int userId;
	private String firstName;
	private String lastName;
	private String gender;
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date dob;
	private String email;
	private String address;
	private String username;
	private String password;
	private String phoneNumber;
	private Boolean isActive;
	private String role;
	@OneToMany(mappedBy = "user")
	private List<ProfilePic> profilePic = new ArrayList<>();
	@OneToMany(mappedBy = "user")
	private List<ProductExchange> productExchange = new ArrayList<>();
	@OneToMany(mappedBy = "user")
	private List<ProductRequest> productRequest = new ArrayList<>();
	@OneToMany(mappedBy = "user")
	private List<Login> login = new ArrayList<>();

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
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

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public Date getDob() {
		return dob;
	}

	public void setDob(Date dob) {
		this.dob = dob;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Boolean getIsActive() {
		return isActive;
	}

	public void setIsActive(Boolean isActive) {
		this.isActive = isActive;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public List<ProfilePic> getUploadImage() {
		return profilePic;
	}

	public void setUploadImage(List<ProfilePic> profilePic) {
		this.profilePic = profilePic;
	}

	public List<ProductExchange> getProductExchange() {
		return productExchange;
	}

	public void setProductExchange(List<ProductExchange> productExchange) {
		this.productExchange = productExchange;
	}

	public List<ProductRequest> getProductRequest() {
		return productRequest;
	}

	public void setProductRequest(List<ProductRequest> productRequest) {
		this.productRequest = productRequest;
	}

	public List<Login> getLogin() {
		return login;
	}

	public void setLogin(List<Login> login) {
		this.login = login;
	}

}
