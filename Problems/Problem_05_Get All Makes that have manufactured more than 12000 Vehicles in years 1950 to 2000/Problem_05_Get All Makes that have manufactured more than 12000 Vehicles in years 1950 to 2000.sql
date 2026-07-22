-- Problem 5 : Get All Makes that have manufactured more than 12000 Vehicles in years 1950 to 2000

-- This Solution is Slow because I used Count(*) Twice.
Select Makes.Make, NumberOfVehicles = Count(*) from VehicleDetails
Join Makes ON VehicleDetails.MakeID = Makes.MakeID
Where (Year Between 1950 and 2000)
Group By Make
Having COUNT(*) > 12000
Order By NumberOfVehicles Desc;


-- This Solution is Fast because I used Count(*) once.
select * From
(Select Makes.Make, NumberOfVehicles = Count(*) from VehicleDetails
Join Makes ON VehicleDetails.MakeID = Makes.MakeID
Where Year Between 1950 and 2000
Group By Make
) R1
Where R1.NumberOfVehicles > 12000
Order By R1.NumberOfVehicles Desc;


