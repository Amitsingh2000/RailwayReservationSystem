package com.railwayreservation.app.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.railwayreservation.app.model.User;
import com.railwayreservation.app.service.userService;

@Controller
public class userController 
{
	@Autowired
	userService userService;
	
	@RequestMapping(value="/loginUser")
	public String validate(@RequestParam String username,@RequestParam String password,RedirectAttributes redirect)
	{
		HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
		HttpSession session = request.getSession();
		User user =userService.viewUser(username);
		if( user!=null &&(user.getRole().equals("ADMIN")))
		{
			session.setAttribute("User",user);
			return "redirect:/adminDashboard";
		}
		else if(user!=null && (user.getRole().equals("User")))
		{
			session.setAttribute("User",user);
			return "redirect:/userDashboard";
		}
		redirect.addFlashAttribute("message", "Enter Valid Login Details");
		session.setAttribute("User", null);
		return "redirect:/login";
		
	}
	@PostMapping(value="/addUser")
	public String addUser(@ModelAttribute User user,RedirectAttributes redirect)
	{
		userService.addUser(user);
		redirect.addFlashAttribute("message", "User Added Succesfully");
		return "redirect:/register";
	}
	@RequestMapping(value="/deleteUser")
	public String deleteUser(@RequestParam int userId)
	{
		userService.deleteUser(userId);
		return "redirect:/adminDashboard";
	}
	@GetMapping(value="/logout")
	public String logout()
	{
		HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
		HttpSession session = request.getSession();
		session.removeAttribute("User");
		session.invalidate();
		return "redirect:/home";
	}
	@PostMapping(value="/updateProfile")
	public String updateProfile(@ModelAttribute User user,RedirectAttributes redirect)
	{
		userService.updateUser(user);
		if(user.getRole().equals("ADMIN"))
		{
			redirect.addFlashAttribute("message","Profile Update Successfully");
			return "redirect:/adminDashboard";
		}
		else
		{
			redirect.addFlashAttribute("message","Profile Update Successfully");
			return "redirect:/userDashboard";
		}
	}
	
}
