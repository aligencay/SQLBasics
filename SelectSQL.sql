USE Northwind

--SELECT komutu

SELECT 3

SELECT 'GENCAY'
print 'GENCAY'

SELECT 5,5,7

SELECT 'AL�', 'GENCAY', 20

SELECT * FROM Personeller

SELECT Adi, SoyAdi, Unvan FROM Personeller

--Alias atama

select 3 as deger --eskiden as kullanmam�z gerekiyordu art�k yan�na istedi�imiz ifadeyi yazmam�z yeterli

select 5 deger

select 'Ali' Adi, 'Gencay' SoyAdi

select Adi �simler, Soyadi Soyisimler from Personeller

--bo�luk karakteri olan alias atama
select 1453 istanbulun fethi --hata verecektir

select 1453 [istanbulun fethi] --bo�luk kullanarak alias vermek istersek k��eli parantez kullanmam�z gerekir

--bo�luk karakteri olan tabloyu sorgulama
select * from Satis Detaylari

select * from [satis detaylari]

--kolonlar� birle�tirme
select adi, soyadi from Personeller
select adi + ' ' + soyadi [Personel Bilgileri] from Personeller

--farkl� tipte kolonlar� birle�tirme
select adi + ' ' + IseBaslamaTarihi from Personeller

select adi + ' ' + CONVERT(nvarchar, IseBaslamaTarihi) from Personeller

select adi + ' ' + CAST(IseBaslamaTarihi as nvarchar) from Personeller 







