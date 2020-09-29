--REPLACE FUNCTION
select Email, REPLACE(Email,'.com','.net') as convertedEmail
from employee