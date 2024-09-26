# QUESTÃO 03

CREATE TABLE produtos (
id INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(100) NOT NULL,
preco DECIMAL(10, 2) NOT NULL
);
CREATE TABLE categorias (
id INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(100) NOT NULL
);
CREATE TABLE produtos_categorias (
produto_id INTEGER REFERENCES produtos(id),
categoria_id INTEGER REFERENCES categorias(id)
);

INSERT INTO produtos (nome, preco) VALUES
('Smartphone', 1200.00),
('Notebook', 3500.00),
('Teclado Mecânico', 250.50),
('Monitor 24"', 899.99),
('Mouse Gamer', 199.90);

INSERT INTO categorias (nome) VALUES
('Eletrônicos'),
('Computadores'),
('Periféricos'),
('Monitores'),
('Acessórios');

INSERT INTO produtos_categorias (produto_id, categoria_id) VALUES
(1, 1), -- Smartphone na categoria Eletrônicos
(2, 1), -- Notebook na categoria Eletrônicos
(2, 2), -- Notebook na categoria Computadores
(3, 3), -- Teclado Mecânico na categoria Periféricos
(4, 4), -- Monitor na categoria Monitores
(5, 5); -- Mouse Gamer na categoria Acessórios

INSERT INTO produtos (nome, preco) VALUES
('Cabo HDMI', 25.90),
('Adaptador USB-C', 45.00),
('Mousepad', 15.50),
('Fone de Ouvido', 75.90),
('Caneta Stylus', 99.99);

select * from produtos;
select * from categorias;
select * from produtos_categorias;

select
	nome as Produto,
    preco as Valor
from produtos
where preco > 100
order by preco asc, nome asc;

-- QUESTÃO 04

select 
	id as ID,
    preco as Valor
from produtos
where preco > (select avg(preco) from produtos);

SELECT 
	nome, 
    AVG(preco) AS preco_medio
FROM produtos
GROUP BY nome;

-- QUESTÃO 05

SELECT
	*
FROM categorias c
inner join produtos_categorias pc on c.id = pc.categoria_id
inner join produtos p on pc.produto_id = p.id;


SELECT
	c.nome as 'Nome Categoria',
    avg(p.preco) as Valor
FROM categorias c
inner join produtos_categorias pc on c.id = pc.categoria_id
inner join produtos p on pc.produto_id = p.id
group by c.nome
order by c.nome asc;

-- QUESTÃO 06

create table turma (
	id_turma int primary key auto_increment,
    código_turma VARCHAR (100) not null, 
    nome_turma VARCHAR (100) not null
);

create table aluno (
	id_aluno int primary key auto_increment,
    nome_aluno varchar (100) not null,
    aluno_alocado boolean,
    id_turma int,
    foreign key (id_turma) references turma(id_turma) 
);

select * from turma;
select * from aluno;

-- 	QUESTÃO 07

insert into turma (id_turma, código_turma, nome_turma)
values (1, '1175', 'Data Science'), (2,'1247','Empregabilidade');

insert into aluno (id_aluno, nome_aluno, aluno_alocado, id_turma)
values (1, 'Anne', null, 1), (2, 'Bruno', null, 2);

insert into aluno (id_aluno, nome_aluno, aluno_alocado, id_turma)
values (3,'Marta',null,)