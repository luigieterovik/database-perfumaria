insert into produto (nome, marca, preco) values
('La Vie Est Belle', 'Lancôme', 280.00),
('Good Girl', 'Carolina Herrera', 520.00),
('Lady Million', 'Paco Rabanne', 606.00),
('Idôle', 'Lancôme', 509.90),
('Scandal', 'Jean Paul Gaultier', 530.00),
('CH', 'Carolina Herrera', 420.00),
('Libre', 'Yves Saint Laurent', 323.90),
('Light Blue', 'Dolce & Gabbana', 592.25),
('J’adore', 'Dior', 419.89),
('Eros', 'Versace', 403.75);

insert into usuario (login, senha, email, telefone, funcionario) values
('pedroca33', md5('pedrinho333'), 'pedro33_oliveira@gmail.com', 13973942616, 'N'),
('luquitas', md5('lu123'), 'ferreira.lucas@gmail.com', 11999865118, 'N'),
('isaa4', md5('isinha4'), 'isaa_4@gmail.com', 11975674636, 'N'),
('jaoBr', md5('joaozera'), 'joao_br@gmail.com', 11971275284, 'N'),
('vitor', md5('vitor321'), 'vitor_silva@gmail.com', 14986743197, 'S'),
('anaAzevedo', md5('aninha_321'), 'azevedo.ana333@gmail.com', 11988199720, 'N'),
('pedrinGamer', md5('pedroJr123'), 'pedrola_jr@gmail.com', 13971276445, 'N'),
('biazita', md5('biazinha'), 'biia_biia@gmail.com', 11986455260, 'N'),
('juniorVini', md5('vijr'), 'junior_vinizinho@gmail.com', 12984761052, 'N'),
('carla', md5('carla123'), 'carla_costa@gmail.com', 11992223511, 'S');

insert into venda (usuario_id, nome_cliente, data_venda, valor_total, tipo_pagamento, valor_desconto) values
(8, 'Beatriz', '2022-06-01', 420.00, 'debito', 0),
(4, 'Joao', '2022-01-19', 323.90 + 509.00, 'credito', 0),
(1, 'Pedro', '2022-09-10', 592.25 * 2, 'especie', 0),
(9, 'Vinicius', '2022-12-05', 606.00 + 403.75, 'credito', 0),
(5, 'Vitor', '2022-11-02', 530 * 3, 'debito', 0),
(10, 'Carla', '2022-02-09', 419.89 + 606.00 + 323.90, 'credito', 0),
(6, 'Ana', '2022-09-24', 403.75, 'credito', 0),
(2, 'Lucas', '2022-10-21', 280.00, 'debito', 0),
(7, 'Pedro', '2022-01-20', 520.00 + 592.25, 'credito', 0),
(3, 'Isabela', '2022-11-01', 606.00, 'credito', 0);

insert into venda_produto (venda_id, produto_id, quantidade, preco_unitario) values
(1, 6, 1, 420.00),
(2, 7, 1, 323.90),
(2, 4, 1, 509.90),
(3, 8, 2, 592.25),
(4, 3, 1, 606.00),
(4, 10, 1, 403.75),
(5, 5, 3, 530.00),
(6, 9, 1, 419.89),
(6, 3, 1, 606.00),
(6, 7, 1, 323.90),
(7, 10, 1, 403.75),
(8, 1, 1, 280.00),
(9, 2, 1, 520.00),
(9, 8, 1, 592.25),
(10, 3, 1, 606.00);