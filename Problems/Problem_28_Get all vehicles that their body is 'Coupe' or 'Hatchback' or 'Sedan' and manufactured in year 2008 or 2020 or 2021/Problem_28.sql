-- Problem 28 Get all vehicles that their body is 'Coupe' or 'Hatchback' or 'Sedan' and manufactured in year 2008 or 2020 or 2021

Select Bodies.BodyName,VehicleDetails.* From VehicleDetails
Join Bodies ON VehicleDetails.BodyID = Bodies.BodyID
Where Bodies.BodyName In('Coupe','Hatchback','Sedan') And (VehicleDetails.Year In(2008,2020,2021));
