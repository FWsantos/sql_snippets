select tipo_operacao.nome, operacao_efetuada.data, operacao_efetuada.valor
from operacao_efetuada join tipo_operacao on tipo_operacao.id = id_operacao;





