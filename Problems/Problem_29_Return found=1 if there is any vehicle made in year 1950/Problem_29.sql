-- Problem 29 Return found=1 if there is any vehicle made in year 1950

Select Founed = 1
Where Exists (Select Top 1 * From VehicleDetails Where VehicleDetails.Year = 1950)