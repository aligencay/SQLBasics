use northwind

--Inner Join

--Ayný tabloyu iliþkisel olarak birleþtirme

--Personellerimin baðlý olarak çalýþtýðý kiþileri listele? (Personeller, Personeller)

select p1.Adi, p2.Adi from Personeller p1 INNER JOIN Personeller p2 on p1.BagliCalistigiKisi=p2.PersonelID