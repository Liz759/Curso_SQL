INSERT INTO ASESORES (clave, nombre, regional, director, tip_doc_director, num_doc_director)
VALUES
('A123', 'MARIA', 'ZONAS_ESPECIALES', 'JOSE', 'CC', '1014572677'),
('A145', 'JAVIER', 'SUROCCIDENTE', 'JUAN', 'CC', '1078468756'),
('C185', 'PATRICIA', 'NORTE', 'GABRIEL', 'CC', '1228578792'),
('N158', 'LUIS', 'SURORIENTE', 'MARIA', 'CC', '5879821'),
('C157', 'GLORIA', 'EJECAFETERO', 'CLARA', 'CC', '7628941');

select * from Asesores

INSERT INTO Directores (Director, tip_doc_director, num_doc_director, regional)
VALUES
('JOSE', 'CC', '1014572677', 'ZONAS_ESPECIALES'),
('JUAN', 'CC', '1078468756', 'SUROCCIDENTE'),
('GABRIEL', 'CC', '1228578792', 'NORTE'),
('SOFIA', 'CC', '5879821', 'SURORIENTE'),
('CLARA', 'CC', '7628941', 'EJECAFETERO');

select * from Directores

INSERT INTO Comisiones (ComisionID, asesorid, Clave, Mes_Proceso, Valor_Proceso, Director, Tip_Doc_Director, Num_Doc_Director, Regional)
VALUES
(1, 1, 'A123','2024-10-01',235000,'JOSE', 'CC', '1014572677','ZONAS_ESPECIALES'),
(2, 1,'A145','2024-10-01',680000,'JUAN', 'CC', '1078468756','SUROCCIDENTE'),
(3, 1,'C185','2024-10-01',15000000,'GABRIEL', 'CC', '1228578792','NORTE'),
(4, 1,'N158','2024-10-01',560000,'MARIA', 'CC', '5879821','SURORIENTE'),
(5, 1,'C157','2024-10-01',5300000,'CLARA', 'CC', '7628941','EJECAFETERO');