--Znajdz wszystkich uczniow pochodzacych z Gryffindoru i posortuj ich alfabetycznie po nazwisku.

SELECT Imie, Nazwisko
FROM Uczniowie
WHERE dom = 'Gryffindor'
ORDER BY Nazwisko

--Policz ilu uczniow jest w kazdym domu.

SELECT dom, COUNT(*) AS Ilosc
FROM Uczniowie
GROUP BY dom

--Znajdz nazwe i efekt zaklecia, ktore ma najwyzszy poziom trudnosci.

SELECT TOP 1 nazwa_zaklecia, efekt
FROM Zaklecia
ORDER BY trudnosc DESC

--Wyswietl wszystkie eliksiry, ktore maja poziom trudnosci wiekszy niz 3, i posortuj je rosnaco po nazwie.

SELECT *
FROM Eliksiry 
WHERE poziom_trudnosci > 3
ORDER BY nazwa_eliksiru 

--Znajdz nazwy wszystkich magicznych stworzen, ktore mozna znalezc w Zakazanym Lesie i maja poziom niebezpieczenstwa wiekszy niz 2.

SELECT nazwa
FROM Stworzenia
WHERE miejsce_pobytu = 'Zakazany Las' AND poziom_niebezpieczenstwa > 2