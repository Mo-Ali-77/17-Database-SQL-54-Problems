-- Problem 22 Get percentage of vehicles that has no doors specified
Select percentageofvehicles =
	Cast((Select TotalWithNonSpecifiedVehicles = Count(*) From VehicleDetails Where VehicleDetails.NumDoors is NULL) As Float)
	/ 
	Cast((Select TotalVehicles = Count(*)  From VehicleDetails) As Float);

