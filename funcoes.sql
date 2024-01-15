select count(*) as quantidadeUsuarios from usuarios where idade >= 18;

select count(*) as "quantidade Usuarios" from usuarios where idade >= 18;

select nome || ' - ' || email as nomeEmail from usuarios;

select concat(nome, ' - ', email) from usuarios;

select concat(nome, ' - ', email, ' - ', idade) as nome_email_idade from usuarios;

select avg(idade) from usuarios;

select round(avg(idade)) from usuarios;

select round(avg(idade), 2) from usuarios;

select round(avg(idade), 2) from usuarios where idade >= 18;

select min(nome) from usuarios;

select max(nome) from usuarios;

select min(cadastro) from usuarios;

select max(idade) from usuarios;

select sum(idade) from usuarios;

select idade::text from usuarios;

select cast(idade as text) from	usuarios;

select * from agendamentos;

select now();

select * from agendamentos where agendamento::date > now();

select cast(agendamento as date) from agendamentos;

select cast(agendamento as time) from agendamentos;

select cast(agendamento as timestamp) from agendamentos;

select * from agendamentos where agendamento::timestamp > now();

select age('2022-03-16 12:00:00', '2025-03-16 12:00:00');

select age(cast ('2022-03-16 12:00:00' as timestamp));

select *, age(cast (agendamento as timestamp)) from agendamentos where cast (agendamento as timestamp) > now(); 

select *, age(cast (agendamento as timestamp)) from agendamentos where cast (agendamento as timestamp) < now();

select coalesce(null, 'macaco');

select concat(nome, ' - ', coalesce(telefone, 'Campo vazio')) from usuarios;

select idade, count(id) from usuarios	group by idade;

select * from farmacia;

select categoria, count(id) as "Quantidade de Produtos", sum(estoque) as "Soma total do Estoque" from farmacia group by categoria;