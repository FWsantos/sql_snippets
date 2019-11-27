CREATE TABLE "conta" (
	"id" integer NOT NULL,
	"id_cliente" integer NOT NULL,
	"id_tipo_conta" integer NOT NULL,
	"id_agencia" integer NOT NULL,
	"id_tipo_status_conta" integer NOT NULL,
	CONSTRAINT "conta_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "agencia" (
	"id" integer NOT NULL,
	CONSTRAINT "agencia_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "funcionario" (
	"id" integer NOT NULL,
	"id_agencia" integer NOT NULL,
	"id_cargo" integer NOT NULL,
	CONSTRAINT "funcionario_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "cliente" (
	"id" integer NOT NULL UNIQUE,
	"nome" varchar(80) NOT NULL,
	"cpf" varchar(11) NOT NULL UNIQUE,
	"rg" varchar(11) NOT NULL UNIQUE,
	CONSTRAINT "cliente_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "tipo_conta" (
	"id" integer NOT NULL,
	"nome_tipo" varchar(80) NOT NULL UNIQUE,
	CONSTRAINT "tipo_conta_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "cargo" (
	"id" integer NOT NULL,
	"descricao" varchar(255) NOT NULL,
	"nome" varchar(80) NOT NULL,
	CONSTRAINT "cargo_pk" PRIMARY KEY ("id")
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



ALTER TABLE "conta" ADD CONSTRAINT "conta_fk0" FOREIGN KEY ("id_cliente") REFERENCES "cliente"("id");
ALTER TABLE "conta" ADD CONSTRAINT "conta_fk1" FOREIGN KEY ("id_tipo_conta") REFERENCES "tipo_conta"("id");
ALTER TABLE "conta" ADD CONSTRAINT "conta_fk2" FOREIGN KEY ("id_agencia") REFERENCES "agencia"("id");
ALTER TABLE "conta" ADD CONSTRAINT "conta_fk3" FOREIGN KEY ("id_tipo_status_conta") REFERENCES "tipo_status_conta"("id");


ALTER TABLE "funcionario" ADD CONSTRAINT "funcionario_fk0" FOREIGN KEY ("id_agencia") REFERENCES "agencia"("id");
ALTER TABLE "funcionario" ADD CONSTRAINT "funcionario_fk1" FOREIGN KEY ("id_cargo") REFERENCES "cargo"("id");





