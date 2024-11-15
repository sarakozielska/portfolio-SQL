--Pokaz imie i nazwisko uczniow oraz nazwe ich zwierzaka, ktorzy sa polkrwi lub mugolskiego pochodzenia.

SELECT imie, nazwisko, zwierzak
FROM Uczniowie
WHERE status_krwi = 'polkrwi' OR status_krwi = 'mugolak'

--Dla kazdego zaklecia wyswietl jego nazwe oraz dom, ktory preferuje dane zaklecie, pod warunkiem, ze dom nie jest Ravenclawem.

SELECT nazwa_zaklecia, dom_preferowany
FROM Zaklecia 
WHERE dom_preferowany <> 'Ravenclaw'

--Pokaz wszystkie eliksiry, ktore zawieraja skladnik 'waleriana' lub maja kolor czarny.

SELECT *
FROM Eliksiry 
WHERE składnik LIKE "%walerian%" OR kolor = 'czarny'

--Znajdz nazwy uczniow i ich domow, ktorzy posiadaja sowe jako zwierzaka i sa na roku 5 lub wyzszym.

SELECT imie, nazwisko, dom
FROM Uczniowie
WHERE zwierzak = 'sowa' AND rok >= 5 

--Policz, ile jest roznych typow magicznych stworzen w kazdej kategorii zagrozenia.

SELECT poziom_niebezpieczenstwa, COUNT(*) AS Ilosc
FROM Stworzenia
WHERE typ = 'magiczne'
GROUP BY poziom_niebezpieczenstwa 