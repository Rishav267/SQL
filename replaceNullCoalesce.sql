--syntax to print complete table with all data available
select * from employeedata

--syntax to execute join
select E.Name as Employee, M.Name as Mangaer
from employeedata E
inner join employeedata M
on E.managerID = M.EmployeeID

--implementing way to replace null
select ISNULL(NULL,'No Manager') as Manager

select ISNULL('MIKE','No Manager') as Manager

select COALESCE(NULL,'No Manager') as Manager

select E.Name as Employee, ISNULL(M.Name,'No Manager') as Manger
from employeedata E
left join employeedata M
on E.managerID = M.EmployeeID

select E.Name as Employee, COALESCE(M.Name,'No Manager') as Manger
from employeedata E
left join employeedata M
on E.managerID = M.EmployeeID

--Using CASE statement
--syntax   
CASE WHEN expression THEN '' ELSE '' END

Select E.Name as Employee, CASE WHEN M.Name IS NULL THEN 'No Manager' ELSE M.Name END as Manger
from employeedata E
left join employeedata M
on E.managerID = M.EmployeeID

--use % with like
Select E.Name as Employee, CASE WHEN M.Name like '%mike' THEN 'No Manager' ELSE M.Name END as Manger
from employeedata E
left join employeedata M
on E.managerID = M.EmployeeID

--COALESCE function

Select * from Coalesc

select ID, COALESCE([Last Name], [Middle Name], [first Name]) as Name
from Coalesc

