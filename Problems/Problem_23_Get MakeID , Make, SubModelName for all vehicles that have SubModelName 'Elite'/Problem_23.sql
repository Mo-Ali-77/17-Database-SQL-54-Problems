-- Problem 23 Get MakeID , Make, SubModelName for all vehicles that have SubModelName 'Elite'

Select Distinct Makes.MakeID, Makes.Make, SubModels.SubModelName From VehicleDetails
Join Makes ON VehicleDetails.MakeID = Makes.MakeID
Join SubModels ON VehicleDetails.SubModelID = SubModels.ModelID
Where SubModels.SubModelName = 'Elite';