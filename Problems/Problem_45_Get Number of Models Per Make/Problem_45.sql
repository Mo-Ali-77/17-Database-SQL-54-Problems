-- Problem 45 Get Number of Models Per Make

Select Makes.Make, NumberOfModels = Count(MakeModels.ModelName) From MakeModels
Join Makes ON Makes.MakeID = MakeModels.MakeID
Group By Makes.Make
Order By NumberOfModels Desc
