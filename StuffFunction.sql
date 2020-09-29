--STUFF FUNCTION

select Name, Email,
STUFF(Email,2,3,'****') as StuffedEmail from employee