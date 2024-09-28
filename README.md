# Modelagem e normalizacao de Banco de Dados relacionais

## Descrição:
Este projeto aborda a modelagem e normalização de um banco de dados relacional. Além disso, são feitas consultas SQL sobre um banco de dados, com foco em demonstração de boas práticas de SQL (DQL) e operações de inserção e atualização de dados (DML).

## Objetivo:
O objetivo do projeto é modelar o banco de dados para melhor atender às necessidades de análise de dados, normalizando as tabelas para otimizar o armazenamento e garantir a consistência dos dados. Além disso, é demonstrado o uso de consultas SQL para extração de informações, bem como a execução de operações DML para gerenciar dados de maneira eficaz.

## Metodologia:
## Questão 01: 
Modelo Conceitual:

Foi inicialmente construído um modelo de banco de dados com duas entidades principais: Cliente e Produto, sem normalização. A relação entre elas é de muitos-para-muitos (um cliente pode contratar vários produtos e um produto pode ser associado a vários clientes).

### Atributos Chave
**Cliente:** codigo_cliente é a chave primária, pois identifica de forma única cada cliente.

**Produto:** codigo_produto é a chave primária, pois identifica de forma única cada produto.

### Cardinalidade
Dado que um cliente pode contratar vários produtos e um mesmo produto pode estar associado a vários clientes, tem-se uma relação muitos-para-muitos.

Cliente (1) --- contrata --- (N) Produto

Produto (1) --- é contratado por --- (N) Cliente

![image](https://github.com/user-attachments/assets/482d503a-089a-49bc-bade-4d9b8f6f2ac5)

## Questão 02: Modelo Lógico:
Aplicando as regras de normalização, a tabela de Cliente foi dividida em Cliente e Tipo de Cliente, enquanto a tabela de Produto foi dividida em Produto, Tipo de Produto, e Diretor Responsável. Além disso, uma tabela intermediária foi criada para armazenar a relação entre clientes e produtos.

### Atributos Chave
**Cliente:** codigo_cliente é a chave primária, pois identifica de forma única cada cliente.

**Produto:** codigo_produto é a chave primária, pois identifica de forma única cada produto.

**Contratação:** id_contratacao é a chave primária, pois identifica de forma única cada contratação.

**Diretor_Responsavel:** codigo_diretor_responsavel é a chave primária, pois identifica de forma única cada diretor responsável.

**Tipo_Cliente:** codigo_tipo_cliente é a chave primária, pois identifica de forma única o tipo de cliente.

**Tipo_Produto:** codigo_tipo_produto é a chave primária, pois identifica de forma única o tipo de produto.

### Cardinalidade
Cliente pode contratar vários Produtos, e um Produto pode ser contratado por vários Clientes. Isso resulta em uma relação muitos-para-muitos.

Cliente (1) --- contrata --- (N) Produto

Produto (1) --- é contratado por --- (N) Cliente

### Detalhamento das Relações
1. A relação muitos-para-muitos entre Cliente e Produto é gerida pela tabela intermediária Contratação, que armazena as informações das contratações.
2. Um Cliente pode estar associado a diferentes tipos de clientes através da tabela intermediária cliente_tipo, que gerencia o relacionamento entre clientes e seus tipos.
3. Um Produto tem um Diretor_Responsável associado, e a relação entre Produto e Diretor_Responsável é representada pela tabela intermediária pertence, que armazena qual diretor é responsável por qual produto.
4. Tipo_Cliente e Tipo_Produto são entidades separadas para normalizar as informações dos tipos de clientes e produtos, permitindo que múltiplos clientes ou produtos sejam categorizados corretamente.

![image](https://github.com/user-attachments/assets/ac28a3b2-e87b-4eb9-8ac4-249c63c71909)

## Questões 03, 04 e 05: Consultas SQL (DQL):
Foram realizadas consultas para listar produtos com preço acima de 100 reais, produtos com preço acima da média, e o preço médio por categoria de produto, utilizando SQL. Resolução em anexo (projeto - analise_banco_de_dados.sql)

## Questões 06 e 07: Operações DML:
Foi criado um banco de dados para armazenar informações sobre alunos e turmas. As operações de inserção e atualização de dados foram demonstradas utilizando os comandos DML, como INSERT e UPDATE. Resolução em anexo (projeto - analise_banco_de_dados.sql)

## Autores:
- **Filipe Sousa**  
  [GitHub](https://github.com/filsousa) | [LinkedIn](https://www.linkedin.com/in/filipel-sousa/)

- **Gabriela Almeida**  
  [GitHub](https://github.com/GabyAlm) | [LinkedIn](https://www.linkedin.com/in/gabriela-rodrigues-almeida/) 

- **Larissa Oliveira**  
  [GitHub](https://github.com/Larita404) | [LinkedIn](https://www.linkedin.com/in/larissatoscano/)

- **Májda Alvarenga**  
  [GitHub](https://github.com/majdaalvarenga) | [LinkedIn](https://www.linkedin.com/in/majdaalvarenga/)

- **Nícolas Zocche**  
  [GitHub](https://github.com/NicolasZocche) | [LinkedIn](https://www.linkedin.com/in/nicolas-magagnin-zocche/)
