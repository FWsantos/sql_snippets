select tipo_operacao.nome, operacao_efetuada.data, operacao_efetuada.valor
from operacao_efetuada join tipo_operacao on tipo_operacao.id = id_operacao;



select id_conta, count(id_conta) from operacao_efetuada 
GROUP BY id_conta 
order by count(id_conta) DESC;


select id_conta, count(id_conta) from operacao_efetuada 
where id_operacao = 2 
GROUP BY id_conta 
order by count(id_conta) DESC ;

select cliente.nome, count(operacao_efetuada.id_conta) from operacao_efetuada 
INNER JOIN conta on conta.id = operacao_efetuada.id_conta 
INNER JOIN cliente on cliente.id = conta.id_cliente
where operacao_efetuada.id_operacao = 2 
GROUP BY cliente.nome order by count(operacao_efetuada.id_conta) DESC ;

select id_operacao, count(id_operacao) from operacao_efetuada GROUP BY id_operacao order by count(id_conta) DESC;


SELECT saida_funcionario.horario, cargo.preco_hora_extra FROM saida_funcionario INNER JOIN funcionario ON saida_funcionario.id_funcionario = funcionario.id INNER JOIN cargo ON funcionario.id_cargo = cargo.id;


SELECT saida_funcionario.horario, funcionario.nome FROM saida_funcionario INNER JOIN funcionario ON saida_funcionario.id_funcionario = funcionario.id;


-- select operacao_efetuada 