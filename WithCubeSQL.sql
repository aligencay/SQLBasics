--WITH CUBE
--Group By ile gruplanmis veri kumesinde teker teker toplam alinmasini saglar

select SatisID,UrunID,SUM(Miktar) from [Satis Detaylari]
group by SatisID,UrunID with cube

select KategoriID,UrunID,SUM(TedarikciID) from Urunler group by KategoriID,UrunID with cube

--having sartiyla beraber with cube
select SatisID,