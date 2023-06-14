create user 'user_funcionario'@'localhost' identified by 'funcionario2023';
create role 'funcionario';
grant select, insert, update, delete on perfumaria.* to 'funcionario';
grant 'funcionario' to 'user_funcionario'@'localhost';

create user 'user_cliente'@'localhost' identified by '';
create role 'cliente';
grant select on perfumaria.produto to 'cliente';
grant 'cliente' to 'user_cliente'@'localhost';

flush privileges;