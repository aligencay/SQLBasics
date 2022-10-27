use Northwind

--tablolarý yan yana birleþtirme

select * from personeller
select * from Urunler

select * from Personeller, Satislar

select Personeller.PersonelID, Satislar.SatisID from Personeller, Satislar
select p.PersonelID, s.SatisID from Personeller p, Satislar s

--PersonelID'lerinin SatisID'ye eþit olduðu verileri göstermek için:
select * from Personeller p, Satislar s where p.PersonelID = s.SatisID 