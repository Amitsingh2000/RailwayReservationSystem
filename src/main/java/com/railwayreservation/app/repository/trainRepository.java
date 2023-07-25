package com.railwayreservation.app.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.railwayreservation.app.model.Train;

@Repository
public interface trainRepository extends CrudRepository<Train, Integer>
{
	public Train findByTrainId(int trainId);
}
