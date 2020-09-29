select * from employee

select ASCII('A')
select ASCII('ABC')
select ASCII('BC')

select CHAR(65)

--printing from A to Z

declare @start int
set @start = 65
while(@start <=90)
begin
	print CHAR(@start)
	set @start = @start+1
end

--===================================================================================

select ASCII('a')

declare @start1 int
set @start1 = 97
while(@start1 <=122)
begin
	print CHAR(@start1)
	set @start1 = @start1 + 1
end

---==============================================================================

select ASCII('0')

declare @start1 int
set @start1 = 48
while(@start1 <=57)
begin
	print CHAR(@start1)
	set @start1 = @start1 + 1
end

select LEFT('ABCDEF',3)
select LEFT('ABCDEF',4)
select RIGHT('ABCDEF',3)
