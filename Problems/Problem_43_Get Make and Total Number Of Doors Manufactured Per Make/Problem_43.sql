-- Problem 43 Get Make and Total Number Of Doors Manufactured Per Make

Select Makes.Make, TotalNumberOfDoors = Sum(VehicleDetails.NumDoors) From VehicleDetails
Join Makes ON VehicleDetails.MakeID = Makes.MakeID
Group By Makes.Make
Order By  TotalNumberOfDoors Desc

