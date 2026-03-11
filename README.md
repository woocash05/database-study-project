# database-study-project

Projekt z zakresu baz danych: modelowanie bazy danych oraz zapytania w języku SQL.

---

## PROJEKT: BAZA DANYCH "ZAWODY SPORTOWE"

Baza danych "Zawody_sportowe" to system relacyjny zaprojektowany do kompleksowej obsługi masowych imprez biegowych (maratonów). System pozwala na centralizację danych o zawodnikach, automatyzację pomiarów czasu oraz komercyjne zarządzanie dokumentacją zdjęciową uczestników.

---

## 1. FUNKCJE

- **Zarządzanie uczestnikami**: Rejestracja zawodników, przydzielanie numerów startowych i kontrola opłat
- **Topologia trasy**: Definiowanie punktów kontrolnych i rejestracja międzyczasów na podstawie chipów
- **Rankingi i statystyki**: Automatyczna klasyfikacja w kategoriach wiekowych oraz generowanie wyników końcowych
- **Integracja multimediów**: Przypisywanie ścieżek do zdjęć na trasie na podstawie numerów startowych w celach sprzedażowych

---

## 2. MODEL DANYCH I INTEGRALNOŚĆ

Architektura oparta na 10 powiązanych tabelach wykorzystuje zaawansowane mechanizmy silnika SQL:

- Relacje 1:1, 1:N oraz M:N (rozwiązane przez tabele asocjacyjne)
- **Kaskadowanie (CASCADE)**: Automatyczna spójność przy usuwaniu/edycji danych nadrzędnych
- **Rozwiązanie problemu "Diamond Path"**: Zastosowanie ON DELETE NO ACTION w tabeli MIĘDZYCZASY w celu uniknięcia konfliktów kaskadowych w SQL Server
- **Więzy integralności**: Klucze unikalne (np. numer startowy w ramach jednych zawodów), sprawdzające (CHECK) oraz wartości domyślne

---

## 3. ZAWARTOŚĆ PROJEKTU

| Katalog       | Plik                                    | Opis |
| database      | `create_db.sql`                         | Stworzenie bazy danych |
                | `reset.sql`                             | Skrypt usuwający wszystkie obiekty bazy danych |
                | `creating.sql`                          | Definicja struktury DDL wraz z więzami integralności |
                | `insert.sql`                            | Skrypt DML zawierający pełny zestaw danych testowych |
                |  `cascade_delete.sql`, `cascade_update` | Przykłady działania mechanizmów kaskadowych w praktyce |
| queries       | `z1.sql - z7.sql`                       | Zestawienie zapytań analitycznych (m.in. zwycięzcy, podia krajowe, czasy na trasie, widoki) |
| documentation | `model_bd.png`                          | Diagram ERD |
                | `sprawozdanie.pdf`                      | Pełna dokumentacja projektowa (cele, erd, opisy encji) |

---

## 4. WYMAGANIA

- Microsoft SQL Server (2016 lub nowsza)
- SQL Server Management Studio (SSMS)

---

## Autor

Łukasz Steciuk
