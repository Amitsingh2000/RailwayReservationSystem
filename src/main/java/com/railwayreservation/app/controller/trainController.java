package com.railwayreservation.app.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.railwayreservation.app.model.Train;
import com.railwayreservation.app.service.trainService;

@Controller
public class trainController 
{
	@Autowired
	trainService trainService;
	@PostMapping(value="/addTrain")
	public String addTrain(@ModelAttribute Train train,RedirectAttributes redirect)
	{
		trainService.addTrain(train);
		redirect.addFlashAttribute("message","Train Added Successfully");
		return "redirect:/adminDashboard";
	}
	
	@RequestMapping(value="/deleteTrain")
	public String deleteTrain(@RequestParam int trainId,RedirectAttributes redirect)
	{
		trainService.deleteTrain(trainId);
		redirect.addFlashAttribute("message","Train Deleted Successfully");
		return "redirect:/adminDashboard";
	}
	@PostMapping(value="/trainSearch")
	public String searchTrain(@RequestParam String departureFrom,@RequestParam String departureTo,@RequestParam String departureDate,ModelMap m)
	{
		List<Train> trainList =trainService.searchTrain(departureFrom, departureTo, departureDate);
		m.addAttribute("trainList",trainList);
		return "trainList";
	}
	@PostMapping(value="/updateTrain")
	public String updateTrain(@ModelAttribute Train train,RedirectAttributes redirect)
	{	
		redirect.addFlashAttribute("message","Train Updated Successfully");
		trainService.updateTrain(train);
		return "redirect:/adminDashboard";
	}

}
