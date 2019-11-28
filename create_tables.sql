CREATE TABLE "conta" (
	"id" integer NOT NULL UNIQUE,
	"id_agencia" integer NOT NULL,
	"id_cliente" integer NOT NULL,
	"id_tipo_conta" integer NOT NULL,
	"id_tipo_status_conta" integer NOT NULL,
	"data_inicio" DATE NOT NULL,
	CONSTRAINT "conta_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "cliente" (
	"id" integer NOT NULL UNIQUE,
	"nome" varchar(80) NOT NULL,
	"cpf" varchar(11) NOT NULL UNIQUE,
	"rg" varchar(11) NOT NULL UNIQUE,
	"endereco" varchar(80) NOT NULL,
	CONSTRAINT "cliente_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "tipo_conta" (
	"id" integer NOT NULL UNIQUE,
	"id_tipo_manutencao" integer NOT NULL,
	"nome_tipo" varchar(80) NOT NULL,
	"limite_saque" integer NOT NULL,
	"limite_transferencia" integer NOT NULL,
	"saque_max" FLOAT NOT NULL,
	"saque_min" FLOAT NOT NULL,
	"limite_extrato" integer NOT NULL,
	CONSTRAINT "tipo_conta_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "tipo_status_conta" (
	"id" integer NOT NULL,
	"nome_status_conta" varchar(80) NOT NULL,
	"descricao" varchar(255) NOT NULL,
	CONSTRAINT "tipo_status_conta_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "tipo_operacao" (
	"id" integer NOT NULL UNIQUE,
	"nome" varchar(80) NOT NULL,
	"descricao" varchar(255) NOT NULL,
	CONSTRAINT "tipo_operacao_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "tipo_manutencao" (
	"id" integer NOT NULL UNIQUE,
	"nome" varchar(80) NOT NULL,
	"valor_fixo" FLOAT NOT NULL,
	"taxa_extra" FLOAT NOT NULL,
	CONSTRAINT "tipo_manutencao_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "operacao_efetuada" (
	"id" integer NOT NULL UNIQUE,
	"id_conta" integer NOT NULL,
	"id_operacao" integer NOT NULL,
	"data" DATE NOT NULL,
	CONSTRAINT "operacao_efetuada_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "agencia" (
	"id" serial NOT NULL,
	"nome_agencia" varchar(80) NOT NULL,
	"endereco" varchar(80) NOT NULL,
	CONSTRAINT "agencia_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "funcionario" (
	"id" serial NOT NULL,
	"id_agencia" integer NOT NULL,
	"id_cargo" integer NOT NULL,
	"nome" varchar(80) NOT NULL,
	"rg" varchar(11) NOT NULL UNIQUE,
	"endereco" varchar(80) NOT NULL,
	"vinculo" BOOLEAN NOT NULL,
	CONSTRAINT "funcionario_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "cargo" (
	"id" integer NOT NULL,
	"id_setor" integer NOT NULL,
	"descricao" varchar(255) NOT NULL,
	"nome" varchar(80) NOT NULL,
	"salario" FLOAT NOT NULL,
	"preco_hora_extra" FLOAT NOT NULL,
	CONSTRAINT "cargo_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "entrada_funcionario" (
	"id" serial NOT NULL,
	"id_funcionario" integer NOT NULL,
	"data" DATE NOT NULL UNIQUE,
	"horario" TIME NOT NULL,
	CONSTRAINT "entrada_funcionario_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "saida_funcionario" (
	"id" serial NOT NULL,
	"id_funcionario" integer NOT NULL,
	"data" DATE NOT NULL,
	"horario" TIME NOT NULL,
	CONSTRAINT "saida_funcionario_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "setor" (
	"id" serial NOT NULL,
	"nome_setor" varchar(80) NOT NULL,
	CONSTRAINT "setor_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);







ALTER TABLE "conta" ADD CONSTRAINT "conta_fk0" FOREIGN KEY ("id_agencia") REFERENCES "agencia"("id");
ALTER TABLE "conta" ADD CONSTRAINT "conta_fk1" FOREIGN KEY ("id_cliente") REFERENCES "cliente"("id");
ALTER TABLE "conta" ADD CONSTRAINT "conta_fk2" FOREIGN KEY ("id_tipo_conta") REFERENCES "tipo_conta"("id");
ALTER TABLE "conta" ADD CONSTRAINT "conta_fk3" FOREIGN KEY ("id_tipo_status_conta") REFERENCES "tipo_status_conta"("id");



ALTER TABLE "tipo_conta" ADD CONSTRAINT "tipo_conta_fk0" FOREIGN KEY ("id_tipo_manutencao") REFERENCES "tipo_manutencao"("id");




ALTER TABLE "operacao_efetuada" ADD CONSTRAINT "operacao_efetuada_fk0" FOREIGN KEY ("id_conta") REFERENCES "conta"("id");
ALTER TABLE "operacao_efetuada" ADD CONSTRAINT "operacao_efetuada_fk1" FOREIGN KEY ("id_operacao") REFERENCES "tipo_operacao"("id");



ALTER TABLE "funcionario" ADD CONSTRAINT "funcionario_fk0" FOREIGN KEY ("id_agencia") REFERENCES "agencia"("id");
ALTER TABLE "funcionario" ADD CONSTRAINT "funcionario_fk1" FOREIGN KEY ("id_cargo") REFERENCES "cargo"("id");

ALTER TABLE "cargo" ADD CONSTRAINT "cargo_fk0" FOREIGN KEY ("id_setor") REFERENCES "setor"("id");

ALTER TABLE "entrada_funcionario" ADD CONSTRAINT "entrada_funcionario_fk0" FOREIGN KEY ("id_funcionario") REFERENCES "funcionario"("id");

ALTER TABLE "saida_funcionario" ADD CONSTRAINT "saida_funcionario_fk0" FOREIGN KEY ("id_funcionario") REFERENCES "funcionario"("id");


