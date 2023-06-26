CREATE TABLE EMPRESA (
	CNPJ varchar(14) NOT NULL PRIMARY KEY;
	Telefone_empresa varchar(11);
	Nome_fantasia varchar(255)
)

CREATE TABLE COLABORADOR (
	CPF varchar(11) NOT NULL PRIMARY KEY,
	Nome_colaborador varchar(255),
	telefone_colaborador(11)
)

CREATE TABLE Empresa_Colaborador (
	ID_func varchar NOT NULL PRIMARY KEY,
	CPF varchar(11),
	CNPJ varchar(14),
	Salario float,
	CONSTRAINT empresa_colaborador FOREIGN KEY (CPF) REFERENCES COLABORADOR (CPF)
)

CREATE TABLE AREA_TECH (
	ID_area_tech varchar NOT NULL PRIMARY KEY,
	Nome_area_tech varchar(255)
)

CREATE TABLE TECNOLOGIA (
	ID_tech varchar NOT NULL PRIMARY KEY,
	Nome_tech varchar(255),
	ID_area_tech varchar,
	CONSTRAINT area_tech_tecnologia FOREIGN KEY (ID_area_tech) REFERENCES AREA_TECH (ID_area_tech)
)

CREATE TABLE colaborador_tech (
	ID_tech varchar,
	CPF varchar(11),
	CONSTRAINT fk_tecnologia FOREIGN KEY (ID_tech) REFERENCES TECNOLOGIA (ID_tech),
	CONSTRAINT fk_colaborador FOREIGN KEY (CPF) REFERENCES COLABORADOR (CPF)
)

CREATE TABLE avaliacao_tech (
	ID_avaliacao varchar PRIMARY KEY NOT NULL,
	avaliacao integer,
	ID_tech varchar,
	CPF varchar(11),
	CONSTRAINT fk_avaliacao_tech FOREIGN KEY (ID_tech) REFERENCES TECNOLOGIA (ID_tech),
	CONSTRAINT fk_avaliacao_colaborador FOREIGN KEY (CPF) REFERENCES COLABORADOR (CPF)
)

