select LTRIM('    Hello')

select RTRIM('    Hello    ')

select LTRIM(Name) as FirstName from employee

select UPPER(LTRIM(Name)) as FirstName from employee

select REVERSE(UPPER(LTRIM(Name))) as FirstName from employee

select Name, Len(LTRIM(Name)) as total from employee -- if we have space before name then it will also be counted in length.