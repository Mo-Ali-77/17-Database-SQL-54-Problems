-- Problem 44 Get Total Number Of Doors Manufactured by 'Ford'

Select Makes.Make, TotalNumberOfDoors = Sum(VehicleDetails.NumDoors) From VehicleDetails
Join Makes ON VehicleDetails.MakeID = Makes.MakeID
Group By Makes.Make
Having Makes.Make = 'Ford';
