-- Problem 40 Get all vehicles that has one of the Max 3 Engine CC


select VehicleDetails.Vehicle_Display_Name, VehicleDetails.Engine_CC From VehicleDetails
Where VehicleDetails.Engine_CC In
(

	Select Distinct Top 3 VehicleDetails.Engine_CC From VehicleDetails
	Order By  VehicleDetails.Engine_CC Desc
)
Order By Engine_CC Desc

