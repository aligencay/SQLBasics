USE Northwind

--STRING FONKSÝYONLARI

--LEFT : soldan(baþtan) belirtilen sayýda karakteri getirir.
select LEFT(Adi,2) from Personeller

--RIGHT : saðdan(sondan) belirtilen sayýda karakteri getirir
select RIGHT(Adi,3) from Personeller

--UPPER : büyük harfe çevirir
select UPPER(Adi) from Personeller

--LOWER : küçük harfe çevirir
select LOWER(Adi) from Personeller

--SUBSTRING : belirtilen indexten itibaren belirtilen sayýda karakter getirir
select SUBSTRING(Adi,3,2) from Personeller

--LTRIM : soldan boþluklarý keser
select '           Gencay'
select LTRIM('         Gencay')

--RTRIM : saðdan boþluklarý keser
select 'Gencay          '
select RTRIM('Gencay        ')

--REVERSE : tersine çevirir
select REVERSE(Adi) from Personeller

--REPLACE : belirtilen ifadeyi, belirtilen ifade ile deðiþtirir
select REPLACE('Benim adým Ali','Ali','Gencay')

--CHARINDEX : belirtilen karakterin veri içerisindeki sýrasýný verir
select Adi, CHARINDEX('r',Adi) from Personeller
select MusteriAdi, CHARINDEX(' ',MusteriAdi) from Musteriler

--charindex örnek
--müþteriler tablosunun MusteriAdi kolonundan sadece adlarýný çekelim
select MusteriAdi from Musteriler
select SUBSTRING(MusteriAdi,0,CHARINDEX(' ',MusteriAdi)) from Musteriler

--müþteriler tablosunun MusteriAdi kolonundan sadece soyadlarýný çekelim
select SUBSTRING(MusteriAdi, CHARINDEX(' ',MusteriAdi), LEN(MusteriAdi) - (CHARINDEX(' ',MusteriAdi) - 1)) from Musteriler