# Todas os produtos comprados pelo determinado cliente
delimiter //
create procedure produtos_cliente (
	cliente_id int
)
begin 
    select v.nome_cliente cliente, p.nome produto, p.marca, p.preco preco_unitario, vp.quantidade quantidade_comprada, v.data_venda from venda v join venda_produto vp on v.id = vp.venda_id join produto p on p.id = vp.produto_id where v.usuario_id = cliente_id;
end //
delimiter ;

call produtos_cliente (1);


# Retorna se o determinado cliente possui ofertas especiais para as próximas compras (isto é, se tiver comprado mais de três produtos)
delimiter //
create function cliente_oferta (
	cliente_id int
) returns varchar(10) deterministic
begin
    if (select sum(vp.quantidade) from venda_produto vp where vp.venda_id = (select v.id from venda v where v.usuario_id = cliente_id)) >= 3 then
		return 'POSSUI';
	else 
		return 'NÃO POSSUI';
	end if;
end //
delimiter ;

# Aplica à compra o valor de desconto, se o usuário possui
delimiter // 
create trigger oferta_venda before insert on venda for each row
begin
	if (select cliente_oferta (new.usuario_id)) = 'POSSUI' then
		set new.valor_desconto = 50.00;
		set new.valor_total = new.valor_total - new.valor_desconto;
	end if;
end //
delimiter ;

