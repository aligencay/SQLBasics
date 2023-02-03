--CONSTRAINT (kisitlayici)

--Default Constraint

--Genel Yapisi:
--Add Constraint [Constraint Adi] Default 'Varsayilan Deger' For [Kolon Adi]

use Northwind

create table OrnekTablo
(
ID int primary key identity(1,1),
Kolon1 nvarchar(MAX),
Kolon2 int
)

Alter Table OrnekTablo
Add Constraint Kolon1Constraint Default 'Boþ' for Kolon1

Alter Table OrnekTablo
Add Constraint Kolon2Constraint Default -1 for Kolon2

Insert OrnekTablo(Kolon2) Values(0)
Insert OrnekTablo(Kolon1) Values('Ali')

select * from OrnekTablo