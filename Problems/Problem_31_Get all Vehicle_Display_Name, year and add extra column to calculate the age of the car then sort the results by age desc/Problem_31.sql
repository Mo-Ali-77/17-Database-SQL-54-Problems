-- Problem 31 Get all Vehicle_Display_Name, year and add extra column to calculate the age of the car then sort the results by age desc.

Select VehicleDetails.Vehicle_Display_Name, VehicleDetails.Year, CarAge = Year(GETDATE()) - VehicleDetails.Year From VehicleDetails
Order By CarAge Desc;
