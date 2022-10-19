USE Northwind

--select sorgular�nda (where �art� yazmak)

select * from Personeller

--personeller tablosunda �ehri London olan verileri listeleyelim

select * from Personeller where Sehir = 'London'

--personeller tablosunda ba�l� �al��t��� ki�i say�s� 5'ten k���k olanlar� listeleyelim
select * from Personeller where BagliCalistigiKisi<5




--and operat�r�
--personeller tablosunda �ehri London ve �lkesi UK olan personelleri listeleyelim

select * from Personeller where Sehir='London' and Ulke='UK'

--or operat�r�
--personeller tablosunda UnvanEki Mr olan ve �ehri Seattle olan personelleri listeleyelim

select * from Personeller where UnvanEki = 'Mr.' or Sehir = 'Seattle'

--kar���k �rnekler
--ad� robert soyadi king olan personelin t�m bilgilerini �ek

select * from Personeller where Adi='Robert' and SoyAdi = 'King'

--PersonelID si 5'ten b�y�k e�it olan t�m personelleri getir

select * from Personeller where PersonelID>=5

-- <> E�it De�ilse
-- = e�itse
-- <= k���k e�itse
-- >= b�y�k e�itse

-- fonksiyon sonu�lar�n� �art olarak kullanmak 
--1993 y�l�nda i�e ba�layanlar� listele

select * from Personeller where YEAR(IseBaslamaTarihi)=1993

--1992 y�l�ndan sonra i�e ba�layanlar� listele

select * from Personeller where YEAR(IseBaslamaTarihi)>1992

--do�um g�n�, ay�n 29u olmayan personelleri listele

select * from Personeller where DAY(DogumTarihi) <> 29

--do�um y�l� 1950 ile 1965 y�llar� aras�nda olan personelleri listele

select * from Personeller where YEAR(DogumTarihi)>1950 and YEAR(DogumTarihi)<1965

--ya�ad��� �ehir London, Tacoma ve Kirkland olan personellerin ad�n� listeleyin

select Adi from Personeller where Sehir='London' or Sehir='Tacoma' or Sehir='Kirkland'
