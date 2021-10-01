--CREACION DE USUARIO ADMINISTRADOR--

-- USUARIO ADMIN
CREATE USER "ADMINISTRADOR" IDENTIFIED BY "AdminProyecto2020"  
DEFAULT TABLESPACE "USERS"
TEMPORARY TABLESPACE "TEMP";
ALTER USER "ADMINISTRADOR" QUOTA UNLIMITED ON "USERS";
GRANT "CONNECT" TO "ADMINISTRADOR" ;
GRANT "RESOURCE" TO "ADMINISTRADOR" ;
GRANT CREATE ROLE TO "ADMINISTRADOR" ;
GRANT CREATE INDEXTYPE TO "ADMINISTRADOR" ;
GRANT CREATE PUBLIC SYNONYM TO "ADMINISTRADOR" ;
GRANT CREATE SYNONYM TO "ADMINISTRADOR" ;
GRANT CREATE SEQUENCE TO "ADMINISTRADOR";
GRANT CREATE ANY VIEW TO "ADMINISTRADOR" ;
GRANT CREATE ANY MATERIALIZED VIEW TO "ADMINISTRADOR" ;
GRANT CREATE ANY TRIGGER TO "ADMINISTRADOR" ;
GRANT CREATE ANY PROCEDURE TO "ADMINISTRADOR" ;
GRANT CREATE USER TO "ADMINISTRADOR" ;

--CREACION SINONIMOS--
CREATE PUBLIC SYNONYM SYN_CARGA_FAMILIAR FOR ADMINISTRADOR.CARGA_FAMILIAR;
CREATE PUBLIC SYNONYM SYN_COMUNA FOR ADMINISTRADOR.COMUNA;
CREATE PUBLIC SYNONYM SYN_CONYUGUE FOR ADMINISTRADOR.CONYUGUE;
CREATE PUBLIC SYNONYM SYN_CUENTA_AHORRO FOR ADMINISTRADOR.CUENTA_AHORRO;
CREATE PUBLIC SYNONYM SYN_ENTIDAD_FINANCIERA FOR ADMINISTRADOR.ENTIDAD_FINANCIERA;
CREATE PUBLIC SYNONYM SYN_ESCOLARIDAD FOR ADMINISTRADOR.ESCOLARIDAD;
CREATE PUBLIC SYNONYM SYN_ESTADO_CIVIL FOR ADMINISTRADOR.ESTADO_CIVIL;
CREATE PUBLIC SYNONYM SYN_ESTADO_POSTULACION FOR ADMINISTRADOR.ESTADO_POSTULACION;
CREATE PUBLIC SYNONYM SYN_ESTADO_VIVIENDA FOR ADMINISTRADOR.ESTADO_VIVIENDA;
CREATE PUBLIC SYNONYM SYN_ESTADO_NACIONALIDAD FOR ADMINISTRADOR.ESTADO_NACIONALIDAD;
CREATE PUBLIC SYNONYM SYN_OPCION_SUBSIDIO FOR ADMINISTRADOR.OPCION_SUBSIDIO;
CREATE PUBLIC SYNONYM SYN_POSTULANTE FOR ADMINISTRADOR.POSTULANTE;
CREATE PUBLIC SYNONYM SYN_POSTULACION FOR ADMINISTRADOR.POSTULACION;
CREATE PUBLIC SYNONYM SYN_PUEBLO_ORIGINARIO FOR ADMINISTRADOR.PUEBLO_ORIGINARIO;
CREATE PUBLIC SYNONYM SYN_PUNTAJE_AHORRO FOR ADMINISTRADOR.PUNTAJE_AHORRO;
CREATE PUBLIC SYNONYM SYN_PUNTAJE_CARGA FOR ADMINISTRADOR.PUNTAJE_CARGA;
CREATE PUBLIC SYNONYM SYN_PUNTAJE_EDAD FOR ADMINISTRADOR.PUNTAJE_EDAD;
CREATE PUBLIC SYNONYM SYN_PUNTAJE_ESTADO FOR ADMINISTRADOR.PUNTAJE_ESTADO;
CREATE PUBLIC SYNONYM SYN_PUNTAJE_TITULO FOR ADMINISTRADOR.PUNTAJE_TITULO;
CREATE PUBLIC SYNONYM SYN_REGION FOR ADMINISTRADOR.REGION;
CREATE PUBLIC SYNONYM SYN_TITULO FOR ADMINISTRADOR.TITULO;
CREATE PUBLIC SYNONYM SYN_VIVIENDA FOR ADMINISTRADOR.VIVIENDA;

--CREACIÓN DE ROLES--

--ROL DESARROLLADOR 
CREATE ROLE ROL_DESARROLLADOR;
GRANT SELECT ON SYN_REGION TO ROL_DESARROLLADOR;
GRANT SELECT ON SYN_OPCION_SUBSIDIO TO ROL_DESARROLLADOR;
GRANT SELECT ON SYN_POSTULACION TO ROL_DESARROLLADOR;
GRANT SELECT ON SYN_POSTULANTE TO ROL_DESARROLLADOR;
GRANT SELECT ON SYN_COMUNA TO ROL_DESARROLLADOR;
GRANT SELECT ON SYN_ESTADO_CIVIL TO ROL_DESARROLLADOR;
GRANT SELECT ON SYN_PUEBLO_ORIGINARIO TO ROL_DESARROLLADOR;
GRANT SELECT ON SYN_CUENTA_AHORRO TO ROL_DESARROLLADOR;
GRANT SELECT ON SYN_CARGA_FAMILIAR TO ROL_DESARROLLADOR;
GRANT SELECT ON SYN_TITULO TO ROL_DESARROLLADOR;
GRANT SELECT ON SYN_PUNTAJE_AHORRO TO ROL_DESARROLLADOR;
GRANT SELECT ON SYN_PUNTAJE_CARGA TO ROL_DESARROLLADOR;
GRANT SELECT ON SYN_PUNTAJE_EDAD TO ROL_DESARROLLADOR;
GRANT SELECT ON SYN_PUNTAJE_ESTADO TO ROL_DESARROLLADOR;
GRANT SELECT ON SYN_PUNTAJE_TITULO TO ROL_DESARROLLADOR;

--ROL CONSULTOR
GRANT SELECT ON SYN_REGION TO ROL_DESARROLLADOR;
GRANT SELECT ON SYN_OPCION_SUBSIDIO TO ROL_DESARROLLADOR;
GRANT SELECT ON SYN_POSTULACION TO ROL_DESARROLLADOR;
GRANT SELECT ON SYN_POSTULANTE TO ROL_DESARROLLADOR;
GRANT SELECT ON SYN_COMUNA TO ROL_DESARROLLADOR;
GRANT SELECT ON SYN_ESTADO_CIVIL TO ROL_DESARROLLADOR;
GRANT SELECT ON SYN_PUEBLO_ORIGINARIO TO ROL_DESARROLLADOR;
GRANT SELECT ON SYN_CUENTA_AHORRO TO ROL_DESARROLLADOR;
GRANT SELECT ON SYN_CARGA_FAMILIAR TO ROL_DESARROLLADOR;
GRANT SELECT ON SYN_TITULO TO ROL_DESARROLLADOR;
GRANT SELECT ON SYN_PUNTAJE_AHORRO TO ROL_DESARROLLADOR;
GRANT SELECT ON SYN_PUNTAJE_CARGA TO ROL_DESARROLLADOR;
GRANT SELECT ON SYN_PUNTAJE_EDAD TO ROL_DESARROLLADOR;
GRANT SELECT ON SYN_PUNTAJE_ESTADO TO ROL_DESARROLLADOR;
GRANT SELECT ON SYN_PUNTAJE_TITULO TO ROL_DESARROLLADOR;

--USUARIO DESARROLLADOR
CREATE USER "DESARROLLADOR1" IDENTIFIED BY "PassDeveloper1"  
DEFAULT TABLESPACE "USERS"
TEMPORARY TABLESPACE "TEMP";
ALTER USER "DESARROLLADOR1" QUOTA UNLIMITED ON "USERS";
GRANT ROL_DESARROLLADOR TO DESARROLLADOR1;
GRANT CREATE ANY VIEW TO "DESARROLLADOR1" ;
GRANT CREATE ANY MATERIALIZED VIEW TO "DESARROLLADOR1" ;
GRANT CREATE ANY TRIGGER TO "DESARROLLADOR1" ;
GRANT CREATE ANY PROCEDURE TO "DESARROLLADOR1" ;
GRANT CREATE SESSION TO "DESARROLLADOR1";
ALTER USER DESARROLLADOR1 DEFAULT ROLE "ROL_DESARROLLADOR";

CREATE USER "DESARROLLADOR2" IDENTIFIED BY "PassDeveloper2"  
DEFAULT TABLESPACE "USERS"
TEMPORARY TABLESPACE "TEMP";
ALTER USER "DESARROLLADOR2" QUOTA UNLIMITED ON "USERS";
GRANT ROL_DESARROLLADOR TO DESARROLLADOR2;
GRANT CREATE SEQUENCE TO "DESARROLLADOR2";
GRANT CREATE ANY VIEW TO "DESARROLLADOR2" ;
GRANT CREATE ANY MATERIALIZED VIEW TO "DESARROLLADOR2" ;
GRANT CREATE ANY TRIGGER TO "DESARROLLADOR2" ;
GRANT CREATE ANY PROCEDURE TO "DESARROLLADOR2" ;
GRANT CREATE SESSION TO "DESARROLLADOR2";
ALTER USER DESARROLLADOR1 DEFAULT ROLE "ROL_DESARROLLADOR";

--USUARIO CONSULTOR
CREATE USER "CONSULTOR1" IDENTIFIED BY "PassConsultant1"  
DEFAULT TABLESPACE "USERS"
TEMPORARY TABLESPACE "TEMP";
ALTER USER "CONSULTOR1" QUOTA UNLIMITED ON "USERS";
GRANT ROL_CONSULTOR TO CONSULTOR1;
GRANT CREATE SESSION TO "CONSULTOR1";
ALTER USER "CONSULTOR1" DEFAULT ROLE "ROL_CONSULTOR";

CREATE USER "CONSULTOR2" IDENTIFIED BY "PassConsultant2"  
DEFAULT TABLESPACE "USERS"
TEMPORARY TABLESPACE "TEMP";
ALTER USER "CONSULTOR2" QUOTA UNLIMITED ON "USERS";
GRANT ROL_CONSULTOR TO CONSULTOR2;
GRANT CREATE SESSION TO "CONSULTOR2";
ALTER USER "CONSULTOR2" DEFAULT ROLE "ROL_CONSULTOR";

CREATE USER "CONSULTOR3" IDENTIFIED BY "PassConsultant3"  
DEFAULT TABLESPACE "USERS"
TEMPORARY TABLESPACE "TEMP";
ALTER USER "CONSULTOR3" QUOTA UNLIMITED ON "USERS";
GRANT ROL_CONSULTOR TO CONSULTOR3;
GRANT CREATE SESSION TO "CONSULTOR3";
ALTER USER "CONSULTOR3" DEFAULT ROLE "ROL_CONSULTOR";

--ASIGNADOR ROL
GRANT ROL_DESARROLLADOR TO DESARROLLADOR1,DESARROLLADOR2;
ALTER USER DESARROLLADOR1 DEFAULT ROLE "ROL_DESARROLLADOR";
ALTER USER DESARROLLADOR2 DEFAULT ROLE "ROL_DESARROLLADOR";


GRANT ROL_CONSULTOR TO CONSULTOR1,CONSULTOR2,CONSULTOR3;
ALTER USER CONSULTOR1 DEFAULT ROLE "ROL_CONSULTOR";
ALTER USER CONSULTOR2 DEFAULT ROLE "ROL_CONSULTOR";
ALTER USER CONSULTOR3 DEFAULT ROLE "ROL_CONSULTOR";
