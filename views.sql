# Quantidade vendida de cada produto, ordenando por maior quantidade de vendas
create view quantidade_produto as select p.id, p.nome, p.marca, sum(vp.quantidade) quantidade_vendida from produto p join venda_produto vp on p.id = vp.produto_id where p.id = vp.produto_id group by p.id order by quantidade_vendida desc;

# Valor total lucrado com venda de cada produto, ordenando por maior valor de lucro
create view lucro_produto as select p.id, p.nome, p.marca, sum(vp.preco_unitario * vp.quantidade) lucro_total from produto p join venda_produto vp on p.id = vp.produto_id where p.id = vp.produto_id group by p.id order by lucro_total desc;

# Todas as compras de cada cliente, ordenando por nome
create view compras_cliente as select v.nome_cliente cliente, u.login, v.id venda_id, p.nome produto, p.marca, (vp.preco_unitario * vp.quantidade) subtotal from venda v join usuario u on u.id = v.usuario_id right join venda_produto vp on vp.venda_id = v.id join produto p on vp.produto_id = p.id where u.id = v.usuario_id order by v.nome_cliente;