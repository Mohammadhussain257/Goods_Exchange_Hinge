package com.mhs.goodsexchangehinge.model;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Past;
import javax.validation.constraints.Size;

import org.hibernate.annotations.LazyCollection;
import org.hibernate.annotations.LazyCollectionOption;
import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotBlank;
import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "user_details")
public class User {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int userId;
	@NotBlank(message = "Please enter First Name")
	@Size(min = 3, max = 50, message = "First name character too long should be in between {min} to {max} character")
	private String firstName;
	@NotBlank(message = "Please enter Last Name")
	@Size(min = 1, max = 50, message = "Last name character too long should be in between {min} to {max} character")
	private String lastName;
	private String gender;
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@Past(message = "Invalid date of birth, must be in past")
	@NotNull(message = "choose date of birth")
	private Date dob;
	@Email(message = "Invalid email type")
	@NotBlank(message = "Please enter your email address")
	private String email;
	@NotBlank(message = "Please enter your address")
	@Size(min = 1, max = 100, message = "Too long address should be in between {min} to {max} character")
	private String address;
	@NotBlank(message = "Please enter your username")
	@Size(min = 1, max = 50, message = "Username character too long should be in between {min} to {max} character")
	private String username;
	@NotBlank(message = "Please enter your password")
	@Size(min = 5, message = "password length should be {min} character")
	/*
	 * @Pattern(regexp = "(^[a-zA-Z0-9]+$)", message =
	 * "password should be alphanumberic")
	 */
	private String password;
	@NotBlank(message = "Please enter phone number")
	private String phoneNumber;
	private Boolean isActive;
	private String role;
	@OneToOne(cascade = CascadeType.ALL, mappedBy = "user", fetch = FetchType.LAZY)
	private ProfilePic profilePic;
	@OneToMany(mappedBy = "user")
	private List<Login> login = new ArrayList<Login>();
	@OneToMany(cascade = { CascadeType.PERSIST, CascadeType.MERGE }, mappedBy = "user", fetch = FetchType.EAGER)
	private List<ProductExchange> productExchangelist = new ArrayList<>();
	@OneToMany(cascade = { CascadeType.PERSIST, CascadeType.MERGE }, mappedBy = "user")
	@LazyCollection(LazyCollectionOption.FALSE)
	private List<ProductRequest> productRequestlist = new ArrayList<>();
	@OneToMany(cascade = { CascadeType.PERSIST, CascadeType.MERGE }, mappedBy = "user")
	@LazyCollection(LazyCollectionOption.FALSE)
	private List<Faq> faqList = new ArrayList<>();

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

	public ProfilePic getProfilePic() {
		return profilePic;
	}

	public void setProfilePic(ProfilePic profilePic) {
		this.profilePic = profilePic;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public List<Login> getLogin() {
		return login;
	}

	public void setLogin(List<Login> login) {
		this.login = login;
	}

	public List<ProductExchange> getProductExchangelist() {
		return productExchangelist;
	}

	public void setProductExchangelist(List<ProductExchange> productExchangelist) {
		this.productExchangelist = productExchangelist;
	}

	public List<ProductRequest> getProductRequestlist() {
		return productRequestlist;
	}

	public void setProductRequestlist(List<ProductRequest> productRequestlist) {
		this.productRequestlist = productRequestlist;
	}

	public List<Faq> getFaqList() {
		return faqList;
	}

	public void setFaqList(List<Faq> faqList) {
		this.faqList = faqList;
	}

}
