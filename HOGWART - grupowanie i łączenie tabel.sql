-- Zadanie 1. Policz ilu uczniow znajduje sie na kazdym roku studiow

SELECT rok, COUNT(*) AS Ilosc
FROM Uczniowie
GROUP BY rok 

-- Zadanie 2. Okresl jaki jest sredni poziom trudnosci zaklecia dla kazdego z preferowanych domow

SELECT dom_preferowany, AVG(trudnosc) AS PoziomTrudnosci
FROM Zaklecia
GROUP BY dom_preferowany

-- Zadanie 3. Okresl jaki jest sredni poziom trudnosci zaklecia na kazdym roku

SELECT u.rok, ISNULL(AVG(z.trudnosc), 0) AS SredniaTrudnosc
FROM Uczniowie u
    LEFT JOIN Zaklecia z 
    ON u.dom = z.dom_preferowany
GROUP BY u.rok

-- Wyjasnienie do zad.3: Uzylam LEFT JOIN poniewaz dla domu Hufflepuff nie ma przypisanych zaklec. Zamienilam wartosc NULL na 0, aby jednak dom zostal uwzgledniony w obliczeniach.

-- Zadanie 4. Policz liczbe uczniow przypisanych do kazdego stworzenia

SELECT zwierzak, COUNT(*) AS LiczbaUczniow
FROM Uczniowie
GROUP BY zwierzak

-- Zadanie 5. Znajdz najczesciej wystepujacy poziom trudnosci zaklecia.

SELECT TOP 1 trudnosc, COUNT(*) AS Czestotliwosc
FROM Zaklecia
GROUP BY trudnosc
ORDER BY Czestotliwosc DESC