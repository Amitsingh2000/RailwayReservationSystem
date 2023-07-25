package com.railwayreservation.app.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.railwayreservation.app.model.Ticket;
import com.railwayreservation.app.model.Train;
import com.railwayreservation.app.model.User;
import com.railwayreservation.app.repository.ticketRepository;
import com.railwayreservation.app.repository.trainRepository;
import com.railwayreservation.app.service.ticketService;
import com.railwayreservation.app.service.trainService;
import com.railwayreservation.app.service.userService;

@Service
public class ticketServiceImpl implements ticketService
{
	@Autowired
	userService userService;
	@Autowired
	trainService trainService;
	@Autowired
	ticketRepository ticketRepo;

	@Override
	public void bookTicket(int trainId, int userId, int seats, double toatalAmount) 
	{
		Ticket ticket=new Ticket();
		Train train =trainService.viewTrainById(trainId);
		train.setTrainSeats(train.getTrainSeats()-seats);
		trainService.updateTrain(train);
		User user=userService.viewUser(userId);
		ticket.setDate(train.getDepartureDate());
		ticket.setTicketTrain(train);
		ticket.setUserDetails(user);
		ticket.setTotalAmount(toatalAmount);
		ticket.setSeats(seats);
		ticketRepo.save(ticket);
	}

	@Override
	public List<Ticket> viewUserBookings(int userId)
	{
		return ticketRepo.findByUserDetailsUserId(userId);
	}

	@Override
	public List<Ticket> viewAllBookings()
	{
		return (List<Ticket>) ticketRepo.findAll();
	}

	@Override
	public void deleteBooking(int ticketId)
	{
		ticketRepo.deleteByTicketId(ticketId);
	}


	

}
