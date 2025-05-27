-- 1.a) Criar a tabela de funcionários com as colunas: id, nome, departamento e salário.
CREATE TABLE tabelafuncionarios (
  ID INT PRIMARY KEY,
  Nome VARCHAR(100),
  Departamento VARCHAR(100),
  Salario DECIMAL(10,2)
);

-- 1.b) Inserir registros de funcionários.
INSERT INTO tabelafuncionarios( 
  id,
  nome,
  departamento,
  salario)
VALUES
  (1, 'Heitor Vieira', 'Financeiro', 4959.22),
  (2, 'Daniel Campos', 'Vendas', 3884.44),
  (3, 'Luiza Dias', 'TI', 8205.78),
  (4, 'Davi Lucas Moraes', 'Financeiro', 8437.02),
  (5, 'Pietro Cavalcanti', 'TI', 4946.88),
  (6, 'Evelyn da Mata', 'Vendas', 5278.88),
  (7, 'Isabella Rocha', 'Marketing', 4006.03),
  (8, 'Manuela Azevedo', 'Vendas', 6101.88),
  (9, 'Brenda Cardoso', 'TI', 8853.34),
  (10, 'Danilo Souza', 'TI', 8242.14);

-- 2) Selecione todos os campos de todos os registros na tabela funcionários.
SELECT * FROM tabelafuncionarios;

-- 3) Na tabela funcionários, selecione os nomes dos funcionários que trabalham no departamento de vendas.
SELECT * FROM tabelafuncionarios WHERE departamento = 'Vendas';

-- 4) Selecione os funcionários da tabela funcionários que o salário seja menor que 5000,00.
SELECT * FROM tabelafuncionarios WHERE salario < 5000;

-- 5) Na tabela funcionários, selecione departamentos distintos.
SELECT DISTINCT departamento FROM tabelafuncionarios;

-- 6) Atualize o salário dos funcionários de "TI" para 7500 na tabela funcionarios.
UPDATE tabelafuncionarios SET salario = 7500.00 WHERE departamento = 'TI';

-- 7) Delete da tabela funcionários todos os registros de funcionários que ganham menos de 4000,00.
DELETE FROM tabelafuncionarios WHERE salario < 4000.00;

-- 8) Selecione os nomes e salários dos funcionários que trabalham no departamento de vendas cujo salário seja maior ou igual a 6000,00.
SELECT nome, salario FROM tabelafuncionarios WHERE departamento = 'Vendas' AND salario >= 6000.00;

-- 9) Crie uma tabela chamada projetos com as colunas: id_projeto, nome_projeto, id_gerente.
CREATE TABLE tabelaprojetos (
  ID_projeto INT PRIMARY KEY,
  Nome_projeto VARCHAR(100),
  ID_gerente INT,
  FOREIGN KEY (ID_gerente) REFERENCES tabelafuncionarios (ID)
);

-- 9.a) Insira 3 registros na tabela projetos.
INSERT INTO tabelaprojetos (id_projeto, nome_projeto, ID_gerente)
VALUES
(1, 'Edição', 1),
(2, 'Automação', 1),
(3, 'Design', 2);

-- Selecione todos os projetos cujo id_gerente seja igual a 2.
SELECT * FROM tabelaprojetos WHERE ID_gerente = 2;

-- 10) Remova a tabela funcionários do banco de dados.
DROP TABLE tabelafuncionarios;