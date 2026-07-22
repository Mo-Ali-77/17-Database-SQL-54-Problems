-- Problem 9: Get all vehicles that runs with GAS
-- Mo Ali Solution Before Show Dr.Abu-Hadhoud
-- Not good Practices, Because Subquery and duplicate where statement
Select *, FuelTypeName = 
	(Select FuelTypes.FuelTypeName From FuelTypes
		Where FuelTypeName = 'GAS'	
	) From VehicleDetails
Where FuelTypeID = 14;

-- Faster Solution because I use FuelTupeID NOT FuelTypeName but Not good Practices, because Hardciding
Select *, FuelTypeName = 
	(Select FuelTypes.FuelTypeName From FuelTypes
		Where FuelTypes.FuelTypeID = 14	
	) From VehicleDetails
Where VehicleDetails.FuelTypeID = 14;

-- Another Solution, but the result become combine between VehicleDetails and FeulTypes 
Select * From VehicleDetails
Join FuelTypes ON FuelTypes.FuelTypeID = VehicleDetails.FuelTypeID
Where VehicleDetails.FuelTypeID = 14; -- Hardcoding NOT Good Practices

-- Duplicate of column FuelTypeName
Select *, FuelTypes.FuelTypeName From VehicleDetails
Join FuelTypes ON FuelTypes.FuelTypeID = VehicleDetails.FuelTypeID
Where FuelTypes.FuelTypeName = 'GAS';

-- Duplicate of column FuelTypeID
Select * From VehicleDetails
Join FuelTypes ON FuelTypes.FuelTypeID = VehicleDetails.FuelTypeID
Where FuelTypes.FuelTypeName = 'GAS';

-- Dr.Abu-Hadhoud Solution, The best Solution
Select VehicleDetails.*, FuelTypes.FuelTypeName From VehicleDetails
Join FuelTypes ON VehicleDetails.FuelTypeID = FuelTypes.FuelTypeID
Where FuelTypes.FuelTypeName = 'GAS';
