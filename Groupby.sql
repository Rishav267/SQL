select * from three

select SUM(salary) from three

select MIN(salary) from three

select top 1 * from three 
Where salary = (select MIN(salary) from three)
order by Name

select MAX(salary) from three

Select place,CityID, SUM(salary) as ToatalSalary from three
Group By place,CityID

select place, Gender, SUM(salary) as ToatalSalary from three
Group By place,Gender
order by place

select Gender,place, SUM(salary) as ToatalSalary from three
Group By Gender
order by place

select place, Gender, SUM(salary) as [Toatal Salary] from three
Group By place,Gender
order by place

select place, SUM(salary) as TotalSalary, count(ID) as [Total Employee] from three 
Group By place
order by [Total Employee]  DESC

select place, SUM(salary) as TotalSalary, count(ID) as [Total Employee] from three 
Group By place
order by TotalSalary  DESC

select place, SUM(salary) as TotalSalary, count(ID) as [Total Employee],AVG(salary) as Average from three 
Group By place
order by TotalSalary, [Total Employee]

select place, Gender, SUM(salary) as ToatalSalary, count(ID) as [Total Employee] from three 
Group By place,Gender
Having Gender = 'male'
order by place

select place, Gender, SUM(salary) as ToatalSalary, count(ID) as [Total Employee] from three 
Where Gender = 'male'
Group By place,Gender
order by place

Select * from three Where SUM(salary) > 40000

