Select * from tbGender
Select * from Table_1Person

insert into tbGender (ID, Gender) Values (3,'unknown')
insert into Table_1Person Values (5,'ROMI', 'r@rr.com',1)

Alter TABLE Table_1Person
ADD CONSTRAINT DF_Table_1Person_Genderid
DEFAULT 3 FOR Genderid

Alter TABLE Table_1Person
add Disability int NULL 
