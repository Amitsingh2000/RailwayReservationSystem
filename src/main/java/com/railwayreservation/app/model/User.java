package com.railwayreservation.app.model;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class User 
{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int userId;
	private String firstName;
	private String lastName;
	private String username;
	private String password;
	private String userEmail;
	private String mobileNo;
	private String role;
	@OneToMany(mappedBy = "userDetails", cascade = CascadeType.ALL)
	private List<Ticket> userTickets = new ArrayList<>();
	
	public User() { }
	
	
	
	public User(String firstName, String lastName, String username, String password, String role) 
	{
		this.firstName = firstName;
		this.lastName = lastName;
		this.username = username;
		this.password = password;
		this.role = role;
	}



	public User(int userId, String firstName, String lastName, String username, String password, String userEmail,
			String mobileNo, String role, List<Ticket> userTickets) {
		this.userId = userId;
		this.firstName = firstName;
		this.lastName = lastName;
		this.username = username;
		this.password = password;
		this.userEmail = userEmail;
		this.mobileNo = mobileNo;
		this.role = role;
		this.userTickets = userTickets;
	}




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

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getMobileNo() {
		return mobileNo;
	}

	public void setMobileNo(String mobileNo) {
		this.mobileNo = mobileNo;
	}

	public List<Ticket> getUserTickets() {
		return userTickets;
	}

	public void setUserTickets(List<Ticket> userTickets) {
		this.userTickets = userTickets;
	}

	
	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}


	@Override
	public String toString() {
		return "User [userId=" + userId + ", firstName=" + firstName + ", lastName=" + lastName + ", username="
				+ username + ", password=" + password + ", userEmail=" + userEmail + ", mobileNo=" + mobileNo
				+ ", role=" + role + ", userTickets=" + userTickets + "]";
	}


}
