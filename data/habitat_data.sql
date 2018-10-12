---------------
-- DATA TEST --
---------------
-- insérer un typologie d'habitation dans la table typoref 
INSERT INTO habitat.typoref (cd_typo, cd_table, lb_nom_typo, nom_jeu_donnees) 
VALUES (17, 'TYPO_PHYTO_CH', 'Unités_phytosociologiques_des_Cahiers_d''habitats', 'Unités phytosociologiques des Cahiers d''habitats');

--  insérer une unité d'habitation dans la table habref 
INSERT INTO habitat.habref (
    cd_hab, 
    fg_validite, 
    cd_typo, 
    lb_code, 
    lb_hab_fr, 
    lb_hab_fr_complet, 
    lb_hab_en, 
    lb_auteur,
    niveau,
    lb_niveau,
    cd_hab_sup
    ) 
VALUES (16265, 'NR', 17, '64.0.3.0.3', '<em>Caricion incurvae</em>','<em>Caricion incurvae</em> Br.-Bl. in Volk 1940', null, 'Br.-Bl. in Volk 1940', 5, 'Niveau 5', 8538);

-- insérer une liste d'habitat
INSERT INTO habitat.bib_list_habitat (list_name) 
VALUES ('Suivi Habitat Territoire');

-- Insérer habitat
INSERT INTO habitat.cor_list_habitat (id_list, cd_hab) 
VALUES (
    (SELECT id_list FROM habitat.bib_list_habitat WHERE list_name='Suivi Habitat Territoire'), 
    16265); -- CARICION INCURVAE