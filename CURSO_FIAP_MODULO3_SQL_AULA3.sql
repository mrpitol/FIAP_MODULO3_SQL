-- Visualizar as CONSTRAINTS DAS TABELAS
select * from information_schema.table_constraints;


-- AULA 03
CREATE TABLE [TESTE].[DBO].[ALUNO3]
(
CODIGO INT,
NOME CHAR(10),
SEXO CHAR(1) CONSTRAINT CK_ALUNO3_SEXO CHECK (SEXO IN ('M','F'))
)
--EXEMPLO DE VALORES
INSERT INTO [TESTE].[DBO].[ALUNO3]
VALUES (10,'PAULO','M')

-- DROP
DROP TABLE [TESTE].[DBO].[ALUNO3]
-- INSERINDO CONSTRAINTS
  ALTER TABLE [TESTE].[DBO].[ALUNO3]
ADD 
DATA_MATRICULA DATE ,
CPF INT CONSTRAINT PK_ALUNO3_CPF_CHAVE_PRIMARIA PRIMARY KEY,
RG INT
;
--MENSAGEM
--Msg 1779, Level 16, State 0, Line 35
--Table 'ALUNO3' already has a primary key defined on it.
--Msg 1750, Level 16, State 0, Line 35
--Could not create constraint or index. See previous errors.

--APAGAR CONSTRAINT
ALTER TABLE [TESTE].[DBO].[ALUNO3]
DROP CONSTRAINT PK_ALUNO3_CODIGO -- NÃO LEVA O SUFIXO PRIMARY KEY

--MENSAGEM
--Msg 4901, Level 16, State 1, Line 35
--ALTER TABLE only allows columns
-- to be added that can contain nulls, or have a 
---DEFAULT definition specified, or the column being added is
-- an identity or timestamp column, or alternatively if none of 
--the previous conditions are satisfied the table must be empty
-- to allow addition of this column. Column 'CPF' cannot be added 
--to non-empty table 'ALUNO3' because it does not satisfy these conditions.
--NESSE CASO APAGAR A TABELA, ALTERAR E DEPOIS INSERIR OS VALORES

-- DROP
DROP TABLE [TESTE].[DBO].[ALUNO3]

--
-- AULA 03
CREATE TABLE [TESTE].[DBO].[ALUNO3]
(
CODIGO INT,
NOME CHAR(10),
SEXO CHAR(1) CONSTRAINT CK_ALUNO3_SEXO CHECK (SEXO IN ('M','F'))
)

-- INSERINDO CONSTRAINTS
ALTER TABLE [TESTE].[DBO].[ALUNO3]
ADD 
DATA_MATRICULA DATETIME,
CPF INT CONSTRAINT PK_ALUNO3_CPF_CHAVE_PRIMARIA PRIMARY KEY,
RG INT
;
--MENSAGEM 
--Command(s) completed successfully.

--EXEMPLO DE VALORES
INSERT INTO [TESTE].[DBO].[ALUNO3]
VALUES (10,'PAULO','M',CURRENT_TIMESTAMP,1234567892,112220004)

--VISUALIZAR CODIGO
SELECT TOP 1 [CODIGO]
      ,[NOME]
      ,[SEXO]
      ,[DATA_MATRICULA]
      ,[CPF]
      ,[RG]
  FROM [teste].[dbo].[ALUNO3]

  --