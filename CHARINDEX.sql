--finding position of @ in given mail id, return first occurence after starting position, starting position is optional
select CHARINDEX('@','rishav267@gmail.com')
select CHARINDEX('@','rishav267@gmail@.com@',1)
select CHARINDEX('@','rishav267@gmail@.com@',11)