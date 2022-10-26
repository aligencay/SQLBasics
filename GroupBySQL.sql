use Northwind

--GROUP BY KOMUTU

select * from Urunler

select KategoriID, COUNT(*) from Urunler group by KategoriID

select PersonelID, COUNT(*) from Personeller group by PersonelID

select PersonelID, SUM(NakliyeUcreti) from Satislar group by PersonelID

--NOT: where �art� group by �art�ndan �nce yaz�lmal�d�r

select kategoriID, COUNT(*) from Urunler where KategoriID > 5 group by KategoriID

select PersonelID, COUNT(*) from Personeller where PersonelID < 5 group by PersonelID

--HAVING kullan�m�
--WHERE ile HAVING FARKI:
--WHERE komutu kolon �zerinde �art yazmam�z� sa�lar
--HAVING komutu aggregate fonksiyonlar� �zerinde �art yazmam�z� sa�lar

select KategoriID, COUNT(*) from Urunler where KategoriID > 5 group by KategoriID having COUNT(*) > 6