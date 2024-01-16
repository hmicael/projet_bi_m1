-- Insertion Client(id_client, id_adresse_client, nom_client, prenom_client)
INSERT INTO dsid_liv_ope.client VALUES (dsid_liv_ope.seq_id_client.nextval, 1, 'Dupont', 'Pierre');
INSERT INTO dsid_liv_ope.client VALUES (dsid_liv_ope.seq_id_client.nextval, 2, 'Martin', 'Sophie');
INSERT INTO dsid_liv_ope.client VALUES (dsid_liv_ope.seq_id_client.nextval, 3, 'Lefevre', 'Thomas');
INSERT INTO dsid_liv_ope.client VALUES (dsid_liv_ope.seq_id_client.nextval, 4, 'Dubois', 'Amandine');
INSERT INTO dsid_liv_ope.client VALUES (dsid_liv_ope.seq_id_client.nextval, 5, 'Leclerc', 'Lucie');
INSERT INTO dsid_liv_ope.client VALUES (dsid_liv_ope.seq_id_client.nextval, 6, 'Moreau', 'Antoine');
INSERT INTO dsid_liv_ope.client VALUES (dsid_liv_ope.seq_id_client.nextval, 7, 'Fournier', 'Julie');
INSERT INTO dsid_liv_ope.client VALUES (dsid_liv_ope.seq_id_client.nextval, 8, 'Girard', 'Alexandre');
INSERT INTO dsid_liv_ope.client VALUES (dsid_liv_ope.seq_id_client.nextval, 9, 'Caron', 'Marie');
INSERT INTO dsid_liv_ope.client VALUES (dsid_liv_ope.seq_id_client.nextval, 10, 'Picard', 'Nicolas');
INSERT INTO dsid_liv_ope.client VALUES (dsid_liv_ope.seq_id_client.nextval, 11, 'Durand', 'Laura');
INSERT INTO dsid_liv_ope.client VALUES (dsid_liv_ope.seq_id_client.nextval, 12, 'Lemoine', 'Victor');
INSERT INTO dsid_liv_ope.client VALUES (dsid_liv_ope.seq_id_client.nextval, 13, 'Roger', 'Elodie');
INSERT INTO dsid_liv_ope.client VALUES (dsid_liv_ope.seq_id_client.nextval, 14, 'Garnier', 'Maxime');
INSERT INTO dsid_liv_ope.client VALUES (dsid_liv_ope.seq_id_client.nextval, 15, 'Roux', 'Camille');

-- Insertion Restaurant(id_restaurant, id_adresse_restaurant, code_restaurant, 'raison_sociale_restaurant')
INSERT INTO dsid_liv_ope.restaurant VALUES (dsid_liv_ope.seq_id_restaurant.nextval, 1, 'RST01', 'Le Gourmet');
INSERT INTO dsid_liv_ope.restaurant VALUES (dsid_liv_ope.seq_id_restaurant.nextval, 2, 'RST02', 'La Brasserie');
INSERT INTO dsid_liv_ope.restaurant VALUES (dsid_liv_ope.seq_id_restaurant.nextval, 3, 'RST03', 'Chez Marie');
INSERT INTO dsid_liv_ope.restaurant VALUES (dsid_liv_ope.seq_id_restaurant.nextval, 4, 'RST04', 'Le Bistrot');
INSERT INTO dsid_liv_ope.restaurant VALUES (dsid_liv_ope.seq_id_restaurant.nextval, 5, 'RST05', 'Auberge');
INSERT INTO dsid_liv_ope.restaurant VALUES (dsid_liv_ope.seq_id_restaurant.nextval, 6, 'RST06', 'Au Petit Chef');
INSERT INTO dsid_liv_ope.restaurant VALUES (dsid_liv_ope.seq_id_restaurant.nextval, 7, 'RST07', 'La Trattoria');
INSERT INTO dsid_liv_ope.restaurant VALUES (dsid_liv_ope.seq_id_restaurant.nextval, 8, 'RST08', 'Le Panier Gourmand');
INSERT INTO dsid_liv_ope.restaurant VALUES (dsid_liv_ope.seq_id_restaurant.nextval, 9, 'RST09', 'Sushi Express');
INSERT INTO dsid_liv_ope.restaurant VALUES (dsid_liv_ope.seq_id_restaurant.nextval, 10, 'RST10', 'Le Jardin des Saveurs');

-- Insertion Commande(id_commande, id_client, id_menu, id_moyen_paiement, numero_commande, date_commande, montant_total)
INSERT INTO dsid_liv_ope.commande VALUES (dsid_liv_ope.seq_id_commande.nextval, 1, 1, 1, '01', TO_DATE('01-01-2023', 'DD-MM-YYYY'), 50.00);
INSERT INTO dsid_liv_ope.commande VALUES (dsid_liv_ope.seq_id_commande.nextval, 2, 2, 2, '02', TO_DATE('02-01-2023', 'DD-MM-YYYY'), 65.50);
INSERT INTO dsid_liv_ope.commande VALUES (dsid_liv_ope.seq_id_commande.nextval, 3, 3, 3, '03', TO_DATE('03-01-2023', 'DD-MM-YYYY'), 40.20);
INSERT INTO dsid_liv_ope.commande VALUES (dsid_liv_ope.seq_id_commande.nextval, 4, 4, 4, '04', TO_DATE('04-01-2023', 'DD-MM-YYYY'), 75.80);
INSERT INTO dsid_liv_ope.commande VALUES (dsid_liv_ope.seq_id_commande.nextval, 5, 5, 1, '05', TO_DATE('05-01-2023', 'DD-MM-YYYY'), 90.50);
INSERT INTO dsid_liv_ope.commande VALUES (dsid_liv_ope.seq_id_commande.nextval, 6, 6, 2, '06', TO_DATE('06-01-2023', 'DD-MM-YYYY'), 55.00);
INSERT INTO dsid_liv_ope.commande VALUES (dsid_liv_ope.seq_id_commande.nextval, 7, 7, 3, '07', TO_DATE('07-01-2023', 'DD-MM-YYYY'), 80.20);
INSERT INTO dsid_liv_ope.commande VALUES (dsid_liv_ope.seq_id_commande.nextval, 8, 8, 4, '08', TO_DATE('08-01-2023', 'DD-MM-YYYY'), 65.80);
INSERT INTO dsid_liv_ope.commande VALUES (dsid_liv_ope.seq_id_commande.nextval, 9, 1, 1, '09', TO_DATE('09-01-2023', 'DD-MM-YYYY'), 70.50);
INSERT INTO dsid_liv_ope.commande VALUES (dsid_liv_ope.seq_id_commande.nextval, 10, 2, 2, '10', TO_DATE('10-01-2023', 'DD-MM-YYYY'), 45.00);
INSERT INTO dsid_liv_ope.commande VALUES (dsid_liv_ope.seq_id_commande.nextval, 11, 3, 3, '11', TO_DATE('11-01-2023', 'DD-MM-YYYY'), 60.20);
INSERT INTO dsid_liv_ope.commande VALUES (dsid_liv_ope.seq_id_commande.nextval, 12, 4, 4, '12', TO_DATE('12-01-2023', 'DD-MM-YYYY'), 85.80);
INSERT INTO dsid_liv_ope.commande VALUES (dsid_liv_ope.seq_id_commande.nextval, 13, 5, 1, '13', TO_DATE('13-01-2023', 'DD-MM-YYYY'), 70.50);
INSERT INTO dsid_liv_ope.commande VALUES (dsid_liv_ope.seq_id_commande.nextval, 14, 6, 2, '14', TO_DATE('14-01-2023', 'DD-MM-YYYY'), 95.00);
INSERT INTO dsid_liv_ope.commande VALUES (dsid_liv_ope.seq_id_commande.nextval, 15, 7, 3, '15', TO_DATE('15-01-2023', 'DD-MM-YYYY'), 80.20);
INSERT INTO dsid_liv_ope.commande VALUES (dsid_liv_ope.seq_id_commande.nextval, 1, 8, 4, '16', TO_DATE('16-01-2023', 'DD-MM-YYYY'), 65.80);
INSERT INTO dsid_liv_ope.commande VALUES (dsid_liv_ope.seq_id_commande.nextval, 2, 1, 1, '17', TO_DATE('17-01-2023', 'DD-MM-YYYY'), 70.50);
INSERT INTO dsid_liv_ope.commande VALUES (dsid_liv_ope.seq_id_commande.nextval, 3, 2, 2, '18', TO_DATE('18-01-2023', 'DD-MM-YYYY'), 45.00);
INSERT INTO dsid_liv_ope.commande VALUES (dsid_liv_ope.seq_id_commande.nextval, 4, 3, 3, '19', TO_DATE('19-01-2023', 'DD-MM-YYYY'), 60.20);
INSERT INTO dsid_liv_ope.commande VALUES (dsid_liv_ope.seq_id_commande.nextval, 5, 4, 4, '20', TO_DATE('20-01-2023', 'DD-MM-YYYY'), 85.80);
INSERT INTO dsid_liv_ope.commande VALUES (dsid_liv_ope.seq_id_commande.nextval, 6, 5, 1, '21', TO_DATE('21-01-2023', 'DD-MM-YYYY'), 70.50);
INSERT INTO dsid_liv_ope.commande VALUES (dsid_liv_ope.seq_id_commande.nextval, 7, 6, 2, '22', TO_DATE('22-01-2023', 'DD-MM-YYYY'), 95.00);
INSERT INTO dsid_liv_ope.commande VALUES (dsid_liv_ope.seq_id_commande.nextval, 8, 7, 3, '23', TO_DATE('23-01-2023', 'DD-MM-YYYY'), 80.20);
INSERT INTO dsid_liv_ope.commande VALUES (dsid_liv_ope.seq_id_commande.nextval, 9, 8, 4, '24', TO_DATE('24-01-2023', 'DD-MM-YYYY'), 65.80);
INSERT INTO dsid_liv_ope.commande VALUES (dsid_liv_ope.seq_id_commande.nextval, 10, 1, 1, '25', TO_DATE('25-01-2023', 'DD-MM-YYYY'), 70.50);
INSERT INTO dsid_liv_ope.commande VALUES (dsid_liv_ope.seq_id_commande.nextval, 11, 2, 2, '26', TO_DATE('26-01-2023', 'DD-MM-YYYY'), 45.00);
INSERT INTO dsid_liv_ope.commande VALUES (dsid_liv_ope.seq_id_commande.nextval, 12, 3, 3, '27', TO_DATE('27-01-2023', 'DD-MM-YYYY'), 60.20);
INSERT INTO dsid_liv_ope.commande VALUES (dsid_liv_ope.seq_id_commande.nextval, 13, 4, 4, '28', TO_DATE('28-01-2023', 'DD-MM-YYYY'), 85.80);
INSERT INTO dsid_liv_ope.commande VALUES (dsid_liv_ope.seq_id_commande.nextval, 14, 5, 1, '29', TO_DATE('29-01-2023', 'DD-MM-YYYY'), 70.50);
INSERT INTO dsid_liv_ope.commande VALUES (dsid_liv_ope.seq_id_commande.nextval, 15, 6, 2, '30', TO_DATE('30-01-2023', 'DD-MM-YYYY'), 95.00);
INSERT INTO dsid_liv_ope.commande VALUES (dsid_liv_ope.seq_id_commande.nextval, 1, 7, 3, '31', TO_DATE('31-01-2023', 'DD-MM-YYYY'), 80.20);
INSERT INTO dsid_liv_ope.commande VALUES (dsid_liv_ope.seq_id_commande.nextval, 2, 8, 4, '32', TO_DATE('01-02-2023', 'DD-MM-YYYY'), 65.80);
INSERT INTO dsid_liv_ope.commande VALUES (dsid_liv_ope.seq_id_commande.nextval, 3, 1, 1, '33', TO_DATE('02-02-2023', 'DD-MM-YYYY'), 70.50);
INSERT INTO dsid_liv_ope.commande VALUES (dsid_liv_ope.seq_id_commande.nextval, 4, 2, 2, '34', TO_DATE('03-02-2023', 'DD-MM-YYYY'), 45.00);
INSERT INTO dsid_liv_ope.commande VALUES (dsid_liv_ope.seq_id_commande.nextval, 5, 3, 3, '35', TO_DATE('04-02-2023', 'DD-MM-YYYY'), 60.20);

-- Doublon commande à supprimer en REJET
INSERT INTO dsid_liv_ope.commande VALUES (dsid_liv_ope.seq_id_commande.nextval, 4, 2, 2, '34', TO_DATE('03-02-2023', 'DD-MM-YYYY'), 45.00);
INSERT INTO dsid_liv_ope.commande VALUES (dsid_liv_ope.seq_id_commande.nextval, 5, 3, 3, '35', TO_DATE('04-02-2023', 'DD-MM-YYYY'), 60.20);

-- Insertion Preparation(id_preparation, id_commande, id_restaurant, date_debut, date_fin)
INSERT INTO dsid_liv_ope.preparation VALUES (dsid_liv_ope.seq_id_preparation.nextval, 1, 1, TO_DATE('01-01-2023 14:00', 'DD-MM-YYYY HH24:MI'), TO_DATE('01-01-2023 14:40', 'DD-MM-YYYY HH24:MI'));
INSERT INTO dsid_liv_ope.preparation VALUES (dsid_liv_ope.seq_id_preparation.nextval, 2, 2, TO_DATE('02-01-2023 15:30', 'DD-MM-YYYY HH24:MI'), TO_DATE('02-01-2023 16:05', 'DD-MM-YYYY HH24:MI'));
INSERT INTO dsid_liv_ope.preparation VALUES (dsid_liv_ope.seq_id_preparation.nextval, 3, 3, TO_DATE('03-01-2023 12:45', 'DD-MM-YYYY HH24:MI'), TO_DATE('03-01-2023 13:00', 'DD-MM-YYYY HH24:MI'));
INSERT INTO dsid_liv_ope.preparation VALUES (dsid_liv_ope.seq_id_preparation.nextval, 4, 4, TO_DATE('04-01-2023 16:15', 'DD-MM-YYYY HH24:MI'), TO_DATE('04-01-2023 17:20', 'DD-MM-YYYY HH24:MI'));
INSERT INTO dsid_liv_ope.preparation VALUES (dsid_liv_ope.seq_id_preparation.nextval, 5, 5, TO_DATE('05-01-2023 18:00', 'DD-MM-YYYY HH24:MI'), TO_DATE('05-01-2023 18:40', 'DD-MM-YYYY HH24:MI'));
INSERT INTO dsid_liv_ope.preparation VALUES (dsid_liv_ope.seq_id_preparation.nextval, 6, 6, TO_DATE('06-01-2023 13:30', 'DD-MM-YYYY HH24:MI'), TO_DATE('06-01-2023 14:25', 'DD-MM-YYYY HH24:MI'));
INSERT INTO dsid_liv_ope.preparation VALUES (dsid_liv_ope.seq_id_preparation.nextval, 7, 7, TO_DATE('07-01-2023 11:15', 'DD-MM-YYYY HH24:MI'), TO_DATE('07-01-2023 12:00', 'DD-MM-YYYY HH24:MI'));
INSERT INTO dsid_liv_ope.preparation VALUES (dsid_liv_ope.seq_id_preparation.nextval, 8, 8, TO_DATE('08-01-2023 15:45', 'DD-MM-YYYY HH24:MI'), TO_DATE('08-01-2023 16:30', 'DD-MM-YYYY HH24:MI'));
INSERT INTO dsid_liv_ope.preparation VALUES (dsid_liv_ope.seq_id_preparation.nextval, 9, 9, TO_DATE('09-01-2023 17:30', 'DD-MM-YYYY HH24:MI'), TO_DATE('09-01-2023 18:15', 'DD-MM-YYYY HH24:MI'));
INSERT INTO dsid_liv_ope.preparation VALUES (dsid_liv_ope.seq_id_preparation.nextval, 10, 10, TO_DATE('10-01-2023 12:00', 'DD-MM-YYYY HH24:MI'), TO_DATE('10-01-2023 12:30', 'DD-MM-YYYY HH24:MI'));
INSERT INTO dsid_liv_ope.preparation VALUES (dsid_liv_ope.seq_id_preparation.nextval, 11, 1, TO_DATE('11-01-2023 14:00', 'DD-MM-YYYY HH24:MI'), TO_DATE('11-01-2023 14:45', 'DD-MM-YYYY HH24:MI'));
INSERT INTO dsid_liv_ope.preparation VALUES (dsid_liv_ope.seq_id_preparation.nextval, 12, 2, TO_DATE('12-01-2023 15:30', 'DD-MM-YYYY HH24:MI'), TO_DATE('12-01-2023 16:40', 'DD-MM-YYYY HH24:MI'));
INSERT INTO dsid_liv_ope.preparation VALUES (dsid_liv_ope.seq_id_preparation.nextval, 13, 3, TO_DATE('13-01-2023 12:45', 'DD-MM-YYYY HH24:MI'), TO_DATE('13-01-2023 13:15', 'DD-MM-YYYY HH24:MI'));
INSERT INTO dsid_liv_ope.preparation VALUES (dsid_liv_ope.seq_id_preparation.nextval, 14, 4, TO_DATE('14-01-2023 16:15', 'DD-MM-YYYY HH24:MI'), TO_DATE('14-01-2023 17:00', 'DD-MM-YYYY HH24:MI'));
INSERT INTO dsid_liv_ope.preparation VALUES (dsid_liv_ope.seq_id_preparation.nextval, 15, 5, TO_DATE('15-01-2023 18:00', 'DD-MM-YYYY HH24:MI'), TO_DATE('15-01-2023 18:45', 'DD-MM-YYYY HH24:MI'));
INSERT INTO dsid_liv_ope.preparation VALUES (dsid_liv_ope.seq_id_preparation.nextval, 16, 6, TO_DATE('16-01-2023 13:30', 'DD-MM-YYYY HH24:MI'), TO_DATE('16-01-2023 14:15', 'DD-MM-YYYY HH24:MI'));
INSERT INTO dsid_liv_ope.preparation VALUES (dsid_liv_ope.seq_id_preparation.nextval, 17, 7, TO_DATE('17-01-2023 11:15', 'DD-MM-YYYY HH24:MI'), TO_DATE('17-01-2023 12:00', 'DD-MM-YYYY HH24:MI'));
INSERT INTO dsid_liv_ope.preparation VALUES (dsid_liv_ope.seq_id_preparation.nextval, 18, 8, TO_DATE('18-01-2023 15:45', 'DD-MM-YYYY HH24:MI'), TO_DATE('18-01-2023 16:00', 'DD-MM-YYYY HH24:MI'));
INSERT INTO dsid_liv_ope.preparation VALUES (dsid_liv_ope.seq_id_preparation.nextval, 19, 9, TO_DATE('19-01-2023 17:30', 'DD-MM-YYYY HH24:MI'), TO_DATE('19-01-2023 18:15', 'DD-MM-YYYY HH24:MI'));
INSERT INTO dsid_liv_ope.preparation VALUES (dsid_liv_ope.seq_id_preparation.nextval, 20, 10, TO_DATE('20-01-2023 12:00', 'DD-MM-YYYY HH24:MI'), TO_DATE('20-01-2023 12:15', 'DD-MM-YYYY HH24:MI'));
INSERT INTO dsid_liv_ope.preparation VALUES (dsid_liv_ope.seq_id_preparation.nextval, 21, 1, TO_DATE('21-01-2023 14:00', 'DD-MM-YYYY HH24:MI'), TO_DATE('21-01-2023 14:45', 'DD-MM-YYYY HH24:MI'));
INSERT INTO dsid_liv_ope.preparation VALUES (dsid_liv_ope.seq_id_preparation.nextval, 22, 2, TO_DATE('22-01-2023 15:30', 'DD-MM-YYYY HH24:MI'), TO_DATE('22-01-2023 16:14', 'DD-MM-YYYY HH24:MI'));
INSERT INTO dsid_liv_ope.preparation VALUES (dsid_liv_ope.seq_id_preparation.nextval, 23, 3, TO_DATE('23-01-2023 12:45', 'DD-MM-YYYY HH24:MI'), TO_DATE('23-01-2023 13:15', 'DD-MM-YYYY HH24:MI'));
INSERT INTO dsid_liv_ope.preparation VALUES (dsid_liv_ope.seq_id_preparation.nextval, 24, 4, TO_DATE('24-01-2023 16:15', 'DD-MM-YYYY HH24:MI'), TO_DATE('24-01-2023 17:20', 'DD-MM-YYYY HH24:MI'));
INSERT INTO dsid_liv_ope.preparation VALUES (dsid_liv_ope.seq_id_preparation.nextval, 25, 5, TO_DATE('25-01-2023 18:00', 'DD-MM-YYYY HH24:MI'), TO_DATE('25-01-2023 18:45', 'DD-MM-YYYY HH24:MI'));
INSERT INTO dsid_liv_ope.preparation VALUES (dsid_liv_ope.seq_id_preparation.nextval, 26, 6, TO_DATE('26-01-2023 13:30', 'DD-MM-YYYY HH24:MI'), TO_DATE('26-01-2023 14:27', 'DD-MM-YYYY HH24:MI'));
INSERT INTO dsid_liv_ope.preparation VALUES (dsid_liv_ope.seq_id_preparation.nextval, 27, 7, TO_DATE('27-01-2023 11:15', 'DD-MM-YYYY HH24:MI'), TO_DATE('27-01-2023 12:31', 'DD-MM-YYYY HH24:MI'));
INSERT INTO dsid_liv_ope.preparation VALUES (dsid_liv_ope.seq_id_preparation.nextval, 28, 8, TO_DATE('28-01-2023 15:45', 'DD-MM-YYYY HH24:MI'), TO_DATE('28-01-2023 16:10', 'DD-MM-YYYY HH24:MI'));
INSERT INTO dsid_liv_ope.preparation VALUES (dsid_liv_ope.seq_id_preparation.nextval, 29, 9, TO_DATE('29-01-2023 17:30', 'DD-MM-YYYY HH24:MI'), TO_DATE('29-01-2023 18:32', 'DD-MM-YYYY HH24:MI'));
INSERT INTO dsid_liv_ope.preparation VALUES (dsid_liv_ope.seq_id_preparation.nextval, 30, 10, TO_DATE('30-01-2023 12:00', 'DD-MM-YYYY HH24:MI'), TO_DATE('30-01-2023 12:32', 'DD-MM-YYYY HH24:MI'));
INSERT INTO dsid_liv_ope.preparation VALUES (dsid_liv_ope.seq_id_preparation.nextval, 31, 1, TO_DATE('31-01-2023 14:00', 'DD-MM-YYYY HH24:MI'), TO_DATE('31-01-2023 14:34', 'DD-MM-YYYY HH24:MI'));
INSERT INTO dsid_liv_ope.preparation VALUES (dsid_liv_ope.seq_id_preparation.nextval, 32, 2, TO_DATE('01-02-2023 15:30', 'DD-MM-YYYY HH24:MI'), TO_DATE('01-02-2023 16:20', 'DD-MM-YYYY HH24:MI'));
INSERT INTO dsid_liv_ope.preparation VALUES (dsid_liv_ope.seq_id_preparation.nextval, 33, 3, TO_DATE('02-02-2023 12:45', 'DD-MM-YYYY HH24:MI'), TO_DATE('02-02-2023 13:02', 'DD-MM-YYYY HH24:MI'));
INSERT INTO dsid_liv_ope.preparation VALUES (dsid_liv_ope.seq_id_preparation.nextval, 34, 4, TO_DATE('03-02-2023 16:15', 'DD-MM-YYYY HH24:MI'), TO_DATE('03-02-2023 17:05', 'DD-MM-YYYY HH24:MI'));
INSERT INTO dsid_liv_ope.preparation VALUES (dsid_liv_ope.seq_id_preparation.nextval, 35, 5, TO_DATE('04-02-2023 18:00', 'DD-MM-YYYY HH24:MI'), TO_DATE('04-02-2023 18:45', 'DD-MM-YYYY HH24:MI'));

-- Doublons
INSERT INTO dsid_liv_ope.preparation VALUES (dsid_liv_ope.seq_id_preparation.nextval, 34, 4, TO_DATE('03-02-2023 16:15', 'DD-MM-YYYY HH24:MI'), TO_DATE('03-02-2023 17:00', 'DD-MM-YYYY HH24:MI'));
INSERT INTO dsid_liv_ope.preparation VALUES (dsid_liv_ope.seq_id_preparation.nextval, 35, 5, TO_DATE('04-02-2023 18:00', 'DD-MM-YYYY HH24:MI'), TO_DATE('04-02-2023 18:45', 'DD-MM-YYYY HH24:MI'));

-- Insertion Livraison(id_livraison, id_preparation, id_livreur, numero_livraison, date_debut, date_fin, nombre_article_livre)
INSERT INTO dsid_liv_ope.livraison VALUES (dsid_liv_ope.seq_id_livraison.nextval, 1, 1, 1, TO_DATE('01-01-2023 12:00', 'DD-MM-YYYY HH24:MI'), TO_DATE('01-01-2023 12:55', 'DD-MM-YYYY HH24:MI'), 10);
INSERT INTO dsid_liv_ope.livraison VALUES (dsid_liv_ope.seq_id_livraison.nextval, 2, 2, 2, TO_DATE('02-01-2023 12:00', 'DD-MM-YYYY HH24:MI'), TO_DATE('02-01-2023 12:24', 'DD-MM-YYYY HH24:MI'), 8);
INSERT INTO dsid_liv_ope.livraison VALUES (dsid_liv_ope.seq_id_livraison.nextval, 3, 3, 3, TO_DATE('03-01-2023 12:00', 'DD-MM-YYYY HH24:MI'), TO_DATE('03-01-2023 12:56', 'DD-MM-YYYY HH24:MI'), 12);
INSERT INTO dsid_liv_ope.livraison VALUES (dsid_liv_ope.seq_id_livraison.nextval, 4, 4, 4, TO_DATE('04-01-2023 12:00', 'DD-MM-YYYY HH24:MI'), TO_DATE('04-01-2023 12:13', 'DD-MM-YYYY HH24:MI'), 15);
INSERT INTO dsid_liv_ope.livraison VALUES (dsid_liv_ope.seq_id_livraison.nextval, 5, 5, 5, TO_DATE('05-01-2023 12:00', 'DD-MM-YYYY HH24:MI'), TO_DATE('05-01-2023 12:35', 'DD-MM-YYYY HH24:MI'), 14);
INSERT INTO dsid_liv_ope.livraison VALUES (dsid_liv_ope.seq_id_livraison.nextval, 6, 6, 6, TO_DATE('06-01-2023 12:00', 'DD-MM-YYYY HH24:MI'), TO_DATE('06-01-2023 12:42', 'DD-MM-YYYY HH24:MI'), 11);
INSERT INTO dsid_liv_ope.livraison VALUES (dsid_liv_ope.seq_id_livraison.nextval, 7, 7, 7, TO_DATE('07-01-2023 12:00', 'DD-MM-YYYY HH24:MI'), TO_DATE('07-01-2023 12:53', 'DD-MM-YYYY HH24:MI'), 9);
INSERT INTO dsid_liv_ope.livraison VALUES (dsid_liv_ope.seq_id_livraison.nextval, 8, 8, 8, TO_DATE('08-01-2023 12:00', 'DD-MM-YYYY HH24:MI'), TO_DATE('08-01-2023 12:24', 'DD-MM-YYYY HH24:MI'), 13);
INSERT INTO dsid_liv_ope.livraison VALUES (dsid_liv_ope.seq_id_livraison.nextval, 9, 9, 9, TO_DATE('09-01-2023 12:00', 'DD-MM-YYYY HH24:MI'), TO_DATE('09-01-2023 12:45', 'DD-MM-YYYY HH24:MI'), 7);
INSERT INTO dsid_liv_ope.livraison VALUES (dsid_liv_ope.seq_id_livraison.nextval, 10, 10, 10, TO_DATE('10-01-2023 12:00', 'DD-MM-YYYY HH24:MI'), TO_DATE('10-01-2023 12:14', 'DD-MM-YYYY HH24:MI'), 10);
INSERT INTO dsid_liv_ope.livraison VALUES (dsid_liv_ope.seq_id_livraison.nextval, 11, 11, 11, TO_DATE('11-01-2023 12:00', 'DD-MM-YYYY HH24:MI'), TO_DATE('11-01-2023 12:18', 'DD-MM-YYYY HH24:MI'), 8);
INSERT INTO dsid_liv_ope.livraison VALUES (dsid_liv_ope.seq_id_livraison.nextval, 12, 12, 12, TO_DATE('12-01-2023 12:00', 'DD-MM-YYYY HH24:MI'), TO_DATE('12-01-2023 12:31', 'DD-MM-YYYY HH24:MI'), 12);
INSERT INTO dsid_liv_ope.livraison VALUES (dsid_liv_ope.seq_id_livraison.nextval, 13, 13, 13, TO_DATE('13-01-2023 12:00', 'DD-MM-YYYY HH24:MI'), TO_DATE('13-01-2023 12:13', 'DD-MM-YYYY HH24:MI'), 15);
INSERT INTO dsid_liv_ope.livraison VALUES (dsid_liv_ope.seq_id_livraison.nextval, 14, 14, 14, TO_DATE('14-01-2023 12:00', 'DD-MM-YYYY HH24:MI'), TO_DATE('14-01-2023 12:05', 'DD-MM-YYYY HH24:MI'), 14);
INSERT INTO dsid_liv_ope.livraison VALUES (dsid_liv_ope.seq_id_livraison.nextval, 15, 15, 15, TO_DATE('15-01-2023 12:00', 'DD-MM-YYYY HH24:MI'), TO_DATE('15-01-2023 12:38', 'DD-MM-YYYY HH24:MI'), 11);
INSERT INTO dsid_liv_ope.livraison VALUES (dsid_liv_ope.seq_id_livraison.nextval, 16, 1, 16, TO_DATE('16-01-2023 12:00', 'DD-MM-YYYY HH24:MI'), TO_DATE('16-01-2023 12:40', 'DD-MM-YYYY HH24:MI'), 9);
INSERT INTO dsid_liv_ope.livraison VALUES (dsid_liv_ope.seq_id_livraison.nextval, 17, 2, 17, TO_DATE('17-01-2023 12:00', 'DD-MM-YYYY HH24:MI'), TO_DATE('17-01-2023 12:59', 'DD-MM-YYYY HH24:MI'), 13);
INSERT INTO dsid_liv_ope.livraison VALUES (dsid_liv_ope.seq_id_livraison.nextval, 18, 3, 18, TO_DATE('18-01-2023 12:00', 'DD-MM-YYYY HH24:MI'), TO_DATE('18-01-2023 12:10', 'DD-MM-YYYY HH24:MI'), 7);
INSERT INTO dsid_liv_ope.livraison VALUES (dsid_liv_ope.seq_id_livraison.nextval, 19, 4, 19, TO_DATE('19-01-2023 12:00', 'DD-MM-YYYY HH24:MI'), TO_DATE('19-01-2023 12:15', 'DD-MM-YYYY HH24:MI'), 10);
INSERT INTO dsid_liv_ope.livraison VALUES (dsid_liv_ope.seq_id_livraison.nextval, 20, 5, 20, TO_DATE('20-01-2023 12:00', 'DD-MM-YYYY HH24:MI'), TO_DATE('20-01-2023 12:24', 'DD-MM-YYYY HH24:MI'), 8);
INSERT INTO dsid_liv_ope.livraison VALUES (dsid_liv_ope.seq_id_livraison.nextval, 21, 6, 21, TO_DATE('21-01-2023 12:00', 'DD-MM-YYYY HH24:MI'), TO_DATE('21-01-2023 12:19', 'DD-MM-YYYY HH24:MI'), 12);
INSERT INTO dsid_liv_ope.livraison VALUES (dsid_liv_ope.seq_id_livraison.nextval, 22, 7, 22, TO_DATE('22-01-2023 12:00', 'DD-MM-YYYY HH24:MI'), TO_DATE('22-01-2023 12:30', 'DD-MM-YYYY HH24:MI'), 15);
INSERT INTO dsid_liv_ope.livraison VALUES (dsid_liv_ope.seq_id_livraison.nextval, 23, 8, 23, TO_DATE('23-01-2023 12:00', 'DD-MM-YYYY HH24:MI'), TO_DATE('23-01-2023 12:52', 'DD-MM-YYYY HH24:MI'), 14);
INSERT INTO dsid_liv_ope.livraison VALUES (dsid_liv_ope.seq_id_livraison.nextval, 24, 9, 24, TO_DATE('24-01-2023 12:00', 'DD-MM-YYYY HH24:MI'), TO_DATE('24-01-2023 12:12', 'DD-MM-YYYY HH24:MI'), 11);
INSERT INTO dsid_liv_ope.livraison VALUES (dsid_liv_ope.seq_id_livraison.nextval, 25, 10, 25, TO_DATE('25-01-2023 12:00', 'DD-MM-YYYY HH24:MI'), TO_DATE('25-01-2023 12:46', 'DD-MM-YYYY HH24:MI'), 9);
INSERT INTO dsid_liv_ope.livraison VALUES (dsid_liv_ope.seq_id_livraison.nextval, 26, 11, 26, TO_DATE('26-01-2023 12:00', 'DD-MM-YYYY HH24:MI'), TO_DATE('26-01-2023 12:24', 'DD-MM-YYYY HH24:MI'), 13);
INSERT INTO dsid_liv_ope.livraison VALUES (dsid_liv_ope.seq_id_livraison.nextval, 27, 12, 27, TO_DATE('27-01-2023 12:00', 'DD-MM-YYYY HH24:MI'), TO_DATE('27-01-2023 12:25', 'DD-MM-YYYY HH24:MI'), 7);
INSERT INTO dsid_liv_ope.livraison VALUES (dsid_liv_ope.seq_id_livraison.nextval, 28, 13, 28, TO_DATE('28-01-2023 12:00', 'DD-MM-YYYY HH24:MI'), TO_DATE('28-01-2023 12:51', 'DD-MM-YYYY HH24:MI'), 10);
INSERT INTO dsid_liv_ope.livraison VALUES (dsid_liv_ope.seq_id_livraison.nextval, 29, 14, 29, TO_DATE('29-01-2023 12:00', 'DD-MM-YYYY HH24:MI'), TO_DATE('29-01-2023 12:39', 'DD-MM-YYYY HH24:MI'), 8);
INSERT INTO dsid_liv_ope.livraison VALUES (dsid_liv_ope.seq_id_livraison.nextval, 30, 15, 30, TO_DATE('30-01-2023 12:00', 'DD-MM-YYYY HH24:MI'), TO_DATE('30-01-2023 12:54', 'DD-MM-YYYY HH24:MI'), 12);
INSERT INTO dsid_liv_ope.livraison VALUES (dsid_liv_ope.seq_id_livraison.nextval, 31, 1, 31, TO_DATE('31-01-2023 12:00', 'DD-MM-YYYY HH24:MI'), TO_DATE('31-01-2023 12:30', 'DD-MM-YYYY HH24:MI'), 15);
INSERT INTO dsid_liv_ope.livraison VALUES (dsid_liv_ope.seq_id_livraison.nextval, 32, 2, 32, TO_DATE('01-02-2023 12:00', 'DD-MM-YYYY HH24:MI'), TO_DATE('01-02-2023 12:33', 'DD-MM-YYYY HH24:MI'), 14);
INSERT INTO dsid_liv_ope.livraison VALUES (dsid_liv_ope.seq_id_livraison.nextval, 33, 3, 33, TO_DATE('02-02-2023 12:00', 'DD-MM-YYYY HH24:MI'), TO_DATE('02-02-2023 12:42', 'DD-MM-YYYY HH24:MI'), 11);
INSERT INTO dsid_liv_ope.livraison VALUES (dsid_liv_ope.seq_id_livraison.nextval, 34, 4, 34, TO_DATE('03-02-2023 12:00', 'DD-MM-YYYY HH24:MI'), TO_DATE('03-02-2023 12:23', 'DD-MM-YYYY HH24:MI'), 9);
INSERT INTO dsid_liv_ope.livraison VALUES (dsid_liv_ope.seq_id_livraison.nextval, 35, 5, 35, TO_DATE('04-02-2023 12:00', 'DD-MM-YYYY HH24:MI'), TO_DATE('04-02-2023 12:40', 'DD-MM-YYYY HH24:MI'), 13);

-- Doublons
INSERT INTO dsid_liv_ope.livraison VALUES (dsid_liv_ope.seq_id_livraison.nextval, 34, 4, 34, TO_DATE('03-02-2023 12:00', 'DD-MM-YYYY HH24:MI'), TO_DATE('03-02-2023 12:30', 'DD-MM-YYYY HH24:MI'), 9);
INSERT INTO dsid_liv_ope.livraison VALUES (dsid_liv_ope.seq_id_livraison.nextval, 35, 5, 35, TO_DATE('04-02-2023 12:00', 'DD-MM-YYYY HH24:MI'), TO_DATE('04-02-2023 12:15', 'DD-MM-YYYY HH24:MI'), 13);