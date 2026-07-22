-- Problem 4 : Get number vehicles made between 1950 and 2000 per make and order them by Number Of Vehicles Descending

Select Makes.Make, NumberOfVehicles = Count(*) from VehicleDetails
Join Makes ON VehicleDetails.MakeID = Makes.MakeID
Where Year Between 1950 and 2000
Group By Make
Order By NumberOfVehicles Desc;