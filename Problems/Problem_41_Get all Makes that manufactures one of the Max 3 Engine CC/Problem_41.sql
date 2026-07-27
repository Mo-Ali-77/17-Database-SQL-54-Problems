-- Problem 41 Get all Makes that manufactures one of the Max 3 Engine CC

Select Distinct Makes.Make From Makes
Join VehicleDetails ON VehicleDetails.MakeID = Makes.MakeID
Where VehicleDetails.Engine_CC In
(
	Select Distinct Top 3 VehicleDetails.Engine_CC From VehicleDetails
	Order By  VehicleDetails.Engine_CC Desc
)
Order By Makes.Make Asc









