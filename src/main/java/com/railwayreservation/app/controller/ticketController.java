package com.railwayreservation.app.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.railwayreservation.app.model.Ticket;
import com.railwayreservation.app.service.ticketService;
import com.railwayreservation.app.service.userService;


@Controller
public class ticketController 
{
	@Autowired
	private ticketService ticketService;
	@Autowired
	private userService userService;
	
	@PostMapping(value="/bookTicket")
	public String bookTicket(@RequestParam int trainId,@RequestParam int userId,@RequestParam int seats,@RequestParam double totalAmount,RedirectAttributes redirect)
	{
		ticketService.bookTicket(trainId, userId, seats, totalAmount);
		redirect.addFlashAttribute("message","Ticket Booked Successfully");
		return "redirect:/bookNow";
	}
	@GetMapping(value="/viewBookings")
	public String viewBookings(@RequestParam int userId,ModelMap m)
	{
		List<Ticket> userBookings = ticketService.viewUserBookings(userId);
		m.addAttribute("userBookings",userBookings);
		return"viewBookings";
	}
	@PostMapping(value="/ticketCancellation")
	public String ticketCancellation(@RequestParam int userId,@RequestParam int ticketId,RedirectAttributes redirect)
	{
		if(userService.viewUser(userId)!=null)
		{
			if(ticketService.viewTicket(ticketId)!=null)
			{
				ticketService.cancelTicket(ticketId);
				redirect.addFlashAttribute("message","Ticket Deleted Successfully");
				return "redirect:/ticketCancel";
			}
			else
			{
				redirect.addFlashAttribute("message","Ticket Not Found");
				return "redirect:/ticketCancel";
			}
		}
		else
		{
			redirect.addFlashAttribute("message","Login First For Cancel Ticket");
			return "redirect:/login";
		}
		
	}

}
