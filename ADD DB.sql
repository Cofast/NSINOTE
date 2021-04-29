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
	(1, "zMz5qCOsyq"),
	(2, "sagLB7pK"),
	(2, "BIO01fLg"),
	(2, "xHifCdk99rd"),
	(2, "lKhBJ1ch5fm"),
	(2, "xdIpEMn48"),
	(2, "MiI5CxMl5"),
	(3, "HB50EvDA"),
	(3, "4aJ40B1a"),
	(3, "dGrccreHHK"),
	(3, "hdy0CMBO"),
	(3, "y5zbqCxhgs"),
	(3, "y8KJHEec6"),
	(3, "thC9msh36"),
	(3, "5nAGo87sh0"),
	(3, "hfaw3qvMpvDF"),
	(4, "rtjfh4aFN"),
	(2, "0LEmaifEm"),
	(2, "p40lc0fsIsai"),
	(2, "iFdu2pvJ7yy5"),
	(2, "KzDchD3kj"),
	(2, "69pzL9lF3"),
	(2, "rDAq0oMol");

INSERT INTO Professeur (idU, nom, prenom, telephone, adresse)
VALUES
	(13, "Dupond", "Alaïs", "0690062114", "3 rue du pont"),
	(14, "Dupond", "Bertrand", "0657806655", "3 rue du pont"),
	(15, "Petit", "Claire", "0686112040", "4 avenue tom pouce"),
	(16, "Barbier", "Camille", "0634421931", "10 Impasse du poil"),
	(17, "Giraud", "Clotilde", "0645806575", "14 rue de l’olympe"),
	(18, "Huet", "Damien", "0656724570", "54 rue Michel Troye"),
	(19, "Leroy", "Juliette", "0645469538", "4 avenue Merlin"),
	(20, "Dubois", "Denis", "0618762952", "14 rue de la foret"),
	(21, "Durant", "Pénélope", "0621243370", "1 rue du temps");

INSERT INTO CPE (idU, prenom, nom, telephone, adresse)
VALUES
	(22, "Morgane", "REY", "0655485685", "3 rue Hash");

INSERT INTO Parent (idPa,prenom, nom, profession, adresse, telephone, idU)
VALUES
	(1,"Violette", "Aubert", "Physico-chimiste", "14 rue de la Fontaine", "0640569555", 7),
	(2,"Sandrine", "Rolland", "Boulangère", "5 rue Massoire", "0618937178", 8),
	(3,"Rose", "Masson", "Fleuriste", "3 rue de la tulipe", "0693427651", 9),
	(4,"Ophélie", "Collet", "Medecin", "27 avenue Marie Curie", "0643307654", 10),
	(5,"Hervé", "Lemaître", "Enseignant", "4 rue de l’aubepine", "0674895371", 11),
	(6,"Julien", "Leroux", "Coiffeur", "6 bis avenue victor hugo", "0687906884", 12),
	(7,"Gérard", "Aubert", "Cordonnier", "14 rue de la Fontaine", "0643783044", 23),
	(8,"Roger", "Rolland", "Chauffeur de taxi", "5 rue Massoire", "0604643060", 24),
	(9,"Valentin", "Masson", "PDG Apple Inc", "3 rue de la tulipe", "0630589687", 25),
	(10,"Maxime", "Collet", "Ingénieur", "27 avenue Marie Curie", "0690860063", 26),
	(11,"Aurelie", "Lemaître", "Directrice", "4 rue de l’aubepine", "0660945396", 27),
	(12,"Sarah", "Leroux", "Tradeuse", "6 bis avenue victor hugo", "0639713689", 28);


INSERT INTO Classe (idProfesseurPrincipal, idCPE)
VALUES
	(2, 1),
	(5, 1);

INSERT INTO Eleve (responsable1, responsable2, idU, idClasse, prenom, nom, adresse, telephone)
VALUES
	(1, 7, 1, 1, "Nathan", "Aubert", "14 rue de la Fontaine", "0775695811"),
	(2, 8, 2, 1, "Enzo", "Rolland", "5 rue Massoire", "0742880152"),
	(3, 9, 3, 2, "Karim", "Masson", "3 rue de la tulipe", "0717460761"),
	(4, 10, 4, 2, "Carla", "Collet", "27 avenue Marie Curie", "0792510958"),
	(5, 11, 5, 1, "Mireille", "Lemaître", "4 rue de l’aubepine", "0713129691"),
	(6, 12, 6, 1, "Joséphine", "Leroux", "6 bis avenue victor hugo", "0774537908");

INSERT INTO Cours (idPr, idClasse, idM, heure, salle)
VALUES
	(2, 1, 2, "9H00", 16),
	(4, 1, 7, "13H30", 31),
	(3, 2, 12, "8H00", 128),
	(8, 2, 5, "17H00", 105),
	(6, 1, 6, "15H30", 117);

INSERT INTO Devoir (idCo, nTrimestre, corrige, coeff, noteMax)
VALUES
	(3, 1, null, 2, 20);

INSERT INTO Note (idD, idE, note)
VALUES
	(1, 1, 10),
	(1, 2, 15),
	(1, 3, 3),
	(1, 4, 19),
	(1, 5, 13),
	(1, 6, 16);
