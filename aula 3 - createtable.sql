CREATE TABLE COR (
ID NUMBER(4) NOT NULL PRIMARY KEY,
NOME VARCHAR2(50) NOT NULL,
CONSTRAINT UQ_COR UNIQUE (NOME)
);

select * from cor;