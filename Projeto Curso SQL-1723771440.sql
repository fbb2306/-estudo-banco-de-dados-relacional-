CREATE TABLE [Fornecedor] (
	[id] int IDENTITY(1,1) NOT NULL UNIQUE,
	[Razao_Social] int IDENTITY(1,1) NOT NULL UNIQUE,
	[CNPJ] int IDENTITY(1,1) NOT NULL UNIQUE,
	PRIMARY KEY ([id], [Razao_Social], [CNPJ])
);

CREATE TABLE [Estoque] (
	[id_Estoque] int IDENTITY(1,1) NOT NULL UNIQUE,
	[local] int IDENTITY(1,1) NOT NULL UNIQUE,
	PRIMARY KEY ([id_Estoque], [local])
);

CREATE TABLE [Produto_has_estoque] (
	[produto_id] int IDENTITY(1,1) NOT NULL UNIQUE,
	[estoque_id] int IDENTITY(1,1) NOT NULL UNIQUE,
	[quantidade] int IDENTITY(1,1) NOT NULL UNIQUE,
	PRIMARY KEY ([produto_id], [estoque_id], [quantidade])
);

CREATE TABLE [Produto] (
	[id_produto] int IDENTITY(1,1) NOT NULL UNIQUE,
	[categoria] int NOT NULL,
	[descricao] int NOT NULL,
	[valor] int NOT NULL,
	PRIMARY KEY ([id_produto])
);

CREATE TABLE [Pedido] (
	[id_pedido] int IDENTITY(1,1) NOT NULL UNIQUE,
	[status_do_pedido] int NOT NULL,
	[descricao] int NOT NULL,
	PRIMARY KEY ([id_pedido])
);

CREATE TABLE [Cliente] (
	[id_cliente] int IDENTITY(1,1) NOT NULL UNIQUE,
	[nome] int NOT NULL,
	[identificação_] int NOT NULL,
	[endereço] int NOT NULL,
	PRIMARY KEY ([id_cliente])
);

CREATE TABLE [disponibilizando_um_produto] (
	[fornecedor_id] int IDENTITY(1,1) NOT NULL UNIQUE,
	[produto_id] int NOT NULL,
	PRIMARY KEY ([fornecedor_id])
);







