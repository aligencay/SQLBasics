--CROSS JOIN
use Northwind

select COUNT(*) from Personeller
select COUNT(*) from Bolge

select p.Adi,b.BolgeID from Personeller p CROSS JOIN Bolge b

--cross join iki tablo arasinda kartezyen carpim yaptigindan on komutuyla eslesme yapmaya gerek kalmamaktadýr