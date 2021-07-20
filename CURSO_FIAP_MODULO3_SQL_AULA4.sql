
-- AULA 04
--POSSIVEIS ERROS AS TENTAR INSERIR/ATUALIZAR REGISTROS
	--VIOLAR PK
	--VIOLAR UNIQUE
	--VIOLAR TAMANHO COLUNA
	--TIPO DE DADO INCOMPATIVEL COM COLUNA
	--VIOLAR CHECK
	--VIOLAR FK
	--VIOLAR NOT NULL
--POSSIVEIS ERROS AS TENTAR INSERIR/ATUALIZAR REGISTROS	
	--VIOLAR FK
	
--COMMIT E ROLLBACK
-- NO MS SQL O COMMIT �AUTOMATICO
SELECT * FROM [teste].[dbo].[PRODUTO] 
--EXEMPLO
INSERT INTO [teste].[dbo].[PRODUTO]
VALUES(10,10,'CHOCOLATE')
--AO TENTAR DAR ROLLBACK
ROLLBACK
--MENSAGEM
--Msg 3903, Level 16, State 1, Line 19
--The ROLLBACK TRANSACTION request has no corresponding BEGIN TRANSACTION.
BEGIN TRAN EXEMPLO_ROLLBACK
INSERT INTO [teste].[dbo].[PRODUTO]
VALUES(2,2,'DOCE DE LEITE')
ROLLBACK TRAN EXEMPLO_ROLLBACK

-- TODO COMANDO DDL TEM O COMMIT IMPLICITO (ORACLE) - EXEMPLO SEQUENCE

