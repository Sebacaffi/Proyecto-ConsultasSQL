--COMPLETO
INSERT INTO ESTADO_CIVIL VALUES(SEQ_ESTADO_CIVIL.NEXTVAL,'Soltero');
INSERT INTO ESTADO_CIVIL VALUES(SEQ_ESTADO_CIVIL.NEXTVAL,'Casado');
INSERT INTO ESTADO_CIVIL VALUES(SEQ_ESTADO_CIVIL.NEXTVAL,'Conviviente civil');
INSERT INTO ESTADO_CIVIL VALUES(SEQ_ESTADO_CIVIL.NEXTVAL,'Divorciado');
INSERT INTO ESTADO_CIVIL VALUES(SEQ_ESTADO_CIVIL.NEXTVAL,'Viudo');

--COMPLETO
INSERT INTO REGION VALUES(SEQ_REGION.NEXTVAL, 'de Tarapac�');
INSERT INTO REGION VALUES(SEQ_REGION.NEXTVAL, 'de Antofagasta');
INSERT INTO REGION VALUES(SEQ_REGION.NEXTVAL, 'de Atacama');
INSERT INTO REGION VALUES(SEQ_REGION.NEXTVAL, 'de Coquimbo');
INSERT INTO REGION VALUES(SEQ_REGION.NEXTVAL, 'de Valpara�so');
INSERT INTO REGION VALUES(SEQ_REGION.NEXTVAL, 'del Libertador Gral. Bernardo O''Higgins');
INSERT INTO REGION VALUES(SEQ_REGION.NEXTVAL, 'del Maule');
INSERT INTO REGION VALUES(SEQ_REGION.NEXTVAL, 'del Biob�o');
INSERT INTO REGION VALUES(SEQ_REGION.NEXTVAL, 'de la Araucan�a');
INSERT INTO REGION VALUES(SEQ_REGION.NEXTVAL, 'de Los Lagos');
INSERT INTO REGION VALUES(SEQ_REGION.NEXTVAL, 'de Ays�n del Gral. Carlos Ib��ez del Campo');
INSERT INTO REGION VALUES(SEQ_REGION.NEXTVAL, 'de Magallanes y de la Ant�rtica Chilena');
INSERT INTO REGION VALUES(SEQ_REGION.NEXTVAL, 'Metropolitana de Santiago');
INSERT INTO REGION VALUES(SEQ_REGION.NEXTVAL, 'de Los R�os');
INSERT INTO REGION VALUES(SEQ_REGION.NEXTVAL, 'de Arica y Parinacota');
INSERT INTO REGION VALUES(SEQ_REGION.NEXTVAL, 'de �uble');

--COMPLETO
INSERT INTO ENTIDAD_FINANCIERA VALUES(SEQ_ENTIDAD.NEXTVAL, 'Banco Estado');
INSERT INTO ENTIDAD_FINANCIERA VALUES(SEQ_ENTIDAD.NEXTVAL, 'Banco de Chile');
INSERT INTO ENTIDAD_FINANCIERA VALUES(SEQ_ENTIDAD.NEXTVAL, 'Banco Santander');
INSERT INTO ENTIDAD_FINANCIERA VALUES(SEQ_ENTIDAD.NEXTVAL, 'Scotiabank');
INSERT INTO ENTIDAD_FINANCIERA VALUES(SEQ_ENTIDAD.NEXTVAL, 'Banco BCI');

--COMPLETO
INSERT INTO OPCION_SUBSIDIO VALUES(SEQ_SUBSIDIO.NEXTVAL, 'TITULO I TRAMO 1', 2000, 500, 280);
INSERT INTO OPCION_SUBSIDIO VALUES(SEQ_SUBSIDIO.NEXTVAL, 'TITULO I TRAMO 2', 2500, 350, 350);
INSERT INTO OPCION_SUBSIDIO VALUES(SEQ_SUBSIDIO.NEXTVAL, 'TITULO II', 3500, 250, 400);

--COMPLETO
INSERT INTO ESTADO_VIVIENDA VALUES(SEQ_ESTADO_VIVIENDA.NEXTVAL, 'S');
INSERT INTO ESTADO_VIVIENDA VALUES(SEQ_ESTADO_VIVIENDA.NEXTVAL, 'N');

--COMPLETO
INSERT INTO NACIONALIDAD VALUES(SEQ_NACIONALIDAD.NEXTVAL, 'Chilena');
INSERT INTO NACIONALIDAD VALUES(SEQ_NACIONALIDAD.NEXTVAL, 'Peruana');
INSERT INTO NACIONALIDAD VALUES(SEQ_NACIONALIDAD.NEXTVAL, 'Colombiana');
INSERT INTO NACIONALIDAD VALUES(SEQ_NACIONALIDAD.NEXTVAL, 'Ecuatoriana');
INSERT INTO NACIONALIDAD VALUES(SEQ_NACIONALIDAD.NEXTVAL, 'Mexicana');

--COMPLETO
INSERT INTO TITULO VALUES(SEQ_TITULO.NEXTVAL, 'Profesional', 'Ingeniero en Inform�tica');
INSERT INTO TITULO VALUES(SEQ_TITULO.NEXTVAL, 'Técnico', 'Param�dico');
INSERT INTO TITULO VALUES(SEQ_TITULO.NEXTVAL, 'Profesional', 'Contador Auditor');
INSERT INTO TITULO VALUES(SEQ_TITULO.NEXTVAL, 'Técnico', 'Dibujo T�cnico');
INSERT INTO TITULO VALUES(SEQ_TITULO.NEXTVAL, 'Profesional', 'Veterinario');

--COMPLETO
INSERT INTO ESTADO_POSTULACION VALUES (SEQ_ESTADO_POSTULACION.NEXTVAL, 'Beneficiado por el Subsidio');
INSERT INTO ESTADO_POSTULACION VALUES (SEQ_ESTADO_POSTULACION.NEXTVAL, 'En espera por el Subsidio');
INSERT INTO ESTADO_POSTULACION VALUES (SEQ_ESTADO_POSTULACION.NEXTVAL, 'No beneficiado por el Subsidio');

--COMPLETO
INSERT INTO PUEBLO_ORIGINARIO VALUES(SEQ_PUEBLO.NEXTVAL, 'Rapa Nui');
INSERT INTO PUEBLO_ORIGINARIO VALUES(SEQ_PUEBLO.NEXTVAL, 'Mapuche');
INSERT INTO PUEBLO_ORIGINARIO VALUES(SEQ_PUEBLO.NEXTVAL, 'Quechua');
INSERT INTO PUEBLO_ORIGINARIO VALUES(SEQ_PUEBLO.NEXTVAL, 'Aymara');
INSERT INTO PUEBLO_ORIGINARIO VALUES(SEQ_PUEBLO.NEXTVAL, 'Diaguita');

--COMPLETO
INSERT INTO ESCOLARIDAD VALUES(SEQ_ESCOLARIDAD.NEXTVAL, '4M');
INSERT INTO ESCOLARIDAD VALUES(SEQ_ESCOLARIDAD.NEXTVAL, '3M');
INSERT INTO ESCOLARIDAD VALUES(SEQ_ESCOLARIDAD.NEXTVAL, '2M');
INSERT INTO ESCOLARIDAD VALUES(SEQ_ESCOLARIDAD.NEXTVAL, '1M');
INSERT INTO ESCOLARIDAD VALUES(SEQ_ESCOLARIDAD.NEXTVAL, '8B');
INSERT INTO ESCOLARIDAD VALUES(SEQ_ESCOLARIDAD.NEXTVAL, '7B');
INSERT INTO ESCOLARIDAD VALUES(SEQ_ESCOLARIDAD.NEXTVAL, '6B');
INSERT INTO ESCOLARIDAD VALUES(SEQ_ESCOLARIDAD.NEXTVAL, '5B');
INSERT INTO ESCOLARIDAD VALUES(SEQ_ESCOLARIDAD.NEXTVAL, '4B');
INSERT INTO ESCOLARIDAD VALUES(SEQ_ESCOLARIDAD.NEXTVAL, '3B');
INSERT INTO ESCOLARIDAD VALUES(SEQ_ESCOLARIDAD.NEXTVAL, '2B');
INSERT INTO ESCOLARIDAD VALUES(SEQ_ESCOLARIDAD.NEXTVAL, '1B');

--COMPLETO
INSERT INTO CONYUGE VALUES(18345765, 'K', '11-12-1991', 'GINA', 'PASCUALA', 'GAGGERO', 'SCHIVO');
INSERT INTO CONYUGE VALUES(18564111, '2', '17-05-1993', 'SEBASTIAN', 'ALEJANDRO', 'CAFFI', 'PEREIRA');
INSERT INTO CONYUGE VALUES(16564871, '9', '01-11-1984', 'ALAIN', 'CHRISTIAN', 'MALTRAIN', 'VALDIVIESO');
INSERT INTO CONYUGE VALUES(17546312, '5', '26-07-1976', 'FELIPE', 'ARNALDO', 'BALTRAMI', 'CUEVAS');
INSERT INTO CONYUGE VALUES(12643511, '8', '11-08-1915', 'HERNAN', 'MICHAEL', 'PEREZ', 'JACKSON');
    
--COMPLETO
INSERT INTO COMUNA VALUES (SEQ_COMUNA.NEXTVAL,'Conc�n', 5);
INSERT INTO COMUNA VALUES (SEQ_COMUNA.NEXTVAL,'Vi�a del Mar', 5);
INSERT INTO COMUNA VALUES (SEQ_COMUNA.NEXTVAL,'Alto del Carmen', 3);
INSERT INTO COMUNA VALUES (SEQ_COMUNA.NEXTVAL,'Aysén', 11);
INSERT INTO COMUNA VALUES (SEQ_COMUNA.NEXTVAL,'Calama', 2);

--COMPLETO
INSERT INTO PUNTAJE_EDAD VALUES (18, 29, 200);
INSERT INTO PUNTAJE_EDAD VALUES (30, 40, 150);
INSERT INTO PUNTAJE_EDAD VALUES (41, 120, 100);

--COMPLETO
INSERT INTO PUNTAJE_CARGA VALUES (0, 1, 50);
INSERT INTO PUNTAJE_CARGA VALUES (2, 4, 100);
INSERT INTO PUNTAJE_CARGA VALUES (5, 99, 200);

--COMPLETO
INSERT INTO PUNTAJE_ESTADO VALUES ('Viudo', 20);
INSERT INTO PUNTAJE_ESTADO VALUES ('Divorciado', 40);
INSERT INTO PUNTAJE_ESTADO VALUES ('Soltero', 60);
INSERT INTO PUNTAJE_ESTADO VALUES ('Conviviente civil', 80);
INSERT INTO PUNTAJE_ESTADO VALUES ('Casado', 100);

--COMPLETO
INSERT INTO PUNTAJE_AHORRO VALUES (8000000, 8999999, 200);
INSERT INTO PUNTAJE_AHORRO VALUES (9000000, 10000000, 400);
INSERT INTO PUNTAJE_AHORRO VALUES (10000001, 100000000, 500);

--COMPLETO
INSERT INTO PUNTAJE_TITULO VALUES ('Profesional', 200);
INSERT INTO PUNTAJE_TITULO VALUES ('Técnico', 100);

--COMPLETO
INSERT INTO CUENTA_AHORRO VALUES (10506090,15156489,'21-01-2000',15000000,4);        
INSERT INTO CUENTA_AHORRO VALUES (11000090,16213996,'04-02-2011',17000000,1);
INSERT INTO CUENTA_AHORRO VALUES (17050090,15431612,'17-06-2010',12000000,3);
INSERT INTO CUENTA_AHORRO VALUES (13080000,13765123,'01-05-2007',8000000,5);
INSERT INTO CUENTA_AHORRO VALUES (10405600,15789642,'19-08-2012',18000000,2);

--COMPLETO
INSERT INTO VIVIENDA VALUES (SEQ_VIVIENDA.NEXTVAL,'Casa','Jardin 521',40000000,2,1);
INSERT INTO VIVIENDA VALUES (SEQ_VIVIENDA.NEXTVAL,'Casa','Paraiso 11',50000000,3,1);
INSERT INTO VIVIENDA VALUES (SEQ_VIVIENDA.NEXTVAL,'Departamento','Nueva Aurora 621',35000000,2,1);
INSERT INTO VIVIENDA VALUES (SEQ_VIVIENDA.NEXTVAL,'Departamento','Gregorio Mara�on 623',60000000,2,1);
INSERT INTO VIVIENDA VALUES (SEQ_VIVIENDA.NEXTVAL,'Casa','Rosas 1515',45000000,4,2);

--COMPLETO
INSERT INTO POSTULANTE VALUES (15156489,'5','Huaqui','Piñon','Huenmeneo','Trutruca','21-05-1979','Av. Altos de vi�a 521','ian@gmail.com',985674616,NULL,1250000,2,1,1,18345765,2,1,1);
INSERT INTO POSTULANTE VALUES (16213996,'k','Cinthia','Micaela','Contreras','Capel','01-10-1981','Av. Valparaiso 591','cmcc@gmail.com',946168567,NULL,1900000,1,2,2,18564111,NULL,2,1);
INSERT INTO POSTULANTE VALUES (15431612,'7','Rene','Pedro','Smith','Gomez','13-03-1980','Teniente Pinto 462','rsmith@gmail.com',987654631,NULL,1450000,4,3,4,16564871,NULL,3,1);
INSERT INTO POSTULANTE VALUES (13765123,'1','Manuel','Fernando','Silva','Perez','15-08-1970','Av. Espa�a 675','msilva@gmail.com',967453123,NULL,1600000,5,1,3,17546312,NULL,4,1);
INSERT INTO POSTULANTE VALUES (15789642,'5','Vaitiare','Ulaula','Tepito','Teao','05-01-1989','Aguas Quéchua 3725','rbravo@gmail.com',956417381,NULL,1210000,4,1,5,12643511,1 ,5,1);

--COMPLETO
INSERT INTO POSTULACION VALUES (SEQ_POSTULACION.NEXTVAL,'29-11-2020',15156489,10506090,3, 1, 2);
INSERT INTO POSTULACION VALUES (SEQ_POSTULACION.NEXTVAL,'20-10-2020',16213996,11000090,3, 2, 3);
INSERT INTO POSTULACION VALUES (SEQ_POSTULACION.NEXTVAL,'13-03-2019',15431612,17050090,1, 3, 5);
INSERT INTO POSTULACION VALUES (SEQ_POSTULACION.NEXTVAL,'07-09-2019',13765123,13080000,1, 1, 4);
INSERT INTO POSTULACION VALUES (SEQ_POSTULACION.NEXTVAL,'20-12-2018',15789642,10405600,2, 2, 1);

--COMPLETO
INSERT INTO CARGA_FAMILIAR VALUES (17177514,'K','Andy','Tomas','Smallpeice','Tolley','Hijo', 15156489);
INSERT INTO CARGA_FAMILIAR VALUES (17394918,'1','Eduardo','Javier','Contreras','Contreras','Hijo', 16213996);
INSERT INTO CARGA_FAMILIAR VALUES (20377514,'5','Anabella','Yara','Smith','Glee','Hija',15431612);
INSERT INTO CARGA_FAMILIAR VALUES (20577520,'0','Samira','Ana','Spears','Toms','Hija', 13765123);
INSERT INTO CARGA_FAMILIAR VALUES (19580614,'4','Mauricio','Bernardo','Perez','Ramirez','Hijo',15789642);