use Northwind

-- escape (ka���) karakterleri
-- like sorgular�nda kulland���m�z %, _, [], gibi �zel ifadeler e�er ki verilerimiz i�erisinde ge�iyorsa sorgulama esnas�nda hata ile kar��la�abiliriz.
-- b�yle durumlarda bu ifadelerin �zel ifade olmad��� escape karakterleri ile belirleyebiliriz.

-- [] operat�r� ile
-- escape komutu ile

--�rnek -> ismi _Ali soyad� %Gencay olan ki�inin verilerini getirme
select * from personeller where Adi like '[_]'
select * from personeller where Adi like '?_%' escape '?'


