USE Northwind

--INNER JOIN

--Genel mantýk þudur:
--select * from Tablo1 inner join Tablo2 on Tablo1.IliskiliKolon = Tablo2.IliskiliKolon

--Tablolara alias tanýmlanabilir
--select * from Tablo1 t1 innner join Tablo2 t2 on t1.IliskiliKolon=t2.IliskiliKolon

--Ýki tabloyu iliþkisel birleþtirme

--Örnekler:
--Hangi personel hangi satislari yapmýþtýr. (Personeller, Satislar)
select * from Personeller p INNER JOIN Satislar s on p.PersonelID = s.PersonelID 

--hangi ürün hangi kategoride. (Urunler,Kategoriler)
select * from Urunler u INNER JOIN Kategoriler k on u.KategoriID = k.KategoriID

--Where komutunun kullanýmý

--Beverages kategorisindeki ürünlerim. (Urunler,Kategoriler)
select u.UrunAdi from Kategoriler k INNER JOIN Urunler u on k.KategoriID = u.KategoriID where k.KategoriAdi = 'Beverages'

--Beverages kategorisindeki ürünlerimin sayýsý kaçtýr. (Urunler, Kategoriler)
select COUNT(u.urunAdi) from Kategoriler k INNER JOIN Urunler u on k.KategoriID = u.KategoriID where k.KategoriAdi = 'Beverages'

--Seafood kategorisindeki ürünlerin listesi. (Urunler, Kategoriler)
select u.UrunAdi from Kategoriler k INNER JOIN Urunler u on k.KategoriID = u.KategoriID where k.KategoriAdi = 'Seafood'

--hangi satýþý hangi çalýþaným yapmýþ? (Satislar, Personeller)
select s.SatisID, p.Adi	+ ' ' + p.SoyAdi from Personeller p INNER JOIN Satislar s on p.PersonelID = s.PersonelID

--faks numarasý NULL olmayan tedarikçilerden alýnmýþ ürünler nelerdir? (Urunler, Tedarikciler)
select u.UrunAdi from Urunler u INNER JOIN Tedarikciler t on u.TedarikciID = t.TedarikciID where t.Faks <> 'NULL'
select u.UrunAdi from Urunler u INNER JOIN Tedarikciler t on u.TedarikciID = t.TedarikciID where t.Faks is not null

