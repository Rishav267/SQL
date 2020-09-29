select * from employee

select Name,Gender from employee

--creating stored procedure of above commnad
--intead of PROCEDURE , PROC can also be used
CREATE PROCEDURE GetEmployees   
AS
BEGIN
	select Name,Gender from employee
END


--only execute the below command
GetEmployees
--or
EXEC GetEmployees
--or
EXECUTE GetEmployees

Create Proc spGetEmployeeByGenderandDepartment
@Gender nvarchar(20),
@DepartmentID int
as
Begin
	Select Name, Gender, DeptID from employee where Gender = @Gender and DeptID = @DepartmentID
End

--execute below
spGetEmployeeByGenderandDepartment 'male',2

--order important, error message only for 'male' not for 1
spGetEmployeeByGenderandDepartment 2,'male'

spGetEmployeeByGenderandDepartment @DepartmentID = 2 , @Gender= 'male'

sp_helptext spGetEmployeeByGenderandDepartment

sp_helptext GetEmployees

------
--updating or changing something existing stored procedure
Alter PROCEDURE GetEmployees  
AS  
BEGIN  
 select Name,Gender from employee  order by Name
END

--deleting stored procedure
Drop proc GetEmployees

--encrypting the text of stored procedure
Alter Proc spGetEmployeeByGenderandDepartment  
@Gender nvarchar(20),  
@DepartmentID int 
with encryption
as  
Begin  
 Select Name, Gender, DeptID from employee where Gender = @Gender and DeptID = @DepartmentID  
End

sp_helptext spGetEmployeeByGenderandDepartment

--stored procedure with output parameters
select * from employee

--creating stored procedure
Create procedure spGetEmployeeCountByGender
@Gender nvarchar(20),
@EmployeeCount int output
as
begin
	select @EmployeeCount = COUNT(ID) from employee where Gender = @Gender
end

--getting output from above stored procedure
Declare @TotalCount int
Execute spGetEmployeeCountByGender 'male' , @TotalCount output
Print @TotalCount

--if we don't initialise @TotalCount as output in above command, then it is null

Declare @TotalCount int
Execute spGetEmployeeCountByGender 'male' , @TotalCount out
if(@TotalCount is NULL)
	print('@TotalCount is null')
else
	print('@TotalCount is not null')

Print @TotalCount

--order of input matters but if value is assignd with parameter name then order not important
Declare @TotalCount int
Execute spGetEmployeeCountByGender @EmployeeCount = @TotalCount out, @Gender = 'male'
Print @TotalCount


sp_help spGetEmployeeCountByGender
sp_help employee

sp_helptext spGetEmployeeCountByGender
sp_depends spGetEmployeeCountByGender
sp_depends employee

