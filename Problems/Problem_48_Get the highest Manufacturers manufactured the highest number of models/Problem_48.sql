-- Problem 48 Get the highest Manufacturers manufactured the highest number of models

Select Makes.Make, NumberOfModels = Count(MakeModels.ModelName) From MakeModels
Join Makes ON Makes.MakeID = MakeModels.MakeID
Group By Makes.Make
Having Count(MakeModels.ModelName) = ( 
										Select MaxNumberOfModels = Max(NumberOfModels) From
										(
											Select Makes.Make, NumberOfModels = Count(MakeModels.ModelName) From MakeModels
											Join Makes ON Makes.MakeID = MakeModels.MakeID
											Group By Makes.Make
										)R1
				                     )

