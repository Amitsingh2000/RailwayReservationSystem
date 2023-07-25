package com.railwayreservation.app;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import com.railwayreservation.app.model.User;
import com.railwayreservation.app.service.userService;

@SpringBootApplication
public class RailwayReservationAppApplication implements CommandLineRunner
{
	@Autowired
	userService userService;
	
	public static void main(String[] args) {
		SpringApplication.run(RailwayReservationAppApplication.class, args);
	}

	@Override
	public void run(String... args) throws Exception
	{
		List<User> userList = userService.viewAllusers();
	    User user = new User("Admin","Admin","admin","admin", "ADMIN");

	    boolean userExists = false;
	    for (User existingUser : userList) {
	        if (existingUser.getUsername().equals(user.getUsername())) 
	        {
	            userExists = true;
	            break;
	        }
	    }

	    if (!userExists) {
	        userService.addUser(user);
	    } else {
	        System.out.println("User Already Exists");
	    }

	}

}
