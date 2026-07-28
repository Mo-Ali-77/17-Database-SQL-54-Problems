-- Problem 54: Get All Employees managed by 'Mohammed'

Select Employees.Name, Managers.Name From Employees
Left Join Employees As Managers ON Employees.ManagerID = Managers.EmployeeID
Where Managers.Name = 'Mohammed'