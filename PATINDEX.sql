--PATINDEX FUNCTION

select Email, PATINDEX('%@gmail.com',Email) as FirstOccurance
from employee
where PATINDEX('%@gmail.com',Email) >0