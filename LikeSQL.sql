USE Northwind

--like sorgularý

-- % --> genel önemli deðil operatörü

-- isminin baþ harfi j olan personellerin adýný ve soyadýný yazdýralým
select * from Personeller where Adi like 'j%'

-- isminin son harfi y olan personellerin adýný ve soyadýný yazdýralým
select * from Personeller where Adi like '%y'

-- isminin son üç harfi ert olan personeli bulalým
select * from Personeller where Adi like '%ert'

-- isminin ilk harfi r, son harfi t olan personeli getirelim
select * from Personeller where Adi like 'r%t'
-- gereksiz kullanýmý þudur
select * from personeller where Adi like 'r%' and Adi like '%t'

--isminde an geçen personelin adýný yazdýralým
select * from personeller where Adi like '%an%'

--isminin baþ harfi n olan ve içerisinde an geçen personeli getirelim
select * from personeller where Adi like 'n%an%'
--gereksiz kullanýmý þudur
select * from personeller where Adi like 'n%' and Adi like '%an%'

-- _ özel önemli deðil operatörü

--isminin ilk harfi a, ikinci harfi fark etmez ve üçüncü harfi d olan personeli getirelim
select * from Personeller where Adi like 'a_d%'

--isminin ilk harfi m, ikinci-üçüncü-dört fark etmez ve beþinci harfi a olan personeli getirelim
select * from Personeller where Adi like 'm___a%'

-- [] ya da operatörü

--isminin ilk harfi n ya da m ya da r olan personelleri getirelim
select * from Personeller where Adi like '[nmr]%'

--isminin içerisinde a ya da i geçen personelleri listeleyelim
select * from Personeller where Adi like '%[ai]%'

-- [*-*] alfabetik arasýnda operatörü
--isminin baþ harfi a ile k arasýnda alfabetik sýraya göre herhangi bir harf olan personellerin adýný listeleyelim
select * from Personeller where Adi like '[a-k]%'

-- [^*] deðil operatörü
--isminin baþ harfi a olmayan personelleri getirelim
select * from Personeller where Adi like '[^a]%'

--isminin baþ harfi an olmayan personelleri getirelim
select * from personeller where Adi like '[an^]%'

