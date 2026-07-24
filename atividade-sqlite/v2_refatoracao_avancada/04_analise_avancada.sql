-- ============================================================
-- PROJETO SQL REFATORADO (V2)
-- Arquivo: 04_analise_avancada.sql (Análise Avançada e Insights)
-- ============================================================

-- A. Resumo Estatístico por Departamento (Média, Mínimo, Máximo e Total Salarial)
SELECT 
    departamento,
    COUNT(id) AS qtd_funcionarios,
    ROUND(AVG(salario), 2) AS media_salarial,
    MIN(salario) AS menor_salario,
    MAX(salario) AS maior_salario,
    ROUND(SUM(salario), 2) AS custo_total
FROM tabelafuncionarios
GROUP BY departamento
ORDER BY media_salarial DESC;

-- B. INNER JOIN: Identificar qual gerente é responsável por cada projeto ativo
SELECT 
    p.id_projeto,
    p.nome_projeto,
    f.nome AS nome_gerente,
    f.departamento AS depto_gerente
FROM tabelaprojetos p
INNER JOIN tabelafuncionarios f ON p.id_gerente = f.id
ORDER BY p.id_projeto;

-- C. CTE (Common Table Expression): Funcionários que ganham acima da média geral da empresa
WITH MediaEmpresa AS (
    SELECT AVG(salario) AS media_geral FROM tabelafuncionarios
)
SELECT 
    f.nome,
    f.departamento,
    f.salario,
    ROUND(m.media_geral, 2) AS media_empresa,
    ROUND(f.salario - m.media_geral, 2) AS diferenca_positivo
FROM tabelafuncionarios f, MediaEmpresa m
WHERE f.salario > m.media_geral
ORDER BY f.salario DESC;

-- D. WINDOW FUNCTION: Ranking salarial por departamento
SELECT 
    id,
    nome,
    departamento,
    salario,
    RANK() OVER (PARTITION BY departamento ORDER BY salario DESC) AS pos_no_depto
FROM tabelafuncionarios;
