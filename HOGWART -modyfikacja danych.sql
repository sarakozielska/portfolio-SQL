-- Dodaj Rona Weasley do listy uczniow.

INSERT INTO Uczniowie (imie, nazwisko, dom, rok, status_krwi, zwierzak)
VALUES (Ron, Weasley, Gryffindor, 5, czystej krwi, szczur)

-- Sowa Draco Malfoya uciekla. Zaktualizuj na liscie zwierzaka.

UPDATE Uczniowie
SET Zwierzak = 'Brak zwierzaka'
WHERE imie = 'Draco' AND nazwisko = 'Malfoy'

-- Usun Draco Malfoya z listy Uczniow.

DELETE FROM Uczniowie
WHERE imie = 'Draco' AND nazwisko = Malfoy

-- Wszystkim uczniom, ktorzy sa w domu Gryffindor i maja status krwi mugolak zmien status krwi na brudnokrwisty.

UPDATE Uczniowie
SET status_krwi = 'brudnokrwisty'
WHERE dom = 'Gryffindor' AND status_krwi = 'mugolak'

-- Przenies wszystkich uczniow, ktorzy jako zwierzaka maja sowe o rok wyzej

UPDATE Uczniowie
SET rok = rok + 1
WHERE zwierzak = 'sowa'