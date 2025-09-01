
--1. Zapytanie z podzapytaniem – Najnowsza wersja programu
SELECT 
    p.nazwa,
    w.numer_wersji
FROM 
    Program p
JOIN 
    Wersja_Oprogramowania w ON p.program_id = w.program_id
WHERE 
    w.data_wydania = (SELECT MAX(data_wydania) FROM Wersja_Oprogramowania WHERE program_id = p.program_id);
--2. Zapytanie z podzapytaniem – Liczba zamówieñ na programy
SELECT 
    p.nazwa,
    (SELECT COUNT(*) FROM Zamowienie z WHERE z.zamowienie_klient_id IN (SELECT klient_id FROM Klient_Firmowy WHERE nazwa_firmy = 'Firma A')) AS total_orders
FROM 
    Program p;
--3. Zapytanie z funkcjami agreguj¹cymi – Œrednia ocena programów
SELECT 
    p.nazwa, 
    AVG(r.ocena) AS average_rating
FROM 
    Program p
JOIN 
    Recenzja r ON p.program_id = r.program_id
GROUP BY 
    p.nazwa;
--4. Zapytanie z grupowaniem – Najczêstsze problemy zg³oszone przez klientów
SELECT 
    rp.nazwa_problemu,
    COUNT(*) AS problem_count
FROM 
    Wsparcie_Techniczne wt
JOIN 
    Rodzaje_Problemow rp ON wt.id_rodzaju_problemu = rp.id_rodzaju_problemu
GROUP BY 
    rp.nazwa_problemu
ORDER BY 
    problem_count DESC;

--5. Zapytanie z funkcj¹ agreguj¹c¹ i grupowaniem – Liczba licencji wed³ug typu
SELECT 
    tl.nazwa_typu_licencji,
    COUNT(*) AS liczba_licencji
FROM 
    Licencja l
JOIN 
    Typy_Licencji tl ON l.id_typu_licencji = tl.id_typu_licencji
GROUP BY 
    tl.nazwa_typu_licencji
ORDER BY 
    liczba_licencji DESC;
--6. Zapytanie z z³¹czeniem i porz¹dkowaniem – Programy posortowane wed³ug œredniej oceny
SELECT 
    p.nazwa AS program_name, 
    AVG(r.ocena) AS average_rating
FROM 
    Program p
JOIN 
    Recenzja r ON p.program_id = r.program_id
GROUP BY 
    p.nazwa
ORDER BY 
    average_rating DESC;
--7. Zapytanie z funkcj¹ agreguj¹c¹ – Liczba zamówieñ dla ka¿dego klienta
SELECT 
    k.nazwa_firmy, 
    COUNT(z.zamowienie_id) AS total_orders
FROM 
    Klient_Firmowy k
JOIN 
    Zamowienie z ON k.klient_id = z.zamowienie_klient_id
GROUP BY 
    k.nazwa_firmy;
--8. Zapytanie z podzapytaniem i z³¹czeniem – Programy bez recenzji
SELECT 
    p.nazwa AS program_name
FROM 
    Program p
LEFT JOIN 
    Recenzja r ON p.program_id = r.program_id
WHERE 
    r.recenzja_id IS NULL;


