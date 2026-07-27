-- Problem 37 Get total vehicles that have Engin_CC above average

Select TotalVehicles = COUNT(*) From
(
	Select VehicleDetails.ID,VehicleDetails.Vehicle_Display_Name From VehicleDetails
	Where VehicleDetails.Engine_CC > (Select AverageEngineCC = Avg(VehicleDetails.Engine_CC) From VehicleDetails)
)TotalVehicles




