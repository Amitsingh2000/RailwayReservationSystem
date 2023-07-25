package com.railwayreservation.app.service;

import java.util.List;

import com.railwayreservation.app.model.Ticket;

public interface ticketService 
{
	public void bookTicket(int trainId,int userId,int seats,double toatalAmount);
	public List<Ticket> viewUserBookings(int userId);
	public List<Ticket> viewAllBookings();
	public void deleteBooking(int ticketId);
}
