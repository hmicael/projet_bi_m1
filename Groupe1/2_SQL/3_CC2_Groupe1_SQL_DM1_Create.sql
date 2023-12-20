-- G�n�r� par Oracle SQL Developer Data Modeler 22.2.0.165.1149
--   � :        2023-12-20 22:54:42 CET
--   site :      Oracle Database 11g
--   type :      Oracle Database 11g



DROP TABLE dsid_liv_wrk.dm1_ods CASCADE;

DROP TABLE dsid_liv_wrk.dm1_rejet CASCADE;

DROP TABLE dsid_liv_wrk.dm1_staing CASCADE;

DROP SEQUENCE dsid_liv_wrk.seq_id_ods_dm1;

DROP SEQUENCE dsid_liv_wrk.seq_id_rejet_dm1;

DROP SEQUENCE dsid_liv_wrk.seq_id_staging_dm1;

-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE

CREATE TABLE dsid_liv_wrk.dm1_ods (
    id_ods_dm1                 NUMBER NOT NULL,
    id_preparation             NUMBER,
    date_debut_preparation     DATE,
    date_fin_preparation       DATE,
    temps_reel_preparation     LONG,
    id_moyen_paiement          NUMBER,
    code_moyen_paiement        VARYING CHARACTER(5),
    livelle_moyen_paiement     VARYING CHARACTER(100),
    id_menu                    NUMBER,
    code_menu                  VARYING CHARACTER(5),
    libelle_menu               VARYING CHARACTER(100),
    nombre_articles            NUMBER,
    temps_theo_preparation     LONG,
    id_commande                NUMBER,
    numero_commande            NUMBER,
    date_commande              DATE,
    montant_total              FLOAT,
    id_adresse_norm_restaurant NUMBER,
    numero_voie_restau         VARYING CHARACTER(10),
    nom_voie_restau            VARYING CHARACTER(100),
    code_postal_restau         VARYING CHARACTER(5),
    nom_ville_restau           VARYING CHARACTER(100),
    longitude_restau           VARYING CHARACTER(20),
    latitude_restau            VARYING CHARACTER(20),
    id_adresse_restaurant      NUMBER,
    adresse_restaurant         VARYING CHARACTER(200),
    id_restaurant              NUMBER,
    code_restaurant            VARYING CHARACTER(5),
    raison_sociale_restaurant  VARYING CHARACTER(100),
    id_adresse_norm_client     NUMBER,
    numero_voie                VARYING CHARACTER(10),
    nom_voie                   VARYING CHARACTER(100),
    code_postal                VARYING CHARACTER(5),
    nom_ville                  VARYING CHARACTER(100),
    longitude                  VARYING CHARACTER(20),
    latitude                   VARYING CHARACTER(20),
    id_adresse_client          NUMBER,
    adresse_client             VARYING CHARACTER(200),
    id_client                  NUMBER,
    nom_client                 VARYING CHARACTER(100),
    prenom_client              VARYING CHARACTER(100)
);

ALTER TABLE dsid_liv_wrk.dm1_ods ADD CONSTRAINT dm1_ods_pk PRIMARY KEY ( id_ods_dm1 );

CREATE TABLE dsid_liv_wrk.dm1_rejet (
    id_rejet_dm1               NUMBER NOT NULL,
    id_preparation             NUMBER,
    date_debut_preparation     DATE,
    date_fin_preparation       DATE,
    id_moyen_paiement          NUMBER,
    code_moyen_paiement        VARYING CHARACTER(5),
    livelle_moyen_paiement     VARYING CHARACTER(100),
    id_menu                    NUMBER,
    code_menu                  VARYING CHARACTER(5),
    libelle_menu               VARYING CHARACTER(100),
    nombre_articles            NUMBER,
    temps_theo_preparation     LONG,
    id_commande                NUMBER,
    numero_commande            NUMBER,
    date_commande              DATE,
    montant_total              FLOAT,
    id_adresse_norm_restaurant NUMBER,
    numero_voie_restau         VARYING CHARACTER(10),
    nom_voie_restau            VARYING CHARACTER(100),
    code_postal_restau         VARYING CHARACTER(5),
    nom_ville_restau           VARYING CHARACTER(100),
    longitude_restau           VARYING CHARACTER(20),
    latitude_restau            VARYING CHARACTER(20),
    id_adresse_restaurant      NUMBER,
    adresse_restaurant         VARYING CHARACTER(200),
    id_restaurant              NUMBER,
    code_restaurant            VARYING CHARACTER(5),
    raison_sociale_restaurant  VARYING CHARACTER(100),
    id_adresse_norm_client     NUMBER,
    numero_voie                VARYING CHARACTER(10),
    nom_voie                   VARYING CHARACTER(100),
    code_postal                VARYING CHARACTER(5),
    nom_ville                  VARYING CHARACTER(100),
    longitude                  VARYING CHARACTER(20),
    latitude                   VARYING CHARACTER(20),
    id_adresse_client          NUMBER,
    adresse_client             VARYING CHARACTER(200),
    id_client                  NUMBER,
    nom_client                 VARYING CHARACTER(100),
    prenom_client              VARYING CHARACTER(100),
    type_rejet                 VARYING CHARACTER(100),
    message_log                VARYING CHARACTER(300)
);

ALTER TABLE dsid_liv_wrk.dm1_rejet ADD CONSTRAINT dm1_rejet_pk PRIMARY KEY ( id_rejet_dm1 );

CREATE TABLE dsid_liv_wrk.dm1_staing (
    id_staging_dm1             NUMBER NOT NULL,
    id_preparation             NUMBER,
    date_debut_preparation     DATE,
    date_fin_preparation       DATE,
    id_moyen_paiement          NUMBER,
    code_moyen_paiement        VARYING CHARACTER(5),
    livelle_moyen_paiement     VARYING CHARACTER(100),
    id_menu                    NUMBER,
    code_menu                  VARYING CHARACTER(5),
    libelle_menu               VARYING CHARACTER(100),
    nombre_articles            NUMBER,
    temps_theo_preparation     LONG,
    id_commande                NUMBER,
    numero_commande            NUMBER,
    date_commande              DATE,
    montant_total              FLOAT,
    id_adresse_norm_restaurant NUMBER,
    numero_voie_restau         VARYING CHARACTER(10),
    nom_voie_restau            VARYING CHARACTER(100),
    code_postal_restau         VARYING CHARACTER(5),
    nom_ville_restau           VARYING CHARACTER(100),
    longitude_restau           VARYING CHARACTER(20),
    latitude_restau            VARYING CHARACTER(20),
    id_adresse_restaurant      NUMBER,
    adresse_restaurant         VARYING CHARACTER(200),
    id_restaurant              NUMBER,
    code_restaurant            VARYING CHARACTER(5),
    raison_sociale_restaurant  VARYING CHARACTER(100),
    id_adresse_norm_client     NUMBER,
    numero_voie                VARYING CHARACTER(10),
    nom_voie                   VARYING CHARACTER(100),
    code_postal                VARYING CHARACTER(5),
    nom_ville                  VARYING CHARACTER(100),
    longitude                  VARYING CHARACTER(20),
    latitude                   VARYING CHARACTER(20),
    id_adresse_client          NUMBER,
    adresse_client             VARYING CHARACTER(200),
    id_client                  NUMBER,
    nom_client                 VARYING CHARACTER(100),
    prenom_client              VARYING CHARACTER(100)
);

ALTER TABLE dsid_liv_wrk.dm1_staing ADD CONSTRAINT dm1_staging_pk PRIMARY KEY ( id_staging_dm1 );

CREATE SEQUENCE dsid_liv_wrk.seq_id_ods_dm1 START WITH 1;

CREATE SEQUENCE dsid_liv_wrk.seq_id_rejet_dm1 START WITH 1;

CREATE SEQUENCE dsid_liv_wrk.seq_id_staging_dm1 START WITH 1;



-- Rapport r�capitulatif d'Oracle SQL Developer Data Modeler : 
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
-- CREATE SEQUENCE                          3
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
