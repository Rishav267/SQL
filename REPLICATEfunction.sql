--REPLICATE FUNCTION
select * from employee

select REPLICATE('SOFTWARE ',3)

select Name, SUBSTRING(Email,1,2) + REPLICATE ('*',5) + 
SUBSTRING(Email,CHARINDEX('@',Email),LEN(Email) - CHARINDEX('@',Email)+1) as Email
from employee