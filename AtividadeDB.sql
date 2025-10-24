
CREATE DATABASE startup_de_educacao_online;

use startup_de_educacao_online;

CREATE TABLE usuarios (
id_usuarios int primary key,
nome varchar(150) not null,
email varchar (150) not null unique,
datacadastro date not null

);

CREATE TABLE professores (
id_professores int primary key,
nome varchar(150) not null,
especialidade varchar(150) not null,
salarioBase decimal(10, 2)

);

CREATE TABLE cursos (
id_cursos int primary key,
titulo varchar(255) not null unique,
descrição text,
dataLançamento date

);

CREATE TABLE aulas (
id_aulas int primary key,
tituloAula varchar(255) not null,
duracaoMinutos int not null,
tipoConteudo varchar(50)

);

ALTER TABLE cursos
add carga_horaria int;

ALTER TABLE professores
add email_corporativo varchar(150);

ALTER TABLE cursos
modify carga_horaria DECIMAL(5, 2);

DROP TABLE aulas;
 
 
 



