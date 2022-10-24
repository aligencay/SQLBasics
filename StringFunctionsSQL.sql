USE Northwind

--STRING FONKS�YONLARI

--LEFT : soldan(ba�tan) belirtilen say�da karakteri getirir.
select LEFT(Adi,2) from Personeller

--RIGHT : sa�dan(sondan) belirtilen say�da karakteri getirir
select RIGHT(Adi,3) from Personeller

--UPPER : b�y�k harfe �evirir
select UPPER(Adi) from Personeller

--LOWER : k���k harfe �evirir
select LOWER(Adi) from Personeller

--SUBSTRING : belirtilen indexten itibaren belirtilen say�da karakter getirir
select SUBSTRING(Adi,3,2) from Personeller

--LTRIM : soldan bo�luklar� keser
select '           Gencay'
select LTRIM('         Gencay')

--RTRIM : sa�dan bo�luklar� keser
select 'Gencay          '
select RTRIM('Gencay        ')

--REVERSE : tersine �evirir
select REVERSE(Adi) from Personeller

--REPLACE : belirtilen ifadeyi, belirtilen ifade ile de�i�tirir
select REPLACE('Benim ad�m Ali','Ali','Gencay')

--CHARINDEX : belirtilen karakterin veri i�erisindeki s�ras�n� verir
select Adi, CHARINDEX('r',Adi) from Personeller
select MusteriAdi, CHARINDEX(' ',MusteriAdi) from Musteriler

--charindex �rnek
--m��teriler tablosunun MusteriAdi kolonundan sadece adlar�n� �ekelim
select MusteriAdi from Musteriler
select SUBSTRING(MusteriAdi,0,CHARINDEX(' ',MusteriAdi)) from Musteriler

--m��teriler tablosunun MusteriAdi kolonundan sadece soyadlar�n� �ekelim
select SUBSTRING(MusteriAdi, CHARINDEX(' ',MusteriAdi), LEN(MusteriAdi) - (CHARINDEX(' ',MusteriAdi) - 1)) from Musteriler