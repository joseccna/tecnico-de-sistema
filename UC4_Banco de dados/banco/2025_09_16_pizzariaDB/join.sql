# atividade_joins

select * from clientes;
select * from pizzas;
select * from pedidos;
select * from pedido_itens;

# 1 - ver os detalhes de um pedido especifico
#pedido.id,pizza.sabor, pedido_itens.quantidade, pedido_item.valounitario


select pedidos.id, pizzas.sabor, Pedido_Itens.quantidade, Pedido_Itens.valor_unitario from pedidos 
inner join Pedido_Itens on pedidos.id = Pedido_Itens.pedido_id
inner join pizzas on pizzas.id = Pedido_Itens.pizza_id;

# Eu fiz sozinho sem ajuda da inteligência artificial.

##############################################################################

# 2 - Listar todos os pedidos entreges com o nome e telefone do cliente

select pedidos.status, clientes.nome, clientes.telefone from pedidos
inner join clientes on clientes.id = pedidos.cliente_id and pedidos.status = 'Entregue';

# Utilizei comandos antigos para lembra como utilizar condições.

#################################################################################

# 3 - Mostrar todos os clientes e a quantidade de pedidos que cada um fez. 
#clientes sem pedidos devem aparecer com 0

select * from clientes;
select * from pedidos;

select clientes.nome, count( pedidos.id) as total_pedidos from clientes
left join pedidos on clientes.id = pedidos.cliente_id
group by clientes.id, clientes.nome;

# Utilizei a inteligência artificial para utilizar o COUNT e GROUP BY.

################################################################################

# 4 - Descobrir quais pizzas do cardápio NUNCA foram vendidas

select * from pizzas;
select * from pedido_itens;

select pizzas.sabor,pizzas.valor from pizzas 
left join pedido_itens on pizzas.id = pedido_itens.pizza_id 
where pedido_itens.pizza_id  is null; # onde é nulo

# Precisei da ajuda para fazer o where pedido_itens.pizza.

