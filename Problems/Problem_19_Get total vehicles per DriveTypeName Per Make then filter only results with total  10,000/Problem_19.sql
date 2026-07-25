-- Problem 19 Get total vehicles per DriveTypeName Per Make then filter only results with total  10,000

Select Distinct Makes.Make,DriveTypes.DriveTypeName,TotalVehicles = Count(*) From VehicleDetails
Join DriveTypes ON VehicleDetails.DriveTypeID = DriveTypes.DriveTypeID
Join Makes ON VehicleDetails.MakeID = Makes.MakeID
Group By DriveTypes.DriveTypeName, Makes.Make
Having Count(*) >= 10000
Order By Makes.Make Asc, TotalVehicles Desc;

-- Another Solution Without Having
Select * From
(
Select Distinct Makes.Make,DriveTypes.DriveTypeName,TotalVehicles = Count(*) From VehicleDetails
Join DriveTypes ON VehicleDetails.DriveTypeID = DriveTypes.DriveTypeID
Join Makes ON VehicleDetails.MakeID = Makes.MakeID
Group By DriveTypes.DriveTypeName, Makes.Make
)R1
Where R1.TotalVehicles > 10000
Order By R1.Make Asc, R1.TotalVehicles Desc;






