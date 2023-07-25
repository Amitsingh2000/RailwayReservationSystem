package com.railwayreservation.app.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Train 
{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int trainId;
	private String trainName;
	private String departureFrom;
	private String departureTo;
	private String departureDate;
	private int trainSeats;
	private double trainFare;
	
	
	
	public Train(){ }

	public Train(int trainId, String trainName, String departureFrom, String departureTo, String departureDate,int trainSeats, double trainFare) 
	{
		this.trainId = trainId;
		this.trainName = trainName;
		this.departureFrom = departureFrom;
		this.departureTo = departureTo;
		this.departureDate = departureDate;
		this.trainSeats = trainSeats;
		this.trainFare = trainFare;
	}

	public int getTrainId() {
		return trainId;
	}

	public void setTrainId(int trainId) {
		this.trainId = trainId;
	}

	public String getTrainName() {
		return trainName;
	}

	public void setTrainName(String trainName) {
		this.trainName = trainName;
	}

	public String getDepartureFrom() {
		return departureFrom;
	}

	public void setDepartureFrom(String departureFrom) {
		this.departureFrom = departureFrom;
	}

	public String getDepartureTo() {
		return departureTo;
	}

	public void setDepartureTo(String departureTo) {
		this.departureTo = departureTo;
	}

	public String getDepartureDate() {
		return departureDate;
	}

	public void setDepartureDate(String departureDate) {
		this.departureDate = departureDate;
	}

	public int getTrainSeats() {
		return trainSeats;
	}

	public void setTrainSeats(int trainSeats) {
		this.trainSeats = trainSeats;
	}

	public double getTrainFare() {
		return trainFare;
	}

	public void setTrainFare(double trainFare) {
		this.trainFare = trainFare;
	}

	@Override
	public String toString() {
		return "Train [trainId=" + trainId + ", trainName=" + trainName + ", departureFrom=" + departureFrom
				+ ", departureTo=" + departureTo + ", departureDate=" + departureDate + ", trainSeats=" + trainSeats
				+ ", trainFare=" + trainFare + "]";
	}
		
}
