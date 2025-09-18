# Exercício 1: Relatório Detalhado de Itens Vendidos

select pedidos.id, pedidos.data_hora, pizzas.sabor, pedido_itens.quantidade 
from pedido_itens 
inner join	pizzas on pizzas.id = pedido_itens.pizza_id
inner join pedidos on pedidos.id = pedido_itens.pedido_id; 

#############################################

# Exercício 2: Quais clientes pediram quais pizzas?

select clientes.nome, pedidos.data_hora, pizzas.sabor  from clientes
inner join pedidos on clientes.id = pedidos.cliente_id
inner join pedido_itens on pedidos.id = pedido_itens.pedido_id 
inner join pizzas on pizzas.id = pedido_itens.pizza_id;

