--UNION | UNION ALL
use Northwind

--UNION
--Birden fazla select sorugusu sonucunu tek seferde alt alta gostermemizi saglar

select Adi,SoyAdi from Personeller
select MusteriAdi,MusteriUnvani from Musteriler

--2'den fazla
select Adi,SoyAdi from Personeller
UNION
select MusteriAdi,MusteriUnvani from Musteriler
UNION
select SevkAdi,SevkAdresi from Satislar

--joinler tablolari yan yana birlestirirken union tablolari alt alta birlestirir
--joinlerde bir kolon uzerinden birlestirme yapilirken union'da boyle bir durum yoktur.

--Dikkat etmemiz gereken kurallar:
--union sorgusunun sonucunda olusan tablonun kolon isimleri, ustteki sorgunun kolon isimlerinden olusturulur
--ustteki sorguda kac kolon cekilmisse alttaki sorguda da o kadar kolon secilmek zorundadir
--ustteki sorgudan cekilen kolonlarin tipleriyle alttaki sorgudan cekilen kolonlarin tipleri uyumlu olmalidir
--union tekrarli kayitlari getirmez

--unionda kullanilan tablolara kolon eklenebilir. dikkat etmemiz gereken nokta, yukaridaki kurallar cercevesinde
--	asagiya da yukariya da ayni sayida kolonlarýn eklenmesi gerekmektedir
select Adi,SoyAdi,'Personel' from Personeller
UNION
Select MusteriAdi,MusteriUnvani,'Müþteri' from Musteriler