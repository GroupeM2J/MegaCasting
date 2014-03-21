<html>
    <head>
        <title>Contact - MegaCasting -</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width">
    </head>
    <body>
         <form method="post" action="" enctype="multipart/form-data">
        <h1> MegaCasting </h1>
        
        <div class="navbar">
        <div class="navbar-inner">
        <ul class="nav">
        <li><a href="accueil.php">Accueil</a></li>
        <li><a href="listeOffres.php">Les Offres</a></li>
        <li><a href="partenaires.php">Nos Partenaires</a></li>
        <li><a href="description.php">Qui sommes nous?</a></li>
        <li class="active"><a>Nous contacter</a></li>
        <li><a href="connexion.php">Se connecter</a></li>
        </ul>
        </div>
        </div>
        </form>

         <h1>Formulaire de contact :  </h1>
        
         <form method="post" action="" enctype="multipart/form-data"><div>
                 
                <label for = "Nom" > Nom : </label>
                <input id="Nom" type ="text" name="Nom" />
                
                </div>
            
            <div>
                <label for = "Prenom " > Prenom : </label>
                <input id="Prenom " type ="text" name="Prenom "/>
                
                </div>
            
            <div>
                <label for="Mail" > Mail : </label>
                <input id="Mail" type ="text" name="Mail"/>
                
                 </div>
            
           <div>
                <h3>Commentaires : </h3>
	    <TD>
	    <TEXTAREA rows="4" name="commentaires">
	    </TEXTAREA>
	    </TD>
            
                </div>
             
             
             <div>
                <input type ="submit" values ="envoyer"/>
            </div>
            
            
            <div>
                <input type ="reset" values ="effacer"/>
            </div>
            
         
  </form>
        
    </body>
</html>
