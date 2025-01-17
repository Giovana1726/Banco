﻿CREATE DATABASE Contas_a_Receber;

USE Contas_a_Receber;

CREATE TABLE Duplicatas 
(      Nome VARCHAR(40),
       Numero INT NOT NULL PRIMARY KEY,
       Valor DECIMAL(10,2),
       Vencimento DATE,
       Banco VARCHAR(10));

INSERT INTO Duplicatas 
(Nome, Numero, Valor, Vencimento, Banco) 
VALUES
('ABC PAPELARIA', 100100, 5000.00, '2017-01-20', 'ITAU'),
('LIVRARIA FERNANDES', 100110, 2500.00, '2017-01-22', 'ITAU'),
('LIVRARIA FERNANDES', 100120, 1500.00, '2016-10-15', 'BRADESCO'),
('ABC PAPELARIA', 100130, 8000.00, '2016-10-15', 'SANTANDER'),
('LER E SABER', 200120, 10500.00, '2018-04-26', 'BANCO DO BRASIL'),
('LIVROS E CIA', 200125, 2000.00, '2018-04-26', 'BANCO DO BRASIL'),
('LER E SABER', 200130, 11000.00, '2018-09-26', 'ITAU'),
('PAPELARIA SILVA', 250350, 1500.00, '2018-01-26', 'BRADESCO'),
('LIVROS MM', 250360, 500.00, '2018-12-18', 'SANTANDER'),
('LIVROS MM', 250370, 3400.00, '2018-04-26', 'SANTANDER'),
('PAPELARIA SILVA', 250380, 3500.00, '2018-04-26', 'BANCO DO BRASIL'),
('LIVROS E CIA', 453360, 1500.00, '2018-06-15', 'ITAU'),
('LIVROS MM', 453365, 5400.00, '2018-06-15', 'BRADESCO'),
('PAPELARIA SILVA', 453370, 2350.00, '2017-12-27', 'ITAU'),
('LIVROS E CIA', 453380, 1550.00, '2017-12-27', 'BANCO DO BRASIL'),
('ABC PAPELARIA', 980130, 4000.00, '2016-12-11', 'ITAU'),
('LIVRARIA FERNANDES', 770710, 2500.00, '2016-11-15', 'SANTANDER'),
('ABC PAPELARIA', 985001, 3000.00, '2016-09-11', 'ITAU'),
('PAPEL E AFINS', 985002, 2500.00, '2016-03-12', 'SANTANDER'),
('LER E SABER', 888132, 2500.00, '2017-03-05', 'ITAU');

SELECT Nome, Vencimento, Valor 
FROM Duplicatas;

SELECT Numero 
FROM Duplicatas 
WHERE Banco = 'ITAU';

SELECT COUNT(Numero) AS Total_Duplicatas_Itau 
FROM Duplicatas 
WHERE Banco = 'ITAU';

SELECT Numero, Vencimento, Valor, Nome 
FROM Duplicatas 
WHERE YEAR(Vencimento) = 2017;

SELECT Numero, Vencimento, Valor, Nome 
FROM Duplicatas 
WHERE Banco NOT IN ('ITAU', 'SANTANDER');

SELECT SUM(Valor) AS Total_Divida, Numero, Vencimento, Valor 
FROM Duplicatas 
WHERE Nome = 'PAPELARIA SILVA';

DELETE FROM Duplicatas 
WHERE Numero = 770710 AND Nome = 'LIVRARIA FERNANDES';

SELECT * 
FROM Duplicatas 
ORDER BY Nome ASC;

SELECT Nome, Banco, Valor, Vencimento 
FROM Duplicatas 
ORDER BY Vencimento ASC;

UPDATE Duplicatas 
SET Banco = 'SANTANDER' 
WHERE Banco = 'BANCO DO BRASIL';

SELECT DISTINCT Nome 
FROM Duplicatas 
WHERE Banco = 'BRADESCO';

SELECT SUM(Valor) AS Total_Recebimento 
FROM Duplicatas 
WHERE Vencimento BETWEEN '2016-01-01' AND '2016-12-31';

SELECT SUM(Valor) AS Total_Recebimento_Agosto 
FROM Duplicatas 
WHERE Vencimento BETWEEN '2016-08-01' AND '2016-08-30';

UPDATE Duplicatas 
SET Valor = Valor * 1.15 
WHERE Vencimento BETWEEN '2016-01-01' AND '2016-12-31' AND Vencimento < CURDATE();

UPDATE Duplicatas 
SET Valor = Valor * 1.05 
WHERE Nome = 'LER E SABER' 
AND Vencimento BETWEEN '2017-01-01' AND '2017-05-31' 
AND Vencimento < CURDATE();

SELECT AVG(Valor) AS Media_Valores_2016 
FROM Duplicatas 
WHERE YEAR(Vencimento) = 2016;

SELECT Numero, Nome 
FROM Duplicatas 
WHERE Valor > 10000.00;

SELECT SUM(Valor) AS Total_Valor_Santander 
FROM Duplicatas 
WHERE Banco = 'SANTANDER';

SELECT DISTINCT Nome 
FROM Duplicatas 
WHERE Banco IN ('BRADESCO', 'ITAU');
