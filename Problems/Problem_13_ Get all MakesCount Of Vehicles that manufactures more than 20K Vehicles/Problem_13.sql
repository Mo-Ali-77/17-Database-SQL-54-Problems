-- Problem 13: Get all Makes/Count Of Vehicles that manufactures more than 20K Vehicles.
Select * From
(
Select Makes.Make, NumberOfVehicles = Count(*) From VehicleDetails
Join Makes ON VehicleDetails.MakeID = Makes.MakeID
Group By Makes.Make
)AllMakesVehicles
Where AllMakesVehicles.NumberOfVehicles > 20000
Order By NumberOfVehicles Desc;
