use Northwind

--GROUP BY KOMUTU

select * from Urunler

select KategoriID, COUNT(*) from Urunler group by KategoriID

select PersonelID, COUNT(*) from Personeller group by PersonelID

select PersonelID, SUM(NakliyeUcreti) from Satislar group by PersonelID