-- Problem 21 Get Total Vehicles that number of doors is not specified

Select TotalWithNonSpecifiedVehicles = Count(*) From VehicleDetails
Where VehicleDetails.NumDoors is NULL