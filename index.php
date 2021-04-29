<DOCTYPE hmtl>
<html lang="fr">
	<head>
		<meta charset="utf-8" />
		<link rel="stylesheet" href="Style/style.css"/>
		<title>NSINOTE - Login</title>
		<p style="text-align:center"><img src="logo.png" style="width:300px;height:300px";></p>
	</head>
	<body>
		
		<form method="post" action="index.php" style="width:500px;height:300px;">
		<h1>Connexion</h1>
				<p>
				Identifiant<br/>
				<input type="text" name="identifiant" placeholder="Entrer le nom d'utilisateur" required><br/>
				
				Mot de passe<br/>
				<input type="password" name="password"  placeholder="Entrer le mot de passe" required><br/>
				
				<input type="radio" name="type" value="eleve"/><label for="eleve" colk>Eleve</label>
				<input type="radio" name="type" value="parent"/><label for="parent">Parent</label>
				<input type="radio" name="type" value="professeur"/><label for="professeur">Professeur</label>
				<input type="radio" name="type" value="cpe"/><label for="cpe">CPE </label>
				
				<br/><input type="submit" value="Connexion" onclick = "test.html">
				<br/><input type="reset" value="Reinitialiser" onclick = "index.php">
			<p>
		</form>
		
		
		<?php			
			if (isSet($_POST["identifiant"]) & !empty($_POST["identifiant"])
			  & isSet($_POST["password"]) & !empty($_POST["password"])
		      & isSet($_POST["type"]) & !empty($_POST["type"])) {  
			
				$link = mysqli_connect("localhost", "root", "", "NSINOTE");
				if ($link) {
										
					$infos = explode(".", $_POST["identifiant"]);
					if (count($infos) != 3) {
						echo "Identifiant invalide";
						exit();
					}
				
					$id = "";
					if ($_POST["type"] == "eleve") {
						$id = "idE";
					} else if ($_POST["type"] == "parent") {
						$id = "idPa";
					} else if ($_POST["type"] == "professeur") {
						$id = "idPr";
					} else if ($_POST["type"] == "cpe") {
						$id = "idCPE";
					}

					$query = "SELECT prenom, nom, idU FROM " . $_POST["type"] .  " WHERE " . $id . " = " . $infos[2];
					$res = mysqli_query($link, $query);
					if (!$res) {
						echo mysqli_error($link);
						exit();
					}
					
					$user = mysqli_fetch_array($res);
					if ($infos[0] == $user["prenom"]
					  & $infos[1] == $user["nom"]) {
	
						$query = "SELECT MDP FROM Utilisateur WHERE idU = " . $user["idU"];
						$res = mysqli_query($link, $query);
						if (!$res) {
							echo mysqli_error($link);
							exit();
						}
						
						$user = mysqli_fetch_array($res);
						if ($_POST["password"] == $user["MDP"]) {
							header("Location: http://localhost/NSINOTE/home" . $_POST["type"] . ".html");
							exit();
	
						} else {   
							echo  "Mot de passe incorrect";
							exit();
						}
		
					} else {
						echo "Identifiant incorrect";
					}
					
				} else {
					echo "Impossible de se connecter à la base de données";
					exit();
				}
			}
		?>

	</body>
</html>