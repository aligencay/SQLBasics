use Northwind

--AGGREGATE FONKS�YONLAR
--AVG : ortalama al�r
select AVG(PersonelID) from personeller 

--MAX : en b�y�k de�eri bulur
select MAX(PersonelID) from Personeller

--MIN : en k���k de�eri bulur
select MIN(PersonelID) from Personeller

--COUNT : toplam say�s�n� verir
select COUNT(PersonelID) from Personeller
select COUNT(*) from Personeller

--SUM : toplam�n� verir
select SUM(NakliyeUcreti) from Satislar

