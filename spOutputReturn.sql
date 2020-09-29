select * from employee

create procedure spGetTotalEmployee1
@TotalCount int output
as
begin
	select @TotalCount = COUNT(ID) from employee
end

declare @Total int
Execute spGetTotalEmployee1 @Total output
select @Total
--use either select or print
print @Total

--return demo
--syntax
create procedure spGetTotalEmployee2
as
begin
	return (select COUNT(ID) from employee)
end

declare @Total int
execute @Total = spGetTotalEmployee2
print @Total

--e.g. where output parameter can  be used but return syntax can't

create procedure spGetNameID1
@ID int,
@Name nvarchar(30) output
as
begin
	Select @Name = Name from employee where ID = @ID
end

Declare @name nvarchar(30)
execute spGetNameID1 1,@name out
print 'Name is ' + @name

create procedure spGetNameID2
@ID int
as
begin
	return (Select Name from employee where ID = @ID)
end

--error
Declare @name nvarchar(30)
execute @name = spGetNameID2 1
print 'Name is ' + @name

select * from employee

create procedure spGetNameById
@Id int
as
begin
	select Name from employee where Id = @Id
end

execute spGetNameById 1 --it creates a execution plan, again we run it uses same execution plan
execute spGetNameById 2 -- in stored procedure , this also uses same execution plan

select Name from employee where ID = 1 --here it creates a execution plan, even one extra space in between make change. does not remain same
select name from employee where ID = 2 -- but here it create new execution plan, does not use the previous one
