
-- Borrado de las sequencias
DROP SEQUENCE SEQ_ENTIDAD;
DROP SEQUENCE SEQ_SUBSIDIO;
DROP SEQUENCE SEQ_ESTADO_CIVIL;
DROP SEQUENCE SEQ_ESTADO_VIVIENDA;
DROP SEQUENCE SEQ_ESTADO_POSTULACION;
DROP SEQUENCE SEQ_REGION;
DROP SEQUENCE SEQ_VIVIENDA;
DROP SEQUENCE SEQ_COMUNA;
DROP SEQUENCE SEQ_NACIONALIDAD;
DROP SEQUENCE SEQ_ESCOLARIDAD;
DROP SEQUENCE SEQ_TITULO;
DROP SEQUENCE SEQ_PUEBLO;
DROP SEQUENCE SEQ_POSTULACION;

-- Borrado de Vistas
DROP VIEW V_PUNTAJE_POSTULANTES;
DROP VIEW V_PUNTAJES;

-- Borrado de las Tablas
DROP TABLE CARGA_FAMILIAR CASCADE CONSTRAINTS;
DROP TABLE COMUNA CASCADE CONSTRAINTS;
DROP TABLE CONYUGE CASCADE CONSTRAINTS;
DROP TABLE CUENTA_AHORRO CASCADE CONSTRAINTS;
DROP TABLE ENTIDAD_FINANCIERA CASCADE CONSTRAINTS;
DROP TABLE ESCOLARIDAD CASCADE CONSTRAINTS;
DROP TABLE ESTADO_CIVIL CASCADE CONSTRAINTS;
DROP TABLE ESTADO_VIVIENDA CASCADE CONSTRAINTS;
DROP TABLE ESTADO_POSTULACION CASCADE CONSTRAINTS;
DROP TABLE NACIONALIDAD CASCADE CONSTRAINTS;
DROP TABLE OPCION_SUBSIDIO CASCADE CONSTRAINTS;
DROP TABLE POSTULACION CASCADE CONSTRAINTS;
DROP TABLE POSTULANTE CASCADE CONSTRAINTS;
DROP TABLE PUEBLO_ORIGINARIO CASCADE CONSTRAINTS;
DROP TABLE PUNTAJE_AHORRO CASCADE CONSTRAINTS;
DROP TABLE PUNTAJE_CARGA CASCADE CONSTRAINTS;
DROP TABLE PUNTAJE_EDAD CASCADE CONSTRAINTS;
DROP TABLE PUNTAJE_ESTADO CASCADE CONSTRAINTS;
DROP TABLE PUNTAJE_TITULO CASCADE CONSTRAINTS;
DROP TABLE REGION CASCADE CONSTRAINTS;
DROP TABLE TITULO CASCADE CONSTRAINTS;
DROP TABLE VIVIENDA CASCADE CONSTRAINTS;


-- Creación de las secuencias
CREATE SEQUENCE SEQ_ENTIDAD;
CREATE SEQUENCE SEQ_SUBSIDIO;
CREATE SEQUENCE SEQ_ESTADO_CIVIL;
CREATE SEQUENCE SEQ_ESTADO_VIVIENDA;
CREATE SEQUENCE SEQ_ESTADO_POSTULACION;
CREATE SEQUENCE SEQ_REGION;
CREATE SEQUENCE SEQ_VIVIENDA;
CREATE SEQUENCE SEQ_COMUNA;
CREATE SEQUENCE SEQ_NACIONALIDAD;
CREATE SEQUENCE SEQ_ESCOLARIDAD;
CREATE SEQUENCE SEQ_TITULO;
CREATE SEQUENCE SEQ_PUEBLO;
CREATE SEQUENCE SEQ_POSTULACION START WITH 1001;


CREATE TABLE carga_familiar (
    run_carga       NUMBER(10) NOT NULL,
    dvrun_carga     CHAR(1) NOT NULL,
    pnombre_carga   VARCHAR2(30) NOT NULL,
    snombre_carga   VARCHAR2(30),
    apaterno_carga  VARCHAR2(30) NOT NULL,
    amaterno_carga  VARCHAR2(30) NOT NULL,
    tipo_relacion   VARCHAR2(20) NOT NULL,
    run_postulante  NUMBER(10)
);

ALTER TABLE carga_familiar ADD CONSTRAINT carga_familiar_pk PRIMARY KEY ( run_carga );

CREATE TABLE comuna (
    id_comuna      NUMBER(3) NOT NULL,
    nombre_comuna  VARCHAR2(30) NOT NULL,
    id_region      NUMBER(2) NOT NULL
);

ALTER TABLE comuna ADD CONSTRAINT comuna_pk PRIMARY KEY ( id_comuna );

CREATE TABLE conyuge (
    run_conyuge    NUMBER(10) NOT NULL,
    dvrun_conyuge  CHAR(1) NOT NULL,
    fecha_nac_con  DATE NOT NULL,
    pnombre_con    VARCHAR2(30) NOT NULL,
    snombre_con    VARCHAR2(30),
    apaterno_con   VARCHAR2(30) NOT NULL,
    amaterno_con   VARCHAR2(30) NOT NULL
);

ALTER TABLE conyuge ADD CONSTRAINT conyuge_pk PRIMARY KEY ( run_conyuge );

CREATE TABLE cuenta_ahorro (
    nro_cuenta      NUMBER(10) NOT NULL,
    run_titular     NUMBER(10) NOT NULL,
    fecha_apertura  DATE NOT NULL,
    monto_ahorrado  NUMBER(10) NOT NULL,
    id_entidad      NUMBER(3) NOT NULL
);

ALTER TABLE cuenta_ahorro ADD CONSTRAINT cuenta_ahorro_pk PRIMARY KEY ( nro_cuenta );

CREATE TABLE entidad_financiera (
    id_entidad   NUMBER(3) NOT NULL,
    nom_entidad  VARCHAR2(30) NOT NULL
);

ALTER TABLE entidad_financiera ADD CONSTRAINT entidad_financiera_pk PRIMARY KEY ( id_entidad );

CREATE TABLE escolaridad (
    id_escolaridad  NUMBER(3) NOT NULL,
    sigla_curso     VARCHAR2(2) NOT NULL
);

ALTER TABLE escolaridad ADD CONSTRAINT escolaridad_pk PRIMARY KEY ( id_escolaridad );

CREATE TABLE estado_civil (
    id_estado_civil  NUMBER(1) NOT NULL,
    desc_estado      VARCHAR2(20) NOT NULL
);

ALTER TABLE estado_civil ADD CONSTRAINT estado_civil_pk PRIMARY KEY ( id_estado_civil );

CREATE TABLE estado_postulacion (
    id_estado_postulacion  NUMBER(1) NOT NULL,
    descripcion_estado     VARCHAR2(50) NOT NULL
);

ALTER TABLE estado_postulacion ADD CONSTRAINT estado_postulacion_pk PRIMARY KEY ( id_estado_postulacion );

CREATE TABLE estado_vivienda (
    id_estado      NUMBER(1) NOT NULL,
    apta_subsidio  CHAR(1) NOT NULL
);

ALTER TABLE estado_vivienda ADD CONSTRAINT estado_vivienda_pk PRIMARY KEY ( id_estado );

CREATE TABLE nacionalidad (
    id_nacionalidad   NUMBER(3) NOT NULL,
    nom_nacionalidad  VARCHAR2(50) NOT NULL
);

ALTER TABLE nacionalidad ADD CONSTRAINT nacionalidad_pk PRIMARY KEY ( id_nacionalidad );

CREATE TABLE opcion_subsidio (
    id_subsidio       NUMBER(2) NOT NULL,
    nom_titulo_tramo  VARCHAR2(30) NOT NULL,
    vivienda_max_uf   NUMBER(5) NOT NULL,
    monto_subsidio   NUMBER(10) NOT NULL,
    ahorro_minimo_uf  NUMBER(4) NOT NULL
);

ALTER TABLE opcion_subsidio ADD CONSTRAINT opcion_subsidio_pk PRIMARY KEY ( id_subsidio );

CREATE TABLE postulacion (
    nro_folio              NUMBER(10) NOT NULL,
    fecha_postulacion      DATE NOT NULL,
    run_postulante         NUMBER(10) NOT NULL,
    nro_cuenta             NUMBER(10) NOT NULL,
    id_subsidio            NUMBER(2) NOT NULL,
    id_estado_postulacion  NUMBER(1) NOT NULL,
    id_vivienda            NUMBER(10) NOT NULL
);

ALTER TABLE postulacion ADD CONSTRAINT postulacion_pk PRIMARY KEY ( nro_folio );

CREATE TABLE postulante (
    run_postulante        NUMBER(10) NOT NULL,
    dvrun_postulante      CHAR(1) NOT NULL,
    pnombre_postulante    VARCHAR2(30) NOT NULL,
    snombre_postulante    VARCHAR2(30),
    apaterno_postulante   VARCHAR2(30) NOT NULL,
    amaterno_postulante   VARCHAR2(30) NOT NULL,
    fecha_nac             DATE NOT NULL,
    direccion_postulante  VARCHAR2(50) NOT NULL,
    email                 VARCHAR2(50) NOT NULL,
    tel_celular           NUMBER(10) NOT NULL,
    tel_fijo              NUMBER(10),
    sueldo_liquido        NUMBER(10) NOT NULL,
    id_comuna             NUMBER(3) NOT NULL,
    id_nacionalidad       NUMBER(3) NOT NULL,
    id_estado_civil       NUMBER(1) NOT NULL,
    run_conyuge           NUMBER(10),
    id_pueblo             NUMBER(2),
    id_titulo             NUMBER(3),
    id_escolaridad        NUMBER(3)
);

ALTER TABLE postulante
    ADD CONSTRAINT chk_sue_liq CHECK ( sueldo_liquido BETWEEN 1200000 AND 2000000 );

ALTER TABLE postulante ADD CONSTRAINT postulante_pk PRIMARY KEY ( run_postulante );

ALTER TABLE postulante ADD CONSTRAINT postulante_email_un UNIQUE ( email );

CREATE TABLE pueblo_originario (
    id_pueblo   NUMBER(2) NOT NULL,
    nom_pueblo  VARCHAR2(30) NOT NULL
);

ALTER TABLE pueblo_originario ADD CONSTRAINT pueblo_originario_pk PRIMARY KEY ( id_pueblo );

CREATE TABLE puntaje_ahorro (
    min_valor  NUMBER(10) NOT NULL,
    max_valor  NUMBER(10) NOT NULL,
    puntaje    NUMBER(4) NOT NULL
);

ALTER TABLE puntaje_ahorro ADD CONSTRAINT puntaje_ahorro_pk PRIMARY KEY ( min_valor );

CREATE TABLE puntaje_carga (
    min_carga  NUMBER(2) NOT NULL,
    max_carga  NUMBER(2) NOT NULL,
    puntaje    NUMBER(4) NOT NULL
);

ALTER TABLE puntaje_carga ADD CONSTRAINT puntaje_carga_pk PRIMARY KEY ( min_carga );

CREATE TABLE puntaje_edad (
    edad_desde  NUMBER(2) NOT NULL,
    edad_hasta  NUMBER(3) NOT NULL,
    puntaje     NUMBER(4) NOT NULL
);

ALTER TABLE puntaje_edad ADD CONSTRAINT puntaje_edad_pk PRIMARY KEY ( edad_desde );

CREATE TABLE puntaje_estado (
    desc_estado  VARCHAR2(20) NOT NULL,
    puntaje      NUMBER(4) NOT NULL
);

ALTER TABLE puntaje_estado ADD CONSTRAINT puntaje_estado_pk PRIMARY KEY ( desc_estado );

CREATE TABLE puntaje_titulo (
    desc_titulo  VARCHAR2(15) NOT NULL,
    puntaje      NUMBER(4) NOT NULL
);

ALTER TABLE puntaje_titulo ADD CONSTRAINT puntaje_titulo_pk PRIMARY KEY ( desc_titulo );

CREATE TABLE region (
    id_region      NUMBER(2) NOT NULL,
    nombre_region  VARCHAR2(50) NOT NULL
);

ALTER TABLE region ADD CONSTRAINT region_pk PRIMARY KEY ( id_region );

CREATE TABLE titulo (
    id_titulo    NUMBER(3) NOT NULL,
    tipo_titulo  VARCHAR2(12) NOT NULL,
    nom_titulo   VARCHAR2(50) NOT NULL
);

ALTER TABLE titulo ADD CONSTRAINT titulo_pk PRIMARY KEY ( id_titulo );

CREATE TABLE vivienda (
    id_vivienda         NUMBER(10) NOT NULL,
    tipo_vivienda       VARCHAR2(15) NOT NULL,
    direccion_vivienda  VARCHAR2(50) NOT NULL,
    valor_vivienda      NUMBER(10) NOT NULL,
    id_comuna           NUMBER(3) NOT NULL,
    id_estado           NUMBER(1) NOT NULL
);

ALTER TABLE vivienda ADD CONSTRAINT vivienda_pk PRIMARY KEY ( id_vivienda );

ALTER TABLE carga_familiar
    ADD CONSTRAINT carga_postulante_fk FOREIGN KEY ( run_postulante )
        REFERENCES postulante ( run_postulante );

ALTER TABLE comuna
    ADD CONSTRAINT comuna_region_fk FOREIGN KEY ( id_region )
        REFERENCES region ( id_region );

ALTER TABLE postulacion
    ADD CONSTRAINT fk_cueaho_pos FOREIGN KEY ( nro_cuenta )
        REFERENCES cuenta_ahorro ( nro_cuenta );

ALTER TABLE cuenta_ahorro
    ADD CONSTRAINT fk_entfin_cueaho FOREIGN KEY ( id_entidad )
        REFERENCES entidad_financiera ( id_entidad );

ALTER TABLE postulacion
    ADD CONSTRAINT fk_estpost_post FOREIGN KEY ( id_estado_postulacion )
        REFERENCES estado_postulacion ( id_estado_postulacion );

ALTER TABLE vivienda
    ADD CONSTRAINT fk_estviv_viv FOREIGN KEY ( id_estado )
        REFERENCES estado_vivienda ( id_estado );

ALTER TABLE postulacion
    ADD CONSTRAINT fk_opcsub_pos FOREIGN KEY ( id_subsidio )
        REFERENCES opcion_subsidio ( id_subsidio );

ALTER TABLE postulacion
    ADD CONSTRAINT fk_postulacion_postulante FOREIGN KEY ( run_postulante )
        REFERENCES postulante ( run_postulante );

ALTER TABLE postulacion
    ADD CONSTRAINT postulacion_vivienda_fk FOREIGN KEY ( id_vivienda )
        REFERENCES vivienda ( id_vivienda );

ALTER TABLE postulante
    ADD CONSTRAINT postulante_comuna_fk FOREIGN KEY ( id_comuna )
        REFERENCES comuna ( id_comuna );

ALTER TABLE postulante
    ADD CONSTRAINT postulante_conyuge_fk FOREIGN KEY ( run_conyuge )
        REFERENCES conyuge ( run_conyuge );

ALTER TABLE postulante
    ADD CONSTRAINT postulante_escolaridad_fk FOREIGN KEY ( id_escolaridad )
        REFERENCES escolaridad ( id_escolaridad );

ALTER TABLE postulante
    ADD CONSTRAINT postulante_estado_civil_fk FOREIGN KEY ( id_estado_civil )
        REFERENCES estado_civil ( id_estado_civil );

ALTER TABLE postulante
    ADD CONSTRAINT postulante_nacionalidad_fk FOREIGN KEY ( id_nacionalidad )
        REFERENCES nacionalidad ( id_nacionalidad );

ALTER TABLE postulante
    ADD CONSTRAINT postulante_pueblo_fk FOREIGN KEY ( id_pueblo )
        REFERENCES pueblo_originario ( id_pueblo );

ALTER TABLE postulante
    ADD CONSTRAINT postulante_titulo_fk FOREIGN KEY ( id_titulo )
        REFERENCES titulo ( id_titulo );

ALTER TABLE vivienda
    ADD CONSTRAINT vivienda_comuna_fk FOREIGN KEY ( id_comuna )
        REFERENCES comuna ( id_comuna );