# Atividade SQLite

Este repositório contém uma atividade prática de SQL utilizando SQLite. O objetivo é exercitar conceitos fundamentais de manipulação de banco de dados, como criação de tabelas, inserção de dados, consultas, atualizações e remoções.

## Conteúdo

O arquivo `atividade_sqlite.sql` inclui:

- **Criação de tabelas:** Funcionários e Projetos, com suas respectivas colunas e chaves primárias/estrangeiras.
- **Inserção de dados:** Exemplos de inserção de múltiplos registros em uma única instrução.
- **Consultas:** Exemplos de seleção de todos os dados, filtragem por condições, seleção de campos distintos e junções simples.
- **Atualizações:** Modificação de salários para um determinado departamento.
- **Remoções:** Exclusão de registros com base em condições específicas e remoção de tabelas.
- **Relacionamentos:** Uso de chave estrangeira para vincular projetos a gerentes (funcionários).

## Como executar

1. Instale o [SQLite](https://www.sqlite.org/download.html) em seu computador, se necessário.
2. Clone este repositório:
   ```bash
   git clone https://github.com/victorauso/atividade-sqlite.git
   cd atividade-sqlite
   ```
3. Execute o arquivo SQL no seu banco SQLite:
   ```bash
   sqlite3 meu_banco.db < atividade_sqlite.sql
   ```

## Sobre

Esta atividade foi desenvolvida para fins didáticos, com foco no aprendizado dos principais comandos SQL em ambientes acadêmicos ou de autoestudo.

Sinta-se à vontade para contribuir ou utilizar este material em seus estudos!

---
> Feito por [victorauso](https://github.com/victorauso)
