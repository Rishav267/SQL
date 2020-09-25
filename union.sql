select * from IndiaCustomer
UNION
select * from UKcustomer

select * from IndiaCustomer
UNION ALL
select * from UKcustomer

select ID,Name,Email from IndiaCustomer
UNION ALL
select ID,Name,Email from UKCustomer

--error
select Name,ID,Email from IndiaCustomer
UNION ALL
select ID,Name,Email from UKCustomer

select ID,Email,Name from IndiaCustomer
UNION ALL
select ID,Name,Email from UKCustomer

--sorting the output table by name
select * from IndiaCustomer
UNION ALL
select * from UKCustomer
order by Name

--error
select * from IndiaCustomer
order by Name
UNION ALL
select * from UKCustomer



