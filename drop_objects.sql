-- Sprawdzanie i usuwanie tabel, jeœli istniej¹
IF OBJECT_ID('Wsparcie_Techniczne', 'U') IS NOT NULL
DROP TABLE Wsparcie_Techniczne;

IF OBJECT_ID('Klient_Firmowy', 'U') IS NOT NULL
DROP TABLE Klient_Firmowy;

IF OBJECT_ID('Zamowienie', 'U') IS NOT NULL
DROP TABLE Zamowienie;

IF OBJECT_ID('Licencja', 'U') IS NOT NULL
DROP TABLE Licencja;

IF OBJECT_ID('Program_System_Operacyjny', 'U') IS NOT NULL
DROP TABLE Program_System_Operacyjny;

IF OBJECT_ID('System_Operacyjny', 'U') IS NOT NULL
DROP TABLE System_Operacyjny;

IF OBJECT_ID('Recenzja', 'U') IS NOT NULL
DROP TABLE Recenzja;

IF OBJECT_ID('Wersja_Oprogramowania', 'U') IS NOT NULL
DROP TABLE Wersja_Oprogramowania;

IF OBJECT_ID('Program', 'U') IS NOT NULL
DROP TABLE Program;

IF OBJECT_ID('Rodzaje_Problemow', 'U') IS NOT NULL
DROP TABLE Rodzaje_Problemow;
