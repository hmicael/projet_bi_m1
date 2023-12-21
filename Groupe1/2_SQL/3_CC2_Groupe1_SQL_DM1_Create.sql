-- Généré par Oracle SQL Developer Data Modeler 22.2.0.165.1149
--   à :        2023-12-21 15:42:25 CET
--   site :      Oracle Database 11g
--   type :      Oracle Database 11g



DROP TABLE dsid_liv_dm1.dim_adresse_norm_client_d CASCADE;

DROP TABLE dsid_liv_dm1.dim_adresse_norm_restaurant_d CASCADE;

DROP TABLE dsid_liv_dm1.dim_client_d CASCADE;

DROP TABLE dsid_liv_dm1.dim_commande_d CASCADE;

DROP TABLE dsid_liv_dm1.dim_moyen_paiement_d CASCADE;

DROP TABLE dsid_liv_dm1.dim_preparation_d CASCADE;

DROP TABLE dsid_liv_dm1.dim_restaurant_d CASCADE;

DROP TABLE dsid_liv_dm1.fait_dm1_f CASCADE;

DROP SEQUENCE dsid_liv_dm1.seq_id_adresse_norm_client;

DROP SEQUENCE dsid_liv_dm1.seq_id_adresse_norm_restaurant;

DROP SEQUENCE dsid_liv_dm1.seq_id_client;

DROP SEQUENCE dsid_liv_dm1.seq_id_commande;

DROP SEQUENCE dsid_liv_dm1.seq_id_moyen_paiement;

DROP SEQUENCE dsid_liv_dm1.seq_id_preparation;

DROP SEQUENCE dsid_liv_dm1.seq_id_restaurant;

DROP SEQUENCE dsid_liv_dm1.seq_id_dm1;

-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE

CREATE TABLE dsid_liv_dm1.dim_adresse_norm_client_d (
    id_adresse_norm_client INTEGER NOT NULL,
    id_adresse_client      INTEGER,
    numero_voie            CHARACTER VARYING(10),
    nom_voie               CHARACTER VARYING(100),
    code_postal            CHARACTER VARYING(5),
    nom_ville              CHARACTER VARYING(100),
    longitude              CHARACTER VARYING(20),
    latitude               CHARACTER VARYING(20)
);

ALTER TABLE dsid_liv_dm1.dim_adresse_norm_client_d ADD CONSTRAINT adresse_norm_client_pk PRIMARY KEY ( id_adresse_norm_client );

CREATE TABLE dsid_liv_dm1.dim_adresse_norm_restaurant_d (
    id_adresse_norm_restaurant INTEGER NOT NULL,
    id_adresse_restaurant      INTEGER,
    numero_voie                CHARACTER VARYING(10),
    nom_voie                   CHARACTER VARYING(100),
    code_postal                CHARACTER VARYING(5),
    nom_ville                  CHARACTER VARYING(100),
    longitude                  CHARACTER VARYING(20),
    latitude                   CHARACTER VARYING(20)
);

ALTER TABLE dsid_liv_dm1.dim_adresse_norm_restaurant_d ADD CONSTRAINT adresse_normalisee_restaurant PRIMARY KEY ( id_adresse_norm_restaurant
);

CREATE TABLE dsid_liv_dm1.dim_client_d (
    id_client         INTEGER NOT NULL,
    id_adresse_client INTEGER,
    nom_client        CHARACTER VARYING(100),
    prenom_client     CHARACTER VARYING(100),
    nom_precedent     CHARACTER VARYING(100)
);

ALTER TABLE dsid_liv_dm1.dim_client_d ADD CONSTRAINT client_pk PRIMARY KEY ( id_client );

CREATE TABLE dsid_liv_dm1.dim_commande_d (
    id_commande       INTEGER NOT NULL,
    id_client         INTEGER,
    id_menu           INTEGER,
    id_moyen_paiement INTEGER,
    numero_commande   INTEGER,
    date_commande     DATE,
    montant_total     FLOAT,
    scd_start         DATE,
    scd_end           DATE,
    scd_version       INTEGER,
    scd_active        CHARACTER VARYING(5)
);

ALTER TABLE dsid_liv_dm1.dim_commande_d ADD CONSTRAINT commande_pk PRIMARY KEY ( id_commande );

CREATE TABLE dsid_liv_dm1.dim_moyen_paiement_d (
    id_moyen_paiement      INTEGER NOT NULL,
    code_moyen_paiement    CHARACTER VARYING(5),
    livelle_moyen_paiement CHARACTER VARYING(100)
);

ALTER TABLE dsid_liv_dm1.dim_moyen_paiement_d ADD CONSTRAINT moyen_paiement_pk PRIMARY KEY ( id_moyen_paiement );

CREATE TABLE dsid_liv_dm1.dim_preparation_d (
    id_preparation         INTEGER NOT NULL,
    id_commande            INTEGER,
    id_restaurant          INTEGER,
    date_debut_preparation DATE,
    date_fin_preparation   DATE
);

ALTER TABLE dsid_liv_dm1.dim_preparation_d ADD CONSTRAINT preparation_pk PRIMARY KEY ( id_preparation );

CREATE TABLE dsid_liv_dm1.dim_restaurant_d (
    id_restaurant             INTEGER NOT NULL,
    id_adresse_restaurant     INTEGER,
    code_restaurant           CHARACTER VARYING(5),
    raison_sociale_restaurant CHARACTER VARYING(100)
);

ALTER TABLE dsid_liv_dm1.dim_restaurant_d ADD CONSTRAINT restaurant_pk PRIMARY KEY ( id_restaurant );

CREATE TABLE dsid_liv_dm1.fait_dm1_f (
    id_dm1                     INTEGER NOT NULL,
    id_commande                INTEGER NOT NULL,
    id_preparation             INTEGER NOT NULL,
    id_client                  INTEGER NOT NULL,
    id_adresse_norm_client     INTEGER NOT NULL,
    id_restaurant              INTEGER NOT NULL,
    id_adresse_norm_restaurant INTEGER NOT NULL,
    id_moyen_paiement          INTEGER NOT NULL,
    montant_total              FLOAT,
    temps_theo_preparation     TEXT,
    temps_reel_preparation     TEXT,
    numero_commande            INTEGER
);

ALTER TABLE dsid_liv_dm1.fait_dm1_f ADD CONSTRAINT fait_dm1_f_pk PRIMARY KEY ( id_dm1 );

ALTER TABLE dsid_liv_dm1.fait_dm1_f
    ADD CONSTRAINT dm1_adresse_norm_restaurant_fk FOREIGN KEY ( id_adresse_norm_restaurant )
        REFERENCES dsid_liv_dm1.dim_adresse_norm_restaurant_d ( id_adresse_norm_restaurant );

ALTER TABLE dsid_liv_dm1.fait_dm1_f
    ADD CONSTRAINT dm1_dim_adresse_norm_client_fk FOREIGN KEY ( id_adresse_norm_client )
        REFERENCES dsid_liv_dm1.dim_adresse_norm_client_d ( id_adresse_norm_client );

ALTER TABLE dsid_liv_dm1.fait_dm1_f
    ADD CONSTRAINT dm1_dim_moyen_paiement_fk FOREIGN KEY ( id_moyen_paiement )
        REFERENCES dsid_liv_dm1.dim_moyen_paiement_d ( id_moyen_paiement );

ALTER TABLE dsid_liv_dm1.fait_dm1_f
    ADD CONSTRAINT dm1_preparation_fk FOREIGN KEY ( id_preparation )
        REFERENCES dsid_liv_dm1.dim_preparation_d ( id_preparation );

ALTER TABLE dsid_liv_dm1.fait_dm1_f
    ADD CONSTRAINT fait_dm1_f_dim_client_d_fk FOREIGN KEY ( id_client )
        REFERENCES dsid_liv_dm1.dim_client_d ( id_client );

ALTER TABLE dsid_liv_dm1.fait_dm1_f
    ADD CONSTRAINT fait_dm1_f_dim_commande_d_fk FOREIGN KEY ( id_commande )
        REFERENCES dsid_liv_dm1.dim_commande_d ( id_commande );

ALTER TABLE dsid_liv_dm1.fait_dm1_f
    ADD CONSTRAINT fait_dm1_f_dim_restaurant_d_fk FOREIGN KEY ( id_restaurant )
        REFERENCES dsid_liv_dm1.dim_restaurant_d ( id_restaurant );

CREATE SEQUENCE dsid_liv_dm1.seq_id_adresse_norm_client START WITH 1;

CREATE SEQUENCE dsid_liv_dm1.seq_id_adresse_norm_restaurant START WITH 1;

CREATE SEQUENCE dsid_liv_dm1.seq_id_client START WITH 1;

CREATE SEQUENCE dsid_liv_dm1.seq_id_commande START WITH 1;

CREATE SEQUENCE dsid_liv_dm1.seq_id_moyen_paiement START WITH 1;

CREATE SEQUENCE dsid_liv_dm1.seq_id_preparation START WITH 1;

CREATE SEQUENCE dsid_liv_dm1.seq_id_restaurant START WITH 1;

CREATE SEQUENCE dsid_liv_dm1.seq_id_dm1 START WITH 1;



-- Rapport récapitulatif d'Oracle SQL Developer Data Modeler : 
-- 
-- CREATE TABLE                             8
-- CREATE INDEX                             0
-- ALTER TABLE                             15
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
-- CREATE SEQUENCE                          8
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
