select * from employeedata
--select * from Department
select * from employee

select E.Name as EMPname,M.Name as managerName,Salary
from employeedata M
right join employee E
on E.DeptID = M.managerID
--where employee.DeptID is NULL


select Name,Gender,Salary,DeptName
from employee
left join Department
on employee.DeptID = Department.ID
where employee.DeptID is NULL

select Name,Gender,Salary,DeptName
from employee
right join Department
on employee.DeptID = Department.ID
where employee.DeptID is NULL

select Name,Gender,Salary,DeptName
from employee
full join Department
on employee.DeptID = Department.ID
where employee.DeptID is NULL
or Department.ID is NULL


select * from Users
select * from produt

select ProductID,Price,Users,P.Country,U.Country
from produt P
left join Users U
on P.Country <> U.Country and P.ProductID <> U.PID
--where P.Country <> U.Country

select * from Users where not exists (select * from produt where produt.Country = Users.Country and produt.ProductID = Users.PID) 