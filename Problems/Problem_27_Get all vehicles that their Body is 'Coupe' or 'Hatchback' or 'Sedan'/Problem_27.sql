-- Problem 27 Get all vehicles that their Body is 'Coupe' or 'Hatchback' or 'Sedan'

Select Bodies.BodyName,VehicleDetails.* From VehicleDetails
Join Bodies ON VehicleDetails.BodyID = Bodies.BodyID
Where Bodies.BodyName In('Coupe','Hatchback','Sedan');