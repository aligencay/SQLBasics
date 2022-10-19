USE Northwind

--select sorgularýnda (where þartý yazmak)

select * from Personeller

--personeller tablosunda þehri London olan verileri listeleyelim

select * from Personeller where Sehir = 'London'

--personeller tablosunda baðlý çalýþtýðý kiþi sayýsý 5'ten küçük olanlarý listeleyelim
select * from Personeller where BagliCalistigiKisi<5




--and operatörü
--personeller tablosunda þehri London ve ülkesi UK olan personelleri listeleyelim

select * from Personeller where Sehir='London' and Ulke='UK'

--or operatörü
--personeller tablosunda UnvanEki Mr olan ve þehri Seattle olan personelleri listeleyelim

select * from Personeller where UnvanEki = 'Mr.' or Sehir = 'Seattle'

--karýþýk örnekler
--adý robert soyadi king olan personelin tüm bilgilerini çek

select * from Personeller where Adi='Robert' and SoyAdi = 'King'

--PersonelID si 5'ten büyük eþit olan tüm personelleri getir

select * from Personeller where PersonelID>=5

-- <> Eþit Deðilse
-- = eþitse
-- <= küçük eþitse
-- >= büyük eþitse

-- fonksiyon sonuçlarýný þart olarak kullanmak 
--1993 yýlýnda iþe baþlayanlarý listele

select * from Personeller where YEAR(IseBaslamaTarihi)=1993

--1992 yýlýndan sonra iþe baþlayanlarý listele

select * from Personeller where YEAR(IseBaslamaTarihi)>1992

--doðum günü, ayýn 29u olmayan personelleri listele

select * from Personeller where DAY(DogumTarihi) <> 29

--doðum yýlý 1950 ile 1965 yýllarý arasýnda olan personelleri listele

select * from Personeller where YEAR(DogumTarihi)>1950 and YEAR(DogumTarihi)<1965

--yaþadýðý þehir London, Tacoma ve Kirkland olan personellerin adýný listeleyin

select Adi from Personeller where Sehir='London' or Sehir='Tacoma' or Sehir='Kirkland'
