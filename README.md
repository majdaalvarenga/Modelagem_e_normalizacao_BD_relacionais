# Modelagem e normalizacao de Banco de Dados relacionais

## Descrição:
Este projeto aborda a modelagem e normalização de um banco de dados relacional para um sistema financeiro, onde o objetivo é mapear clientes e os produtos financeiros que eles contrataram. Além disso, são feitas consultas SQL sobre um banco de dados de exemplo de e-commerce, com foco em demonstração de boas práticas de SQL (DQL) e operações de inserção, atualização e remoção de dados (DDL/DML).

## Objetivo:
O objetivo do projeto é modelar o banco de dados para melhor atender às necessidades de análise de dados, normalizando as tabelas para otimizar o armazenamento e garantir a consistência dos dados. Além disso, é demonstrado o uso de consultas SQL para extração de informações, bem como a execução de operações DDL e DML para gerenciar dados de maneira eficaz.

## Dicionário de Dados:


## Metodologia:
1. Modelo Conceitual:
Foi inicialmente construído um modelo de banco de dados com duas entidades principais: Cliente e Produto, sem normalização. A relação entre elas é de muitos-para-muitos (um cliente pode contratar vários produtos e um produto pode ser associado a vários clientes).

2. Modelo Lógico:
Aplicando as regras de normalização (até a terceira forma normal), a tabela de Cliente foi dividida em Cliente e Tipo de Cliente, enquanto a tabela de Produto foi dividida em Produto, Tipo de Produto, e Diretor Responsável. Além disso, uma tabela intermediária foi criada para armazenar a relação entre clientes e produtos.

3. Consultas SQL (DQL):
Foram realizadas consultas para listar produtos com preço acima de 100 reais, produtos com preço acima da média, e o preço médio por categoria de produto, utilizando SQL.

4. Operações DDL e DML:
Foi criado um banco de dados para armazenar informações sobre alunos e turmas. As operações de inserção, atualização e remoção de dados foram demonstradas utilizando os comandos DML, como INSERT, UPDATE e DELETE.




## Autores:
- 

- 

-


- **Májda Alvarenga**  
  [GitHub](https://github.com/majdaalvarenga) | [LinkedIn](https://www.linkedin.com/in/majdaalvarenga/)


- 
