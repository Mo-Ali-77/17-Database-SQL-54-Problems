-- Problem 47 Get the highest number of models manufactured

Select MaxNumberOfModels = Max(NumberOfModels) From
(
	Select Makes.Make, NumberOfModels = Count(MakeModels.ModelName) From MakeModels
	Join Makes ON Makes.MakeID = MakeModels.MakeID
	Group By Makes.Make
)R1

