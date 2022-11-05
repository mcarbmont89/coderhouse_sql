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
INSERT INTO EMPRESAS (id_empresa, nombre_empresa, perfil_empresa) VALUES
(1,'Coca-Cola','Empresa manufacturadora de bebidas refrescantes'),
(2,'BBVA', 'Institución bancaria española multinacional' ),
(3,'Dragados','Constructora española con presencia en latinoamérica'),
(4,'Klarna', 'Fintech sueca que ofrece microcréditos' ),
(5,'HP','Fabricante de Hardware, equipo de cómputo y servicios tecnológicos'),
(6,'Telefónica', 'Empresa multinacional de telecomunicaciones ' ),
(7,'Sanofi','Laboratorio farmacéutico francés'),
(8,'Bimbo', 'Manufacturadora de productos alimenticios' ),
(9,'Cemex','Cementera mexicana con presencia internacional'),
(10,'Alsea', 'Grupo franquiciario del rubro de la restauración' );

-- Tabla: OFERTAS
CREATE TABLE OFERTAS (
    id_oferta int NOT NULL auto_increment,
    descripcion_puesto varchar(4000) NOT NULL,
    oferta_activa TINYINT DEFAULT 0,
    rango_salarial int NOT NULL,
    idioma int NOT NULL,
    id_empresa int,
    nombre_puesto varchar(80) NOT NULL,
    ubicacion int NULL,
    experiencia varchar(20) NOT NULL,
    CONSTRAINT PK_OFERTAS PRIMARY KEY (id_oferta)
);
INSERT INTO OFERTAS (id_oferta, descripcion_puesto, oferta_activa, rango_salarial, idioma, id_empresa, nombre_puesto, ubicacion, experiencia) VALUES
(1,'Programador con experiencia en Node.js y desarrollo de APIs',1,50,1,1,'Back-end Developer',40,'Senior'),
(2,'Graduado en Marketing, comunicaciones o afin',1,15,2,2,'Social Media Analyst',40,'Junior'),
(3,'Ingeniero civil o de caminos con experiencia en obras públicas',1,70,1,3,'Director de obras',30,'Expert'),
(4,'Experiencia en cálculo de riesgos financieros para préstamos',1,45,1,4,'Risk Manager',40,'Senior'),
(5,'Vendedor con cartera de empresas medianas',0,40,1,5,'Account Manager',40,'Senior'),
(6,'RF y planificación de radiobases con equipo Huawei y Ericcson',1,35,2,6,'Ingeniero de Radio Frecuencia',40,'Medio'),
(7,'Laboratorista con experiencia en pruebas clínicas',1,32,3,7,'Clinical Trials Manager',40,'Medio'),
(8,'Ejecutivo con amplia experiencia en la industria de manufactura',1,65,1,8,'Director de Operaciones',40,'Expert'),
(9,'Comercial con con experiencia en la industria y cartera de instituciones públicas',0,48,1,9,'Gerente Comercial Gobierno',40,'Medio'),
(10,'Con experiencia en managemente consulting y finanzas',0,60,1,10,'Director de estrategia',40,'Expert' );

-- Tabla: MODELO
CREATE TABLE MODELO (
    id_modelo int NOT NULL auto_increment,
    scoring int NOT NULL,
    id_candidato int,
    CONSTRAINT PK_MODELO PRIMARY KEY (id_modelo)
);
INSERT INTO MODELO (id_modelo, scoring, id_candidato) VALUES
(1,7,1),
(2,5,1),
(3,9,1),
(4,5,2),
(5,7,2),
(6,3,2),
(7,5,3),
(8,8,3),
(9,3,3);

-- Tabla: PERFIL_CANDIDATO
CREATE TABLE PERFIL_CANDIDATO (
    id_perfil_candidato int NOT NULL auto_increment,
    id_candidato int,
    git_hub TINYINT DEFAULT 0,
    stack_overflow TINYINT DEFAULT 0,
    vida_laboral TINYINT DEFAULT 0,
    credenciales TINYINT DEFAULT 0,
    url_git_hub varchar(50) NOT NULL,
    url_stack_overflow varchar(50) NOT NULL,
    salario int NOT NULL,
    experiencia varchar(20) NOT NULL,
    CONSTRAINT PK_PERFIL_CANDIDATO PRIMARY KEY (id_perfil_candidato)
);
INSERT INTO PERFIL_CANDIDATO (id_perfil_candidato, id_candidato, git_hub, stack_overflow, vida_laboral, credenciales, url_git_hub, url_stack_overflow, salario, experiencia) VALUES
(1,1,1,1,1,0,'/maugarcia81','/mgarcia',45,'Senior'),
(2,2,0,0,1,0,0,0,12,'Junior'),
(3,3,0,0,1,0,0,0,65,'Expert'),
(4,4,0,0,1,0,0,0,42,'Senior'),
(5,5,0,0,1,0,0,0,35,'Medio'),
(6,6,0,0,1,0,0,0,30,'Medio'),
(8,5,0,0,1,0,0,0,60,'Expert'),
(9,8,0,0,1,0,0,0,45,'Medio'),
(10,3,0,0,1,0,0,0,55,'Senior');

-- Tabla: CANDIDATOS
CREATE TABLE CANDIDATOS (
    id_candidato int NOT NULL auto_increment,
    id_perfil_candidato int,
    contacto varchar(20) NOT NULL,
	url_vida_laboral varchar(20) NOT NULL,
    url_credenciales varchar(20) NOT NULL,
    cv varchar(20) NOT NULL,
    CONSTRAINT PK_CANDIDATOS PRIMARY KEY (id_candidato)
);
INSERT INTO CANDIDATOS (id_candidato, id_perfil_candidato, contacto, url_vida_laboral, url_credenciales, cv) VALUES
(1,1,636098478,'/y8567492l','drive.com/mgarcia','in/maugar81'),
(2,2,633123423,'/n2246263m','dropbox.com/antosua','in/antonellas03'),
(3,3,637134597,'/f4578357j','icloud.com/elbapaz','in/epaz'),
(4,4,622345675,'/a3427553s','dropbox.com/ams','in/ams'),
(5,5,617436874,'/r7537368x','dropbox.com/agarcol','in/anagarcia'),
(6,6,652657834,'/e4825969w','drive/luccadvitto','in/ldvitto'),
(8,5,612345733,'/c2395653b','drive/aitorm','in/amentae'),
(9,8,680467673,'/d2983475c','drive/jruizda','in/javiruiz'),
(10,3,632276747,'/w2852852q','drive/rrojas','in/raulrojas');

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
    
-- End of file.empresas