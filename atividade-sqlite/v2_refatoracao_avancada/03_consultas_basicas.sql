-- ============================================================
-- PROJETO SQL REFATORADO (V2)
-- Arquivo: 03_consultas_basicas.sql (Filtros e Manutenção)
-- ============================================================

-- 1. Listar todos os funcionários
SELECT * FROM tabelafuncionarios;

-- 2. Funcionários do departamento de Vendas
SELECT id, nome, salario 
FROM tabelafuncionarios 
WHERE departamento = 'Vendas';

-- 3. Funcionários com salário menor que R$ 5.000,00
SELECT id, nome, departamento, salario 
FROM tabelafuncionarios 
WHERE salario < 5000.00;

-- 4. Departamentos únicos da empresa
SELECT DISTINCT departamento 
FROM tabelafuncionarios;

-- 5. Atualização salarial: Ajuste de piso salarial para a área de TI
UPDATE tabelafuncionarios 
SET salario = 8500.00 
WHERE departamento = 'TI' AND salario < 8500.00;

-- 6. Funcionários de Vendas com rendimento a partir de R$ 5.000,00
SELECT nome, salario 
FROM tabelafuncionarios 
WHERE departamento = 'Vendas' AND salario >= 5000.00;
