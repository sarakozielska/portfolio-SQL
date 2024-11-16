-- Zadanie 1. Napisz prosta procedure, ktora sprawdzi czy liczba jest dodatnia czy ujemna

CREATE PROCEDURE Liczba

@liczba int

AS

BEGIN

    IF @liczba = 0
    BEGIN
    SELECT 'Zero'
    END
      ELSE IF @liczba > 0
        BEGIN
        SELECT 'Dodatnia'
        END
            ELSE IF @liczba < 0
            BEGIN 
            SELECT 'Ujemna'
            END

END

-- Zadanie 2. Napisz procedure, ktora wyciagnie ucznia po imieniu i nazwisku

CREATE PROCEDURE WyszukajUcznia

@imie varchar(50) = NULL
@nazwisko varchar(50) = NULL

AS

BEGIN

SELECT *
FROM Uczniowie
WHERE (@imie = imie OR @imie IS NULL) AND (@nazwisko = nazwisko OR @nazwisko IS NULL) 

END

--Wyjasnienie do Zadania 2: Przyjelam dla imienia i nazwiska wartosci NULL, aby mozna bylo wyszukac ucznia po imieniu lub po nazwisku. W przeciwnym razie konieczne by bylo wskazanie obydwu parametrow.
