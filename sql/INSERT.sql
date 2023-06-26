INSERT INTO area_tech (id_area_tech,nome_area_tech) VALUES
	('1', 'WEBDEV'),
	('2', 'DADOS');

INSERT INTO colaborador (cpf,nome_colaborador,telefone_colaborador) VALUES
	('11111111100', 'Gideoni Santos', '11999999999'),
	('22222222200', 'José Luiz', '11888888888');

INSERT INTO EMPRESA (cnpj,telefone_empresa,nome_fantasia) VALUES
	('12312312300123', '11989898989', 'Google'),
	('45645645600123', '11808080808', 'Ifood');

INSERT INTO tecnologia (id_tech, nome_tech, id_area_tech) VALUES
	('1', 'CSS', '1'),
	('2', 'PANDAS', '2');

INSERT INTO EMPRESA_COLABORADOR (id_func,cpf,cnpj,salario) VALUES
	('1', '11111111100', '12312312300123', 5.980),
	('2', '22222222200', '45645645600123', 5.190)

INSERT INTO COLABORADOR_TECH (id_tech, cpf) VALUES 
    ('2', '22222222200'),
    ('1', '11111111100');

INSERT INTO AVALIACAO_TECH (id_avaliacao,avaliacao,id_tech,cpf) VALUES
	('1', 6, '1', '22222222200'),
	('2', 8, '2', '11111111100');

