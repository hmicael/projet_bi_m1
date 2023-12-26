-- Généré par Oracle SQL Developer Data Modeler 22.2.0.165.1149
--   à :        2023-12-26 23:28:54 CET
--   site :      Oracle Database 11g
--   type :      Oracle Database 11g


DROP TABLE dsid_liv_wrk.dm1_staging CASCADE;

DROP TABLE dsid_liv_wrk.dm1_ods CASCADE;

DROP TABLE dsid_liv_wrk.dm1_rejet CASCADE;

DROP SEQUENCE dsid_liv_wrk.seq_id_ods_dm1;

DROP SEQUENCE dsid_liv_wrk.seq_id_rejet_dm1;

DROP SEQUENCE dsid_liv_wrk.seq_id_staging_dm1;

-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE

CREATE TABLE dsid_liv_wrk.dm1_ods (
    id_ods_dm1                 INTEGER NOT NULL,
    id_preparation             INTEGER,
    date_debut_preparation     DATE,
    date_fin_preparation       DATE,
    temps_reel_preparation     TEXT,
    id_moyen_paiement          INTEGER,
    code_moyen_paiement        CHARACTER VARYING(5),
    livelle_moyen_paiement     CHARACTER VARYING(100),
    id_menu                    INTEGER,
    code_menu                  CHARACTER VARYING(5),
    libelle_menu               CHARACTER VARYING(100),
    nombre_articles            INTEGER,
    temps_theo_preparation     TEXT,
    id_commande                INTEGER,
    numero_commande            INTEGER,
    date_commande              DATE,
    montant_total              FLOAT,
    id_adresse_norm_restaurant INTEGER,
    numero_voie_restau         CHARACTER VARYING(10),
    nom_voie_restau            CHARACTER VARYING(100),
    code_postal_restau         CHARACTER VARYING(5),
    nom_ville_restau           CHARACTER VARYING(100),
    longitude_restau           CHARACTER VARYING(20),
    latitude_restau            CHARACTER VARYING(20),
    id_adresse_restaurant      INTEGER,
    adresse_restaurant         CHARACTER VARYING(200),
    id_restaurant              INTEGER,
    code_restaurant            CHARACTER VARYING(5),
    raison_sociale_restaurant  CHARACTER VARYING(100),
    id_adresse_norm_client     INTEGER,
    numero_voie                CHARACTER VARYING(10),
    nom_voie                   CHARACTER VARYING(100),
    code_postal                CHARACTER VARYING(5),
    nom_ville                  CHARACTER VARYING(100),
    longitude                  CHARACTER VARYING(20),
    latitude                   CHARACTER VARYING(20),
    id_adresse_client          INTEGER,
    adresse_client             CHARACTER VARYING(200),
    id_client                  INTEGER,
    nom_client                 CHARACTER VARYING(100),
    prenom_client              CHARACTER VARYING(100)
);

ALTER TABLE dsid_liv_wrk.dm1_ods ADD CONSTRAINT dm1_ods_pk PRIMARY KEY ( id_ods_dm1 );

CREATE TABLE dsid_liv_wrk.dm1_rejet (
    id_rejet_dm1               INTEGER NOT NULL,
    id_preparation             INTEGER,
    date_debut_preparation     DATE,
    date_fin_preparation       DATE,
    id_moyen_paiement          INTEGER,
    code_moyen_paiement        CHARACTER VARYING(5),
    livelle_moyen_paiement     CHARACTER VARYING(100),
    id_menu                    INTEGER,
    code_menu                  CHARACTER VARYING(5),
    libelle_menu               CHARACTER VARYING(100),
    nombre_articles            INTEGER,
    temps_theo_preparation     TEXT,
    id_commande                INTEGER,
    numero_commande            INTEGER,
    date_commande              DATE,
    montant_total              FLOAT,
    id_adresse_norm_restaurant INTEGER,
    numero_voie_restau         CHARACTER VARYING(10),
    nom_voie_restau            CHARACTER VARYING(100),
    code_postal_restau         CHARACTER VARYING(5),
    nom_ville_restau           CHARACTER VARYING(100),
    longitude_restau           CHARACTER VARYING(20),
    latitude_restau            CHARACTER VARYING(20),
    id_adresse_restaurant      INTEGER,
    adresse_restaurant         CHARACTER VARYING(200),
    id_restaurant              INTEGER,
    code_restaurant            CHARACTER VARYING(5),
    raison_sociale_restaurant  CHARACTER VARYING(100),
    id_adresse_norm_client     INTEGER,
    numero_voie                CHARACTER VARYING(10),
    nom_voie                   CHARACTER VARYING(100),
    code_postal                CHARACTER VARYING(5),
    nom_ville                  CHARACTER VARYING(100),
    longitude                  CHARACTER VARYING(20),
    latitude                   CHARACTER VARYING(20),
    id_adresse_client          INTEGER,
    adresse_client             CHARACTER VARYING(200),
    id_client                  INTEGER,
    nom_client                 CHARACTER VARYING(100),
    prenom_client              CHARACTER VARYING(100),
    type_rejet                 CHARACTER VARYING(100),
    message_log                CHARACTER VARYING(300)
);

ALTER TABLE dsid_liv_wrk.dm1_rejet ADD CONSTRAINT dm1_rejet_pk PRIMARY KEY ( id_rejet_dm1 );

CREATE TABLE dsid_liv_wrk.dm1_staging (
    id_staging_dm1             INTEGER NOT NULL,
    id_preparation             INTEGER,
    date_debut_preparation     DATE,
    date_fin_preparation       DATE,
    id_moyen_paiement          INTEGER,
    code_moyen_paiement        CHARACTER VARYING(5),
    livelle_moyen_paiement     CHARACTER VARYING(100),
    id_menu                    INTEGER,
    code_menu                  CHARACTER VARYING(5),
    libelle_menu               CHARACTER VARYING(100),
    nombre_articles            INTEGER,
    temps_theo_preparation     TEXT,
    id_commande                INTEGER,
    numero_commande            INTEGER,
    date_commande              DATE,
    montant_total              FLOAT,
    id_adresse_norm_restaurant INTEGER,
    numero_voie_restau         CHARACTER VARYING(10),
    nom_voie_restau            CHARACTER VARYING(100),
    code_postal_restau         CHARACTER VARYING(5),
    nom_ville_restau           CHARACTER VARYING(100),
    longitude_restau           CHARACTER VARYING(20),
    latitude_restau            CHARACTER VARYING(20),
    id_adresse_restaurant      INTEGER,
    adresse_restaurant         CHARACTER VARYING(200),
    id_restaurant              INTEGER,
    code_restaurant            CHARACTER VARYING(5),
    raison_sociale_restaurant  CHARACTER VARYING(100),
    id_adresse_norm_client     INTEGER,
    numero_voie                CHARACTER VARYING(10),
    nom_voie                   CHARACTER VARYING(100),
    code_postal                CHARACTER VARYING(5),
    nom_ville                  CHARACTER VARYING(100),
    longitude                  CHARACTER VARYING(20),
    latitude                   CHARACTER VARYING(20),
    id_adresse_client          INTEGER,
    adresse_client             CHARACTER VARYING(200),
    id_client                  INTEGER,
    nom_client                 CHARACTER VARYING(100),
    prenom_client              CHARACTER VARYING(100)
);

ALTER TABLE dsid_liv_wrk.dm1_staging ADD CONSTRAINT dm1_staging_pk PRIMARY KEY ( id_staging_dm1 );

CREATE SEQUENCE dsid_liv_wrk.seq_id_ods_dm1 START WITH 1;

CREATE SEQUENCE dsid_liv_wrk.seq_id_rejet_dm1 START WITH 1;

CREATE SEQUENCE dsid_liv_wrk.seq_id_staging_dm1 START WITH 1;



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
