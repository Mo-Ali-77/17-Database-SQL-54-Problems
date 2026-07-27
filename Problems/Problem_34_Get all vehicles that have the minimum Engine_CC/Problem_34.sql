-- Problem 34 Get all vehicles that have the minimum Engine_CC

Select VehicleDetails.Vehicle_Display_Name From VehicleDetails
Where VehicleDetails.Engine_CC = (Select MinEngineCC = Min(VehicleDetails.Engine_CC) From VehicleDetails)

