use northwind

--Inner Join

--Ayn� tabloyu ili�kisel olarak birle�tirme

--Personellerimin ba�l� olarak �al��t��� ki�ileri listele? (Personeller, Personeller)

select p1.Adi, p2.Adi from Personeller p1 INNER JOIN Personeller p2 on p1.BagliCalistigiKisi=p2.PersonelID