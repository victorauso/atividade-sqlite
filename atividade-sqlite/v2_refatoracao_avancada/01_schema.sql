-- ============================================================
-- PROJETO SQL REFATORADO (V2)
-- Arquivo: 01_schema.sql (Estrutura das Tabelas)
-- ============================================================

DROP TABLE IF EXISTS tabelaprojetos;
DROP TABLE IF EXISTS tabelafuncionarios;

-- 1. Tabela de Funcionários com constraints adequadas
CREATE TABLE tabelafuncionarios (
    id INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    departamento VARCHAR(100) NOT NULL,
    salario DECIMAL(10,2) NOT NULL
);

-- 2. Tabela de Projetos com Foreign Key e integridade referencial
CREATE TABLE tabelaprojetos (
    id_projeto INT PRIMARY KEY,
    nome_projeto VARCHAR(100) NOT NULL,
    id_gerente INT,
    FOREIGN KEY (id_gerente) REFERENCES tabelafuncionarios(id) ON DELETE SET NULL
);
