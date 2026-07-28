-- Problem 51: Get all employees that have manager along with Manager's name.

Select Employees.Name, Managers.Name As ManagerName From Employees
Join Employees As Managers ON Employees.ManagerID = Managers.EmployeeID

