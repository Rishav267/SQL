--substring(expression,sarting position, length)
select SUBSTRING('rishav267@gmail.com',11,9) --hard code

select SUBSTRING('rishav267@gmail.com',CHARINDEX('@','rishav267@gmail.com')+1,9) 

select SUBSTRING('rishav267@gmail.com',CHARINDEX('@','rishav267@gmail.com')+1,
LEN('rishav267@gmail.com') - CHARINDEX('@','rishav267@gmail.com'))					--general form

----======================================================================================------------------
select * from employee

select SUBSTRING(Email,CHARINDEX('@',Email)+1,
LEN(Email) - CHARINDEX('@',Email)) as Emaildomain
from employee

select SUBSTRING(Email,CHARINDEX('@',Email)+1,
LEN(Email) - CHARINDEX('@',Email)) as Emaildomain,
COUNT(Email) as Total
from employee
group by SUBSTRING(Email,CHARINDEX('@',Email)+1,
LEN(Email) - CHARINDEX('@',Email))