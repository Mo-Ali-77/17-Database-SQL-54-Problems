--  Problem 10: Get all Makes that runs with GAS

-- With Duplicate Data
Select Makes.Make, FuelTypes.FuelTypeName From VehicleDetails
Join FuelTypes ON VehicleDetails.FuelTypeID = FuelTypes.FuelTypeID
Join Makes ON VehicleDetails.MakeID = Makes.MakeID
Where FuelTypes.FuelTypeName = 'GAS';

-- Withouut Duplicate Data
Select Distinct Makes.Make, FuelTypes.FuelTypeName From VehicleDetails
Join FuelTypes ON VehicleDetails.FuelTypeID = FuelTypes.FuelTypeID
Join Makes ON VehicleDetails.MakeID = Makes.MakeID
Where FuelTypes.FuelTypeName = 'GAS';