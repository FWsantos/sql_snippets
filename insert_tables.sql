INSERT INTO public.cliente(nome, cpf, rg)VALUES 
	('Mario Alberto Albuquerque de Souza', '14700191597', '501093709'),
	('Antonia Cintia de Lima Batista', '10034523022', '230880964'),
	('Benedita Beatriz da Silva Barreto', '64342467062', '138276213'),
	('Cândido Felipe Nogueira dos Santos', '79696792000', '252077234'),
	('Bianca Evelin Abreu Silva', '88868310058', '242497172');
	('Osvaldo Montenegro Castilho', '35753570054', '145261323'),
	('Olivia Melo de Carvalho', '42173991035', '132263099'),
	('Ana Bianca da Silva', '96295822010', '345141064'),
	('Emanuele Prata de Araujo', '18187944030', '329455102'),
	('Vinicius Senna de Nobrega', '70697390012', '130941049');

INSERT INTO public.tipo_status_conta(nome_status_conta, descricao) VALUES
	('ativa', 'Todas as operações podem ser efetuadas.'),
	('inativa', 'Todas as operações estão temporariamente bloqueadas.'),
	('fechada', 'Nehum operação pode efetuada.');

INSERT INTO public.tipo_manutencao(nome_tipo, valor_fixo, taxa_extra) VALUES
	('mensal_1', 12.80, 2.55),
	('anual_1', 99.84, 2.55);

INSERT INTO public.tipo_operacao(nome, descricao) VALUES
	('saque', 'Retira dinheiro fisicamente removendo do seu saldo.'),
	('deposito', 'Deposita dinheiro na conta somando ao seu saldo.'),
	('transferencia', 'Transferi uma quantia subitraindo da conta e adiciona a outra conta.'),
	('debito', 'Compra que removi diretamente do Saldo'),
	('credito', 'Compra que removi da quantia de cretito.'),
	('extrato', 'Visualização do saldo, e do credito.');
