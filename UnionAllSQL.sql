--UNION ALL
use Northwind

--Union tekrarli kayitlari getirmez. Tekrarli kayitlari getirmek icin Union All komutu kullanilmalidir.
select Adi,SoyAdi from Personeller
UNION
select Adi,SoyAdi from Personeller

select Adi,SoyAdi from Personeller
UNION ALL
select Adi,SoyAdi from Personeller