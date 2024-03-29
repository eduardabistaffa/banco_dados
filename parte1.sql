Create database trabalho_22c;
Use trabalho_22c;

Create Table cliente(
id_cliente int Primary Key auto_increment,
nome varchar(100) not null,
endereco varchar(255) not null,
email varchar(100) not null,
celular bigint (12) unsigned not null,
dt_nascimento date not null
);

Create Table produtos(
id_produto int primary key auto_increment,
nome varchar(100) not null,
preco decimal(10,2) not null,
descricao text not null,
quantidade_estoque tinyint unsigned not null
);


Create Table pedidos(
id_pedido int primary key auto_increment,
id_cliente int,
numero_pedido int primary key auto_increment,
dt_compra date not null,
valor_total decimal(10,2) not null,
dt_entrega date not null
Foreign Key(id_cliente  References clientes(id_clientes)
);

Create Table itens(
id_itens int primary key auto_increment,
id_pedido int,
id_produto int,
quantidade int not null,
valor_unitario decimal(10,2) not null,
valor_total decimal(10,2) not null
Foreign key (id_pedido) references pedido (id_pedido),
foreign key (id_produto) references produto (id_produto)
);