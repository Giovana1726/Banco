Create Database Vendas;

USE Vendas

Create table Produto 
(      id_Produto int primary key auto_increment,
       Descricao_do_Produto varchar(50),
       Peso_produto float,
       Preco_produto float);
       
Create table Nota_Fiscal
(      id_NF int primary key auto_increment,
       ICMS_NF float,
       Data_NF date,
       Valor_NF float);
       
Create table Itens
(      id_Itens int primary key auto_increment,
       Quantidade_Itens int);
       
ALTER TABLE Nota_Fiscal
CHANGE COLUMN Valor_NF Valor_Total_NF FLOAT

ALTER TABLE Nota_Fiscal
DROP COLUMN Data_NF;

DROP TABLE IF EXISTS Itens;

ALTER TABLE Nota_Fiscal
RENAME TO Venda;