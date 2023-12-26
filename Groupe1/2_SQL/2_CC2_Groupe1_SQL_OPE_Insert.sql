-- Insertion Client(id_client, id_adresse_client, nom_client, prenom_client)
INSERT INTO dsid_liv_ope.client VALUES (dsid_liv_ope.seq_id_client.nextval, 1, 'nom1', 'prenom1');
INSERT INTO dsid_liv_ope.client VALUES (dsid_liv_ope.seq_id_client.nextval, 3, 'nom1', 'prenom2');

-- Insertion Restaurant(id_restaurant, id_adresse_restaurant, code_restaurant, 'raison_sociale_restaurant')
INSERT INTO dsid_liv_ope.restaurant VALUES (dsid_liv_ope.seq_id_restaurant.nextval, 1, 'code1', 'raison_sociale_1');
INSERT INTO dsid_liv_ope.restaurant VALUES (dsid_liv_ope.seq_id_restaurant.nextval, 5, 'code1', 'raison_sociale_1');

-- Insertion Commande(id_commande, id_client, id_menu, id_moyen_paiement, numero_commande, date_commande, montant_total)
INSERT INTO dsid_liv_ope.commande VALUES (dsid_liv_ope.seq_id_commande.nextval, 1, 1, 1, 1, to_date('01/01/2024','DD/MM/YYYY'), 100.1);

-- Insertion Preparation(id_preparation, id_commande, id_restaurant, date_debut, date_fin)
INSERT INTO dsid_liv_ope.preparation VALUES (dsid_liv_ope.seq_id_preparation.nextval, 1, 1, 1, to_date('01/01/2024','DD/MM/YYYY'), to_date('01/01/2024','DD/MM/YYYY'));

-- Insertion Livraison(id_livraison, id_preparation, id_livreur, numero_livraison, date_debut, date_fin, nombre_article_livre)
INSERT INTO dsid_liv_ope.livraison VALUES (dsid_liv_ope.seq_id_livraison.nextval, 1, 1, 1, to_date('01/01/2024','DD/MM/YYYY'), to_date('01/01/2024','DD/MM/YYYY'), 2);
