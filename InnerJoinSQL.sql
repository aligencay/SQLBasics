USE Northwind

--INNER JOIN

--Genel mant�k �udur:
--select * from Tablo1 inner join Tablo2 on Tablo1.IliskiliKolon = Tablo2.IliskiliKolon

--Tablolara alias tan�mlanabilir
--select * from Tablo1 t1 innner join Tablo2 t2 on t1.IliskiliKolon=t2.IliskiliKolon

--�ki tabloyu ili�kisel birle�tirme

--�rnekler:
--Hangi personel hangi satislari yapm��t�r. (Personeller, Satislar)
select * from Personeller p INNER JOIN Satislar s on p.PersonelID = s.PersonelID 

--hangi �r�n hangi kategoride. (Urunler,Kategoriler)
select * from Urunler u INNER JOIN Kategoriler k on u.KategoriID = k.KategoriID

--Where komutunun kullan�m�

--Beverages kategorisindeki �r�nlerim. (Urunler,Kategoriler)
select u.UrunAdi from Kategoriler k INNER JOIN Urunler u on k.KategoriID = u.KategoriID where k.KategoriAdi = 'Beverages'

--Beverages kategorisindeki �r�nlerimin say�s� ka�t�r. (Urunler, Kategoriler)
select COUNT(u.urunAdi) from Kategoriler k INNER JOIN Urunler u on k.KategoriID = u.KategoriID where k.KategoriAdi = 'Beverages'

--Seafood kategorisindeki �r�nlerin listesi. (Urunler, Kategoriler)
select u.UrunAdi from Kategoriler k INNER JOIN Urunler u on k.KategoriID = u.KategoriID where k.KategoriAdi = 'Seafood'

--hangi sat��� hangi �al��an�m yapm��? (Satislar, Personeller)
select s.SatisID, p.Adi	+ ' ' + p.SoyAdi from Personeller p INNER JOIN Satislar s on p.PersonelID = s.PersonelID

--faks numaras� NULL olmayan tedarik�ilerden al�nm�� �r�nler nelerdir? (Urunler, Tedarikciler)
select u.UrunAdi from Urunler u INNER JOIN Tedarikciler t on u.TedarikciID = t.TedarikciID where t.Faks <> 'NULL'
select u.UrunAdi from Urunler u INNER JOIN Tedarikciler t on u.TedarikciID = t.TedarikciID where t.Faks is not null

