use Northwind

--tablolar� yan yana birle�tirme

select * from personeller
select * from Urunler

select * from Personeller, Satislar

select Personeller.PersonelID, Satislar.SatisID from Personeller, Satislar
select p.PersonelID, s.SatisID from Personeller p, Satislar s

--PersonelID'lerinin SatisID'ye e�it oldu�u verileri g�stermek i�in:
select * from Personeller p, Satislar s where p.PersonelID = s.SatisID 