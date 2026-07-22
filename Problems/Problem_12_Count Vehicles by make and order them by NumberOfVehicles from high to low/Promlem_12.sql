-- Problem 12: Count Vehicles by make and order them by NumberOfVehicles from high to low.

Select Makes.Make, NumberOfVehicles = Count(*) From VehicleDetails
Join Makes ON VehicleDetails.MakeID = Makes.MakeID
Group By Makes.Make
Order By NumberOfVehicles Desc;
