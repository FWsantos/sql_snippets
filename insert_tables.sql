INSERT INTO public.cliente(nome, cpf, rg, endereco)VALUES 
	('Mario Alberto Albuquerque de Souza', '14700191597', '501093709', 'Brasil-Ceará-Fortaleza-Parangaba-Rua Carlos Roberto, 999 - 6000000'),
	('Antonia Cintia de Lima Batista', '10034523022', '230880964', 'Brasil-Ceará-Fortaleza-Parangaba-Rua Carlos Roberto, 999 - 6000000'),
	('Benedita Beatriz da Silva Barreto', '64342467062', '138276213', 'Brasil-Ceará-Fortaleza-Parangaba-Rua Carlos Roberto, 999 - 6000000'),
	('Cândido Felipe Nogueira dos Santos', '79696792000', '252077234', 'Brasil-Ceará-Fortaleza-Parangaba-Rua Carlos Roberto, 999 - 6000000'),
	('Bianca Evelin Abreu Silva', '88868310058', '242497172', 'Brasil-Ceará-Fortaleza-Parangaba-Rua Carlos Roberto, 999 - 6000000'),
	('Osvaldo Montenegro Castilho', '35753570054', '145261323', 'Brasil-Ceará-Fortaleza-Parangaba-Rua Carlos Roberto, 999 - 6000000'),
	('Olivia Melo de Carvalho', '42173991035', '132263099', 'Brasil-Ceará-Fortaleza-Parangaba-Rua Carlos Roberto, 999 - 6000000'),
	('Ana Bianca da Silva', '96295822010', '345141064', 'Brasil-Ceará-Fortaleza-Parangaba-Rua Carlos Roberto, 999 - 6000000'),
	('Emanuele Prata de Araujo', '18187944030', '329455102', 'Brasil-Ceará-Fortaleza-Parangaba-Rua Carlos Roberto, 999 - 6000000'),
	('Vinicius Senna de Nobrega', '70697390012', '130941049', 'Brasil-Ceará-Fortaleza-Parangaba-Rua Carlos Roberto, 999 - 6000000');

INSERT INTO public.tipo_status_conta(nome_status_conta, descricao) VALUES
	('ativa', 'Todas as operações podem ser efetuadas.'),
	('inativa', 'Todas as operações estão temporariamente bloqueadas.'),
	('fechada', 'Nehum operação pode efetuada.');

INSERT INTO public.tipo_manutencao(nome, valor_fixo, taxa_extra) VALUES
	('mensal_1', 12.80, 2.55),
	('anual_1', 99.84, 2.55);

INSERT INTO public.tipo_operacao(nome, descricao) VALUES
	('saque', 'Retira dinheiro fisicamente removendo do seu saldo.'),
	('deposito', 'Deposita dinheiro na conta somando ao seu saldo.'),
	('transferencia', 'Transferi uma quantia subitraindo da conta e adiciona a outra conta.'),
	('debito', 'Compra que removi diretamente do Saldo'),
	('credito', 'Compra que removi da quantia de credito.'),
	('extrato', 'Visualização do saldo, e do credito.');

INSERT INTO public.agencia(nome_agencia, endereco) VALUES
	('Agencia_Jacaraecanga_1', 'Brasil-Ceará-Fortaleza-Jacarecanga-Rua Carlos Roberto, 999 - 6000000'),
	('Agencia_Jacaraecanga_2', 'Brasil-Ceará-Fortaleza-Jacarecanga-Rua Carlos Roberto, 998 - 6000000'),
	('Agencia_Parangaba_1', 'Brasil-Ceará-Fortaleza-Parangaba-Rua Carlos Roberto, 999 - 6000000');

