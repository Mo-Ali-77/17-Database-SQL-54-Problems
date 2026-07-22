-- Problem 8: Get Make, FuelTypeName and Number of Vehicles per FuelType per Make

-- Mo Ali Solution without where "between 1950 to 2000", because Dr.Abu-Hadhoud didn't say that in problem.
Select Makes.Make, FuelTypes.FuelTypeName, NumberOfVehicles = Count(*) From VehicleDetails
Join Makes ON Makes.MakeID = VehicleDetails.MakeID
Join FuelTypes ON FuelTypes.FuelTypeID = VehicleDetails.FuelTypeID
Group By Make, FuelTypeName
Order By Make;

-- After show Dr.Abu-Hadhoud Solution, and he write weher Between 1950 to 2000
Select Makes.Make, FuelTypes.FuelTypeName, NumberOfVehicles = Count(*) From VehicleDetails
Join Makes ON Makes.MakeID = VehicleDetails.MakeID
Join FuelTypes ON FuelTypes.FuelTypeID = VehicleDetails.FuelTypeID
Where VehicleDetails.Year Between 1950 and 2000
Group By Make, FuelTypeName
Order By Make;