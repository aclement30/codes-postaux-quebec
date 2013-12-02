# ************************************************************
# Ajout du numéro de région touristique aux codes postaux du Québec, selon les critères gouvernementaux
#
# Auteur : Alexandre Clément (Nebbio)
#
# Sources :
#   - http://www.electionsquebec.qc.ca/francais/provincial/carte-electorale/entites-administratives-liees-a-un-code-postal-2011.php
#   - http://www.toponymie.gouv.qc.ca/ct/normes-procedures/regles-ecriture/comment-ecrire-region-administrative-touristique.html (nov. 2013)
#   - http://fr.wikipedia.org/wiki/Liste_des_municipalit%C3%A9s_r%C3%A9gionales_de_comt%C3%A9_du_Qu%C3%A9bec
# ************************************************************

# Abitibi-Témiscamingue
UPDATE `qc_postal_codes` SET `touristic_region_code` = 14 WHERE `touristic_region_code` IS NULL AND `admin_region_code` = '08';

# Bas-Saint-Laurent : exclus 12 municipalités de La Mitis et MRCs La Matanie & La Matapédia
UPDATE `qc_postal_codes` SET `touristic_region_code` = 3 WHERE `touristic_region_code` IS NULL AND `admin_region_code` = '01' AND `city_code` NOT IN (9005,9015,9020,9035,9040,9048,9055,9060,9065,9070,9077,9085) AND `mrc_code` NOT IN (70,80);

# Charlevoix : MRCs Charlevoix, Charlevoix-Est
UPDATE `qc_postal_codes` SET `touristic_region_code` = 5 WHERE `touristic_region_code` IS NULL AND `admin_region_code` = '03' AND `mrc_code` IN (150,160);

# Québec : Capitale-Nationale sauf Charlevoix
UPDATE `qc_postal_codes` SET `touristic_region_code` = 4 WHERE `touristic_region_code` IS NULL AND `admin_region_code` = '03' AND `mrc_code` NOT IN (150,160);

# Centre-du-Québec
UPDATE `qc_postal_codes` SET `touristic_region_code` = 20 WHERE `touristic_region_code` IS NULL AND `admin_region_code` = '17';

# Chaudière-Appalaches
UPDATE `qc_postal_codes` SET `touristic_region_code` = 6 WHERE `touristic_region_code` IS NULL AND `admin_region_code` = '12';

# Duplessis : MRCs de Sept-Rivières, la Minganie, Caniapiscau et la Basse-Côte-Nord
UPDATE `qc_postal_codes` SET `touristic_region_code` = 17 WHERE `touristic_region_code` IS NULL AND `admin_region_code` = '09' AND `mrc_code` IN (971,981,982,972);

# Manicouagan : Côte-Nord, excluant MRCs de Sept-Rivières, la Minganie, Caniapiscau et la Basse-Côte-Nord
UPDATE `qc_postal_codes` SET `touristic_region_code` = 16 WHERE `admin_region_code` = '09' AND `mrc_code` NOT IN (971,981,982,972);

# Cantons-de-l'Est : inclus MRC Brome-Missisquoi & La Haute-Yamaska
UPDATE `qc_postal_codes` SET `touristic_region_code` = 8 WHERE `touristic_region_code` IS NULL AND ( `admin_region_code` = '05' OR `mrc_code` IN (460,470) );

# Iles-de-la-Madeleine : agglomération Iles-de-la-Madeleine
UPDATE `qc_postal_codes` SET `touristic_region_code` = 1 WHERE `touristic_region_code` IS NULL AND `admin_region_code` = '11' AND `mrc_code` = 10;

# Gaspésie : Gaspésie (sauf Iles-de-la-Madeleine), ainsi que les 12 municipalités de La Mitis et MRCs La Matanie & La Matapédia
UPDATE `qc_postal_codes` SET `touristic_region_code` = 2 WHERE `touristic_region_code` IS NULL AND ( ( `admin_region_code` = '11' AND `mrc_code` != 10 ) OR `city_code` IN (9005,9015,9020,9035,9040,9048,9055,9060,9065,9070,9077,9085) OR `mrc_code` IN (70,80) );

# Lanaudière
UPDATE `qc_postal_codes` SET `touristic_region_code` = 10 WHERE `touristic_region_code` IS NULL AND `admin_region_code` = '14';

# Laurentides
UPDATE `qc_postal_codes` SET `touristic_region_code` = 11 WHERE `touristic_region_code` IS NULL AND `admin_region_code` = '15';

# Laval
UPDATE `qc_postal_codes` SET `touristic_region_code` = 19 WHERE `touristic_region_code` IS NULL AND `admin_region_code` = '13';

# Mauricie
UPDATE `qc_postal_codes` SET `touristic_region_code` = 7 WHERE `touristic_region_code` IS NULL AND `admin_region_code` = '04';

# Montérégie : excluant MRCs Brome-Missisquoi et Haute-Yamaska
UPDATE `qc_postal_codes` SET `touristic_region_code` = 9 WHERE `touristic_region_code` IS NULL AND `admin_region_code` = '16' AND `mrc_code` NOT IN (460,470);

# Montréal
UPDATE `qc_postal_codes` SET `touristic_region_code` = 12 WHERE `touristic_region_code` IS NULL AND `admin_region_code` = '06';

# Baie-James : MRCs Jamésie et Eeyou Istchee
UPDATE `qc_postal_codes` SET `touristic_region_code` = 18 WHERE `touristic_region_code` IS NULL AND `admin_region_code` = '10' AND `mrc_code` IN (991,993);

# Nunavik : MRC Kativik
UPDATE `qc_postal_codes` SET `touristic_region_code` = 21 WHERE `touristic_region_code` IS NULL AND `admin_region_code` = '10' AND `mrc_code` = 992;

# Outaouais
UPDATE `qc_postal_codes` SET `touristic_region_code` = 13 WHERE `touristic_region_code` IS NULL AND `admin_region_code` = '07';

# Saguenay–Lac-Saint-Jean
UPDATE `qc_postal_codes` SET `touristic_region_code` = 15 WHERE `touristic_region_code` IS NULL AND `admin_region_code` = '02';

# Source :
#   - http://www.toponymie.gouv.qc.ca/ct/normes-procedures/regles-ecriture/comment-ecrire-region-administrative-touristique.html (nov. 2013)
#   - http://fr.wikipedia.org/wiki/Liste_des_municipalit%C3%A9s_r%C3%A9gionales_de_comt%C3%A9_du_Qu%C3%A9bec