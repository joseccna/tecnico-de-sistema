# Todos os exercícios se resolvem com apenas 1 JOIN
# Objetivo: Queremos ver o id e a data_hora de cada pedido ao lado do nome do cliente correspondente.
select * from pedidos;

select pedidos.id, pedidos.data_hora, clientes.nome from pedidos
inner join clientes on clientes.id = pedidos.cliente_id;

##########################################################

# 2. Mostrar os sabores de pizza em cada item de pedido.

# Objetivo: Queremos ver o sabor de cada pizza, a quantidade 
# pedida e o valor_unitario registrado na venda.

select pizzas.sabor, pedido_itens.quantidade, pedido_itens.valor_unitario from pizzas
inner join pedido_itens on pedido_itens.pizza_id = pizzas.id; 

#############################################################





