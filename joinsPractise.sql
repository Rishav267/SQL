select * from Department
select * from employee


select Name, Gender,Salary, DeptName
from employee
Right JOIN Department
ON employee.DeptID = Department.ID

select Name, Gender,Salary, DeptName
from employee
LEFT JOIN Department
ON employee.DeptID = Department.ID

select Name, Gender,Salary, DeptName
from employee
INNER JOIN Department
ON employee.DeptID = Department.ID

select Name, Gender,Salary, DeptName
from employee
FULL JOIN Department
ON employee.DeptID = Department.ID

Select Name, Gender,Salary, DeptName
from employee
CROSS JOIN Department




