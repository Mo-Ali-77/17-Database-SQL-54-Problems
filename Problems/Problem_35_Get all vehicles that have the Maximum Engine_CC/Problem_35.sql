-- Problem 35 Get all vehicles that have the Maximum Engine_CC

Select VehicleDetails.Vehicle_Display_Name From VehicleDetails
Where VehicleDetails.Engine_CC = (Select MaxEngineCC = Max(VehicleDetails.Engine_CC) From VehicleDetails)
