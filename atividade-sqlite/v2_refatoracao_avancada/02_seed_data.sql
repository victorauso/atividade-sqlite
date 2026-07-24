-- ============================================================
-- PROJETO SQL REFATORADO (V2)
-- Arquivo: 02_seed_data.sql (População de Dados)
-- ============================================================

INSERT INTO tabelafuncionarios (id, nome, departamento, salario) VALUES
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

INSERT INTO tabelaprojetos (id_projeto, nome_projeto, id_gerente) VALUES
(101, 'Migração para Nuvem', 3),
(102, 'Automação Contábil', 4),
(103, 'Reestruturação Comercial', 8),
(104, 'Campanha Digital', 7),
(105, 'Segurança de Infraestrutura', 9);
