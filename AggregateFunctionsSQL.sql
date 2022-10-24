use Northwind

--AGGREGATE FONKSÝYONLAR
--AVG : ortalama alýr
select AVG(PersonelID) from personeller 

--MAX : en büyük deðeri bulur
select MAX(PersonelID) from Personeller

--MIN : en küçük deðeri bulur
select MIN(PersonelID) from Personeller

--COUNT : toplam sayýsýný verir
select COUNT(PersonelID) from Personeller
select COUNT(*) from Personeller

--SUM : toplamýný verir
select SUM(NakliyeUcreti) from Satislar

