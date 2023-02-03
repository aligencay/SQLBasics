--OUTER JOIN 
use OrnekVT
--Inner Join'de eslesen kayitlar getiriliyordu. Outer Join'de ise eslesmeyen kayitlar da getirilmektedir.

--LEFT JOIN

--Join ifadesinin solundaki tablodan tum tablolari getirir. Sagindaki tablodan eslesmeleri yan yana eslesemeyenleri NULL olarak getirir.

select * from Oyuncular o LEFT OUTER JOIN Filmler f on f.FilmID = o.FilmID
select * from Filmler f LEFT OUTER JOIN Oyuncular o on f.FilmID = o.FilmID
-- veya
select * from Oyuncular o LEFT JOIN Filmler f on o.FilmID = f.FilmID
select * from Filmler f LEFT JOIN Oyuncular o on o.FilmID = f.FilmID


--RIGHT JOIN
--Joinin sagindaki tablonun tamami getirecek, solundakinden eslesenleri ayni satirda eslesmeyenleri de NULL olarak getirecek.
select * from Oyuncular o RIGHT JOIN Filmler f on f.FilmID = o.FilmID
select * from Filmler f RIGHT JOIN Oyuncular o on f.FilmID = o.FilmID


--FULL JOIN
--Joinin iki tarafindaki tablolardan eslesen veya eslesmeyen hepsini getirir.
select * from Oyuncular o FULL JOIN Filmler f on o.FilmID = f.FilmID