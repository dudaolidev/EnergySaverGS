CREATE TABLE consumoenergetico (
    id_consumo    INTEGER NOT NULL,
    id_poste      INTEGER NOT NULL,
    dataregistro  NUMBER NOT NULL,
    valorconsumo  NUMBER NOT NULL,
    criado_em     DATE NOT NULL,
    deletado_em   DATE
);

ALTER TABLE consumoenergetico ADD CONSTRAINT consumoenergetico_pk PRIMARY KEY ( id_consumo );

CREATE TABLE economiaenergetica (
    id_economia    INTEGER NOT NULL,
    id_poste       INTEGER NOT NULL,
    periodo        VARCHAR2 

     NOT NULL,
    economiatotal  NUMBER NOT NULL,
    criado_em      DATE NOT NULL,
    atualizado_em  DATE NOT NULL,
    deletado_em    DATE NOT NULL
);

ALTER TABLE economiaenergetica ADD CONSTRAINT economiaenergetica_pk PRIMARY KEY ( id_economia );

CREATE TABLE poste (
    id_poste               INTEGER NOT NULL,
    localizacao            VARCHAR2(1000) NOT NULL,
    potencia               NUMBER NOT NULL,
    status                 INTEGER NOT NULL,
    consumoatual           NUMBER NOT NULL,
    ultimo_consumo         DATE NOT NULL,
    criado_em              DATE NOT NULL,
    atualizado_em          DATE,
    deletado_em            DATE,
    relatorio_idrelatorio  INTEGER NOT NULL
);

ALTER TABLE poste ADD CONSTRAINT poste_pk PRIMARY KEY ( id_poste );

CREATE TABLE posteconsumo (
    poste_id_poste                INTEGER NOT NULL,
    consumoenergetico_id_consumo  INTEGER NOT NULL
);

ALTER TABLE posteconsumo ADD CONSTRAINT posteconsumo_pk PRIMARY KEY ( poste_id_poste,
                                                                      consumoenergetico_id_consumo );

CREATE TABLE posteeconomia (
    poste_id_poste                  INTEGER NOT NULL,
    economiaenergetica_id_economia  INTEGER NOT NULL
);

ALTER TABLE posteeconomia ADD CONSTRAINT posteeconomia_pk PRIMARY KEY ( poste_id_poste,
                                                                        economiaenergetica_id_economia );

CREATE TABLE relatorio (
    idrelatorio    INTEGER NOT NULL,
    titulo         VARCHAR2 

     NOT NULL,
    datageracao    DATE NOT NULL,
    conteudo       CLOB,
    idusuario      INTEGER NOT NULL,
    atualizado_em  DATE NOT NULL,
    deletado_em    DATE
);

ALTER TABLE relatorio ADD CONSTRAINT relatorio_pk PRIMARY KEY ( idrelatorio );

CREATE TABLE usuario (
    idusuario      INTEGER NOT NULL,
    nomeusuario    VARCHAR2 

     NOT NULL,
    emailusuario   VARCHAR2 

     NOT NULL,
    senhausuario   VARCHAR2 

     NOT NULL,
    permissoes     INTEGER NOT NULL,
    criado_em      DATE NOT NULL,
    atualizado_em  DATE NOT NULL,
    deletado_em    DATE
);

ALTER TABLE usuario ADD CONSTRAINT usuario_pk PRIMARY KEY ( idusuario );

CREATE TABLE usuariorelatorio (
    relatorio_idrelatorio  INTEGER NOT NULL,
    usuario_idusuario      INTEGER NOT NULL
);

ALTER TABLE usuariorelatorio ADD CONSTRAINT usuariorelatorio_pk PRIMARY KEY ( relatorio_idrelatorio,
                                                                              usuario_idusuario );

ALTER TABLE poste
    ADD CONSTRAINT poste_relatorio_fk FOREIGN KEY ( relatorio_idrelatorio )
        REFERENCES relatorio ( idrelatorio );


ALTER TABLE posteconsumo
    ADD CONSTRAINT posteconsumo_consumoenergetico_fk FOREIGN KEY ( consumoenergetico_id_consumo )
        REFERENCES consumoenergetico ( id_consumo );

ALTER TABLE posteconsumo
    ADD CONSTRAINT posteconsumo_poste_fk FOREIGN KEY ( poste_id_poste )
        REFERENCES poste ( id_poste );


ALTER TABLE posteeconomia
    ADD CONSTRAINT posteeconomia_economiaenergetica_fk FOREIGN KEY ( economiaenergetica_id_economia )
        REFERENCES economiaenergetica ( id_economia );

ALTER TABLE posteeconomia
    ADD CONSTRAINT posteeconomia_poste_fk FOREIGN KEY ( poste_id_poste )
        REFERENCES poste ( id_poste );

ALTER TABLE usuariorelatorio
    ADD CONSTRAINT usuariorelatorio_relatorio_fk FOREIGN KEY ( relatorio_idrelatorio )
        REFERENCES relatorio ( idrelatorio );

ALTER TABLE usuariorelatorio
    ADD CONSTRAINT usuariorelatorio_usuario_fk FOREIGN KEY ( usuario_idusuario )
        REFERENCES usuario ( idusuario );



