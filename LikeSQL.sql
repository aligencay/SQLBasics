USE Northwind

--like sorgular�

-- % --> genel �nemli de�il operat�r�

-- isminin ba� harfi j olan personellerin ad�n� ve soyad�n� yazd�ral�m
select * from Personeller where Adi like 'j%'

-- isminin son harfi y olan personellerin ad�n� ve soyad�n� yazd�ral�m
select * from Personeller where Adi like '%y'

-- isminin son �� harfi ert olan personeli bulal�m
select * from Personeller where Adi like '%ert'

-- isminin ilk harfi r, son harfi t olan personeli getirelim
select * from Personeller where Adi like 'r%t'
-- gereksiz kullan�m� �udur
select * from personeller where Adi like 'r%' and Adi like '%t'

--isminde an ge�en personelin ad�n� yazd�ral�m
select * from personeller where Adi like '%an%'

--isminin ba� harfi n olan ve i�erisinde an ge�en personeli getirelim
select * from personeller where Adi like 'n%an%'
--gereksiz kullan�m� �udur
select * from personeller where Adi like 'n%' and Adi like '%an%'

-- _ �zel �nemli de�il operat�r�

--isminin ilk harfi a, ikinci harfi fark etmez ve ���nc� harfi d olan personeli getirelim
select * from Personeller where Adi like 'a_d%'

--isminin ilk harfi m, ikinci-���nc�-d�rt fark etmez ve be�inci harfi a olan personeli getirelim
select * from Personeller where Adi like 'm___a%'

-- [] ya da operat�r�

--isminin ilk harfi n ya da m ya da r olan personelleri getirelim
select * from Personeller where Adi like '[nmr]%'

--isminin i�erisinde a ya da i ge�en personelleri listeleyelim
select * from Personeller where Adi like '%[ai]%'

-- [*-*] alfabetik aras�nda operat�r�
--isminin ba� harfi a ile k aras�nda alfabetik s�raya g�re herhangi bir harf olan personellerin ad�n� listeleyelim
select * from Personeller where Adi like '[a-k]%'

-- [^*] de�il operat�r�
--isminin ba� harfi a olmayan personelleri getirelim
select * from Personeller where Adi like '[^a]%'

--isminin ba� harfi an olmayan personelleri getirelim
select * from personeller where Adi like '[an^]%'

