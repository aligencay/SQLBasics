use Northwind

-- TAR�H FONKS�YONLARI

--GETDATE : bu g�n�n tarihini verir
select GETDATE()

--DATEADD : verilen tarihe verildi�i kadar g�n, ay ve y�l ekler
select DATEADD(DAY,999,GETDATE())
select DATEADD(MONTH,999,GETDATE())
select DATEADD(YEAR,999,GETDATE())

--DATEDIFF : iki tarih aras�nda g�n�, ay� ve y�l� hesaplar
select DATEDIFF(DAY, '05.09.1992',GETDATE()) --tarih fonksiyonlar� ay/g�n/y�l
select DATEDIFF(MONTH,'05.10.1992',GETDATE())
select DATEDIFF(YEAR, '05.11.1992',GETDATE())

--DATEPART : verilen tarihin haftan�n ay�n yahut y�l�n ka��nc� g�n� oldu�unu hesaplar
select DATEPART(DW,GETDATE()) --DW: HAFTAYI BEL�RT�R
select DATEPART(DAY,GETDATE())
select DATEPART(YEAR,GETDATE())