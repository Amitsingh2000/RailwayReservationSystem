package com.railwayreservation.app.service;

import java.util.List;

import com.railwayreservation.app.model.Train;

public interface trainService 
{
	public void addTrain(Train train);
	public List<Train> viewTrain();
	public Train viewTrainById(int trainId);
	public void deleteTrain(int trainId);
	public List<Train> searchTrain(String from,String to,String date);
	public void updateTrain(Train train);
}
