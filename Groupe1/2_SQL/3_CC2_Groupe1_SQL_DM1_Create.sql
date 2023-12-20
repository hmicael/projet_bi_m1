-- Généré par Oracle SQL Developer Data Modeler 22.2.0.165.1149
--   à :        2023-12-20 22:54:42 CET
--   site :      Oracle Database 11g
--   type :      Oracle Database 11g



DROP TABLE dsid_liv_wrk.dm1_ods CASCADE CONSTRAINTS;

DROP TABLE dsid_liv_wrk.dm1_rejet CASCADE CONSTRAINTS;

DROP TABLE dsid_liv_wrk.dm1_staing CASCADE CONSTRAINTS;

-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE

CREATE TABLE dsid_liv_wrk.dm1_ods (
    id_ods_dm1                 NUMBER NOT NULL,
    id_preparation             NUMBER,
    date_debut_preparation     DATE,
    date_fin_preparation       DATE,
    temps_reel_preparation     LONG,
    id_moyen_paiement          NUMBER,
    code_moyen_paiement        VARCHAR2(5 CHAR),
    livelle_moyen_paiement     VARCHAR2(100 CHAR),
    id_menu                    NUMBER,
    code_menu                  VARCHAR2(5 CHAR),
    libelle_menu               VARCHAR2(100 CHAR),
    nombre_articles            NUMBER,
    temps_theo_preparation     LONG,
    id_commande                NUMBER,
    numero_commande            NUMBER,
    date_commande              DATE,
    montant_total              FLOAT,
    id_adresse_norm_restaurant NUMBER,
    numero_voie_restau         VARCHAR2(10 CHAR),
    nom_voie_restau            VARCHAR2(100 CHAR),
    code_postal_restau         VARCHAR2(5 CHAR),
    nom_ville_restau           VARCHAR2(100 CHAR),
    longitude_restau           VARCHAR2(20 CHAR),
    latitude_restau            VARCHAR2(20 CHAR),
    id_adresse_restaurant      NUMBER,
    adresse_restaurant         VARCHAR2(200 CHAR),
    id_restaurant              NUMBER,
    code_restaurant            VARCHAR2(5 CHAR),
    raison_sociale_restaurant  VARCHAR2(100),
    id_adresse_norm_client     NUMBER,
    numero_voie                VARCHAR2(10 CHAR),
    nom_voie                   VARCHAR2(100 CHAR),
    code_postal                VARCHAR2(5 CHAR),
    nom_ville                  VARCHAR2(100 CHAR),
    longitude                  VARCHAR2(20 CHAR),
    latitude                   VARCHAR2(20 CHAR),
    id_adresse_client          NUMBER,
    adresse_client             VARCHAR2(200 CHAR),
    id_client                  NUMBER,
    nom_client                 VARCHAR2(100 CHAR),
    prenom_client              VARCHAR2(100 CHAR)
);

ALTER TABLE dsid_liv_wrk.dm1_ods ADD CONSTRAINT dm1_ods_pk PRIMARY KEY ( id_ods_dm1 );

CREATE TABLE dsid_liv_wrk.dm1_rejet (
    id_rejet_dm1               NUMBER NOT NULL,
    id_preparation             NUMBER,
    date_debut_preparation     DATE,
    date_fin_preparation       DATE,
    id_moyen_paiement          NUMBER,
    code_moyen_paiement        VARCHAR2(5 CHAR),
    livelle_moyen_paiement     VARCHAR2(100 CHAR),
    id_menu                    NUMBER,
    code_menu                  VARCHAR2(5 CHAR),
    libelle_menu               VARCHAR2(100 CHAR),
    nombre_articles            NUMBER,
    temps_theo_preparation     LONG,
    id_commande                NUMBER,
    numero_commande            NUMBER,
    date_commande              DATE,
    montant_total              FLOAT,
    id_adresse_norm_restaurant NUMBER,
    numero_voie_restau         VARCHAR2(10 CHAR),
    nom_voie_restau            VARCHAR2(100 CHAR),
    code_postal_restau         VARCHAR2(5 CHAR),
    nom_ville_restau           VARCHAR2(100 CHAR),
    longitude_restau           VARCHAR2(20 CHAR),
    latitude_restau            VARCHAR2(20 CHAR),
    id_adresse_restaurant      NUMBER,
    adresse_restaurant         VARCHAR2(200 CHAR),
    id_restaurant              NUMBER,
    code_restaurant            VARCHAR2(5 CHAR),
    raison_sociale_restaurant  VARCHAR2(100),
    id_adresse_norm_client     NUMBER,
    numero_voie                VARCHAR2(10 CHAR),
    nom_voie                   VARCHAR2(100 CHAR),
    code_postal                VARCHAR2(5 CHAR),
    nom_ville                  VARCHAR2(100 CHAR),
    longitude                  VARCHAR2(20 CHAR),
    latitude                   VARCHAR2(20 CHAR),
    id_adresse_client          NUMBER,
    adresse_client             VARCHAR2(200 CHAR),
    id_client                  NUMBER,
    nom_client                 VARCHAR2(100 CHAR),
    prenom_client              VARCHAR2(100 CHAR),
    type_rejet                 VARCHAR2(100 CHAR),
    message_log                VARCHAR2(300 CHAR)
);

ALTER TABLE dsid_liv_wrk.dm1_rejet ADD CONSTRAINT dm1_rejet_pk PRIMARY KEY ( id_rejet_dm1 );

CREATE TABLE dsid_liv_wrk.dm1_staing (
    id_staging_dm1             NUMBER NOT NULL,
    id_preparation             NUMBER,
    date_debut_preparation     DATE,
    date_fin_preparation       DATE,
    id_moyen_paiement          NUMBER,
    code_moyen_paiement        VARCHAR2(5 CHAR),
    livelle_moyen_paiement     VARCHAR2(100 CHAR),
    id_menu                    NUMBER,
    code_menu                  VARCHAR2(5 CHAR),
    libelle_menu               VARCHAR2(100 CHAR),
    nombre_articles            NUMBER,
    temps_theo_preparation     LONG,
    id_commande                NUMBER,
    numero_commande            NUMBER,
    date_commande              DATE,
    montant_total              FLOAT,
    id_adresse_norm_restaurant NUMBER,
    numero_voie_restau         VARCHAR2(10 CHAR),
    nom_voie_restau            VARCHAR2(100 CHAR),
    code_postal_restau         VARCHAR2(5 CHAR),
    nom_ville_restau           VARCHAR2(100 CHAR),
    longitude_restau           VARCHAR2(20 CHAR),
    latitude_restau            VARCHAR2(20 CHAR),
    id_adresse_restaurant      NUMBER,
    adresse_restaurant         VARCHAR2(200 CHAR),
    id_restaurant              NUMBER,
    code_restaurant            VARCHAR2(5 CHAR),
    raison_sociale_restaurant  VARCHAR2(100),
    id_adresse_norm_client     NUMBER,
    numero_voie                VARCHAR2(10 CHAR),
    nom_voie                   VARCHAR2(100 CHAR),
    code_postal                VARCHAR2(5 CHAR),
    nom_ville                  VARCHAR2(100 CHAR),
    longitude                  VARCHAR2(20 CHAR),
    latitude                   VARCHAR2(20 CHAR),
    id_adresse_client          NUMBER,
    adresse_client             VARCHAR2(200 CHAR),
    id_client                  NUMBER,
    nom_client                 VARCHAR2(100 CHAR),
    prenom_client              VARCHAR2(100 CHAR)
);

ALTER TABLE dsid_liv_wrk.dm1_staing ADD CONSTRAINT dm1_staging_pk PRIMARY KEY ( id_staging_dm1 );

CREATE SEQUENCE dsid_liv_wrk.seq_id_ods_dm1 START WITH 1 NOCACHE ORDER;

CREATE SEQUENCE dsid_liv_wrk.seq_id_preparation START WITH 1 NOCACHE ORDER;

CREATE SEQUENCE dsid_liv_wrk.seq_id_moyen_paiement START WITH 1 NOCACHE ORDER;

CREATE SEQUENCE dsid_liv_wrk.seq_id_menu START WITH 1 NOCACHE ORDER;

CREATE SEQUENCE dsid_liv_wrk.seq_id_commande START WITH 1 NOCACHE ORDER;

CREATE SEQUENCE dsid_liv_wrk.seq_id_adresse_norm_restaurant START WITH 1 NOCACHE ORDER;

CREATE SEQUENCE dsid_liv_wrk.seq_id_adresse_restaurant START WITH 1 NOCACHE ORDER;

CREATE SEQUENCE dsid_liv_wrk.seq_id_restaurant START WITH 1 NOCACHE ORDER;

CREATE SEQUENCE dsid_liv_wrk.seq_id_adresse_norm_client START WITH 1 NOCACHE ORDER;

CREATE SEQUENCE dsid_liv_wrk.seq_id_adresse_client START WITH 1 NOCACHE ORDER;

CREATE SEQUENCE dsid_liv_wrk.seq_id_client START WITH 1 NOCACHE ORDER;

CREATE SEQUENCE dsid_liv_wrk.seq_id_rejet_dm1 START WITH 1 NOCACHE ORDER;

CREATE SEQUENCE dsid_liv_wrk.seq_id_staging_dm1 START WITH 1 NOCACHE ORDER;



-- Rapport récapitulatif d'Oracle SQL Developer Data Modeler : 
-- 
-- CREATE TABLE                             3
-- CREATE INDEX                             0
-- ALTER TABLE                              3
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                         13
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
