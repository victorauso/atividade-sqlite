# 🗄️ Projeto de Gestão de Funcionários & Projetos em SQL (SQLite)

Este repositório contém a evolução de um projeto prático de **Modelagem Relacional, Consultas SQL e Análise de Dados** desenvolvido com SQLite.

---

## 📈 Evolução do Projeto (Versionamento)

Para demonstrar transparência e aprendizado contínuo, este repositório está dividido em duas etapas:

- 📂 **[`v1_atividade_inicial/`](./v1_atividade_inicial/)**: Versão original da atividade desenvolvida durante o módulo de introdução a SQL da Alura em 2025 (`M05EX05`).
- 📂 **[`v2_refatoracao_avancada/`](./v2_refatoracao_avancada/)**: Versão refatorada e expandida, aplicando boas práticas de código SQL, modelagem relacional, **JOINs**, **CTEs** e **Window Functions**.

---

## 🛠️ Tecnologias Utilizadas
- **SGBD**: SQLite 3
- **Linguagem**: SQL (ANSI Standard)
- **Ferramentas**: VSCode / DBeaver / SQLite Online

---

## 📐 Estrutura do Banco de Dados (`v2_refatoracao_avancada`)

- **`tabelafuncionarios`**: Armazena registros dos colaboradores (`id`, `nome`, `departamento`, `salario`).
- **`tabelaprojetos`**: Armazena os projetos da empresa (`id_projeto`, `nome_projeto`, `id_gerente`), correlacionando o gerente ao colaborador via `FOREIGN KEY`.

---

## 🚀 Como Executar os Scripts (`v2_refatoracao_avancada`)

Execute os arquivos na seguinte ordem de dependência:

1. `01_schema.sql` — Cria a estrutura das tabelas e relacionamentos.
2. `02_seed_data.sql` — Popula a base com dados de funcionários e projetos.
3. `03_consultas_basicas.sql` — Consultas de filtro, agregações simples e atualizações salariais.
4. `04_analise_avancada.sql` — Resumo estatístico por área, JOINs, CTEs e Window Functions (`RANK()`).

---

## 📬 Contato
- **Victor Oliveira**
- 💼 **LinkedIn:** [linkedin.com/in/victor-oliveira](https://www.linkedin.com/in/victor-oliveira)
- ✉️ **Email:** victorauso@gmail.com
