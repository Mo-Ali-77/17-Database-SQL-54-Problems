-- Problem 6: Get number of vehicles made between 1950 and 2000 per make and add total vehicles column beside

                   -- حساب كل موديل كم سيارة تم صنها 
Select Makes.Make, NumberOfVehicles = Count(*),
                 -- VehicleDetails حساب جميع السيارات التي في جدل ال   
TotalVehicles = (Select Count(*) From VehicleDetails) From VehicleDetails

Join Makes ON VehicleDetails.MakeID = Makes.MakeID
Where Year Between 1950 and 2000

Group By Make
Order By NumberOfVehicles Desc;
