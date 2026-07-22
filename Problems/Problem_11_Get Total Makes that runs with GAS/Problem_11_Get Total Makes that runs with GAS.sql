-- Problem 11: Get Total Makes that runs with GAS

-- Mo Ali Solution Before Show Dr.Abu-Hadhoud Solution
Select TotalMakes = Count(AllMakesWithFuelGas.Make) From
(
	Select Distinct Makes.Make, FuelTypes.FuelTypeName From VehicleDetails
	Join FuelTypes ON VehicleDetails.FuelTypeID = FuelTypes.FuelTypeID
	Join Makes ON VehicleDetails.MakeID = Makes.MakeID
	Where FuelTypes.FuelTypeName = 'GAS'
)AllMakesWithFuelGas




