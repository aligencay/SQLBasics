USE Northwind

--SELECT komutu

SELECT 3

SELECT 'GENCAY'
print 'GENCAY'

SELECT 5,5,7

SELECT 'ALÝ', 'GENCAY', 20

SELECT * FROM Personeller

SELECT Adi, SoyAdi, Unvan FROM Personeller

--Alias atama

select 3 as deger --eskiden as kullanmamýz gerekiyordu artýk yanýna istediðimiz ifadeyi yazmamýz yeterli

select 5 deger

select 'Ali' Adi, 'Gencay' SoyAdi

select Adi Ýsimler, Soyadi Soyisimler from Personeller

--boþluk karakteri olan alias atama
select 1453 istanbulun fethi --hata verecektir

select 1453 [istanbulun fethi] --boþluk kullanarak alias vermek istersek köþeli parantez kullanmamýz gerekir

--boþluk karakteri olan tabloyu sorgulama
select * from Satis Detaylari

select * from [satis detaylari]

--kolonlarý birleþtirme
select adi, soyadi from Personeller
select adi + ' ' + soyadi [Personel Bilgileri] from Personeller

--farklý tipte kolonlarý birleþtirme
select adi + ' ' + IseBaslamaTarihi from Personeller

select adi + ' ' + CONVERT(nvarchar, IseBaslamaTarihi) from Personeller

select adi + ' ' + CAST(IseBaslamaTarihi as nvarchar) from Personeller 







