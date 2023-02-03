--DML (Data Manipulation Language)
use Northwind

--Select, Insert, Update, Delete


--Select
Select * from Personeller

--Insert
--Insert [Tablo Adi](Kolonlar)Values(Deðerler)
Insert Personeller(Adi,Soyadi) Values('Ali','Gencay')
Insert Personeller Values('Gencay','Ali','Yazilim Muhendisligi Ogrencisi','YM','01.01.2002',GETDATE(),'Karabuk','Karabuk','Karadeniz','78200','Türkiye',
'03121111111',null,null,null,null,null)

--Dikkat Edilmesi Gerekenler!!!
--Into komutu ile yazilabilir, ancak artik kullanmamiza gerek yoktur
Insert Into Personeller(Adi,SoyAdi) Values('Ali','Gencay')
--Kolonun kabul ettigi veri tipi ve karakter uzunlugunda kayit yapilmalidir.
--NOT NULL olan kolonlara bos birakilamayacagindan dolayi mutlaka deger gonderilmelidir.
Insert Personeller(Unvan,UnvanEki) Values ('a','b') --Adi,SoyAdi verilerini girmeden bu kod blogu calismaz
--Otomatik artan(indentity) kolonlara deger gonderilmez.
--Tablodaki secilen yahut butun kolonlara deger gonderilecegi belirtilip, gonderilmezse hata verecektir.
Insert Personeller(Adi,SoyAdi) Values('Ali')
Insert Personeller Values('Ali')

--Pratik Kullanim
Insert Musteriler(MusteriAdi,Adres) Values('Furkan','Gökmen')
Insert Musteriler(MusteriAdi,Adres) Values('Fetih','Yýlmaz')
Insert Musteriler(MusteriAdi,Adres) Values('Nurselam','Erman')

Insert Musteriler(MusteriAdi,Adres) Values('Furkan','Gökmen'),
											('Fetih','Yýlmaz'),
											('Nurselam','Erman')

--Insert komutuyla Select sorgusu sonucu gelen verileri farkli tabloya kaydetme
Insert OrnekPersoneller Select Adi,Soyadi from Personeller	
--Burada dikkat edilmesi gereken nokta;select sorgusunda donen kolon sayisiyla Insert islemi yapilacak kolon sayisi
--	birbirine esit olmamalidir (kolonlarin veri tipleri de ayni olmalidir)

--Select sorgusu sonucu gelen verileri farkli bir tablo olusturarak kaydetme
Select Adi,SoyAdi,Ulke into OrnekPersoneller2 from Personeller
--Bu yontemle primary key ve foreign keyler olusturulamazlar

--UPDATE
--update [tablo adi] set [kolon adi] = deger
update OrnekPersoneller set Adi = 'Mehmet'

--update sorgusuna where þartý yazmak
update OrnekPersoneller set Adi = 'Mehmet' where Adi = 'Nancy'

--update sorgusunda join yapilarini kullanarak birden fazla tabloda guncelleme yapmak
update Urunler set UrunAdi = k.KategoriAdi from Urunler u INNER JOIN Kategoriler k on k.KategoriID = u.KategoriID

--update sorgusunda subquery ile guncelleme yapmak
update Urunler set UrunAdi = (select Adi from Personeller where PersonelID = 3)

--update sorgusunda top keyword'u ile guncelleme yapmak
update top(30) Urunler set UrunAdi = 'x'

--DELETE

--delete from [tablo adi]
delete from Urunler

--delete sorgusuna where sarti yazmak
delete from Urunler where KategoriID < 3

--dikkat edilmesi gerekenler!!
--delete sorgusuyla tablonun icerisindeki tum verileri silmemiz identity kolonunu sifirlamayacaktir.
-- silme isleminden sonra ilk eklenen veride kalindigi yerden id degeri verilecektir.