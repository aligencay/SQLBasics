--CONSTRAINT

--Check Constraint
--Bir kolona girilecek olan verinin belirli bir sarta uymasini zorunlu kýlar

--Genel Yapisi:
--Add Constraint [Constraint Adi] Check [SART]

use Northwind

Alter table OrnekTablo
Add Constraint Kolon2Kontrol Check ((Kolon2 * 5) % 2 = 0)

--Check Constraint olusturulmadan once ilgili tabloda sarta aykiri degerler varsa constraint olusturulmayacaktir
--Ancak onceki kayitlari gormezden gelip yine de Check Constraint uygulanmasini istiyorsak WITH NOCHECK komutu kullanilmalidir

--WITH NOCHECK komutu

alter table OrnekTablo
WITH NOCHECK ADD CONSTRAINT Kolon2Kontrol Check ((Kolon2*5)%2=0)