
CREATE DATABASE livrariaRecuperacao20261;


USE livrariaRecuperacao20261;

CREATE TABLE autor (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50)
);

CREATE TABLE genero (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50)
);

CREATE TABLE livro (
	id INT PRIMARY KEY AUTO_INCREMENT,
	titulo VARCHAR(50),
    fkAutor INT,
    fkGenero INT,
    precoCompra DOUBLE,
    precoVenda DOUBLE,
    estoqueQnt int not null,
    CONSTRAINT fk_livro_autor FOREIGN KEY (fkAutor) REFERENCES autor(id),
    CONSTRAINT fk_livro_genero FOREIGN KEY (fkGenero) REFERENCES genero(id)
);

insert into genero(nome) values
("horror"),
("romance"),
("poesia"),
("fantasia");

select * from livro;
select * from autor;

select 
	genero.nome as categoria,
    count(livro.id) as quantidade
from genero left join livro on genero.id = livro.fkGenero
group by genero.nome;

select 
	livro.titulo as nome,
    

show tables;


