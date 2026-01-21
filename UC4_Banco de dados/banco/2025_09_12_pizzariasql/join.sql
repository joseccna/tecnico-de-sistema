use pizzariasql;

select pedido.idpedido, pizza.nome, pedido.statuspizza, cliente.nome from itenspedido
inner join pedido on pedido.cliente_id = itenspedido.idpedido
inner join pizza on pizza.id = itenspedido.pizza_id
inner join cliente on cliente.id = pedido.cliente_id;