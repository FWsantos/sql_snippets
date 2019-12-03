select tipo_operacao.nome, operacao_efetuada.data, operacao_efetuada.valor
from operacao_efetuada join tipo_operacao on tipo_operacao.id = id_operacao;



select id_conta, count(id_conta) from operacao_efetuada GROUP BY id_conta order by count(id_conta);



