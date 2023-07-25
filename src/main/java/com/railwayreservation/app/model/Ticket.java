package com.railwayreservation.app.model;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class Ticket 
{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int ticketId;
	@ManyToOne(cascade = CascadeType.ALL)
	private Train ticketTrain;
	private String date;
	private int seats;
	private double totalAmount;
	
	@ManyToOne(cascade = CascadeType.ALL)
	private User userDetails;

	
	public Ticket() { }

	public Ticket(int ticketId, Train ticketTrain, String date, int seats, double totalAmount, User userDetails) 
	{
		this.ticketId = ticketId;
		this.ticketTrain = ticketTrain;
		this.date = date;
		this.seats = seats;
		this.totalAmount = totalAmount;
		this.userDetails = userDetails;
	}

	public int getTicketId() {
		return ticketId;
	}

	public void setTicketId(int ticketId) {
		this.ticketId = ticketId;
	}

	public Train getTicketTrain() {
		return ticketTrain;
	}

	public void setTicketTrain(Train ticketTrain) {
		this.ticketTrain = ticketTrain;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public int getSeats() {
		return seats;
	}

	public void setSeats(int seats) {
		this.seats = seats;
	}

	public double getTotalAmount() {
		return totalAmount;
	}

	public void setTotalAmount(double totalAmount) {
		this.totalAmount = totalAmount;
	}

	public User getUserDetails() {
		return userDetails;
	}

	public void setUserDetails(User userDetails) {
		this.userDetails = userDetails;
	}

	@Override
	public String toString() {
		return "Ticket [ticketId=" + ticketId + ", ticketTrain=" + ticketTrain + ", date=" + date + ", seats=" + seats
				+ ", totalAmount=" + totalAmount + ", userDetails=" + userDetails + "]";
	}
	
}
