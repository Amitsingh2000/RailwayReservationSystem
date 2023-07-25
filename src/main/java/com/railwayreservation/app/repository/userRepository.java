package com.railwayreservation.app.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.railwayreservation.app.model.User;

@Repository
public interface userRepository extends CrudRepository<User, Integer>
{
	public User findByUsername(String username);
	public User findByUserId(int userId);
}
