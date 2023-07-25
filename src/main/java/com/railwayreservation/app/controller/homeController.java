package com.railwayreservation.app.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.railwayreservation.app.model.Ticket;
import com.railwayreservation.app.model.Train;
import com.railwayreservation.app.model.User;
import com.railwayreservation.app.service.ticketService;
import com.railwayreservation.app.service.trainService;
import com.railwayreservation.app.service.userService;

@Controller
public class homeController 
{
	@Autowired
	private trainService trainService;
	@Autowired
	private userService userService;
	@Autowired
	private ticketService ticketService;
	
	@GetMapping(value="/")
	public String index()
	{
		return "index";
	}
	@GetMapping(value="/home")
	public String home()
	{
		return "index";
	}
	@GetMapping(value="/login")
	public String login()
	{
		return "login";
	}
	@GetMapping(value="/register")
	public String register()
	{
		return "register";
	}
	@GetMapping(value="/bookNow")
	public String bookNow()
	{
		return "bookNow";
	}
	@GetMapping(value="/adminDashboard")
	public String adminDashboard(ModelMap m)
	{
		List<Train> trainList =trainService.viewTrain();
		List<User> userList=userService.viewAllusers();
		List<Ticket> bookingList = ticketService.viewAllBookings();
		m.addAttribute("trainList",trainList);
		m.addAttribute("userList",userList);
		m.addAttribute("bookingList",bookingList);
		return "Admin/adminDashboard";
	}
	@GetMapping(value="/ticketBooking")
	public String ticketBooking(@RequestParam int trainId,ModelMap m,RedirectAttributes redirect)
	{
		HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("User");
		if(user!=null&& user.getRole().equals("User"))
		{
			Train train = trainService.viewTrainById(trainId);
			m.addAttribute("train",train);
			return "bookingDetails";
		}
		else if(user!=null&& user.getRole().equals("ADMIN"))
		{
			redirect.addFlashAttribute("message","Only User Can Book Tickets");
			return "redirect:/adminDashboard";
		}
		redirect.addFlashAttribute("message","Login Before Booking Ticket");
		return "redirect:/login";
	}
	@GetMapping(value="updateTrainForm")
	public String updateTrainForm(@RequestParam int trainId,ModelMap m)
	{
		Train train = trainService.viewTrainById(trainId);
		m.addAttribute("train",train);
		return "Admin/updateTrain";
	}
	@GetMapping(value="/viewProfile")
	public String updateUserForm()
	{
		return "myProfile";
	}
	@GetMapping(value="/userDashboard")
	public String userDashboard(ModelMap m)
	{
		return"userDashboard";
	}
	@GetMapping(value="/contactUs")
	public String contactUs()
	{
		return "contactUs";
	}
}
