-- Problem 49 Get the Lowest Manufacturers manufactured the lowest number of models

Select Makes.Make, NumberOfModels = Count(MakeModels.ModelName) From MakeModels
Join Makes ON Makes.MakeID = MakeModels.MakeID
Group By Makes.Make
Having Count(MakeModels.ModelName) = ( 
										Select MaxNumberOfModels = Min(NumberOfModels) From
										(
											Select Makes.Make, NumberOfModels = Count(MakeModels.ModelName) From MakeModels
											Join Makes ON Makes.MakeID = MakeModels.MakeID
											Group By Makes.Make
										)R1
				                     )
