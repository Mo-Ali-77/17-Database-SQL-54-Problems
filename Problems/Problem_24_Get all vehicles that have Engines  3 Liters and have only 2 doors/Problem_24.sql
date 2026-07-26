-- Problem 24 Get all vehicles that have Engines  3 Liters and have only 2 doors

-- My Solution Before Show Dr.Abu-Hadhoud Solution
Select * From VehicleDetails
Where (VehicleDetails.Engine Like '3.0%') and (VehicleDetails.NumDoors = 2);

-- Another Solution and Faster Solution
Select * From VehicleDetails
Where (VehicleDetails.Engine_Liter_Display = 3.0) and (VehicleDetails.NumDoors = 2);

-- Dr.Abu-Hadhoud Solution
select * from VehicleDetails
	where Engine_Liter_Display > 3 and NumDoors =2

