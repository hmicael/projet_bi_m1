-- G�n�r� par Oracle SQL Developer Data Modeler 22.2.0.165.1149
--   � :        2023-12-20 00:21:45 CET
--   site :      Oracle Database 21c
--   type :      Oracle Database 21c



DROP VIEW DSID_LIV_OPE.vue_dm1 CASCADE CONSTRAINTS 
;

DROP VIEW DSID_LIV_OPE.vue_dm2 CASCADE CONSTRAINTS 
;

DROP TABLE dsid_liv_ope.adresse_client CASCADE CONSTRAINTS;

DROP TABLE dsid_liv_ope.adresse_normalisee_client CASCADE CONSTRAINTS;

DROP TABLE dsid_liv_ope.adresse_normalisee_restaurant CASCADE CONSTRAINTS;

DROP TABLE dsid_liv_ope.adresse_restaurant CASCADE CONSTRAINTS;

DROP TABLE dsid_liv_ope.client CASCADE CONSTRAINTS;

DROP TABLE dsid_liv_ope.commande CASCADE CONSTRAINTS;

DROP TABLE dsid_liv_ope.livraison CASCADE CONSTRAINTS;

DROP TABLE dsid_liv_ope.livreur CASCADE CONSTRAINTS;

DROP TABLE dsid_liv_ope.menu CASCADE CONSTRAINTS;

DROP TABLE dsid_liv_ope.moyen_livraison CASCADE CONSTRAINTS;

DROP TABLE dsid_liv_ope.moyen_paiement CASCADE CONSTRAINTS;

DROP TABLE dsid_liv_ope.preparation CASCADE CONSTRAINTS;

DROP TABLE dsid_liv_ope.restaurant CASCADE CONSTRAINTS;

DROP SEQUENCE dsid_liv_ope.seq_id_adresse_client;

DROP SEQUENCE dsid_liv_ope.seq_id_adresse_norm_client;

DROP SEQUENCE dsid_liv_ope.seq_id_adresse_norm_restaurant;

DROP SEQUENCE dsid_liv_ope.seq_id_adresse_restaurant;

DROP SEQUENCE dsid_liv_ope.seq_id_client;

DROP SEQUENCE dsid_liv_ope.seq_id_commande;

DROP SEQUENCE dsid_liv_ope.seq_id_livraison;

DROP SEQUENCE dsid_liv_ope.seq_id_livreur;

DROP SEQUENCE dsid_liv_ope.seq_id_menu;

DROP SEQUENCE dsid_liv_ope.seq_id_moyen_livraison;

DROP SEQUENCE dsid_liv_ope.seq_id_moyen_paiement;

DROP SEQUENCE dsid_liv_ope.seq_id_preparation;

DROP SEQUENCE dsid_liv_ope.seq_id_restaurant;

-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE

CREATE TABLE dsid_liv_ope.adresse_client (
    id_adresse_client NUMBER NOT NULL,
    adresse_client    VARCHAR2(200 CHAR)
);

ALTER TABLE dsid_liv_ope.adresse_client ADD CONSTRAINT adresse_client_pk PRIMARY KEY ( id_adresse_client );

CREATE TABLE dsid_liv_ope.adresse_normalisee_client (
    id_adresse_norm_client NUMBER NOT NULL,
    id_adresse_client      NUMBER NOT NULL,
    numero_voie            VARCHAR2(10 CHAR),
    nom_voie               VARCHAR2(100 CHAR),
    code_postal            VARCHAR2(5 CHAR),
    nom_ville              VARCHAR2(100 CHAR),
    longitude              VARCHAR2(20 CHAR),
    latitude               VARCHAR2(20 CHAR)
);

ALTER TABLE dsid_liv_ope.adresse_normalisee_client ADD CONSTRAINT adresse_norm_client_pk PRIMARY KEY ( id_adresse_norm_client );

CREATE TABLE dsid_liv_ope.adresse_normalisee_restaurant (
    id_adresse_norm_restaurant NUMBER NOT NULL,
    id_adresse_restaurant      NUMBER NOT NULL,
    numero_voie                VARCHAR2(10 CHAR),
    nom_voie                   VARCHAR2(100 CHAR),
    code_postal                VARCHAR2(5 CHAR),
    nom_ville                  VARCHAR2(100 CHAR),
    longitude                  VARCHAR2(20 CHAR),
    latitude                   VARCHAR2(20 CHAR)
);

ALTER TABLE dsid_liv_ope.adresse_normalisee_restaurant ADD CONSTRAINT adresse_normalisee_restaurant PRIMARY KEY ( id_adresse_norm_restaurant
);

CREATE TABLE dsid_liv_ope.adresse_restaurant (
    id_adresse_restaurant NUMBER NOT NULL,
    adresse_restaurant    VARCHAR2(200 CHAR)
);

ALTER TABLE dsid_liv_ope.adresse_restaurant ADD CONSTRAINT adresse_restaurant PRIMARY KEY ( id_adresse_restaurant );

CREATE TABLE dsid_liv_ope.client (
    id_client         NUMBER NOT NULL,
    id_adresse_client NUMBER NOT NULL,
    nom_client        VARCHAR2(100 CHAR),
    prenom_client     VARCHAR2(100 CHAR)
);

ALTER TABLE dsid_liv_ope.client ADD CONSTRAINT client_pk PRIMARY KEY ( id_client );

CREATE TABLE dsid_liv_ope.commande (
    id_commande       NUMBER NOT NULL,
    id_client         NUMBER NOT NULL,
    id_menu           NUMBER NOT NULL,
    id_moyen_paiement NUMBER NOT NULL,
    numero_commande   NUMBER,
    date_commande     DATE,
    montant_total     FLOAT
);

ALTER TABLE dsid_liv_ope.commande ADD CONSTRAINT commande_pk PRIMARY KEY ( id_commande );

CREATE TABLE dsid_liv_ope.livraison (
    id_livraison          NUMBER NOT NULL,
    id_preparation        NUMBER NOT NULL,
    id_livreur            NUMBER NOT NULL,
    numero_livraison      NUMBER,
    date_debut_livraison  DATE,
    date_fin_livraison    DATE,
    nombre_article_livres NUMBER
);

ALTER TABLE dsid_liv_ope.livraison ADD CONSTRAINT livraison_pk PRIMARY KEY ( id_livraison );

CREATE TABLE dsid_liv_ope.livreur (
    id_livreur     NUMBER NOT NULL,
    id_moyen       NUMBER NOT NULL,
    nom_livreur    VARCHAR2(100 CHAR),
    prenom_livreur VARCHAR2(100 CHAR)
);

ALTER TABLE dsid_liv_ope.livreur ADD CONSTRAINT livreur_pk PRIMARY KEY ( id_livreur );

CREATE TABLE dsid_liv_ope.menu (
    id_menu                NUMBER NOT NULL,
    code_menu              VARCHAR2(5 CHAR),
    libelle_menu           VARCHAR2(100 CHAR),
    nombre_articles        NUMBER,
    temps_theo_preparation LONG
);

ALTER TABLE dsid_liv_ope.menu ADD CONSTRAINT contenu_pk PRIMARY KEY ( id_menu );

CREATE TABLE dsid_liv_ope.moyen_livraison (
    id_moyen_livraison      NUMBER NOT NULL,
    code_moyen_livraison    VARCHAR2(20 CHAR),
    libelle_moyen_livraison VARCHAR2(20 CHAR)
);

ALTER TABLE dsid_liv_ope.moyen_livraison ADD CONSTRAINT moyen_livraison_pk PRIMARY KEY ( id_moyen_livraison );

CREATE TABLE dsid_liv_ope.moyen_paiement (
    id_moyen_paiement      NUMBER NOT NULL,
    code_moyen_paiement    VARCHAR2(5 CHAR),
    livelle_moyen_paiement VARCHAR2(100 CHAR)
);

ALTER TABLE dsid_liv_ope.moyen_paiement ADD CONSTRAINT moyen_paiement_pk PRIMARY KEY ( id_moyen_paiement );

CREATE TABLE dsid_liv_ope.preparation (
    id_preparation         NUMBER NOT NULL,
    id_commande            NUMBER NOT NULL,
    id_restaurant          NUMBER NOT NULL,
    date_debut_preparation DATE,
    date_fin_preparation   DATE
);

ALTER TABLE dsid_liv_ope.preparation ADD CONSTRAINT preparation_pk PRIMARY KEY ( id_preparation );

CREATE TABLE dsid_liv_ope.restaurant (
    id_restaurant             NUMBER NOT NULL,
    id_adresse_restaurant     NUMBER NOT NULL,
    code_restaurant           VARCHAR2(5 CHAR),
    raison_sociale_restaurant VARCHAR2(100)
);

ALTER TABLE dsid_liv_ope.restaurant ADD CONSTRAINT restaurant_pk PRIMARY KEY ( id_restaurant );

ALTER TABLE dsid_liv_ope.adresse_normalisee_client
    ADD CONSTRAINT adresse_normalisee_client_fk FOREIGN KEY ( id_adresse_client )
        REFERENCES dsid_liv_ope.adresse_client ( id_adresse_client );

ALTER TABLE dsid_liv_ope.adresse_normalisee_restaurant
    ADD CONSTRAINT adresse_restaurant_fk FOREIGN KEY ( id_adresse_restaurant )
        REFERENCES dsid_liv_ope.adresse_restaurant ( id_adresse_restaurant );

ALTER TABLE dsid_liv_ope.restaurant
    ADD CONSTRAINT adresse_restaurant_fkv1 FOREIGN KEY ( id_adresse_restaurant )
        REFERENCES dsid_liv_ope.adresse_restaurant ( id_adresse_restaurant );

ALTER TABLE dsid_liv_ope.client
    ADD CONSTRAINT client_adresse_client_fk FOREIGN KEY ( id_adresse_client )
        REFERENCES dsid_liv_ope.adresse_client ( id_adresse_client );

ALTER TABLE dsid_liv_ope.commande
    ADD CONSTRAINT commande_client_fk FOREIGN KEY ( id_client )
        REFERENCES dsid_liv_ope.client ( id_client );

ALTER TABLE dsid_liv_ope.commande
    ADD CONSTRAINT commande_contenu_fk FOREIGN KEY ( id_menu )
        REFERENCES dsid_liv_ope.menu ( id_menu );

ALTER TABLE dsid_liv_ope.commande
    ADD CONSTRAINT commande_moyen_paiement_fk FOREIGN KEY ( id_moyen_paiement )
        REFERENCES dsid_liv_ope.moyen_paiement ( id_moyen_paiement );

ALTER TABLE dsid_liv_ope.livraison
    ADD CONSTRAINT livraison_livreur_fk FOREIGN KEY ( id_livreur )
        REFERENCES dsid_liv_ope.livreur ( id_livreur );

ALTER TABLE dsid_liv_ope.livraison
    ADD CONSTRAINT livraison_preparation_fk FOREIGN KEY ( id_preparation )
        REFERENCES dsid_liv_ope.preparation ( id_preparation );

ALTER TABLE dsid_liv_ope.livreur
    ADD CONSTRAINT livreur_moyen_livraison_fk FOREIGN KEY ( id_moyen )
        REFERENCES dsid_liv_ope.moyen_livraison ( id_moyen_livraison );

ALTER TABLE dsid_liv_ope.preparation
    ADD CONSTRAINT preparation_commande_fk FOREIGN KEY ( id_commande )
        REFERENCES dsid_liv_ope.commande ( id_commande );

ALTER TABLE dsid_liv_ope.preparation
    ADD CONSTRAINT preparation_restaurant_fk FOREIGN KEY ( id_restaurant )
        REFERENCES dsid_liv_ope.restaurant ( id_restaurant );

CREATE OR REPLACE VIEW dsid_liv_ope.vue_dm1 ( id_commande, numero_commande, date_commande, montant_total, id_menu, code_menu, libelle_menu, nombre_articles, temps_theo_preparation, id_preparation, date_debut_preparation, date_fin_preparation, id_adresse_norm_client, numero_voie, nom_voie, code_postal, nom_ville, longitude, latitude, id_adresse_restaurant, adresse_restaurant, id_client, id_adresse_client, adresse_client, id_restaurant, code_restaurant, raison_sociale_restaurant, id_adresse_norm_restaurant, numero_voie1, nom_voie1, code_postal1, nom_ville1, id_moyen_paiement, code_moyen_paiement, livelle_moyen_paiement, longitude1, latitude1, nom_client, prenom_client ) AS
SELECT
    commande.id_commande,
    commande.numero_commande,
    commande.date_commande,
    commande.montant_total,
    menu.id_menu,
    menu.code_menu,
    menu.libelle_menu,
    menu.nombre_articles,
    menu.temps_theo_preparation,
    preparation.id_preparation,
    preparation.date_debut_preparation,
    preparation.date_fin_preparation,
    adresse_normalisee_client.id_adresse_norm_client,
    adresse_normalisee_client.numero_voie,
    adresse_normalisee_client.nom_voie,
    adresse_normalisee_client.code_postal,
    adresse_normalisee_client.nom_ville,
    adresse_normalisee_client.longitude,
    adresse_normalisee_client.latitude,
    adresse_restaurant.id_adresse_restaurant,
    adresse_restaurant.adresse_restaurant,
    client.id_client,
    client.nom_client,
    client.prenom_client,
    adresse_client.id_adresse_client,
    adresse_client.adresse_client,
    restaurant.id_restaurant,
    restaurant.code_restaurant,
    restaurant.raison_sociale_restaurant,
    adresse_normalisee_restaurant.id_adresse_norm_restaurant,
    adresse_normalisee_restaurant.numero_voie AS numero_voie1,
    adresse_normalisee_restaurant.nom_voie    AS nom_voie1,
    adresse_normalisee_restaurant.code_postal AS code_postal1,
    adresse_normalisee_restaurant.nom_ville   AS nom_ville1,
    adresse_normalisee_restaurant.longitude   AS longitude1,
    adresse_normalisee_restaurant.latitude    AS latitude1,
    moyen_paiement.id_moyen_paiement,
    moyen_paiement.code_moyen_paiement,
    moyen_paiement.livelle_moyen_paiement
FROM
         commande
    INNER JOIN menu ON menu.id_menu = commande.id_menu
    INNER JOIN preparation ON commande.id_commande = preparation.id_commande
    INNER JOIN client ON client.id_client = commande.id_client
    INNER JOIN adresse_client ON adresse_client.id_adresse_client = client.id_adresse_client
    INNER JOIN adresse_normalisee_client ON adresse_client.id_adresse_client = adresse_normalisee_client.id_adresse_client
    INNER JOIN restaurant ON restaurant.id_restaurant = preparation.id_restaurant
    INNER JOIN adresse_restaurant ON adresse_restaurant.id_adresse_restaurant = restaurant.id_adresse_restaurant
    INNER JOIN adresse_normalisee_restaurant ON adresse_restaurant.id_adresse_restaurant = adresse_normalisee_restaurant.id_adresse_restaurant
    INNER JOIN moyen_paiement ON moyen_paiement.id_moyen_paiement = commande.id_moyen_paiement 
;

CREATE OR REPLACE VIEW dsid_liv_ope.vue_dm2 ( id_adresse_norm_client, numero_voie, nom_voie, code_postal, nom_ville, longitude, latitude, id_restaurant, code_restaurant, raison_sociale_restaurant, id_adresse_client, adresse_client, id_adresse_restaurant, adresse_restaurant, id_adresse_norm_restaurant, numero_voie1, nom_voie1, code_postal1, nom_ville1, longitude1, latitude1, id_client, id_commande, numero_commande, date_commande, montant_total, id_menu, code_menu, libelle_menu, nombre_articles, temps_theo_preparation, id_livraison, numero_livraison, date_debut_livraison, date_fin_livraison, nombre_article_livres, id_livreur, nom_client, nom_livreur, prenom_livreur, id_moyen_livraison, code_moyen_livraison, libelle_moyen_livraison, prenom_client ) AS
SELECT
    adresse_normalisee_client.id_adresse_norm_client,
    adresse_normalisee_client.numero_voie,
    adresse_normalisee_client.nom_voie,
    adresse_normalisee_client.code_postal,
    adresse_normalisee_client.nom_ville,
    adresse_normalisee_client.longitude,
    adresse_normalisee_client.latitude,
    restaurant.id_restaurant,
    restaurant.code_restaurant,
    restaurant.raison_sociale_restaurant,
    adresse_client.id_adresse_client,
    adresse_client.adresse_client,
    adresse_restaurant.id_adresse_restaurant,
    adresse_restaurant.adresse_restaurant,
    adresse_normalisee_restaurant.id_adresse_norm_restaurant,
    adresse_normalisee_restaurant.numero_voie AS numero_voie1,
    adresse_normalisee_restaurant.nom_voie    AS nom_voie1,
    adresse_normalisee_restaurant.code_postal AS code_postal1,
    adresse_normalisee_restaurant.nom_ville   AS nom_ville1,
    adresse_normalisee_restaurant.longitude   AS longitude1,
    adresse_normalisee_restaurant.latitude    AS latitude1,
    client.id_client,
    client.prenom_client,
    client.nom_client,
    commande.id_commande,
    commande.numero_commande,
    commande.date_commande,
    commande.montant_total,
    menu.id_menu,
    menu.code_menu,
    menu.libelle_menu,
    menu.nombre_articles,
    menu.temps_theo_preparation,
    livraison.id_livraison,
    livraison.numero_livraison,
    livraison.date_debut_livraison,
    livraison.date_fin_livraison,
    livraison.nombre_article_livres,
    livreur.id_livreur,
    livreur.nom_livreur,
    livreur.prenom_livreur,
    moyen_livraison.id_moyen_livraison,
    moyen_livraison.code_moyen_livraison,
    moyen_livraison.libelle_moyen_livraison
FROM
         livraison
    INNER JOIN livreur ON livreur.id_livreur = livraison.id_livreur
    INNER JOIN moyen_livraison ON moyen_livraison.id_moyen_livraison = livreur.id_moyen, menu
    INNER JOIN commande ON menu.id_menu = commande.id_menu
    INNER JOIN client ON client.id_client = commande.id_client
    INNER JOIN adresse_client ON adresse_client.id_adresse_client = client.id_adresse_client
    INNER JOIN adresse_normalisee_client ON adresse_client.id_adresse_client = adresse_normalisee_client.id_adresse_client, restaurant
    INNER JOIN adresse_restaurant ON adresse_restaurant.id_adresse_restaurant = restaurant.id_adresse_restaurant
    INNER JOIN adresse_normalisee_restaurant ON adresse_restaurant.id_adresse_restaurant = adresse_normalisee_restaurant.id_adresse_restaurant 
;

CREATE SEQUENCE dsid_liv_ope.seq_id_adresse_client START WITH 1 NOCACHE ORDER;

CREATE SEQUENCE dsid_liv_ope.seq_id_adresse_norm_client START WITH 1 NOCACHE ORDER;

CREATE SEQUENCE dsid_liv_ope.seq_id_adresse_norm_restaurant START WITH 1 NOCACHE ORDER;

CREATE SEQUENCE dsid_liv_ope.seq_id_adresse_restaurant START WITH 1 NOCACHE ORDER;

CREATE SEQUENCE dsid_liv_ope.seq_id_client START WITH 1 NOCACHE ORDER;

CREATE SEQUENCE dsid_liv_ope.seq_id_commande START WITH 1 NOCACHE ORDER;

CREATE SEQUENCE dsid_liv_ope.seq_id_livraison START WITH 1 NOCACHE ORDER;

CREATE SEQUENCE dsid_liv_ope.seq_id_livreur START WITH 1 NOCACHE ORDER;

CREATE SEQUENCE dsid_liv_ope.seq_id_menu START WITH 1 NOCACHE ORDER;

CREATE SEQUENCE dsid_liv_ope.seq_id_moyen_livraison START WITH 1 NOCACHE ORDER;

CREATE SEQUENCE dsid_liv_ope.seq_id_moyen_paiement START WITH 1 NOCACHE ORDER;

CREATE SEQUENCE dsid_liv_ope.seq_id_preparation START WITH 1 NOCACHE ORDER;

CREATE SEQUENCE dsid_liv_ope.seq_id_restaurant START WITH 1 NOCACHE ORDER;



-- Rapport r�capitulatif d'Oracle SQL Developer Data Modeler : 
-- 
-- CREATE TABLE                            13
-- CREATE INDEX                             0
-- ALTER TABLE                             25
-- CREATE VIEW                              2
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
