INSERT INTO public.cliente(id, nome, cpf, rg, endereco)VALUES 
	(1, 'Mario Alberto Albuquerque de Souza', '14700191597', '501093709', 'Brasil-Ceará-Fortaleza-Parangaba-Rua Carlos Roberto, 999 - 6000000'),
	(2, 'Antonia Cintia de Lima Batista', '10034523022', '230880964', 'Brasil-Ceará-Fortaleza-Parangaba-Rua Carlos Roberto, 999 - 6000000'),
	(3, 'Benedita Beatriz da Silva Barreto', '64342467062', '138276213', 'Brasil-Ceará-Fortaleza-Parangaba-Rua Carlos Roberto, 999 - 6000000'),
	(4, 'Cândido Felipe Nogueira dos Santos', '79696792000', '252077234', 'Brasil-Ceará-Fortaleza-Parangaba-Rua Carlos Roberto, 999 - 6000000'),
	(5, 'Bianca Evelin Abreu Silva', '88868310058', '242497172', 'Brasil-Ceará-Fortaleza-Parangaba-Rua Carlos Roberto, 999 - 6000000'),
	(6, 'Osvaldo Montenegro Castilho', '35753570054', '145261323', 'Brasil-Ceará-Fortaleza-Parangaba-Rua Carlos Roberto, 999 - 6000000'),
	(7, 'Olivia Melo de Carvalho', '42173991035', '132263099', 'Brasil-Ceará-Fortaleza-Parangaba-Rua Carlos Roberto, 999 - 6000000'),
	(8, 'Ana Bianca da Silva', '96295822010', '345141064', 'Brasil-Ceará-Fortaleza-Parangaba-Rua Carlos Roberto, 999 - 6000000'),
	(9, 'Emanuele Prata de Araujo', '18187944030', '329455102', 'Brasil-Ceará-Fortaleza-Parangaba-Rua Carlos Roberto, 999 - 6000000'),
	(10, 'Vinicius Senna de Nobrega', '70697390012', '130941049', 'Brasil-Ceará-Fortaleza-Parangaba-Rua Carlos Roberto, 999 - 6000000');

INSERT INTO public.tipo_status_conta(id, nome_status_conta, descricao) VALUES
	(1, 'ativa', 'Todas as operações podem ser efetuadas.'),
	(2, 'inativa', 'Todas as operações estão temporariamente bloqueadas.'),
	(3, 'fechada', 'Nehum operação pode efetuada.');

INSERT INTO public.tipo_manutencao(id, nome, valor_fixo, taxa_extra) VALUES
	(1, 'mensal_1', 12.80, 2.55),
	(2, 'anual_1', 99.84, 2.55),
	(3, 'mensal_2', 3.60, 2.55);

INSERT INTO public.tipo_operacao(id, nome, descricao) VALUES
	(1, 'saque', 'Retira dinheiro fisicamente removendo do seu saldo.'),
	(2, 'deposito', 'Deposita dinheiro na conta somando ao seu saldo.'),
	(3, 'transferencia', 'Transferi uma quantia subitraindo da conta e adiciona a outra conta.'),
	(4, 'debito', 'Compra que removi diretamente do Saldo'),
	(5, 'credito', 'Compra que removi da quantia de credito.'),
	(6, 'extrato', 'Visualização do saldo, e do credito.');

INSERT INTO public.agencia(id, nome_agencia, endereco) VALUES
	(1, 'Agencia_Jacaraecanga_1', 'Brasil-Ceará-Fortaleza-Jacarecanga-Rua Carlos Roberto, 999 - 6000000'),
	(2, 'Agencia_Jacaraecanga_2', 'Brasil-Ceará-Fortaleza-Jacarecanga-Rua Carlos Roberto, 998 - 6000000'),
	(3, 'Agencia_Parangaba_1', 'Brasil-Ceará-Fortaleza-Parangaba-Rua Carlos Roberto, 999 - 6000000');

-------------------------------------------------------- 2----------------------------------------

INSERT INTO public.tipo_conta(id, id_tipo_manutencao, nome_tipo, limite_saque, limite_transferencia, saque_max, saque_min, limite_extrato, juros)VALUES
	(1, 1, 'conta corrente padrão', 4, 4, 4000.00, 0, 4, 0),
	(2, 2, 'conta poupança padrão', 4, 4, 4000.00, 0, 4, 0.08),

	(3, 3, 'conta corrente fácil', 3, 3, 3000.00, 0, 3, 0);

INSERT INTO public.conta(id, id_agencia, id_cliente, id_tipo_conta, id_tipo_status_conta, data_inicio, saldo, credito) VALUES
	(1, 1, 3, 1, 1, '01/02/2012', 3.6, 1500),
	(2, 1, 2, 1, 1, '02/03/2012', 100.5, 1000),
	(3, 2, 1, 2, 1, '03/04/2012', 10000, 3000),
	(4, 1, 7, 1, 1, '04/05/2012', 3.6, 1500),
	(5, 1, 4, 1, 1, '05/06/2012', 3005.75, 15000),
	(6, 2, 5, 1, 1, '06/07/2012', 3005.75, 15000),
	(7, 3, 6, 1, 1, '07/08/2012', 3005.75, 15000),
	(8, 2, 8, 1, 1, '08/09/2012', 3005.75, 15000);

----------------------------------------------------------------------------------------------------------------------------

INSERT INTO public.operacao_efetuada(id, id_conta, id_operacao, data, valor)VALUES
	(1, 1, 2, '15/02/2012', 2000),
	(2, 2, 2, '16/03/2012', 2000),
	(3, 3, 2, '17/04/2012', 2000),
	(4, 4, 2, '18/05/2012', 2000),
	(5, 5, 2, '19/06/2012', 2000),
	(6, 6, 2, '20/07/2012', 2000),
	(7, 7, 2, '21/02/2012', 2000),
	(8, 8, 2, '22/02/2012', 2000),
	(9, 3, 2, '23/08/2012', 2000),

	(10, 1, 2, '24/02/2012', 2000),
	(11, 1, 1, '15/04/2012', 2000),
	(12, 2, 1, '16/04/2012', 2000),
	(13, 3, 1, '17/05/2012', 2000),
	(14, 4, 1, '18/06/2012', 2000),
	(15, 5, 1, '19/07/2012', 2000),
	(16, 6, 1, '20/08/2012', 2000),
	(17, 7, 1, '21/09/2012', 2000),
	(18, 8, 1, '22/10/2012', 2000),
	(19, 3, 1, '23/11/2012', 2000);

-------------------------------------------------------------------------------------------------------------------------------
INSERT INTO public.setor(id, nome_setor, descricao)VALUES
	(1, 'TI', ''),
	(2, 'Administração', ''),
	(3, 'Almoxarifato', ''),
	(4, 'Contabilidade', ''),
	(5, 'Bancarios', 'Setor dos caixas e de outros funcionarios bancarios.');

INSERT INTO public.cargo(id, id_setor, nome, descricao, salario, preco_hora_extra)VALUES
	(1, 1, 'Analista de Banco de Dados', '', 3000, 120),
	(1, 1, 'Analista de Banco de Dados', '', 3000, 120),


INSERT INTO public.funcionario(id, id_agencia, id_cargo)
