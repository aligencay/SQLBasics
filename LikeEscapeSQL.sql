use Northwind

-- escape (kaçýþ) karakterleri
-- like sorgularýnda kullandýðýmýz %, _, [], gibi özel ifadeler eðer ki verilerimiz içerisinde geçiyorsa sorgulama esnasýnda hata ile karþýlaþabiliriz.
-- böyle durumlarda bu ifadelerin özel ifade olmadýðý escape karakterleri ile belirleyebiliriz.

-- [] operatörü ile
-- escape komutu ile

--örnek -> ismi _Ali soyadý %Gencay olan kiþinin verilerini getirme
select * from personeller where Adi like '[_]'
select * from personeller where Adi like '?_%' escape '?'


