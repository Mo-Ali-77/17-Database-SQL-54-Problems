-- Problem 52: Get all employees that have manager or does not have manager along with Manager's name, incase no manager name show null

Select Employees.Name, Managers.Name As ManagerName From Employees
Left Join Employees As Managers ON Employees.ManagerID = Managers.EmployeeID
