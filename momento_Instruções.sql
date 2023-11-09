
-- Inclua suas próprias informações no departamento de tecnologia da empresa
INSERT INTO funcionarios (funcionarios_id, primeiro_nome, sobrenome, email, telefone, data_contratacao, ocupacao_id, salario, departamento_id)
VALUES ('Gabriely', 'Silva dos Santos', 'Gabriely.s.santos@momento.org', '(11)983928638', '2024-01-13', 9 ,4800.00,103,6);

-- A administração está sem funcionários. Inclua alguns colegas de turma nesse departamento. 
INSERT INTO funcionarios (primeiro_nome, sobrenome, email, telefone, data_contratacao, ocupacao_id, salario, departamento_id)
VALUES 
(' Vinicius', 'Gomes', 'ViniciusGomes17@momento.org', '515.123.6745', '2021-11-08', 3, 4400.00, 1),
(' Augusto', 'Oliveira', 'AugustoOliveira0108@momento.org', '515.123.6846', '2017-08-11', 3, 4400.00, 1),
(' Kauan', 'Garcia', 'KauanGarciaS@momento.org', '515.123.6947', '2022-01-23', 3, 4400.00, 1),
('Guilherme', 'De França', 'GuilhermeDeFrança1308.email@example.com', '510.123.6249', '2023-04-15', 3, 4400.00, 1);

-- Agora diga, quantos funcionários temos ao total na empresa?
SELECT COUNT(*) 
FROM funcionarios;

-- Quantos funcionários temos no departamento de finanças?
SELECT COUNT(*) 
FROM funcionarios 
WHERE departamento_id = (SELECT departamento_id FROM departamento WHERE departamento_nome = 'Finanças');

-- Qual a média salarial do departamento de tecnologia?
SELECT AVG(salario) 
FROM funcionarios
WHERE departamento_id = (SELECT departamento_id FROM departamento WHERE departamento_nome = 'Tecnologia');

-- Quanto o departamento de Transportes gasta em salários?
SELECT SUM(salario) 
FROM funcionarios 
WHERE departamento_id = (SELECT departamento_id FROM departamento WHERE departamento_nome = 'Transportes');

-- Um novo departamento foi criado. O departamento de inovações. 
-- Ele será locado no Brasil. Por favor, adicione-o no banco de dados.
INSERT INTO departamento(departamento_id, departamento_nome, posicao_id) VALUES (12,'Inovações', 5400);

-- Três novos funcionários foram contratados para o departamento de inovações. Por favor, adicione-os: 
-- William Ferreira, casado com Inara Ferreira, possuem uma filha chamada Maria Antônia que tem 1 anos e
--  adora brincar com cachorros. Ele será programador.
-- Já a Fernanda Lima, que é casada com o Rodrigo, não possui filhos. Ela vai ocupar a posição de desenvolvedora.  
-- Por último, a Gerente do departamento será Sumaia Azevedo. Casada, duas filhas (Tainã e Nathalia).
INSERT INTO ocupacoes(ocupacao_id,ocupacao_nome,min_salario,max_salario) VALUES (20,'Progrmador',4000.00,10000.00);
INSERT INTO ocupacoes(ocupacao_id,ocupacao_nome,min_salario,max_salario) VALUES (21,'Desenvolvedor',4000.00,10000.00);
INSERT INTO ocupacoes(ocupacao_id,ocupacao_nome,min_salario,max_salario) VALUES (22,'Gerente de Inovação',8000.00,15000.00);

-- Incluindo William Ferreira
INSERT INTO funcionarios (primeiro_nome, sobrenome, email, telefone, data_contratacao, ocupacao_id, salario, departamento_id)
VALUES ('William', 'Ferreira', 'WilliamFerreira@momento.org', '626.321.6745', '2023-11-02', 20, 5600.00, 12),
('Fernanda', 'Lima', 'FernandaLima@momento.org', '737.432.7856', '2023-11-03', 20, 5600.00, 12),
('Sumaia', 'Azevedo', 'SumaiaAzevedo@momento.org', '848.543.8965', '2023-10-30', 20, 10000.00, 12);

INSERT INTO dependentes(dependente_id,primeiro_nome,sobrenome,parentesco,funcionario_id) VALUES (27,'Julia','Raphaely','Filho(a)',114);
INSERT INTO dependentes(dependente_id,primeiro_nome,sobrenome,parentesco,funcionario_id) VALUES (33,'Salvadora','Ernst','Cônjuge',104);
INSERT INTO dependentes(dependente_id,primeiro_nome,sobrenome,parentesco,funcionario_id) VALUES (28,'Woody','Russell','Filho(a)',145);
INSERT INTO dependentes(dependente_id,primeiro_nome,sobrenome,parentesco,funcionario_id) VALUES (29,'Alec','Partners','Filho(a)',146);