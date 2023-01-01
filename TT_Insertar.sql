-- Coder House Maria Carbajal

/*CREATE SCHEMA `talento_tech` ;*/

/*USE `talento_tech`;*/

/*---------------------------Insertar Datos----------------------------*/

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

INSERT INTO CANDIDATOS (id_candidato, contacto, url_vida_laboral, url_credenciales, cv) VALUES
(1,636098478,'/y8567492l','drive.com/mgarcia','in/maugar81'),
(2,633123423,'/n2246263m','dropbox.com/antosua','in/antonellas03'),
(3,637134597,'/f4578357j','icloud.com/elbapaz','in/epaz'),
(4,622345675,'/a3427553s','dropbox.com/ams','in/ams'),
(5,617436874,'/r7537368x','dropbox.com/agarcol','in/anagarcia'),
(6,652657834,'/e4825969w','drive/luccadvitto','in/ldvitto'),
(8,612345733,'/c2395653b','drive/aitorm','in/amentae'),
(9,680467673,'/d2983475c','drive/jruizda','in/javiruiz'),
(10,632276747,'/w2852852q','drive/rrojas','in/raulrojas');

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

