-- Coder House Maria Carbajal

CREATE SCHEMA `talento_tech` ;

USE `talento_tech`;
/*---------------TABLAS-----------------*/


-- Tabla: EMPRESAS
CREATE TABLE EMPRESAS (
    id_empresa int NOT NULL auto_increment,
    nombre_empresa varchar (40) NOT NULL,
    perfil_empresa varchar(200) NOT NULL,
    CONSTRAINT PK_EMPRESAS PRIMARY KEY (id_empresa)
);

-- Tabla: OFERTAS
CREATE TABLE OFERTAS (
    id_oferta int NOT NULL auto_increment,
    descripcion_puesto varchar(4000) NOT NULL,
    oferta_activa bool NOT NULL,
    rango_salarial decimal(6,2) NOT NULL,
    idioma int NOT NULL,
    nombre_puesto varchar(80) NOT NULL,
    ubicacion int NULL,
    experiencia varchar(20) NOT NULL,
    CONSTRAINT PK_OFERTAS PRIMARY KEY (id_oferta)
);

-- Tabla: MODELO
CREATE TABLE MODELO (
    id_modelo int NOT NULL auto_increment,
    scoring int NOT NULL,
    CONSTRAINT PK_MODELO PRIMARY KEY (id_modelo)
);

-- Tabla: PERFIL_CANDIDATO
CREATE TABLE PERFIL_CANDIDATO (
    id_perfil_candidato int NOT NULL auto_increment,
    git_hub bool NOT NULL,
    stack_overflow bool NOT NULL,
    vida_laboral bool NOT NULL,
    credenciales bool NOT NULL,
    url_git_hub varchar(50) NOT NULL,
    url_stack_overflow varchar(50) NOT NULL,
    salario decimal(6,2) NOT NULL,
    experiencia varchar(20) NOT NULL,
    CONSTRAINT PK_PERFIL_CANDIDATO PRIMARY KEY (id_perfil_candidato)
);


-- Tabla: CANDIDATOS
CREATE TABLE CANDIDATOS (
    id_candidato int NOT NULL auto_increment,
    contacto varchar(20) NOT NULL,
	url_vida_laboral varchar(20) NOT NULL,
    url_credenciales varchar(20) NOT NULL,
    cv varchar(20) NOT NULL,
    CONSTRAINT PK_CANDIDATOS PRIMARY KEY (id_candidato)
);



/*---------------------------CLAVES FORÁNEAS----------------------------*/


-- Referencia: FK_OFERTAS (table: OFERTAS)
ALTER TABLE OFERTAS ADD CONSTRAINT FK_OFERTAS_EMPRESAS FOREIGN KEY FK_OFERTAS_EMPRESAS (id_empresa)
    REFERENCES EMPRESAS (id_empresa);

-- Referencia: FK_MODELO (table: MODELO)
ALTER TABLE MODELO ADD CONSTRAINT FK_MODELO_CANDIDATOS FOREIGN KEY FK_MODELO_CANDIDATOS (id_candidato)
    REFERENCES CANDIDATOS (id_candidato);

-- Referencia: FK_CANDIDATOS (table: CANDIDATOS)
ALTER TABLE CANDIDATOS ADD CONSTRAINT FK_CANDIDATOS_PERFIL_CANDIDATO FOREIGN KEY FK_CANDIDATOS_PERFIL_CANDIDATO (id_perfil_candidato)
    REFERENCES PERFIL_CANDIDATO (id_perfil_candidato);
    
-- Referencia: FK_PERFIL_CANDIDATO (table: PERFIL_CANDIDATOS)
ALTER TABLE PERFIL_CANDIDATO ADD CONSTRAINT FK_PERFIL_CANDIDATO_CANDIDATOS FOREIGN KEY FK_PERFIL_CANDIDATO_CANDIDATOS (id_candidato)
    REFERENCES CANDIDATOS (id_candidato);
    
-- End of file.