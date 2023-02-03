--Inner Join

--INNER JOINDE GROUP BY

SELECT KategoriID,COUNT(*) from Urunler GROUP BY KategoriID

--Hangi personel (adi ve soyadi ile birlikte) toplam kac satis yapmis? Satis adedi 100den fazla olanlar
-- ve personelin adinin bas harfi M olan kayitlar gelsin. (Personeller,Satislar)

select p.Adi + ' ' + p.Soyadi, COUNT(s.SatisID) from Personeller p INNER JOIN Satislar s on p.PersonelID = s.PersonelID where 
p.Adi like 'm%' group by p.Adi + ' ' + p.SoyAdi having COUNT(s.SatisID) > 100

--Seafood kategorisindeki urunler sayisi?  (Urunler,Kategoriler)
select k.KategoriID, COUNT(u.UrunAdi) from Urunler u INNER JOIN Kategoriler k on u.KategoriID = k.KategoriID where 
k.KategoriAdi = 'Seafood' GROUP BY k.KategoriAdi

--Hangi personelim kac adet satis yapmis? (Personeller,Satislar)
select p.Adi,COUNT(s.SatisID) from Personeller p INNER JOIN Satislar s on p.PersonelID = s.PersonelID group by p.Adi

--En cok satis yapan personel hangisidir? (Personeller,Satislar)
select TOP 1 p.Adi,COUNT(s.SatisID) from Personeller p INNER JOIN Satislar s on p.PersonelID = s.PersonelID group by p.Adi order by COUNT(s.SatisID) DESC

--Adinda "a" harfi olan personellerin SatisID'si 10500'den buyuk olan satislarinin toplam tutarini (miktar*birimfiyat) 
--	ve bu satislarin hangi tarihte gerceklestigini listele.	(Personeller,Satislar,[Satis Detaylari])
select SUM(sd.Miktar*sd.BirimFiyati),s.SatisTarihi from Personeller p INNER JOIN Satislar s on p.PersonelID = s.PersonelID 
INNER JOIN [Satis Detaylari] sd on s.SatisID = sd.SatisID where p.Adi like '%a%' and s.SatisID > 10500 group by s.SatisTarihi	