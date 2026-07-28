-- Problem 46 Get the highest 3 manufacturers that make the highest number of models

Select Top 3 Makes.Make, NumberOfModels = Count(MakeModels.ModelName) From MakeModels
Join Makes ON Makes.MakeID = MakeModels.MakeID
Group By Makes.Make
Order By NumberOfModels Desc
