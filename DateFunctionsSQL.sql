use Northwind

-- TARÝH FONKSÝYONLARI

--GETDATE : bu günün tarihini verir
select GETDATE()

--DATEADD : verilen tarihe verildiði kadar gün, ay ve yýl ekler
select DATEADD(DAY,999,GETDATE())
select DATEADD(MONTH,999,GETDATE())
select DATEADD(YEAR,999,GETDATE())

--DATEDIFF : iki tarih arasýnda günü, ayý ve yýlý hesaplar
select DATEDIFF(DAY, '05.09.1992',GETDATE()) --tarih fonksiyonlarý ay/gün/yýl
select DATEDIFF(MONTH,'05.10.1992',GETDATE())
select DATEDIFF(YEAR, '05.11.1992',GETDATE())

--DATEPART : verilen tarihin haftanýn ayýn yahut yýlýn kaçýncý günü olduðunu hesaplar
select DATEPART(DW,GETDATE()) --DW: HAFTAYI BELÝRTÝR
select DATEPART(DAY,GETDATE())
select DATEPART(YEAR,GETDATE())