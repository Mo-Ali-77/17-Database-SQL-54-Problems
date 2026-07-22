-- Problem 7: Get number of vehicles made between 1950 and 2000 per make and add total vehicles column beside it,
-- then calculate it's percentage

-- Mo Ali Solution Before Show Dr.Abu_Hadhoud's Solution
-- I don't no Why the result Zeroes
Select Make, NumberOfVehicles, TotalVehicles, Perc = ( NumberOfVehicles /  TotalVehicles) From
(
	Select Makes.Make, NumberOfVehicles = Count(*), TotalVehicles = (Select Count(*) From VehicleDetails)
	From VehicleDetails
	Join Makes ON VehicleDetails.MakeID = Makes.MakeID
	Where Year Between 1950 and 2000
	Group By Make
)Virtual_Table
Order By NumberOfVehicles Desc;


-- After show Dr.Abu-Hadhoud Solution
Select Make, NumberOfVehicles, TotalVehicles, Perc = Cast( NumberOfVehicles as float) /  Cast(TotalVehicles as Float) From
(
	Select Makes.Make, NumberOfVehicles = Count(*), TotalVehicles = (Select Count(*) From VehicleDetails)
	From VehicleDetails
	Join Makes ON VehicleDetails.MakeID = Makes.MakeID
	Where Year Between 1950 and 2000
	Group By Make
)Virtual_Table
Order By NumberOfVehicles Desc;


