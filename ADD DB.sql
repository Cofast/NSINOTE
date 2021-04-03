INSERT INTO Type (nomType)
VALUES 
   ("Eleve"),
   ("Parent"),
   ("Professeur"),
   ("CPE");

INSERT INTO Trimestre (description)
VALUES 
   ("Premier trimestre de l'année"),
   ("Deuzieme trimestre de l'année"),
   ("Troisieme trimestre de l'année");

INSERT INTO Matiere (nomMatiere)
VALUES 
   ("Mathematiques"),
   ("Numerique et science de l'informtique"),
   ("Physique-Chimie"),
   ("Science de la Vie et de la Terre"),
   ("Science Economique et Sociale"),
   ("Langue et Litterature Etrangere"),
   ("Histoire Geographie et Geopolitique"),
   ("Philosophie"),
   ("Enseignement scientique : PC"),
   ("Enseignement scientique : SVT"),
   ("Anglais LV1"),
   ("Espagnol LV2"),
   ("Allemand LV2"),
   ("Chinois LV3"),
   ("Latin LV3");

INSERT INTO Utilisateur (idType, MDP)
VALUES
	(1, "motdepasse"),
	(1, "mdp123456"),
	(1, "password"),
	(1, "123456"),
	(1, "ent_user"),
	(1, "motdepasse"),
	(2, "mdp123456"),
	(2, "password"),
	(2, "123456"),
	(2, "ent_user"),
	(2, "motdepasse"),
	(2, "mdp123456"),
	(3, "password"),
	(3, "123456"),
	(3, "ent_user"),
	(3, "motdepasse"),
	(3, "mdp123456"),
	(3, "password"),
	(3, "123456"),
	(3, "ent_user"),
	(3, "motdepasse"),
	(4, "mdp123456"),
	(2, "password"),
	(2, "123456"),
	(2, "ent_user"),
	(2, "motdepasse"),
	(2, "mdp123456"),
	(2, "password");

INSERT INTO Professeur (idU, nom, prenom, telephone, adresse)
VALUES
	(13, "Dupond", "Alaïs", "06 00 ..", "3 rue ..."),
	(14, "Dupond", "Bertrand", "06 00 ..", "3 rue ..."),
	(15, "Petit", "Claire", "06 00 ..", "3 rue ..."),
	(16, "Barbier", "Camille", "06 00 ..", "3 rue ..."),
	(17, "Giraud", "Clotilde", "06 00 ..", "3 rue ..."),
	(18, "Huet", "Damien", "06 00 ..", "3 rue ..."),
	(19, "Leroy", "Juliette", "06 00 ..", "3 rue ..."),
	(20, "Dubois", "Denis", "06 00 ..", "3 rue ..."),
	(21, "Durant", "Pénélope", "06 00 ..", "3 rue ...");

INSERT INTO CPE (idU, prenom, nom, telephone, adresse)
VALUES
	(22, "Morgane", "REY", "06 00 ..", "3 rue ...");

INSERT INTO Parent (prenom, nom, profession, adresse, telephone, idU)
VALUES
	("Violette", "Aubert", "", "3 rue ...", "06 00 ..", 7),
	("Sandrine", "Rolland", "", "3 rue ...", "06 00 ..", 8),
	("Rose", "", "Masson", "3 rue ...", "06 00 ..", 9),
	("Ophélie", "Collet", "", "3 rue ...", "06 00 ..", 10),
	("Hervé", "", "Lemaître", "3 rue ...", "06 00 ..", 11),
	("Julien", "", "Leroux", "3 rue ...", "06 00 ..", 12),
	("Gérard", "Aubert", "", "3 rue ...", "06 00 ..", 23),
	("Roger", "Rolland", "", "3 rue ...", "06 00 ..", 24),
	("Valentin", "", "Masson", "3 rue ...", "06 00 ..", 25),
	("Maxime", "Collet", "", "3 rue ...", "06 00 ..", 26),
	("Aurelie", "", "Lemaître", "3 rue ...", "06 00 ..", 27),
	("Sarah", "", "Leroux", "3 rue ...", "06 00 ..", 28);

INSERT INTO Classe (idProfesseurPrincipal, idCPE)
VALUES
	(2, 1),
	(5, 1);

INSERT INTO Eleve (responsable1, responsable2, idU, idClasse, prenom, nom, adresse, telephone)
VALUES
	(1, 7, 1, 1, "Nathan", "Aubert", "3 rue ...", "06 00 .."),
	(2, 8, 2, 1, "Enzo", "Rolland", "3 rue ...", "06 00 .."),
	(3, 9, 3, 2, "Karim", "Masson", "3 rue ...", "06 00 .."),
	(4, 10, 4, 2, "Carla", "Collet", "3 rue ...", "06 00 .."),
	(5, 11, 5, 1, "Mireille", "Lemaître", "3 rue ...", "06 00 .."),
	(6, 12, 6, 1, "Joséphine", "Leroux", "3 rue ...", "06 00 ..");

INSERT INTO Cours (idPr, idClasse, idM, heure, salle)
VALUES
	(2, 1, 2, "9H00", 16),
	(4, 1, 7, "13H30", 31),
	(3, 2, 12, "8H00", 128),
	(8, 2, 5, "17H00", 105),
	(6, 1, 6, "15H30", 117);

INSERT INTO Devoir (idCo, nTrimestre, corrige, coeff)
VALUES
	(3, 1, false, 2);

INSERT INTO Note (idD, idE)
VALUES
	(1, 1),
	(1, 2),
	(1, 3),
	(1, 4),
	(1, 5),
	(1, 6);

-- INSERT INTO Bulletin (idE, nTrimestre)
-- VALUES;

-- INSERT INTO Appreciation (texteAppreciation, idType, idB)
-- VALUES;