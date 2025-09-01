
INSERT INTO Program (program_id, nazwa, typ)
VALUES
(1, 'Antivirus Pro', 'Bezpiecze�stwo'),
(2, 'Photo Editor Plus', 'Grafika'),
(3, 'Accounting Suite', 'Finanse'),
(4, 'Project Planner', 'Zarz�dzanie'),
(5, 'Video Editor', 'Media'),
(6, 'PDF Reader', 'Biuro'),
(7, 'Game Booster', 'Rozrywka'),
(8, 'Code Compiler', 'Programowanie'),
(9, 'Email Client', 'Komunikacja'),
(10, 'Password Manager', 'Bezpiecze�stwo'),
(11, 'Weather Tracker', 'Pogoda'),
(12, 'Music Player', 'Rozrywka'),
(13, 'Stock Manager', 'Finanse'),
(14, 'Fitness Tracker', 'Zdrowie'),
(15, 'Language Tutor', 'Edukacja'),
(16, 'Mind Map Maker', 'Zarz�dzanie'),
(17, 'Photo Gallery', 'Media'),
(18, 'System Cleaner', 'Narz�dzia'),
(19, 'Network Monitor', 'Sieci'),
(20, 'Backup Utility', 'Narz�dzia');


INSERT INTO Wersja_Oprogramowania (wersja_id, program_id, numer_wersji, data_wydania, opis)
VALUES
(1, 1, '1.0', '2023-01-01', 'Pierwsza wersja Antivirus Pro'),
(2, 1, '1.1', '2023-06-01', 'Poprawki bezpiecze�stwa'),
(3, 2, '2.0', '2022-11-10', 'Nowy interfejs Photo Editor Plus'),
(4, 2, '2.1', '2023-03-15', 'Dodane filtry zdj��'),
(5, 3, '3.0', '2023-05-01', 'Nowe funkcje ksi�gowe'),
(6, 3, '3.1', '2023-10-10', 'Obs�uga nowych przepis�w podatkowych'),
(7, 4, '1.0', '2023-02-20', 'Pierwsze wydanie Project Planner'),
(8, 5, '2.3', '2023-04-12', 'Dodano efekty wizualne'),
(9, 6, '1.5', '2022-12-15', 'Poprawki wydajno�ci PDF Reader'),
(10, 7, '1.1', '2023-01-25', 'Zwi�kszona wydajno�� dla graczy'),
(11, 8, '2.0', '2023-06-30', 'Obs�uga nowych j�zyk�w programowania'),
(12, 9, '1.2', '2023-03-05', 'Poprawki stabilno�ci Email Client'),
(13, 10, '3.0', '2023-07-01', 'Dodano nowe funkcje bezpiecze�stwa'),
(14, 11, '1.0', '2022-09-10', 'Pierwsze wydanie Weather Tracker'),
(15, 12, '4.1', '2023-05-15', 'Wsparcie dla nowych format�w muzycznych'),
(16, 13, '1.0', '2023-01-01', 'Pierwsze wydanie Stock Manager'),
(17, 14, '2.0', '2023-08-01', 'Dodano funkcje monitorowania zdrowia'),
(18, 15, '1.5', '2023-02-01', 'Nowe lekcje j�zykowe'),
(19, 16, '1.0', '2023-10-20', 'Pierwsza wersja Mind Map Maker'),
(20, 17, '1.2', '2023-11-10', 'Poprawki w obs�udze zdj��');


INSERT INTO Recenzja (recenzja_id, program_id, klient_id, ocena, komentarz, data_recenzji)
VALUES
(1, 1, 101, 5, 'Program dzia�a �wietnie!', '2023-02-01'),
(2, 2, 102, 4, 'Dobry edytor zdj��, ale m�g�by by� szybszy.', '2023-03-15'),
(3, 3, 103, 3, 'Zbyt skomplikowany interfejs.', '2023-04-10'),
(4, 4, 104, 4, 'Bardzo pomocny przy planowaniu projekt�w.', '2023-05-01'),
(5, 5, 105, 5, '�wietny edytor wideo!', '2023-05-12'),
(6, 6, 106, 4, 'Dobry odczyt PDF, ale brakuje zaawansowanych funkcji.', '2023-06-01'),
(7, 7, 107, 5, 'Pomaga w lepszej wydajno�ci gier.', '2023-06-10'),
(8, 8, 108, 3, 'Brakuje dokumentacji dla pocz�tkuj�cych programist�w.', '2023-07-01'),
(9, 9, 109, 4, 'Bardzo funkcjonalny klient e-mail.', '2023-07-15'),
(10, 10, 110, 5, 'Bezpieczny i �atwy w u�yciu.', '2023-08-01'),
(11, 11, 111, 3, 'Nieaktualne dane pogodowe.', '2023-08-10'),
(12, 12, 112, 5, '�wietna aplikacja muzyczna.', '2023-08-20'),
(13, 13, 113, 4, 'Pomaga w zarz�dzaniu akcjami.', '2023-09-01'),
(14, 14, 114, 5, '�wietna aplikacja fitness.', '2023-09-10'),
(15, 15, 115, 4, 'Pomocna w nauce j�zyk�w.', '2023-09-20'),
(16, 16, 116, 5, 'Pomaga w organizacji my�li.', '2023-10-01'),
(17, 17, 117, 4, '�adne galerie zdj��, ale brakuje funkcji sortowania.', '2023-10-10'),
(18, 18, 118, 3, 'Nie zauwa�y�em poprawy wydajno�ci systemu.', '2023-10-20'),
(19, 19, 119, 4, 'Dobre narz�dzie do monitorowania sieci.', '2023-11-01'),
(20, 20, 120, 5, 'Niezawodne narz�dzie do tworzenia kopii zapasowych.', '2023-11-10');


INSERT INTO System_Operacyjny (system_id, nazwa, wersja)
VALUES
(1, 'Windows', '10'),
(2, 'Windows', '11'),
(3, 'Linux', 'Ubuntu 20.04'),
(4, 'Linux', 'Ubuntu 22.04'),
(5, 'macOS', '11.2 Big Sur'),
(6, 'macOS', '12.3 Monterey'),
(7, 'Android', '12'),
(8, 'Android', '13'),
(9, 'iOS', '15'),
(10, 'iOS', '16');


INSERT INTO Program_System_Operacyjny (program_id, system_id, wersja)
VALUES
(1, 1, '1.0'),
(1, 2, '1.1'),
(2, 3, '2.0'),
(2, 4, '2.1'),
(3, 1, '3.0'),
(3, 3, '3.1'),
(4, 1, '1.0'),
(4, 5, '1.0'),
(5, 5, '2.3'),
(5, 6, '2.4'),
(6, 1, '1.5'),
(6, 3, '1.6'),
(7, 7, '1.1'),
(7, 8, '1.2'),
(8, 1, '2.0'),
(8, 3, '2.1'),
(9, 1, '1.2'),
(9, 9, '1.3'),
(10, 10, '3.0'),
(10, 1, '3.1');


INSERT INTO Licencja (licencja_id, wersja_id, typ_licencji, data_wygasniecia)
VALUES
(1, 1, 'Roczna', '2024-01-01'),
(2, 2, 'Wieczysta', NULL),
(3, 3, 'Miesi�czna', '2023-12-31'),
(4, 4, 'Roczna', '2024-03-15'),
(5, 5, 'Wieczysta', NULL),
(6, 6, 'Roczna', '2024-10-10'),
(7, 7, 'Miesi�czna', '2023-12-20'),
(8, 8, 'Wieczysta', NULL),
(9, 9, 'Roczna', '2024-06-01'),
(10, 10, 'Miesi�czna', '2023-12-25'),
(11, 11, 'Wieczysta', NULL),
(12, 12, 'Roczna', '2024-08-20'),
(13, 13, 'Miesi�czna', '2023-12-15'),
(14, 14, 'Wieczysta', NULL),
(15, 15, 'Roczna', '2024-09-10'),
(16, 16, 'Miesi�czna', '2023-11-01'),
(17, 17, 'Wieczysta', NULL),
(18, 18, 'Roczna', '2024-05-01'),
(19, 19, 'Miesi�czna', '2023-10-15'),
(20, 20, 'Wieczysta', NULL);

INSERT INTO Zamowienie (zamowienie_id, klient_id, data_zamowienia, czas_zamowienia)
VALUES
(1, 101, '2023-01-10', '10:30:00'),
(2, 102, '2023-01-15', '12:45:00'),
(3, 103, '2023-01-20', '14:20:00'),
(4, 104, '2023-02-01', '09:10:00'),
(5, 105, '2023-02-05', '11:30:00'),
(6, 106, '2023-02-15', '13:50:00'),
(7, 107, '2023-03-01', '15:00:00'),
(8, 108, '2023-03-10', '10:05:00'),
(9, 109, '2023-03-20', '16:25:00'),
(10, 110, '2023-04-01', '08:45:00'),
(11, 111, '2023-04-10', '12:15:00'),
(12, 112, '2023-04-20', '14:40:00'),
(13, 113, '2023-05-01', '09:50:00'),
(14, 114, '2023-05-10', '11:20:00'),
(15, 115, '2023-05-20', '13:30:00'),
(16, 116, '2023-06-01', '15:45:00'),
(17, 117, '2023-06-10', '10:10:00'),
(18, 118, '2023-06-20', '12:25:00'),
(19, 119, '2023-07-01', '14:50:00'),
(20, 120, '2023-07-10', '16:00:00');


INSERT INTO Klient_Firmowy (klient_id, nazwa_firmy, nip, email, telefon)
VALUES
(101, 'Firma A', '1234567890', 'kontakt@firmaa.pl', '123456789'),
(102, 'Firma B', '0987654321', 'kontakt@firmab.pl', '987654321'),
(103, 'Firma C', '1122334455', 'kontakt@firmac.pl', '111222333'),
(104, 'Firma D', '5566778899', 'kontakt@firmad.pl', '444555666'),
(105, 'Firma E', '9988776655', 'kontakt@firmae.pl', '777888999'),
(106, 'Firma F', '1122112233', 'kontakt@firmaf.pl', '222333444'),
(107, 'Firma G', '4455667788', 'kontakt@firmag.pl', '555666777'),
(108, 'Firma H', '7788990011', 'kontakt@firmah.pl', '888999000'),
(109, 'Firma I', '3344556677', 'kontakt@firmai.pl', '333444555'),
(110, 'Firma J', '6677889900', 'kontakt@firmaj.pl', '666777888'),
(111, 'Firma K', '0001112223', 'kontakt@firmak.pl', '000111222'),
(112, 'Firma L', '1233211234', 'kontakt@firmal.pl', '123321123'),
(113, 'Firma M', '2233445566', 'kontakt@firmam.pl', '223344556'),
(114, 'Firma N', '5566778899', 'kontakt@firman.pl', '556677889'),
(115, 'Firma O', '8899001122', 'kontakt@firmao.pl', '889900112'),
(116, 'Firma P', '4455667788', 'kontakt@firmap.pl', '445566778'),
(117, 'Firma Q', '6677889900', 'kontakt@firmaq.pl', '667788990'),
(118, 'Firma R', '1234567890', 'kontakt@firmar.pl', '123456789'),
(119, 'Firma S', '9876543210', 'kontakt@firmas.pl', '987654321'),
(120, 'Firma T', '1122334455', 'kontakt@firmat.pl', '112233445');


INSERT INTO Wsparcie_Techniczne (zgloszenie_id, klient_id, data_zgloszenia, opis_problemu, status)
VALUES
(1, 101, '2023-07-01', 'Problem z aktywacj� licencji.', 'Rozwi�zany'),
(2, 102, '2023-07-10', 'Aplikacja nie uruchamia si�.', 'W toku'),
(3, 103, '2023-07-15', 'B��d przy aktualizacji programu.', 'Oczekuje na rozwi�zanie'),
(4, 104, '2023-07-20', 'Instalacja zako�czona b��dem.', 'Rozwi�zany'),
(5, 105, '2023-07-25', 'Zgubione dane u�ytkownika.', 'W toku'),
(6, 106, '2023-07-30', 'Problem z wydajno�ci� programu.', 'Rozwi�zany'),
(7, 107, '2023-08-01', 'B��d licencjonowania.', 'Rozwi�zany'),
(8, 108, '2023-08-05', 'Niepoprawne dzia�anie aplikacji.', 'Oczekuje na rozwi�zanie'),
(9, 109, '2023-08-10', 'Kompatybilno�� z systemem operacyjnym.', 'Rozwi�zany'),
(10, 110, '2023-08-15', 'Nieoczekiwane zamkni�cie programu.', 'W toku'),
(11, 111, '2023-08-20', 'Problem z instalacj� nowej wersji.', 'Rozwi�zany'),
(12, 112, '2023-08-25', 'B��d w interfejsie u�ytkownika.', 'W toku'),
(13, 113, '2023-09-01', 'Problem z wydajno�ci� systemu.', 'Oczekuje na rozwi�zanie'),
(14, 114, '2023-09-05', 'Nieprawid�owe dane licencyjne.', 'Rozwi�zany'),
(15, 115, '2023-09-10', 'B��d w danych u�ytkownika.', 'W toku'),
(16, 116, '2023-09-15', 'Problemy z uruchomieniem programu.', 'Rozwi�zany'),
(17, 117, '2023-09-20', 'Nieaktualne informacje o pogodzie.', 'W toku'),
(18, 118, '2023-09-25', 'B��d w obs�udze galerii zdj��.', 'Rozwi�zany'),
(19, 119, '2023-10-01', 'Brak funkcji sortowania.', 'Rozwi�zany'),
(20, 120, '2023-10-05', 'Problem z sieci�.', 'Oczekuje na rozwi�zanie');


INSERT INTO Rodzaje_Problemow (id_rodzaju_problemu, nazwa_problemu, opis_problemu, priorytet_problemu)
VALUES
(1, 'Aktywacja licencji', 'Problem z aktywacj� klucza licencyjnego.', '�redni'),
(2, 'Instalacja programu', 'B��d podczas instalacji oprogramowania.', 'Wysoki'),
(3, 'Uruchamianie aplikacji', 'Problemy z uruchomieniem programu.', 'Wysoki'),
(4, 'Aktualizacja oprogramowania', 'B��dy podczas instalacji nowej wersji.', 'Niski'),
(5, 'Problem z wydajno�ci�', 'Program dzia�a wolniej ni� oczekiwano.', '�redni'),
(6, 'B��d licencjonowania', 'Niepoprawne dane licencyjne.', 'Wysoki'),
(7, 'Problem graficzny', 'Nieprawid�owe wy�wietlanie interfejsu.', 'Niski'),
(8, 'Kompatybilno�� systemu', 'Program nie dzia�a na danym systemie operacyjnym.', '�redni'),
(9, 'Zgubione dane', 'Dane u�ytkownika zosta�y utracone.', 'Wysoki'),
(10, 'Inne', 'Nieokre�lony problem techniczny.', '�redni');

