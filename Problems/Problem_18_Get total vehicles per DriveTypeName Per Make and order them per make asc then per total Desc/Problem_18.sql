-- Problem 18 Get total vehicles per DriveTypeName Per Make and order them per make asc then per total Desc

Select Distinct Makes.Make,DriveTypes.DriveTypeName,TotalVehicles = Count(*) From VehicleDetails
Join DriveTypes ON VehicleDetails.DriveTypeID = DriveTypes.DriveTypeID
Join Makes ON VehicleDetails.MakeID = Makes.MakeID
Group By DriveTypes.DriveTypeName, Makes.Make
Order By Makes.Make Asc, TotalVehicles Desc;
