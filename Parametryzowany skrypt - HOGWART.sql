-- Utworz parametryzowany skrypt, ktory ulatwi dodawanie nowych uczniow z pierwszego roku do bazy. Dodaj 5 dowolnych uczniow statusu czystej krwi do domu Gryffindor i upewnij sie, ze ilosc dodanych uczniow jest zgodna z lista nowych uczniow

BEGIN TRAN

DECLARE @rok int = 1
DECLARE @dom varchar(50) = 'Gryffindor'
DECLARE @status_krwi varchar(50) = 'czystej krwi'

-- Zadeklaruje ilosc insertow w celu ustalenia, czy liczba dodanych uczniow wynosi 5 i jesli 'tak' to wykonam transakcje, a jesli 'nie' to ja wycofam

DECLARE @inserty = 0

INSERT INTO Uczniowie(imie, nazwisko, dom, rok, status_krwi, zwierzak)
VALUES ('Alistair', 'Blackwood', @dom, @rok, @status_krwi, 'sowa')
SELECT @inserty = @inserty + @@ROWCOUNT

INSERT INTO Uczniowie(imie, nazwisko, dom, rok, status_krwi, zwierzak)
VALUES ('Edwin', 'Moonstone', @dom, @rok, @status_krwi, 'zaba')
SELECT @inserty = @inserty + @@ROWCOUNT

INSERT INTO Uczniowie(imie, nazwisko, dom, rok, status_krwi, zwierzak)
VALUES ('Lysandra', 'Ravenscroft', @dom, @rok, @status_krwi, 'kot')
SELECT @inserty = @inserty + @@ROWCOUNT

INSERT INTO Uczniowie(imie, nazwisko, dom, rok, status_krwi, zwierzak)
VALUES ('Sebastian', 'Thornfield', @dom, @rok, @status_krwi, 'sowa')
SELECT @inserty = @inserty + @@ROWCOUNT

INSERT INTO Uczniowie(imie, nazwisko, dom, rok, status_krwi, zwierzak)
VALUES ('Isolde', 'Fairbrook', @dom, @rok, @status_krwi, 'sowa')
SELECT @inserty = @inserty + @@ROWCOUNT

IF @inserty <> 5
    BEGIN 
    SELECT 'Bledna ilosc dodawanych uczniow'
    ROLLBACK TRAN
    END
ELSE
    BEGIN
    COMMIT TRAN
    END