-- Problem 25 Get make and vehicles that the engine contains 'OHV' and have Cylinders = 4

Select Makes.Make, VehicleDetails.* From VehicleDetails
Join Makes ON VehicleDetails.MakeID = Makes.MakeID
Where (VehicleDetails.Engine Like '%OHV%') And (VehicleDetails.Engine_Cylinders = 4);
