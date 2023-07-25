package com.railwayreservation.app.service;

import java.util.List;

import com.railwayreservation.app.model.User;

public interface userService 
{
	public void addUser(User user);
	public User viewUser(String username);
	public User viewUser(int userId);
	public List<User> viewAllusers();
	public void deleteUser(int userId);
	public void updateUser(User user);
	
}
