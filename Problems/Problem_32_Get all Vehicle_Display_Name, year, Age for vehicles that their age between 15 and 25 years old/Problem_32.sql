-- Problem 32 Get all Vehicle_Display_Name, year, Age for vehicles that their age between 15 and 25 years old

Select * From
(
	Select VehicleDetails.Vehicle_Display_Name, VehicleDetails.Year, CarAge = Year(GETDATE()) - VehicleDetails.Year From VehicleDetails
)VehiclesAge
Where VehiclesAge.CarAge Between 15 and 25
Order By CarAge Desc;
