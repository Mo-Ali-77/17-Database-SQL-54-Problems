-- Problem 53: Get all employees that have manager or does not have manager along with Manager's name, incase no manager name the same employee name as manager to himself

Select Employees.Name, 
Case 
	When Managers.Name is Null Then Employees.Name
	Else Managers.Name
End As ManagerName
From Employees
Left Join Employees As Managers ON Employees.ManagerID = Managers.EmployeeID

