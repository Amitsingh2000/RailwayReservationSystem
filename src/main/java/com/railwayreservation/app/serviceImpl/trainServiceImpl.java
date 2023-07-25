package com.railwayreservation.app.serviceImpl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.railwayreservation.app.model.Train;
import com.railwayreservation.app.repository.trainRepository;
import com.railwayreservation.app.service.trainService;

@Service
public class trainServiceImpl implements trainService
{
	@Autowired
	trainRepository trainRepo;

	@Override
	public void addTrain(Train train)
	{
		trainRepo.save(train);	
	}

	@Override
	public List<Train> viewTrain() 
	{
		return (List<Train>) trainRepo.findAll();
	}

	@Override
	public Train viewTrainById(int trainId) 
	{
		return trainRepo.findByTrainId(trainId);
	}

	@Override
	public void deleteTrain(int trainId) 
	{
		trainRepo.deleteById(trainId);
	}

	@Override
	public List<Train> searchTrain(String from, String to, String date)
	{
		List<Train> trainList = (List<Train>) trainRepo.findAll();
		List<Train> newList=new ArrayList<>();
		for(Train train:trainList)
		{
			
			if(train.getDepartureFrom().equals(from) && train.getDepartureTo().equals(to) && train.getDepartureDate().equals(date))
			{
				newList.add(train);
			}
		}
		return newList;
	}

	@Override
	public void updateTrain(Train train)
	{
		trainRepo.save(train);
	}

}
