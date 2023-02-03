--WITH ROLLUP 
--Group By ile gruplanmis veri kumesinde ara toplam alinmasini saglar

use Northwind

select SatisID,UrunId,SUM(Miktar) from [Satis Detaylari]
group by SatisID,UrunID with rollup

select KategoriID,UrunID,SUM(TedarikciID) from Urunler
group by KategoriID,UrunID with rollup

--Having sartiyla beraber with rollup
select SatisID,UrunID,SUM(Miktar) from [Satis Detaylari]
group by SatisID,UrunID with rollup having SUM(Miktar)>100