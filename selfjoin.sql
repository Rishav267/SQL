select * from employeedata


select E.Name as Employee, M.Name as Mangaer
from employeedata E
inner join employeedata M
on E.managerID = M.EmployeeID

select E.Name as Employee, M.Name as Mangaer
from employeedata E
right join employeedata M
on E.managerID = M.EmployeeID

select E.Name as Employee, M.Name as Mangaer
from employeedata E
cross join employeedata M

select E.Name as Employee, M.Name as Mangaer
from employeedata E
full join employeedata M
on E.managerID = M.EmployeeID