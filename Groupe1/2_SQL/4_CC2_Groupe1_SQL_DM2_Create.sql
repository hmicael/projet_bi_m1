-- Généré par Oracle SQL Developer Data Modeler 23.1.0.087.0806
--   à :        2024-01-12 20:14:54 CET
--   site :      Oracle Database 11g
--   type :      Oracle Database 11g


DROP TABLE dsid_liv_wrk.dm2_staging CASCADE;

DROP TABLE dsid_liv_wrk.dm2_ods CASCADE;

DROP TABLE dsid_liv_wrk.dm2_rejet CASCADE;

DROP SEQUENCE dsid_liv_wrk.seq_id_ods_dm2;

DROP SEQUENCE dsid_liv_wrk.seq_id_rejet_dm2;

DROP SEQUENCE dsid_liv_wrk.seq_id_staging_dm2;

-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE


CREATE TABLE dsid_liv_wrk.dm2_ods (
    id_ods_dm2                 INTEGER,
    id_adresse_norm_client     INTEGER,
    numero_voie                CHARACTER VARYING(10),
    nom_voie                   CHARACTER VARYING(100),
    code_postal                CHARACTER VARYING(5),
    nom_ville                  CHARACTER VARYING(100),
    longitude                  CHARACTER VARYING(20),
    latitude                   CHARACTER VARYING(20),
    id_restaurant              INTEGER,
    code_restaurant            CHARACTER VARYING(5),
    raison_sociale_restaurant  CHARACTER VARYING(100),
    id_adresse_norm_restaurant INTEGER,
    numero_voie_restau         CHARACTER VARYING(10),
    nom_voie_restau            CHARACTER VARYING(100),
    code_postal_restau         CHARACTER VARYING(5),
    nom_ville_restau           CHARACTER VARYING(100),
    longitude_restau           CHARACTER VARYING(20),
    latitude_restau            CHARACTER VARYING(20),
    id_client                  INTEGER,
    id_livraison               INTEGER,
    id_commande                INTEGER,
    numero_commande            INTEGER,
    date_commande              DATE,
    montant_total              REAL,
    id_menu                    INTEGER,
    code_menu                  CHARACTER VARYING(5),
    libelle_menu               CHARACTER VARYING(100),
    nombre_articles            INTEGER,
    temps_theo_preparation     INTEGER,
    numero_livraison           INTEGER,
    date_debut_livraison       TIMESTAMP,
    date_fin_livraison         TIMESTAMP,
    id_livreur                 INTEGER,
    nom_livreur                CHARACTER VARYING(100),
    prenom_livreur             CHARACTER VARYING(100),
    id_moyen_livraison         INTEGER,
    code_moyen_livraison       CHARACTER VARYING(20),
    libelle_moyen_livraison    CHARACTER VARYING(20),
    nom_client                 CHARACTER VARYING(100),
    prenom_client              CHARACTER VARYING(100),
    id_preparation             INTEGER,
    date_debut_preparation     TIMESTAMP,
    date_fin_preparation       TIMESTAMP,
    temps_livraison            INTEGER,
    nombre_article_livres      INTEGER,
    remuneration_livreur       REAL
);

ALTER TABLE dsid_liv_wrk.dm2_ods ADD CONSTRAINT dm2_ods_pk PRIMARY KEY ( id_ods_dm2 );

CREATE TABLE dsid_liv_wrk.dm2_rejet (
    id_rejet_dm2               INTEGER NOT NULL,
    id_adresse_norm_client     INTEGER,
    numero_voie                CHARACTER VARYING(10),
    nom_voie                   CHARACTER VARYING(100),
    code_postal                CHARACTER VARYING(5),
    nom_ville                  CHARACTER VARYING(100),
    longitude                  CHARACTER VARYING(20),
    latitude                   CHARACTER VARYING(20),
    id_restaurant              INTEGER,
    code_restaurant            CHARACTER VARYING(5),
    raison_sociale_restaurant  CHARACTER VARYING(100),
    id_adresse_norm_restaurant INTEGER,
    numero_voie_restau         CHARACTER VARYING(10),
    nom_voie_restau            CHARACTER VARYING(100),
    code_postal_restau         CHARACTER VARYING(5),
    nom_ville_restau           CHARACTER VARYING(100),
    longitude_restau           CHARACTER VARYING(20),
    latitude_restau            CHARACTER VARYING(20),
    id_client                  INTEGER,
    id_livraison               INTEGER,
    id_commande                INTEGER,
    numero_commande            INTEGER,
    date_commande              DATE,
    montant_total              REAL,
    id_menu                    INTEGER,
    code_menu                  CHARACTER VARYING(5),
    libelle_menu               CHARACTER VARYING(100),
    nombre_articles            INTEGER,
    temps_theo_preparation     INTEGER,
    numero_livraison           INTEGER,
    date_debut_livraison       TIMESTAMP,
    date_fin_livraison         TIMESTAMP,
    id_livreur                 INTEGER,
    nom_livreur                CHARACTER VARYING(100),
    prenom_livreur             CHARACTER VARYING(100),
    id_moyen_livraison         INTEGER,
    code_moyen_livraison       CHARACTER VARYING(20),
    libelle_moyen_livraison    CHARACTER VARYING(20),
    nom_client                 CHARACTER VARYING(100),
    prenom_client              CHARACTER VARYING(100),
    id_preparation             INTEGER,
    date_debut_preparation     TIMESTAMP,
    date_fin_preparation       TIMESTAMP,
    type_rejet                 CHARACTER VARYING(100),
    message_log                CHARACTER VARYING(300)
);

ALTER TABLE dsid_liv_wrk.dm2_rejet ADD CONSTRAINT dm2_rejet_pk PRIMARY KEY ( id_rejet_dm2 );

CREATE TABLE dsid_liv_wrk.dm2_staging (
    id_staging_dm2             INTEGER NOT NULL,
    id_adresse_norm_client     INTEGER,
    numero_voie                CHARACTER VARYING(10),
    nom_voie                   CHARACTER VARYING(100),
    code_postal                CHARACTER VARYING(5),
    nom_ville                  CHARACTER VARYING(100),
    longitude                  CHARACTER VARYING(20),
    latitude                   CHARACTER VARYING(20),
    id_restaurant              INTEGER,
    code_restaurant            CHARACTER VARYING(5),
    raison_sociale_restaurant  CHARACTER VARYING(100),
    id_adresse_norm_restaurant INTEGER,
    numero_voie_restau         CHARACTER VARYING(10),
    nom_voie_restau            CHARACTER VARYING(100),
    code_postal_restau         CHARACTER VARYING(5),
    nom_ville_restau           CHARACTER VARYING(100),
    longitude_restau           CHARACTER VARYING(20),
    latitude_restau            CHARACTER VARYING(20),
    id_client                  INTEGER,
    id_livraison               INTEGER,
    id_commande                INTEGER,
    numero_commande            INTEGER,
    date_commande              DATE,
    montant_total              REAL,
    id_menu                    INTEGER,
    code_menu                  CHARACTER VARYING(5),
    libelle_menu               CHARACTER VARYING(100),
    nombre_articles            INTEGER,
    temps_theo_preparation     INTEGER,
    numero_livraison           INTEGER,
    date_debut_livraison       TIMESTAMP,
    date_fin_livraison         TIMESTAMP,
    id_livreur                 INTEGER,
    nom_livreur                CHARACTER VARYING(100),
    prenom_livreur             CHARACTER VARYING(100),
    id_moyen_livraison         INTEGER,
    code_moyen_livraison       CHARACTER VARYING(20),
    libelle_moyen_livraison    CHARACTER VARYING(20),
    nom_client                 CHARACTER VARYING(100),
    prenom_client              CHARACTER VARYING(100),
    id_preparation             INTEGER,
    date_debut_preparation     TIMESTAMP,
    date_fin_preparation       TIMESTAMP
);

ALTER TABLE dsid_liv_wrk.dm2_staging ADD CONSTRAINT dm2_staging_pk PRIMARY KEY ( id_staging_dm2 );

CREATE SEQUENCE dsid_liv_wrk.seq_id_ods_dm2 START WITH 1;

CREATE SEQUENCE dsid_liv_wrk.seq_id_rejet_dm2 START WITH 1;

CREATE SEQUENCE dsid_liv_wrk.seq_id_staging_dm2 START WITH 1;



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
-- ERRORS                                   1
-- WARNINGS                                 0

-- Généré par Oracle SQL Developer Data Modeler 23.1.0.087.0806
--   à :        2024-01-12 21:26:28 CET
--   site :      Oracle Database 11g
--   type :      Oracle Database 11g

DROP TABLE dsid_liv_dm2.dim_adresse_norm_client_d CASCADE;

DROP TABLE dsid_liv_dm2.dim_adresse_norm_restaurant_d CASCADE;

DROP TABLE dsid_liv_dm2.dim_client_d CASCADE;

DROP TABLE dsid_liv_dm2.dim_date_fin_livraison_d CASCADE;

DROP TABLE dsid_liv_dm2.dim_livreur_d CASCADE;

DROP TABLE dsid_liv_dm2.dim_menu_d CASCADE;

DROP TABLE dsid_liv_dm2.dim_moyen_livraison_d CASCADE;

DROP TABLE dsid_liv_dm2.dim_restaurant_d CASCADE;

DROP TABLE dsid_liv_dm2.fait_livraison_f CASCADE;

DROP SEQUENCE dsid_liv_dm2.seq_id_adresse_norm_client  ;

DROP SEQUENCE dsid_liv_dm2.seq_id_adresse_norm_restaurant  ;

DROP SEQUENCE dsid_liv_dm2.seq_id_client  ;

DROP SEQUENCE dsid_liv_dm2.seq_id_date_fin_livraison  ;

DROP SEQUENCE dsid_liv_dm2.seq_id_livreur  ;

DROP SEQUENCE dsid_liv_dm2.seq_id_menu  ;

DROP SEQUENCE dsid_liv_dm2.seq_id_moyen_livraison  ;

DROP SEQUENCE dsid_liv_dm2.seq_id_restaurant  ;

DROP SEQUENCE dsid_liv_dm2.seq_id_livraison  ;

-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE

CREATE TABLE dsid_liv_dm2.dim_adresse_norm_client_d (
    id_adresse_norm_client     INTEGER NOT NULL,
    id_adresse_norm_client_src INTEGER,
    numero_voie                CHARACTER VARYING(10),
    nom_voie                   CHARACTER VARYING(100),
    code_postal                CHARACTER VARYING(5),
    nom_ville                  CHARACTER VARYING(100),
    longitude                  CHARACTER VARYING(20),
    latitude                   CHARACTER VARYING(20)
);

ALTER TABLE dsid_liv_dm2.dim_adresse_norm_client_d ADD CONSTRAINT adresse_norm_client_pk PRIMARY KEY ( id_adresse_norm_client );

CREATE TABLE dsid_liv_dm2.dim_adresse_norm_restaurant_d (
    id_adresse_norm_restaurant     INTEGER NOT NULL,
    id_adresse_norm_restaurant_src INTEGER,
    numero_voie                    CHARACTER VARYING(10),
    nom_voie                       CHARACTER VARYING(100),
    code_postal                    CHARACTER VARYING(5),
    nom_ville                      CHARACTER VARYING(100),
    longitude                      CHARACTER VARYING(20),
    latitude                       CHARACTER VARYING(20)
);

ALTER TABLE dsid_liv_dm2.dim_adresse_norm_restaurant_d ADD CONSTRAINT adresse_norm_restaurant_pk PRIMARY KEY ( id_adresse_norm_restaurant
);

CREATE TABLE dsid_liv_dm2.dim_client_d (
    id_client     INTEGER NOT NULL,
    id_client_src INTEGER,
    nom_client    CHARACTER VARYING(100),
    prenom_client CHARACTER VARYING(100)
);

ALTER TABLE dsid_liv_dm2.dim_client_d ADD CONSTRAINT client_pk PRIMARY KEY ( id_client );

CREATE TABLE dsid_liv_dm2.dim_date_fin_livraison_d (
    id_date_fin_livraison INTEGER NOT NULL,
    date_fin_livraison    DATE,
    jour                  CHARACTER VARYING(5),
    semaine               CHARACTER VARYING(5),
    mois                  CHARACTER VARYING(5),
    annee                 CHARACTER VARYING(5)
);

ALTER TABLE dsid_liv_dm2.dim_date_fin_livraison_d ADD CONSTRAINT livraison_pk PRIMARY KEY ( id_date_fin_livraison );

CREATE TABLE dsid_liv_dm2.dim_livreur_d (
    id_livreur     INTEGER NOT NULL,
    id_livreur_src INTEGER,
    nom_livreur    CHARACTER VARYING(100),
    prenom_livreur CHARACTER VARYING(100)
);

ALTER TABLE dsid_liv_dm2.dim_livreur_d ADD CONSTRAINT livreur_pk PRIMARY KEY ( id_livreur );

CREATE TABLE dsid_liv_dm2.dim_menu_d (
    id_menu                INTEGER NOT NULL,
    id_menu_src            INTEGER,
    code_menu              CHARACTER VARYING(5),
    libelle_menu           CHARACTER VARYING(100),
    nombre_articles        INTEGER,
    temps_theo_preparation INTEGER
);

ALTER TABLE dsid_liv_dm2.dim_menu_d ADD CONSTRAINT contenu_pk PRIMARY KEY ( id_menu );

CREATE TABLE dsid_liv_dm2.dim_moyen_livraison_d (
    id_moyen_livraison      INTEGER NOT NULL,
    id_moyen_livraison_src  INTEGER,
    code_moyen_livraison    CHARACTER VARYING(20),
    libelle_moyen_livraison CHARACTER VARYING(50)
);

ALTER TABLE dsid_liv_dm2.dim_moyen_livraison_d ADD CONSTRAINT moyen_livraison_pk PRIMARY KEY ( id_moyen_livraison );

CREATE TABLE dsid_liv_dm2.dim_restaurant_d (
    id_restaurant             INTEGER NOT NULL,
    id_restaurant_src         INTEGER,
    code_restaurant           CHARACTER VARYING(5) NOT NULL,
    raison_sociale_restaurant CHARACTER VARYING(100) NOT NULL
);

ALTER TABLE dsid_liv_dm2.dim_restaurant_d ADD CONSTRAINT restaurant_pk PRIMARY KEY ( id_restaurant );

CREATE TABLE dsid_liv_dm2.fait_livraison_f (
    id_livraison               INTEGER NOT NULL,
    id_livreur                 INTEGER NOT NULL,
    id_moyen_livraison         INTEGER NOT NULL,
    id_client                  INTEGER NOT NULL,
    id_adresse_norm_client     INTEGER NOT NULL,
    id_restaurant              INTEGER NOT NULL,
    id_adresse_norm_restaurant INTEGER NOT NULL,
    id_menu                    INTEGER NOT NULL,
    id_date_fin_livraison      INTEGER NOT NULL,
    numero_livraison           INTEGER,
    temps_livraison            INTEGER,
    nombre_articles_livres     INTEGER,
    remuneration_livreur       REAL
);

ALTER TABLE dsid_liv_dm2.fait_livraison_f ADD CONSTRAINT fait_livraison_f_pk PRIMARY KEY ( id_livraison );

ALTER TABLE dsid_liv_dm2.fait_livraison_f
    ADD CONSTRAINT dim_adresse_norm_client_d_fk FOREIGN KEY ( id_adresse_norm_client )
        REFERENCES dsid_liv_dm2.dim_adresse_norm_client_d ( id_adresse_norm_client );

ALTER TABLE dsid_liv_dm2.fait_livraison_f
    ADD CONSTRAINT dim_adresse_norm_restau_d_fk FOREIGN KEY ( id_adresse_norm_restaurant )
        REFERENCES dsid_liv_dm2.dim_adresse_norm_restaurant_d ( id_adresse_norm_restaurant );

ALTER TABLE dsid_liv_dm2.fait_livraison_f
    ADD CONSTRAINT dim_client_d_fk FOREIGN KEY ( id_client )
        REFERENCES dsid_liv_dm2.dim_client_d ( id_client );

ALTER TABLE dsid_liv_dm2.fait_livraison_f
    ADD CONSTRAINT dim_date_fin_livraison_d_fk FOREIGN KEY ( id_date_fin_livraison )
        REFERENCES dsid_liv_dm2.dim_date_fin_livraison_d ( id_date_fin_livraison );

ALTER TABLE dsid_liv_dm2.fait_livraison_f
    ADD CONSTRAINT dim_livreur_d_fk FOREIGN KEY ( id_livreur )
        REFERENCES dsid_liv_dm2.dim_livreur_d ( id_livreur );

ALTER TABLE dsid_liv_dm2.fait_livraison_f
    ADD CONSTRAINT dim_menu_d_fk FOREIGN KEY ( id_menu )
        REFERENCES dsid_liv_dm2.dim_menu_d ( id_menu );

ALTER TABLE dsid_liv_dm2.fait_livraison_f
    ADD CONSTRAINT dim_moyen_liv_d_fk FOREIGN KEY ( id_moyen_livraison )
        REFERENCES dsid_liv_dm2.dim_moyen_livraison_d ( id_moyen_livraison );

ALTER TABLE dsid_liv_dm2.fait_livraison_f
    ADD CONSTRAINT dim_restaurant_d_fk FOREIGN KEY ( id_restaurant )
        REFERENCES dsid_liv_dm2.dim_restaurant_d ( id_restaurant );

CREATE SEQUENCE dsid_liv_dm2.seq_id_adresse_norm_client START WITH 1 ;

CREATE SEQUENCE dsid_liv_dm2.seq_id_adresse_norm_restaurant START WITH 1 ;

CREATE SEQUENCE dsid_liv_dm2.seq_id_client START WITH 1 ;

CREATE SEQUENCE dsid_liv_dm2.seq_id_date_fin_livraison START WITH 1 ;

CREATE SEQUENCE dsid_liv_dm2.seq_id_livreur START WITH 1 ;

CREATE SEQUENCE dsid_liv_dm2.seq_id_menu START WITH 1 ;

CREATE SEQUENCE dsid_liv_dm2.seq_id_moyen_livraison START WITH 1 ;

CREATE SEQUENCE dsid_liv_dm2.seq_id_restaurant START WITH 1 ;

CREATE SEQUENCE dsid_liv_dm2.seq_id_livraison START WITH 1 ;



-- Rapport récapitulatif d'Oracle SQL Developer Data Modeler : 
-- 
-- CREATE TABLE                             9
-- CREATE INDEX                             0
-- ALTER TABLE                             17
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
-- CREATE SEQUENCE                          9
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
