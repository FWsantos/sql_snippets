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
	(1, 1, 2, '02/15/2012', 2000),
	(2, 2, 2, '03/16/2012', 2000),
	(3, 3, 2, '04/17/2012', 2000),
	(4, 4, 2, '05/18/2012', 2000),
	(5, 5, 2, '06/19/2012', 2000),
	(6, 6, 2, '07/20/2012', 2000),
	(7, 7, 2, '02/21/2012', 2000),
	(8, 8, 2, '02/22/2012', 2000),
	(9, 3, 2, '08/23/2012', 2000),

	(10, 1, 2, '02/24/2012', 2000),
	(11, 1, 1, '04/15/2012', 2000),
	(12, 2, 1, '04/16/2012', 2000),
	(13, 3, 1, '05/17/2012', 2000),
	(14, 4, 1, '06/18/2012', 2000),
	(15, 5, 1, '07/19/2012', 2000),
	(16, 6, 1, '08/20/2012', 2000),
	(17, 7, 1, '09/21/2012', 2000),
	(18, 8, 1, '10/22/2012', 2000),
	(19, 3, 1, '11/23/2012', 2000);

-------------------------------------------------------------------------------------------------------------------------------
INSERT INTO public.setor(id, nome, descricao)VALUES
	(1, 'TI', ''),
	(2, 'Administração', ''),
	(3, 'Almoxarifato', ''),
	(4, 'Contabilidade', ''),
	(5, 'Bancarios', 'Setor dos caixas e de outros funcionarios bancarios.');

INSERT INTO public.cargo(id, id_setor, nome, descricao, salario, preco_hora_extra)VALUES
	(1, 1, 'Analista de Banco de Dados', '', 3000, 120),
	(2, 2, 'Gestor de Consulta', '', 2600, 80),
	(3, 2, 'Diretor', '', 5000, 200 ),
	(4, 2, 'Tesoureiro', '', 2600, 80),
	(5, 2, 'Contador', '', 2600, 80),
	(6, 2, 'Analista', '', 2600, 80),
	(7, 5, 'Atendente Comercial', '', 2600, 80),
	(8, 2, 'Gerente de Conta', '', 2600, 80),
	(9, 3, 'faxineiro', '', 2600, 80),
	(10, 3, 'Auxiliar de Limpeza', '', 2600, 80),
	(11, 2, 'Sub Gerente', '', 2600, 80),
	(12, 2, 'Auxiliar de Gerencia', '', 2600, 80),
	(13, 2, 'Coordenador', '', 2600, 80),
	(14, 2, 'Estagiario', '', 2600, 80),
	(15, 2, 'fiscal', '', 2600, 80),
	(16, 2, 'Vice-Diretor', '', 2600, 80),
	(17, 2, 'Gestor de Consulta', '', 2600, 80);
--------------------------------------------------------------------------------------------
INSERT INTO public.funcionario(id, id_agencia, id_cargo, nome, rg, endereco, vinculo) VALUES
	(1, 1, 1,'Pedro Alberto Mendonça Pontes', '96824635057','Brasil-Ceará-Fortaleza-Parangaba-Rua Carlos Roberto, 999 - 6000000', true),
	(2, 1, 2,'Sandra Alcantara de Albuquerque', '79236198082','Brasil-Ceará-Fortaleza-Parangaba-Rua Carlos Roberto, 999 - 6000000', true),
	(3, 3, 3,'Leomara Cavalcante de Sá', '53276192063','Brasil-Ceará-Fortaleza-Parangaba-Rua Carlos Roberto, 999 - 6000000', true),
	(4, 2, 4,'Thais Lopes de Abreu', '21512823090','Brasil-Ceará-Fortaleza-Parangaba-Rua Carlos Roberto, 999 - 6000000', true),
	(5, 3, 5,'Emmnuelle Souza ferreira', '51490938079','Brasil-Ceará-Fortaleza-Parangaba-Rua Carlos Roberto, 999 - 6000000', true),
	(6, 3, 6,'Karla Queiroz de Lima', '42556832045','Brasil-Ceará-Fortaleza-Parangaba-Rua Carlos Roberto, 999 - 6000000', true),
	(7, 3, 7,'Vitoria Feitosa dos Anjos', '34793735002','Brasil-Ceará-Fortaleza-Parangaba-Rua Carlos Roberto, 999 - 6000000', true),
	(8, 1, 8,'Veridiana da Silva Mendes', '38010858056','Brasil-Ceará-Fortaleza-Parangaba-Rua Carlos Roberto, 999 - 6000000', true),
	(9, 2, 9,'Thamirez Cavalcante de Abreu', '62639225064','Brasil-Ceará-Fortaleza-Parangaba-Rua Carlos Roberto, 999 - 6000000', true),
	(10, 1, 10,'Yasmin Feitosa de Sá', '63639225064','Brasil-Ceará-Fortaleza-Parangaba-Rua Carlos Roberto, 999 - 6000000', true),
	(11, 2, 11,'Leticia Albuquerque Feitosa', '64639225064','Brasil-Ceará-Fortaleza-Parangaba-Rua Carlos Roberto, 999 - 6000000', true),
	(12, 2, 12,'Luana lima da Costa Silva', '65639225064','Brasil-Ceará-Fortaleza-Parangaba-Rua Carlos Roberto, 999 - 6000000', true),
	(13, 2, 13,'Maria Wanessa Silva', '66639225064','Brasil-Ceará-Fortaleza-Parangaba-Rua Carlos Roberto, 999 - 6000000', true),
	(14, 3, 14,'Ilana Torres Fontes', '67639225064','Brasil-Ceará-Fortaleza-Parangaba-Rua Carlos Roberto, 999 - 6000000', true),
	(15, 2, 15,'Ana Beatriz de Souza', '61839225064','Brasil-Ceará-Fortaleza-Parangaba-Rua Carlos Roberto, 999 - 6000000', true),
	(16, 1, 16,'Maria Sabrina Lopez', '61993922506','Brasil-Ceará-Fortaleza-Parangaba-Rua Carlos Roberto, 999 - 6000000', true),
	(17, 1, 17,'Gabriela Maia Freitas', '56639225064','Brasil-Ceará-Fortaleza-Parangaba-Rua Carlos Roberto, 999 - 6000000', true),
	(18, 3, 4,'Ana Sarah Feitosa Lima ', '61689225064','Brasil-Ceará-Fortaleza-Parangaba-Rua Carlos Roberto, 999 - 6000000', true),
	(19, 3, 4,'Maria Karol Feitosa ', '61639345064','Brasil-Ceará-Fortaleza-Parangaba-Rua Carlos Roberto, 999 - 6000000', true),
	(20, 2, 12,'Jessica Miranda da Silva Abreu ', '61633455064','Brasil-Ceará-Fortaleza-Parangaba-Rua Carlos Roberto, 999 - 6000000', true),
	(21, 2, 15,'Angelica Miranda da Silva ', '61639223574','Brasil-Ceará-Fortaleza-Parangaba-Rua Carlos Roberto, 999 - 6000000', true),
	(22, 1, 3,'Maria Angelica Feitosa Souza ', '61639876064','Brasil-Ceará-Fortaleza-Parangaba-Rua Carlos Roberto, 999 - 6000000', true),
	(23, 1, 3,'Ana Thais dos Santos ', '61928374064','Brasil-Ceará-Fortaleza-Parangaba-Rua Carlos Roberto, 999 - 6000000', true);
