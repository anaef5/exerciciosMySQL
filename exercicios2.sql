create database db_generation_game_online;
use db_generation_game_online;

create table tb_classes(
id_classe bigint auto_increment ,
nome_classes varchar(255),
ativo boolean,
primary key(id_classe)
);

create table tb_personagens(
id_personagem bigint auto_increment,
nome_personagem varchar(255),
forca bigint,
vida bigint,
experiencia bigint,
classe_id bigint,
 primary key(id_personagem),
foreign key(classe_id) references tb_classes(id_classe)
);

insert tb_classes (nome_classes, ativo)
values ("Mago", true);

insert tb_classes (nome_classes, ativo)
values ("Ogro", false);

insert tb_classes (nome_classes, ativo)
values ("Guerreiro", true);

insert tb_classes (nome_classes, ativo)
values ("Batman", true);

insert tb_classes (nome_classes, ativo)
values ("Legolas", true);

insert tb_classes (nome_classes, ativo)
values ("Harry Potter" , false);

select * from tb_classes;

select * from tb_personagens;

insert tb_personagens (nome_personagem, forca, vida, experiencia, classe_id)
values ("Ana", 5000, 5000, 2500, 6);

insert tb_personagens (nome_personagem, forca, vida, experiencia, classe_id)
values ("Beatriz", 4900, 3700, 5000, 4);

insert tb_personagens (nome_personagem, forca, vida, experiencia, classe_id)
values ("Carol", 4000, 1700, 2000, 5);

insert tb_personagens (nome_personagem, forca, vida, experiencia, classe_id)
values ("Daniela", 2500, 3000, 2000, 3);

insert tb_personagens (nome_personagem, forca, vida, experiencia, classe_id)
values ("Erika", 2500, 3000, 2000, 3);

insert tb_personagens (nome_personagem, forca, vida, experiencia, classe_id)
values ("Fernanda", 2500, 3000, 2000, 3);

insert tb_personagens (nome_personagem, forca, vida, experiencia, classe_id)
values ("Erika", 2500, 3000, 2000, 3);

insert tb_personagens (nome_personagem, forca, vida, experiencia, classe_id)
values ("Gabrieli", 2500, 3000, 2000, 3);

insert tb_personagens (nome_personagem, forca, vida, experiencia, classe_id)
values ("Hariani", 2000, 2250, 4000, 1);

select * from tb_personagens where experiencia > 2000;

select * from tb_personagens where forca >= 1000 and experiencia <= 2000;

select * from tb_personagens where nome_personagem like "%c%";

select * from tb_personagens inner join tb_classes on tb_personagens.classe_id = 
tb_classes.id_classe;

select * from tb_personagens inner join tb_classes on tb_personagens.classe_id = 
tb_classes.id_classe where id_classe = 3;

/* --------------Atividade--------------- 2 */

create database db_pizzaria_legal;
use db_pizzaria_legal;

create table tb_categorias(
id_categoria bigint auto_increment primary key,
tipo varchar(255),
tamanho varchar (255)
);

create table tb_pizzas(
id_pizza bigint auto_increment primary key,
sabor varchar(255),
borda boolean,
valor double,
pedacos int,
categoria_id bigint,
foreign key(id_pizza) references tb_categorias(id_categoria)
);

insert tb_categorias (tipo, tamanho)
values ("congelada", "familia");

insert tb_categorias (tipo, tamanho)
values ("semi pronta", "grande");

insert tb_categorias (tipo, tamanho)
values ("pronta", "media");

insert tb_categorias (tipo, tamanho)
values ("doce", "pequena");

insert tb_categorias (tipo, tamanho)
values ("simples", "broto");


insert tb_pizzas (sabor, borda, valor, pedacos, categoria_id)
values ("Calabresa", true, 50.00, 8, 1);

insert tb_pizzas (sabor, borda, valor, pedacos, categoria_id)
values ("4 queijos", true, 40.00, 6, 2);

insert tb_pizzas (sabor, borda, valor, pedacos, categoria_id)
values ("Peperoni", false, 53.00, 4, 3);

insert tb_pizzas (sabor, borda, valor, pedacos, categoria_id)
values ("Frango com queijo", true, 60.00, 8, 4);

insert tb_pizzas (sabor, borda, valor, pedacos, categoria_id)
values ("Portuguesa", false, 38.00, 6, 5);

insert tb_pizzas (sabor, borda, valor, pedacos, categoria_id)
values ("À moda da casa", false, 49.00, 4, 2);

insert tb_pizzas (sabor, borda, valor, pedacos, categoria_id)
values ("Palmito", true, 38.00, 4, 1);

insert tb_pizzas (sabor, borda, valor, pedacos, categoria_id)
values ("Mussarela", true, 35.00, 8, 5);

select * from tb_pizzas where valor > 45.00;

select * from tb_pizzas where valor >= 50.00 and valor <= 100.00;

select * from tb_pizzas where sabor like "%m%";

select * from tb_pizzas inner join tb_categorias on tb_pizzas.categoria_id = 
tb_categorias.id_categoria;

select * from tb_pizzas inner join tb_categorias on tb_pizzas.categoria_id = 
tb_categorias.id_categoria where id_categoria = 5;

/*------------------ juro que já fixou, juroooo --------------------/*