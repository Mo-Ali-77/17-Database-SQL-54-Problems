-- Problem 33 Get Minimum Engine CC , Maximum Engine CC , and Average Engine CC of all Vehicles

Select MinimumEngineCC = Min(VehicleDetails.Engine_CC), 
	   MaximumEngineCC = Max(VehicleDetails.Engine_CC), 
	   AverageEngineCC = Avg(VehicleDetails.Engine_CC) 
From VehicleDetails
