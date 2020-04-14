/*Modele uma estrutura de dados do seguinte caso:
- Um cliente tem os seguintes campos : 
Nome, 
Id Cliente, 
UF, 
Celular

- Um cliente tem N financiamentos.

- Um financiamento tem os seguintes campos : 
Id Cliente, 
Tipo Financiamento, 
Valor Total,
Data Vencimento

- Cada financiamento tem N parcelas, cujas tem os seguintes campos : 
Id Financiamento,
Número da Parcela, 
Valor Parcela, 
Data Vencimento, 
Data Pagamento;


Crie as tabelas que julgue necessárias e insira alguns registros de testes na mesma.
Elabore as seguintes querys:
*/

CREATE TABLE Clientes (
    IdCliente int IDENTITY(1,1) PRIMARY KEY,
    Nome varchar(255),
    UF varchar(2),
    Celular varchar(20)
);
--drop table Clientes;
SELECT * FROM Clientes;

CREATE TABLE Financiamentos (
    IdFinanciamento int IDENTITY(1,1) PRIMARY KEY,
    IdCliente int NOT NULL FOREIGN KEY REFERENCES Clientes(IdCliente),
    TipoFinanciamento varchar(100),
    ValorTotal decimal,
    DataVencimento datetime 
);
--drop table Financiamentos; 
SELECT * FROM Financiamentos;

CREATE TABLE Parcelas (
    IdParcela int IDENTITY(1,1) PRIMARY KEY,
    IdFinanciamento int NOT NULL FOREIGN KEY REFERENCES Financiamentos(IdFinanciamento),
    NumeroParcela int,
    ValorParcela decimal,
    DataVencimento datetime,
    DataPagamento datetime 
);
--drop table Parcelas;
SELECT * FROM Parcelas;

INSERT INTO Clientes (Nome, UF, Celular)
VALUES ('Rodrigo', 'SP', '11999010799');
INSERT INTO Clientes (Nome, UF, Celular)
VALUES ('Bruno', 'SP', '11988887777');
INSERT INTO Clientes (Nome, UF, Celular)
VALUES ('Lucas', 'SP', '11966665555');
INSERT INTO Clientes (Nome, UF, Celular)
VALUES ('Rafael', 'MG', '11922221111');
INSERT INTO Clientes (Nome, UF, Celular)
VALUES ('Felipe', 'RJ', '11965656565');
INSERT INTO Clientes (Nome, UF, Celular)
VALUES ('Mariana', 'RJ', '11977777777');

--Financiamento - Cliente 1
INSERT INTO Financiamentos (IdCliente, TipoFinanciamento, ValorTotal, DataVencimento)
VALUES (1, 'Pessoa Fisica', 10000, '01/01/2019');

INSERT INTO Parcelas (IdFinanciamento, NumeroParcela, ValorParcela, DataVencimento, DataPagamento)
VALUES (1, 1, 1000, '01/01/2019', '01/01/2019');
INSERT INTO Parcelas (IdFinanciamento, NumeroParcela, ValorParcela, DataVencimento, DataPagamento)
VALUES (1, 2, 1000, '02/01/2019', '01/28/2019');
INSERT INTO Parcelas (IdFinanciamento, NumeroParcela, ValorParcela, DataVencimento, DataPagamento)
VALUES (1, 3, 1000, '03/01/2019', '03/02/2019');
INSERT INTO Parcelas (IdFinanciamento, NumeroParcela, ValorParcela, DataVencimento, DataPagamento)
VALUES (1, 4, 1000, '04/01/2019', '04/02/2019');
INSERT INTO Parcelas (IdFinanciamento, NumeroParcela, ValorParcela, DataVencimento, DataPagamento)
VALUES (1, 5, 1000, '05/01/2019', '05/10/2019');
INSERT INTO Parcelas (IdFinanciamento, NumeroParcela, ValorParcela, DataVencimento, DataPagamento)
VALUES (1, 6, 1000, '06/01/2019', '06/09/2019');
INSERT INTO Parcelas (IdFinanciamento, NumeroParcela, ValorParcela, DataVencimento, DataPagamento)
VALUES (1, 7, 1000, '07/01/2019', null);
INSERT INTO Parcelas (IdFinanciamento, NumeroParcela, ValorParcela, DataVencimento, DataPagamento)
VALUES (1, 8, 1000, '08/01/2019', '08/20/2019');
INSERT INTO Parcelas (IdFinanciamento, NumeroParcela, ValorParcela, DataVencimento, DataPagamento)
VALUES (1, 9, 1000, '09/01/2019', '09/01/2019');
INSERT INTO Parcelas (IdFinanciamento, NumeroParcela, ValorParcela, DataVencimento, DataPagamento)
VALUES (1, 10, 1000, '10/01/2019', null);
--Financiamento - Cliente 2
INSERT INTO Financiamentos (IdCliente, TipoFinanciamento, ValorTotal, DataVencimento)
VALUES (2, 'Pessoa Fisica', 50000, '01/01/2019');

INSERT INTO Parcelas (IdFinanciamento, NumeroParcela, ValorParcela, DataVencimento, DataPagamento)
VALUES (2, 1, 10000, '01/01/2019', '01/01/2019');
INSERT INTO Parcelas (IdFinanciamento, NumeroParcela, ValorParcela, DataVencimento, DataPagamento)
VALUES (2, 2, 10000, '02/01/2019', '01/30/2019');
INSERT INTO Parcelas (IdFinanciamento, NumeroParcela, ValorParcela, DataVencimento, DataPagamento)
VALUES (2, 3, 10000, '03/01/2019', '03/02/2019');
INSERT INTO Parcelas (IdFinanciamento, NumeroParcela, ValorParcela, DataVencimento, DataPagamento)
VALUES (2, 4, 10000, '04/01/2019', null);
INSERT INTO Parcelas (IdFinanciamento, NumeroParcela, ValorParcela, DataVencimento, DataPagamento)
VALUES (2, 5, 10000, '05/01/2019', '05/20/2019');
--Financiamento - Cliente 3
INSERT INTO Financiamentos (IdCliente, TipoFinanciamento, ValorTotal, DataVencimento)
VALUES (3, 'Pessoa Fisica', 100000, '01/01/2019');

INSERT INTO Parcelas (IdFinanciamento, NumeroParcela, ValorParcela, DataVencimento, DataPagamento)
VALUES (3, 1, 20000, '01/01/2019', '01/20/2019');
INSERT INTO Parcelas (IdFinanciamento, NumeroParcela, ValorParcela, DataVencimento, DataPagamento)
VALUES (3, 2, 20000, '02/01/2019', '02/25/2019');
INSERT INTO Parcelas (IdFinanciamento, NumeroParcela, ValorParcela, DataVencimento, DataPagamento)
VALUES (3, 3, 20000, '03/01/2019', '03/01/2019');
INSERT INTO Parcelas (IdFinanciamento, NumeroParcela, ValorParcela, DataVencimento, DataPagamento)
VALUES (3, 4, 20000, '04/01/2019', '04/01/2019');
INSERT INTO Parcelas (IdFinanciamento, NumeroParcela, ValorParcela, DataVencimento, DataPagamento)
VALUES (3, 5, 20000, '05/01/2019', null);
--Financiamento - Cliente 4
INSERT INTO Financiamentos (IdCliente, TipoFinanciamento, ValorTotal, DataVencimento)
VALUES (4, 'Pessoa Fisica', 600000, '01/01/2019');

INSERT INTO Parcelas (IdFinanciamento, NumeroParcela, ValorParcela, DataVencimento, DataPagamento)
VALUES (4, 1, 60000, '01/01/2019', '01/17/2019');
INSERT INTO Parcelas (IdFinanciamento, NumeroParcela, ValorParcela, DataVencimento, DataPagamento)
VALUES (4, 2, 60000, '02/01/2019', '02/22/2019');
INSERT INTO Parcelas (IdFinanciamento, NumeroParcela, ValorParcela, DataVencimento, DataPagamento)
VALUES (4, 3, 60000, '03/01/2019', '03/01/2019');
INSERT INTO Parcelas (IdFinanciamento, NumeroParcela, ValorParcela, DataVencimento, DataPagamento)
VALUES (4, 4, 60000, '04/01/2019', '04/01/2019');
INSERT INTO Parcelas (IdFinanciamento, NumeroParcela, ValorParcela, DataVencimento, DataPagamento)
VALUES (4, 5, 60000, '05/01/2019', null);
INSERT INTO Parcelas (IdFinanciamento, NumeroParcela, ValorParcela, DataVencimento, DataPagamento)
VALUES (4, 6, 60000, '06/01/2019', '06/20/2019');
INSERT INTO Parcelas (IdFinanciamento, NumeroParcela, ValorParcela, DataVencimento, DataPagamento)
VALUES (4, 7, 60000, '07/01/2019', '07/30/2019');
INSERT INTO Parcelas (IdFinanciamento, NumeroParcela, ValorParcela, DataVencimento, DataPagamento)
VALUES (4, 8, 60000, '08/01/2019', '08/01/2019');
INSERT INTO Parcelas (IdFinanciamento, NumeroParcela, ValorParcela, DataVencimento, DataPagamento)
VALUES (4, 9, 60000, '09/01/2019', '09/01/2019');
INSERT INTO Parcelas (IdFinanciamento, NumeroParcela, ValorParcela, DataVencimento, DataPagamento)
VALUES (4, 10, 60000, '10/01/2019', '10/02/2019');

--Financiamento - Cliente 5
INSERT INTO Financiamentos (IdCliente, TipoFinanciamento, ValorTotal, DataVencimento)
VALUES (5, 'Pessoa Fisica', 2000, '01/01/2019');

INSERT INTO Parcelas (IdFinanciamento, NumeroParcela, ValorParcela, DataVencimento, DataPagamento)
VALUES (5, 1, 500, '01/01/2019', '01/01/2019');
INSERT INTO Parcelas (IdFinanciamento, NumeroParcela, ValorParcela, DataVencimento, DataPagamento)
VALUES (5, 2, 500, '02/01/2019', '02/01/2019');
INSERT INTO Parcelas (IdFinanciamento, NumeroParcela, ValorParcela, DataVencimento, DataPagamento)
VALUES (5, 3, 500, '03/01/2019', '03/01/2019');
INSERT INTO Parcelas (IdFinanciamento, NumeroParcela, ValorParcela, DataVencimento, DataPagamento)
VALUES (5, 4, 500, '04/01/2019', '04/01/2019');

/*
- Listar todos os clientes do estado de SP que tenham mais de 60% das parcelas pagas.
*/

with ClientesParcelas as (
    select 
        C.IdCliente,
        C.Nome,
        P.IdFinanciamento,
        count(P.NumeroParcela) as TotalParcelas,
        count(case when P.DataPagamento is not null then P.NumeroParcela end) as ParcelasPagas,
        count(case when P.DataPagamento is null then P.NumeroParcela end) as ParcelasNaoPagas
    from Clientes as C
    inner join Financiamentos as F
    on C.IdCliente = F.IdCliente
    inner join Parcelas P
    on F.IdFinanciamento = P.IdFinanciamento
    group by C.IdCliente, C.Nome, P.IdFinanciamento
)
select * from (select *, 
    ROUND(((CAST(CP.ParcelasPagas AS DECIMAL)*100)/(CAST(CP.TotalParcelas AS DECIMAL))),2) as PorcentagemPaga 
from ClientesParcelas CP) as Pgto where Pgto.PorcentagemPaga > 60


/*
- Listar os primeiros 4 clientes que tenham alguma parcela com mais de 05 dias atrasadas
(Data Vencimento maior que data atual E data pagamento nula)
*/
with ClientesParcelasAtrasadas as (
    select 
        C.IdCliente,
        C.Nome,
        P.IdFinanciamento,
        P.NumeroParcela,
        P.DataVencimento,
        P.DataPagamento,
        case when P.DataPagamento is null 
        then DATEDIFF(day, P.DataVencimento, getdate()) 
        else DATEDIFF(day, P.DataVencimento, P.DataPagamento) 
        end as DiasAtrasados
    from Clientes as C
    inner join Financiamentos as F
    on C.IdCliente = F.IdCliente
    inner join Parcelas P
    on F.IdFinanciamento = P.IdFinanciamento
    where DATEDIFF(day, P.DataVencimento, P.DataPagamento) > 0 or P.DataPagamento IS NULL
    
)
select top 4 CPA.IdCliente, CPA.Nome  from ClientesParcelasAtrasadas CPA
where CPA.DiasAtrasados > 5  
group by CPA.IdCliente, CPA.Nome
/*
- Listar todos os clientes que já atrasaram em algum momento duas ou mais parcelas em
mais de 10 dias, e que o valor do financiamento seja maior que R$ 10.000,00.
*/
with ClientesParcelasAtrasadas as (
    select 
        C.IdCliente,
        C.Nome,
        P.IdFinanciamento,
        F.ValorTotal,
        P.NumeroParcela,
        P.DataVencimento,
        P.DataPagamento,
        case when P.DataPagamento is null 
        then DATEDIFF(day, P.DataVencimento, getdate()) 
        else DATEDIFF(day, P.DataVencimento, P.DataPagamento) 
        end as DiasAtrasados
    from Clientes as C
    inner join Financiamentos as F
    on C.IdCliente = F.IdCliente
    inner join Parcelas P
    on F.IdFinanciamento = P.IdFinanciamento
    where (DATEDIFF(day, P.DataVencimento, P.DataPagamento) > 10 or (P.DataPagamento IS NULL and DATEDIFF(day, P.DataVencimento, getdate()) > 10)) and F.ValorTotal > 10000
    
)
select CPA.IdCliente, CPA.Nome, count(NumeroParcela) as QuantidadeAtrasos, CPA.ValorTotal from ClientesParcelasAtrasadas CPA  
group by CPA.IdCliente, CPA.Nome, CPA.ValorTotal