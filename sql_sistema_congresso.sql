CREATE DATABASE CONGRESSO;

USE CONGRESSO;

CREATE TABLE Organizadores (
                cod_organizador INT NOT NULL,
                primeiro_nome VARCHAR(10) NOT NULL,
                nome_meio VARCHAR(1) NOT NULL,
                ultimo_nome VARCHAR(10) NOT NULL,
                atribuicao VARCHAR(10) NOT NULL,
                PRIMARY KEY (cod_organizador)
);


CREATE TABLE telefones_organizador (
                cod_organizador INT NOT NULL,
                telefone CHAR(11) NOT NULL,
                PRIMARY KEY (cod_organizador)
);


CREATE TABLE visitantes (
                cdigovisitantes INT NOT NULL,
                email VARCHAR(10) NOT NULL,
                nomevisitante VARCHAR(10) NOT NULL,
                PRIMARY KEY (cdigovisitantes)
);


CREATE TABLE tel_visitante (
                cdigovisitantes INT NOT NULL,
                telefone VARCHAR(10) NOT NULL,
                PRIMARY KEY (cdigovisitantes)
);

ALTER TABLE tel_visitante COMMENT 'Tabela que contém o telefone dos visitantes.';

ALTER TABLE tel_visitante MODIFY COLUMN telefone VARCHAR(10) COMMENT 'Telefone do patrocinador';


CREATE TABLE locais (
                codigo_local INT NOT NULL,
                nomelocal VARCHAR(10) NOT NULL,
                tamanho VARCHAR(10) NOT NULL,
                pessoa_de_contato VARCHAR(10) NOT NULL,
                PRIMARY KEY (codigo_local)
);


CREATE TABLE tel_contato (
                cdigolocal INT NOT NULL,
                telefone VARCHAR(10) NOT NULL,
                PRIMARY KEY (cdigolocal)
);

ALTER TABLE tel_contato COMMENT 'Tabela que contém o telefone dos locais.';

ALTER TABLE tel_contato MODIFY COLUMN telefone VARCHAR(10) COMMENT 'Telefone do patrocinador';


CREATE TABLE categorias (
                codigo INT NOT NULL,
                nome VARCHAR(10) NOT NULL,
                valor INT NOT NULL,
                PRIMARY KEY (codigo)
);

ALTER TABLE categorias COMMENT 'Tabela contendo as categorias do congresso';

ALTER TABLE categorias MODIFY COLUMN codigo INTEGER COMMENT 'Código da categoria';

ALTER TABLE categorias MODIFY COLUMN nome VARCHAR(10) COMMENT 'Nome da categoria';

ALTER TABLE categorias MODIFY COLUMN valor INTEGER COMMENT 'Valor da categoria';


CREATE TABLE patrocinadores (
                codigo_patrocinador INT NOT NULL,
                nome VARCHAR(10) NOT NULL,
                ramo_atividade VARCHAR(10) NOT NULL,
                pessoa_contato VARCHAR(10) NOT NULL,
                PRIMARY KEY (codigo_patrocinador)
);

ALTER TABLE patrocinadores COMMENT 'Tabela que contém informações dos patrocinadores.';

ALTER TABLE patrocinadores MODIFY COLUMN codigo_patrocinador INTEGER COMMENT 'Código de identificação do patrocinador';

ALTER TABLE patrocinadores MODIFY COLUMN nome VARCHAR(10) COMMENT 'Nome do patrocinador';

ALTER TABLE patrocinadores MODIFY COLUMN ramo_atividade VARCHAR(10) COMMENT 'Ramo de atividade do patrocinador';

ALTER TABLE patrocinadores MODIFY COLUMN pessoa_contato VARCHAR(10) COMMENT 'Pessoa de contato do patrocinador';


CREATE TABLE tel_patrocinador (
                codigo_patrocinador INT NOT NULL,
                telefone VARCHAR(10) NOT NULL,
                PRIMARY KEY (codigo_patrocinador)
);

ALTER TABLE tel_patrocinador COMMENT 'Tabela que contém o telefone dos patrocinadores.';

ALTER TABLE tel_patrocinador MODIFY COLUMN codigo_patrocinador INTEGER COMMENT 'Código de identificação do patrocinador';

ALTER TABLE tel_patrocinador MODIFY COLUMN telefone VARCHAR(10) COMMENT 'Telefone do patrocinador';


CREATE TABLE UF (
                cod_uf INT NOT NULL,
                sigla VARCHAR(2) NOT NULL,
                PRIMARY KEY (cod_uf)
);

ALTER TABLE UF COMMENT 'Tabela contendo as unidades federativas para serem usadas em endereços. Feito por: Maurício Grigoleto';

ALTER TABLE UF MODIFY COLUMN cod_uf INTEGER COMMENT 'Código da UF';

ALTER TABLE UF MODIFY COLUMN sigla VARCHAR(2) COMMENT 'Sigla da UF';


CREATE TABLE end_local (
                cod_uf INT NOT NULL,
                cdigolocal INT NOT NULL,
                logradouro VARCHAR(10) NOT NULL,
                numero INT NOT NULL,
                complemento VARCHAR(10),
                bairro VARCHAR(10) NOT NULL,
                cidade VARCHAR(10) NOT NULL,
                cep VARCHAR(10) NOT NULL,
                PRIMARY KEY (cod_uf, cdigolocal)
);

ALTER TABLE end_local COMMENT 'Tabela que contém o endereço dos locais.';

ALTER TABLE end_local MODIFY COLUMN logradouro VARCHAR(10) COMMENT 'Logradouro do endereço';

ALTER TABLE end_local MODIFY COLUMN numero INTEGER COMMENT 'Número da residência';

ALTER TABLE end_local MODIFY COLUMN complemento VARCHAR(10) COMMENT 'Complemento para o endereço';

ALTER TABLE end_local MODIFY COLUMN bairro VARCHAR(10) COMMENT 'Bairro do endereço';

ALTER TABLE end_local MODIFY COLUMN cidade VARCHAR(10) COMMENT 'Cidade do endereço';

ALTER TABLE end_local MODIFY COLUMN cep VARCHAR(10) COMMENT 'CEP do endereço';


CREATE TABLE end_patrocinador (
                codigo_patrocinador INT NOT NULL,
                cod_uf INT NOT NULL,
                logradouro VARCHAR(10) NOT NULL,
                numero INT NOT NULL,
                complemento VARCHAR(10),
                bairro VARCHAR(10) NOT NULL,
                cidade VARCHAR(10) NOT NULL,
                cep VARCHAR(10) NOT NULL,
                PRIMARY KEY (codigo_patrocinador, cod_uf)
);

ALTER TABLE end_patrocinador COMMENT 'Tabela que contém o endereço dos patrocinadores.';

ALTER TABLE end_patrocinador MODIFY COLUMN codigo_patrocinador INTEGER COMMENT 'Código de identificação do patrocinador';

ALTER TABLE end_patrocinador MODIFY COLUMN cod_uf INTEGER COMMENT 'Código da UF';

ALTER TABLE end_patrocinador MODIFY COLUMN logradouro VARCHAR(10) COMMENT 'Logradouro do endereço';

ALTER TABLE end_patrocinador MODIFY COLUMN numero INTEGER COMMENT 'Número da residência';

ALTER TABLE end_patrocinador MODIFY COLUMN complemento VARCHAR(10) COMMENT 'Complemento para o endereço';

ALTER TABLE end_patrocinador MODIFY COLUMN bairro VARCHAR(10) COMMENT 'Bairro do endereço';

ALTER TABLE end_patrocinador MODIFY COLUMN cidade VARCHAR(10) COMMENT 'Cidade do endereço';

ALTER TABLE end_patrocinador MODIFY COLUMN cep VARCHAR(10) COMMENT 'CEP do endereço';


CREATE TABLE end_visitante (
                cdigovisitantes INT NOT NULL,
                cod_uf INT NOT NULL,
                logradouro VARCHAR(10) NOT NULL,
                numero INT NOT NULL,
                complemento VARCHAR(10),
                bairro VARCHAR(10) NOT NULL,
                cidade VARCHAR(10) NOT NULL,
                cep VARCHAR(10) NOT NULL,
                PRIMARY KEY (cdigovisitantes, cod_uf)
);

ALTER TABLE end_visitante COMMENT 'Tabela que contém o endereço dos visitante.';

ALTER TABLE end_visitante MODIFY COLUMN cod_uf INTEGER COMMENT 'Código da UF';

ALTER TABLE end_visitante MODIFY COLUMN logradouro VARCHAR(10) COMMENT 'Logradouro do endereço';

ALTER TABLE end_visitante MODIFY COLUMN numero INTEGER COMMENT 'Número da residência';

ALTER TABLE end_visitante MODIFY COLUMN complemento VARCHAR(10) COMMENT 'Complemento para o endereço';

ALTER TABLE end_visitante MODIFY COLUMN bairro VARCHAR(10) COMMENT 'Bairro do endereço';

ALTER TABLE end_visitante MODIFY COLUMN cidade VARCHAR(10) COMMENT 'Cidade do endereço';

ALTER TABLE end_visitante MODIFY COLUMN cep VARCHAR(10) COMMENT 'CEP do endereço';


CREATE TABLE palestrantes (
                codigo_palestrantes INT NOT NULL,
                nome VARCHAR(10) NOT NULL,
                email VARCHAR(10) NOT NULL,
                desc_curriculum VARCHAR(10) NOT NULL,
                PRIMARY KEY (codigo_palestrantes)
);

ALTER TABLE palestrantes COMMENT 'Tabela contendo informações sobre os palestrantes. Feito por: Maurício Grigoleto';

ALTER TABLE palestrantes MODIFY COLUMN codigo_palestrantes INTEGER COMMENT 'Código de identificação dos palestrantes';

ALTER TABLE palestrantes MODIFY COLUMN nome VARCHAR(10) COMMENT 'Nome do palestrante';

ALTER TABLE palestrantes MODIFY COLUMN email VARCHAR(10) COMMENT 'E-mail do palestrante';

ALTER TABLE palestrantes MODIFY COLUMN desc_curriculum VARCHAR(10) COMMENT 'Descrição do currículo do palestrante';


CREATE TABLE tel_palestrante (
                cdigo INT NOT NULL,
                telefone VARCHAR(10) NOT NULL,
                PRIMARY KEY (cdigo)
);

ALTER TABLE tel_palestrante COMMENT 'Tabela que armazena os telefones do palestrante. Feito por: Maurício Grigoleto';

ALTER TABLE tel_palestrante MODIFY COLUMN cdigo INTEGER COMMENT 'Código de identificação dos palestrantes';

ALTER TABLE tel_palestrante MODIFY COLUMN telefone VARCHAR(10) COMMENT 'Telefone do palestrante';


CREATE TABLE end_palestrante (
                cdigo INT NOT NULL,
                cod_uf INT NOT NULL,
                logradouro VARCHAR(10) NOT NULL,
                numero INT NOT NULL,
                complemento VARCHAR(10),
                bairro VARCHAR(10) NOT NULL,
                cidade VARCHAR(10) NOT NULL,
                cep VARCHAR(10) NOT NULL,
                PRIMARY KEY (cdigo, cod_uf)
);

ALTER TABLE end_palestrante COMMENT 'Tabela contendo o endereço do palestrante. Feito por: Maurício Grigoleto';

ALTER TABLE end_palestrante MODIFY COLUMN cdigo INTEGER COMMENT 'Código de identificação dos palestrantes';

ALTER TABLE end_palestrante MODIFY COLUMN cod_uf INTEGER COMMENT 'Código da UF';

ALTER TABLE end_palestrante MODIFY COLUMN logradouro VARCHAR(10) COMMENT 'Logradouro do endereço';

ALTER TABLE end_palestrante MODIFY COLUMN numero INTEGER COMMENT 'Número da residência';

ALTER TABLE end_palestrante MODIFY COLUMN complemento VARCHAR(10) COMMENT 'Complemento para o endereço';

ALTER TABLE end_palestrante MODIFY COLUMN bairro VARCHAR(10) COMMENT 'Bairro do endereço';

ALTER TABLE end_palestrante MODIFY COLUMN cidade VARCHAR(10) COMMENT 'Cidade do endereço';

ALTER TABLE end_palestrante MODIFY COLUMN cep VARCHAR(10) COMMENT 'CEP do endereço';


CREATE TABLE programas (
                codigo_programas INT NOT NULL,
                nome VARCHAR(10) NOT NULL,
                PRIMARY KEY (codigo_programas)
);

ALTER TABLE programas COMMENT 'Tabela contendo dados dos programas. Feita por: Maurício Grigoleto';

ALTER TABLE programas MODIFY COLUMN codigo_programas INTEGER COMMENT 'Código do programa';

ALTER TABLE programas MODIFY COLUMN nome VARCHAR(10) COMMENT 'Nome do programa';


CREATE TABLE congressos (
                codigo_congresso INT NOT NULL,
                codigo_categorias INT NOT NULL,
                cdigolocal INT NOT NULL,
                cod_organizador INT NOT NULL,
                codigo_programas INT NOT NULL,
                cdigovisitantes INT NOT NULL,
                nome VARCHAR(10) NOT NULL,
                descricao VARCHAR(10) NOT NULL,
                data_inicio DATE NOT NULL,
                data_final DATE NOT NULL,
                horario_inicio TIME NOT NULL,
                horario_fim TIME NOT NULL,
                publico_alvo VARCHAR(10) NOT NULL,
                PRIMARY KEY (codigo_congresso, codigo_categorias, cdigolocal, cod_organizador, codigo_programas, cdigovisitantes)
);

ALTER TABLE congressos MODIFY COLUMN codigo_congresso INTEGER COMMENT 'Código do congresso';

ALTER TABLE congressos MODIFY COLUMN codigo_categorias INTEGER COMMENT 'Código da categoria';

ALTER TABLE congressos MODIFY COLUMN codigo_programas INTEGER COMMENT 'Código do programa';

ALTER TABLE congressos MODIFY COLUMN nome VARCHAR(10) COMMENT 'Nome do congresso';

ALTER TABLE congressos MODIFY COLUMN descricao VARCHAR(10) COMMENT 'Descrição do congresso';

ALTER TABLE congressos MODIFY COLUMN data_inicio DATE COMMENT 'Data de inicio do congresso';

ALTER TABLE congressos MODIFY COLUMN data_final DATE COMMENT 'Data final do congresso';

ALTER TABLE congressos MODIFY COLUMN horario_inicio TIME COMMENT 'Horario de inicio do congresso';

ALTER TABLE congressos MODIFY COLUMN horario_fim TIME COMMENT 'Horario do fim do congresso';

ALTER TABLE congressos MODIFY COLUMN publico_alvo VARCHAR(10) COMMENT 'Publico alvo do congresso';


CREATE TABLE patrocinio (
                cod_patrocinador INT NOT NULL,
                cod_congresso INT NOT NULL,
                forma_pagamento VARCHAR(10) NOT NULL,
                valor_patrocinio INT NOT NULL,
                PRIMARY KEY (cod_patrocinador, cod_congresso)
);

ALTER TABLE patrocinio COMMENT 'Tabela que contém as informações dos patrocínios.';

ALTER TABLE patrocinio MODIFY COLUMN cod_patrocinador INTEGER COMMENT 'Código de identificação do patrocinador';

ALTER TABLE patrocinio MODIFY COLUMN cod_congresso INTEGER COMMENT 'Código do congresso';

ALTER TABLE patrocinio MODIFY COLUMN forma_pagamento VARCHAR(10) COMMENT 'forma de pagamento que foi utilizada no patrocínio';

ALTER TABLE patrocinio MODIFY COLUMN valor_patrocinio INTEGER COMMENT 'é o valor do patrocinio';


CREATE TABLE palestras (
                cod_programa INT NOT NULL,
                cod_palestrante INT NOT NULL,
                nome_palestra VARCHAR(10) NOT NULL,
                PRIMARY KEY (cod_programa, cod_palestrante)
);

ALTER TABLE palestras COMMENT 'Tabela que armazeda os dados das palestrar. Feito por: Maurício Grigoleto';

ALTER TABLE palestras MODIFY COLUMN cod_programa INTEGER COMMENT 'Código de programa';

ALTER TABLE palestras MODIFY COLUMN cod_palestrante INTEGER COMMENT 'Código de identificação dos palestrantes';

ALTER TABLE palestras MODIFY COLUMN nome_palestra VARCHAR(10) COMMENT 'Nome da palestra';


CREATE TABLE material_palestra (
                cod_programa INT NOT NULL,
                cod_palestrante INT NOT NULL,
                material VARCHAR(10) NOT NULL,
                PRIMARY KEY (cod_programa, cod_palestrante)
);

ALTER TABLE material_palestra COMMENT 'Tabela que armazena os materiais necessários na palestra. Feito por: Maurício Grigoleto';

ALTER TABLE material_palestra MODIFY COLUMN cod_programa INTEGER COMMENT 'Código de programa';

ALTER TABLE material_palestra MODIFY COLUMN cod_palestrante INTEGER COMMENT 'Código de identificação dos palestrantes';

ALTER TABLE material_palestra MODIFY COLUMN material VARCHAR(10) COMMENT 'Material necessário na palestra';


CREATE TABLE classificacao_magna (
                cod_programa INT NOT NULL,
                cod_palestrante INT NOT NULL,
                classificacao VARCHAR(10) DEFAULT NOT NULL,
                PRIMARY KEY (cod_programa, cod_palestrante)
);

ALTER TABLE classificacao_magna COMMENT 'Tabela que armazena "magna" para aclassificação da palestra. Feito por: Maurício Grigoleto';

ALTER TABLE classificacao_magna MODIFY COLUMN cod_programa INTEGER COMMENT 'Código de programa';

ALTER TABLE classificacao_magna MODIFY COLUMN cod_palestrante INTEGER COMMENT 'Código de identificação dos palestrantes';

ALTER TABLE classificacao_magna MODIFY COLUMN classificacao VARCHAR(10) COMMENT 'Classificação "magna" da palestra';


CREATE TABLE classificacao_comum (
                cod_programa INT NOT NULL,
                cod_palestrante INT NOT NULL,
                classificacao VARCHAR(10) DEFAULT NOT NULL,
                PRIMARY KEY (cod_programa, cod_palestrante)
);

ALTER TABLE classificacao_comum COMMENT 'Tabela que armazena "comum" para aclassificação da palestra. Feito por: Maurício Grigoleto';

ALTER TABLE classificacao_comum MODIFY COLUMN cod_programa INTEGER COMMENT 'Código de programa';

ALTER TABLE classificacao_comum MODIFY COLUMN cod_palestrante INTEGER COMMENT 'Código de identificação dos palestrantes';

ALTER TABLE classificacao_comum MODIFY COLUMN classificacao VARCHAR(10) COMMENT 'Classificação "comum" da palestra';


CREATE TABLE evento (
                cod_evento INT NOT NULL,
                cdigo INT NOT NULL,
                data DATE NOT NULL,
                horario TIME NOT NULL,
                descricao VARCHAR(10) NOT NULL,
                PRIMARY KEY (cod_evento, cdigo)
);

ALTER TABLE evento COMMENT 'Tabela com informações sobre os eventos dos programas. Feito por: Maurício Grigoleto';

ALTER TABLE evento MODIFY COLUMN cod_evento INTEGER COMMENT 'Código do evento que faz parte do programa';

ALTER TABLE evento MODIFY COLUMN cdigo INTEGER COMMENT 'Código do programa';

ALTER TABLE evento MODIFY COLUMN data DATE COMMENT 'Data do evento';

ALTER TABLE evento MODIFY COLUMN horario TIME COMMENT 'Hora de começo do evento';

ALTER TABLE evento MODIFY COLUMN descricao VARCHAR(10) COMMENT 'Descrição do evento do programa';


ALTER TABLE telefones_organizador ADD CONSTRAINT organizadores_telefones_organizador_fk
FOREIGN KEY (cod_organizador)
REFERENCES Organizadores (cod_organizador)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE congressos ADD CONSTRAINT organizadores_congressos_fk
FOREIGN KEY (cod_organizador)
REFERENCES Organizadores (cod_organizador)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE end_visitante ADD CONSTRAINT visitantes_end_visitante_fk
FOREIGN KEY (cdigovisitantes)
REFERENCES visitantes (cdigovisitantes)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE tel_visitante ADD CONSTRAINT visitantes_tel_visitante_fk
FOREIGN KEY (cdigovisitantes)
REFERENCES visitantes (cdigovisitantes)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE congressos ADD CONSTRAINT visitantes_congressos_fk
FOREIGN KEY (cdigovisitantes)
REFERENCES visitantes (cdigovisitantes)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE end_local ADD CONSTRAINT locais_end_local_fk
FOREIGN KEY (cdigolocal)
REFERENCES locais (codigo_local)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE tel_contato ADD CONSTRAINT locais_tel_contato_fk
FOREIGN KEY (cdigolocal)
REFERENCES locais (codigo_local)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE congressos ADD CONSTRAINT locais_congressos_fk
FOREIGN KEY (cdigolocal)
REFERENCES locais (codigo_local)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE congressos ADD CONSTRAINT categorias_congressos_fk
FOREIGN KEY (codigo_categorias)
REFERENCES categorias (codigo)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE end_patrocinador ADD CONSTRAINT patrocinadores_end_patrocinador_fk
FOREIGN KEY (codigo_patrocinador)
REFERENCES patrocinadores (codigo_patrocinador)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE tel_patrocinador ADD CONSTRAINT patrocinadores_tel_patrocinador_fk
FOREIGN KEY (codigo_patrocinador)
REFERENCES patrocinadores (codigo_patrocinador)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE patrocinio ADD CONSTRAINT patrocinadores_patrocinio_fk
FOREIGN KEY (cod_patrocinador)
REFERENCES patrocinadores (codigo_patrocinador)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE end_palestrante ADD CONSTRAINT uf_end_palestrante_fk
FOREIGN KEY (cod_uf)
REFERENCES UF (cod_uf)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE end_visitante ADD CONSTRAINT uf_end_visitante_fk
FOREIGN KEY (cod_uf)
REFERENCES UF (cod_uf)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE end_patrocinador ADD CONSTRAINT uf_end_patrocinador_fk
FOREIGN KEY (cod_uf)
REFERENCES UF (cod_uf)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE end_local ADD CONSTRAINT uf_end_local_fk
FOREIGN KEY (cod_uf)
REFERENCES UF (cod_uf)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE end_palestrante ADD CONSTRAINT palestrantes_end_palestrante_fk
FOREIGN KEY (cdigo)
REFERENCES palestrantes (codigo_palestrantes)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE tel_palestrante ADD CONSTRAINT palestrantes_tel_palestrante_fk
FOREIGN KEY (cdigo)
REFERENCES palestrantes (codigo_palestrantes)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE palestras ADD CONSTRAINT palestrantes_palestras_fk
FOREIGN KEY (cod_palestrante)
REFERENCES palestrantes (codigo_palestrantes)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE evento ADD CONSTRAINT programas_evento_fk
FOREIGN KEY (cdigo)
REFERENCES programas (codigo_programas)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE palestras ADD CONSTRAINT programas_palestras_fk
FOREIGN KEY (cod_programa)
REFERENCES programas (codigo_programas)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE congressos ADD CONSTRAINT programas_congressos_fk
FOREIGN KEY (codigo_programas)
REFERENCES programas (codigo_programas)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE patrocinio ADD CONSTRAINT congressos_patrocinio_fk
FOREIGN KEY (cod_congresso)
REFERENCES congressos (codigo_congresso)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE classificacao_comum ADD CONSTRAINT palestras_classificacao_comum_fk
FOREIGN KEY (cod_programa, cod_palestrante)
REFERENCES palestras (cod_programa, cod_palestrante)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE classificacao_magna ADD CONSTRAINT palestras_classificacao_magna_fk
FOREIGN KEY (cod_programa, cod_palestrante)
REFERENCES palestras (cod_programa, cod_palestrante)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE material_palestra ADD CONSTRAINT palestras_material_palestra_fk
FOREIGN KEY (cod_programa, cod_palestrante)
REFERENCES palestras (cod_programa, cod_palestrante)
ON DELETE NO ACTION
ON UPDATE NO ACTION;