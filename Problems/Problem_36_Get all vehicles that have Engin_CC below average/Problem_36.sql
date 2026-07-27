-- Problem 36 Get all vehicles that have Engin_CC below average

Select VehicleDetails.Vehicle_Display_Name From VehicleDetails
Where VehicleDetails.Engine_CC < (Select AverageEngineCC = Avg(VehicleDetails.Engine_CC) From VehicleDetails)

