USE zawodySportowe;
GO

-- Kto uzyska³ najlepszy (minimalny) czas we wszystkich zawodach?

IF OBJECT_ID('Widok_Wynikow', 'V') IS NOT NULL
    DROP VIEW Widok_Wynikow;
GO

CREATE VIEW Widok_Wynikow AS
SELECT 
    Z.IMIÊ, 
    Z.NAZWISKO, 
    W.CZAS_UKOÑCZENIA,
    W.STATUS
FROM ZAWODNIK Z
    JOIN UCZESTNIK U ON Z.ZAWODNIK_ID = U.ZAWODNIK_ID
    JOIN WYNIK W ON U.UCZESTNICTWO_ID = W.UCZESTNICTWO_ID;
GO

SELECT 
    IMIÊ, 
    NAZWISKO, 
    CZAS_UKOÑCZENIA
FROM Widok_Wynikow
WHERE CZAS_UKOÑCZENIA = (
    SELECT MIN(CZAS_UKOÑCZENIA)
    FROM WYNIK
    WHERE STATUS = N'Ukoñczono'
);
GO