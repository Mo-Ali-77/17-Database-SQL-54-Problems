-- Problem 17: Get total Makes that Mantufactures DriveTypeName=FWD

-- Solution 1: Filter the FWD data within the subquery first to reduce the data volume before counting (Filter Early)
Select TotalMakes = Count(AllMakesOfFWD.Make) From
(
Select Distinct Makes.Make, DriveTypes.DriveTypeName From VehicleDetails
Join Makes ON VehicleDetails.MakeID = Makes.MakeID
Join DriveTypes ON VehicleDetails.DriveTypeID = DriveTypes.DriveTypeID
Where DriveTypes.DriveTypeName = 'FWD'
)AllMakesOfFWD

-- Solution 2: Retrieve all the data and apply `DISTINCT` first,
            -- then apply the FWD filter externally (logically less efficient)
Select TotalMakes = Count(AllMakesOfFWD.Make) From
(
Select Distinct Makes.Make, DriveTypes.DriveTypeName From VehicleDetails
Join Makes ON VehicleDetails.MakeID = Makes.MakeID
Join DriveTypes ON VehicleDetails.DriveTypeID = DriveTypes.DriveTypeID
)AllMakesOfFWD
Where AllMakesOfFWD.DriveTypeName = 'FWD'

-- Best Practice: Calculate the number of unique brands directly 
               -- by incorporating COUNT(DISTINCT) without the need for a subquery
SELECT TotalMakes = COUNT(DISTINCT Makes.Make) 
FROM VehicleDetails
JOIN Makes ON VehicleDetails.MakeID = Makes.MakeID
JOIN DriveTypes ON VehicleDetails.DriveTypeID = DriveTypes.DriveTypeID
WHERE DriveTypes.DriveTypeName = 'FWD';


