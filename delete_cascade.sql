-- Tabela Program
CREATE TABLE Program (
    program_id INT PRIMARY KEY,
    nazwa NVARCHAR(100) NOT NULL,
    typ NVARCHAR(50) NOT NULL
);

-- Tabela Wersja_Oprogramowania
CREATE TABLE Wersja_Oprogramowania (
    wersja_id INT PRIMARY KEY,
    program_id INT NOT NULL,
    numer_wersji NVARCHAR(50) NOT NULL,
    data_wydania DATE NOT NULL,
    opis NVARCHAR(MAX),
    FOREIGN KEY (program_id) REFERENCES Program(program_id) 
        ON DELETE CASCADE  -- Usuniêcie rekordu w Program spowoduje usuniêcie rekordów w Wersja_Oprogramowania
);

-- Tabela Recenzja
CREATE TABLE Recenzja (
    recenzja_id INT PRIMARY KEY,
    program_id INT NOT NULL,
    klient_id INT NOT NULL,
    ocena INT CHECK (ocena BETWEEN 1 AND 5),
    komentarz NVARCHAR(MAX),
    data_recenzji DATE NOT NULL,
    FOREIGN KEY (program_id) REFERENCES Program(program_id) 
        ON DELETE CASCADE  -- Usuniêcie rekordu w Program spowoduje usuniêcie rekordów w Recenzja
);

-- Tabela System_Operacyjny
CREATE TABLE System_Operacyjny (
    system_id INT PRIMARY KEY,
    nazwa NVARCHAR(100) NOT NULL,
    wersja NVARCHAR(50) NOT NULL
);

-- Tabela Program_System_Operacyjny
CREATE TABLE Program_System_Operacyjny (
    program_id INT NOT NULL,
    system_id INT NOT NULL,
    wersja NVARCHAR(50) NOT NULL,
    PRIMARY KEY (program_id, system_id),
    FOREIGN KEY (program_id) REFERENCES Program(program_id) 
        ON DELETE CASCADE,  -- Usuniêcie rekordu w Program spowoduje usuniêcie rekordów w Program_System_Operacyjny
    FOREIGN KEY (system_id) REFERENCES System_Operacyjny(system_id) 
        ON DELETE CASCADE  -- Usuniêcie rekordu w System_Operacyjny spowoduje usuniêcie rekordów w Program_System_Operacyjny
);

-- Tabela Licencja
CREATE TABLE Licencja (
    licencja_id INT PRIMARY KEY,
    wersja_id INT NOT NULL,
    typ_licencji NVARCHAR(50) NOT NULL,
    data_wygasniecia DATE,
    FOREIGN KEY (wersja_id) REFERENCES Wersja_Oprogramowania(wersja_id) 
        ON DELETE CASCADE  -- Usuniêcie rekordu w Wersja_Oprogramowania spowoduje usuniêcie rekordów w Licencja
);

-- Tabela Zamowienie
CREATE TABLE Zamowienie (
    zamowienie_id INT PRIMARY KEY,
    klient_id INT NOT NULL,
    data_zamowienia DATE NOT NULL,
    czas_zamowienia TIME NOT NULL
);

-- Tabela Klient_Firmowy
CREATE TABLE Klient_Firmowy (
    klient_id INT PRIMARY KEY,
    nazwa_firmy NVARCHAR(100) NOT NULL,
    nip NVARCHAR(15) NOT NULL,
    email NVARCHAR(100) NOT NULL,
    telefon NVARCHAR(15)
);

-- Tabela Wsparcie_Techniczne
CREATE TABLE Wsparcie_Techniczne (
    zgloszenie_id INT PRIMARY KEY,
    klient_id INT NOT NULL,
    data_zgloszenia DATE NOT NULL,
    opis_problemu NVARCHAR(MAX),
    status NVARCHAR(50),
    FOREIGN KEY (klient_id) REFERENCES Klient_Firmowy(klient_id) 
        ON DELETE CASCADE  -- Usuniêcie rekordu w Klient_Firmowy spowoduje usuniêcie rekordów w Wsparcie_Techniczne
);

-- Tabela Rodzaje_Problemow_Technicznych
CREATE TABLE Rodzaje_Problemow (
    id_rodzaju_problemu INT PRIMARY KEY,
    nazwa_problemu NVARCHAR(100) NOT NULL,
    opis_problemu NVARCHAR(MAX),
    priorytet_problemu NVARCHAR(50) NOT NULL
);
