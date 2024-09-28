# Modelagem e normalizacao de Banco de Dados relacionais

## Descrição:
Este projeto aborda a modelagem e normalização de um banco de dados relacional. Além disso, são feitas consultas SQL sobre um banco de dados, com foco em demonstração de boas práticas de SQL (DQL) e operações de inserção e atualização de dados (DML).

## Objetivo:
O objetivo do projeto é modelar o banco de dados para melhor atender às necessidades de análise de dados, normalizando as tabelas para otimizar o armazenamento e garantir a consistência dos dados. Além disso, é demonstrado o uso de consultas SQL para extração de informações, bem como a execução de operações DML para gerenciar dados de maneira eficaz.

## Dicionário de Dados:


## Metodologia:
Questão 01: Modelo Conceitual:
Foi inicialmente construído um modelo de banco de dados com duas entidades principais: Cliente e Produto, sem normalização. A relação entre elas é de muitos-para-muitos (um cliente pode contratar vários produtos e um produto pode ser associado a vários clientes).



Questão 02: Modelo Lógico:
Aplicando as regras de normalização (até a terceira forma normal), a tabela de Cliente foi dividida em Cliente e Tipo de Cliente, enquanto a tabela de Produto foi dividida em Produto, Tipo de Produto, e Diretor Responsável. Além disso, uma tabela intermediária foi criada para armazenar a relação entre clientes e produtos.



Questões 03, 04 e 05: Consultas SQL (DQL):
Foram realizadas consultas para listar produtos com preço acima de 100 reais, produtos com preço acima da média, e o preço médio por categoria de produto, utilizando SQL. Resolução em anexo (projeto - analise_banco_de_dados.sql)

Questões 06 e 07: Operações DML:
Foi criado um banco de dados para armazenar informações sobre alunos e turmas. As operações de inserção, atualização e remoção de dados foram demonstradas utilizando os comandos DML, como INSERT e UPDATE. Resolução em anexo (projeto - analise_banco_de_dados.sql)

## Autores:
- **Felipe Sousa**  
  [GitHub](https://github.com/filsousa) | [LinkedIn](https://www.linkedin.com/in//) 

- **Gabryela Almeida**  
  [GitHub](https://github.com/) | [LinkedIn](https://www.linkedin.com/in//) 

- **Larissa Oliveira**  
  [GitHub](https://github.com/Larita404) | [LinkedIn](https://www.linkedin.com/in//)

- **Májda Alvarenga**  
  [GitHub](https://github.com/majdaalvarenga) | [LinkedIn](https://www.linkedin.com/in/majdaalvarenga/)

- **Nícolas Zocche**  
  [GitHub](https://github.com/NicolasZocche) | [LinkedIn](https://www.linkedin.com/in//) 
