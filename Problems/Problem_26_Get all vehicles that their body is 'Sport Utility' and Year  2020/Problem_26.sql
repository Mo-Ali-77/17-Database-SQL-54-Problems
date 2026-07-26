-- Problem 26 Get all vehicles that their body is 'Sport Utility' and Year  2020

Select Bodies.BodyName,VehicleDetails.* From VehicleDetails
Join Bodies ON VehicleDetails.BodyID = Bodies.BodyID
Where (Bodies.BodyName = 'Sport Utility') And (VehicleDetails.Year = 2020);
