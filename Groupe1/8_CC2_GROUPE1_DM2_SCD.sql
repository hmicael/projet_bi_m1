--Table client Nom : Type 2 et Prenom: Type 1
    update dsid_liv_ope.client set nom_client = 'Thierry' where id_client = 1;
    update dsid_liv_ope.client set prenom_client = 'Kunda' where id_client = 1;
        
--Table Restaurant Type 3
    update dsid_liv_ope.Restaurant set code_restaurant= 'R01' where id_restaurant=1;

--Table moyen_paiement code_moyen_paiement: Type 0 
    update dsid_liv_ope.moyen_paiement set code_moyen_paiement='100' where id_moyen_paiement=1;

-- Génération de nouveaux commande/preparation/livraison  avec incluant les dimensions mises à jour afin de les diffuser au SI BI 
-- Insertion Commande(id_commande, id_client, id_menu, id_moyen_paiement, numero_commande, date_commande, montant_total)
INSERT INTO dsid_liv_ope.commande VALUES (dsid_liv_ope.seq_id_commande.nextval, 1, 1, 1, '01', TO_DATE('01-10-2023', 'DD-MM-YYYY'), 250.00);

-- Insertion Preparation(id_preparation, id_commande, id_restaurant, date_debut, date_fin)
INSERT INTO dsid_liv_ope.preparation VALUES (dsid_liv_ope.seq_id_preparation.nextval, 1, 1, TO_DATE('01-10-2023 17:00', 'DD-MM-YYYY HH24:MI'), TO_DATE('01-10-2023 17:40', 'DD-MM-YYYY HH24:MI'));

-- Insertion Livraison(id_livraison, id_preparation, id_livreur, numero_livraison, date_debut, date_fin, nombre_article_livre)
INSERT INTO dsid_liv_ope.livraison VALUES (dsid_liv_ope.seq_id_livraison.nextval, 1, 1, 1, TO_DATE('01-10-2023 17:40', 'DD-MM-YYYY HH24:MI'), TO_DATE('01-01-2023 17:55', 'DD-MM-YYYY HH24:MI'), 10);
