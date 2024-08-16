
Fornecedor {
	id int pk increments unique
	Razao_Social integer pk increments unique
	CNPJ integer pk increments unique
}

Estoque {
	id_Estoque integer pk increments unique
	local integer pk increments unique
}

Produto_has_estoque {
	produto_id int pk increments unique
	estoque_id int pk increments unique
	quantidade int pk increments unique
}

Produto {
	id_produto integer pk increments unique
	categoria integer
	descricao integer
	valor integer
}

Pedido {
	id_pedido integer pk increments unique
	status_do_pedido integer
	descricao integer
}

Cliente {
	id_cliente integer pk increments unique
	nome integer
	identificação_ integer
	endereço integer
}

disponibilizando_um_produto {
	fornecedor_id integer pk increments unique
	produto_id integer
}

