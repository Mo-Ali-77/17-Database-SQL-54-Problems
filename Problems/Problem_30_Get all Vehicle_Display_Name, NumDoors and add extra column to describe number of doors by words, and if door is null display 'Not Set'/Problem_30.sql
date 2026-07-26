-- 32.Problem 30_ Get all Vehicle_Display_Name, NumDoors and add extra column to describe number of doors by words, and if door null display 'Not Set'

-- To See all the Cases we have in the NumDoors
Select Distinct VehicleDetails.NumDoors From VehicleDetails
Order By VehicleDetails.NumDoors

Select VehicleDetails.Vehicle_Display_Name, VehicleDetails.NumDoors, DoorDescription = 
Case 
	When VehicleDetails.NumDoors is NULL Then 'Not set'
	When VehicleDetails.NumDoors = 0 Then 'Zero Door'
	When VehicleDetails.NumDoors = 1 Then 'One Door'
	When VehicleDetails.NumDoors = 2 Then 'Two Doors'
	When VehicleDetails.NumDoors = 3 Then 'Three Doors'
	When VehicleDetails.NumDoors = 4 Then 'Four Doors'
	when VehicleDetails.NumDoors = 5 Then 'Five Doors'
	When VehicleDetails.NumDoors = 6 Then 'Six Doors'
	When VehicleDetails.NumDoors = 8 Then 'Eight Doors'
	Else 'Unknown'
End
From VehicleDetails