-- Problem 16: Get all Makes that manufactures DriveTypeName = FWD

Select Distinct Makes.Make, DriveTypes.DriveTypeName From VehicleDetails
Join Makes ON Makes.MakeID = VehicleDetails.MakeID
Join DriveTypes ON VehicleDetails.DriveTypeID = DriveTypes.DriveTypeID
Where DriveTypes.DriveTypeName = 'FWD'
