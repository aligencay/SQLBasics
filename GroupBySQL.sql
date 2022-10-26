use Northwind

--GROUP BY KOMUTU

select * from Urunler

select KategoriID, COUNT(*) from Urunler group by KategoriID

select PersonelID, COUNT(*) from Personeller group by PersonelID

select PersonelID, SUM(NakliyeUcreti) from Satislar group by PersonelID

--NOT: where þartý group by þartýndan önce yazýlmalýdýr

select kategoriID, COUNT(*) from Urunler where KategoriID > 5 group by KategoriID

select PersonelID, COUNT(*) from Personeller where PersonelID < 5 group by PersonelID

--HAVING kullanýmý
--WHERE ile HAVING FARKI:
--WHERE komutu kolon üzerinde þart yazmamýzý saðlar
--HAVING komutu aggregate fonksiyonlarý üzerinde þart yazmamýzý saðlar

select KategoriID, COUNT(*) from Urunler where KategoriID > 5 group by KategoriID having COUNT(*) > 6