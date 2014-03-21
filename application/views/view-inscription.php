             <form method="post" action="" enctype="multipart/form-data"><div>
             
                 <h2> Création d'identifiant : </h2>
             <div>
                     
                <label for = "Identifiant" > Identifiant : </label>
                <input id="Identifiant" type ="text" name="Identifiant"<?php restore('Identifiant') ?>/>
             </div>
                 
                 <div>
                <label for = "password" > Mot de passe : </label>
                <input type="password" name="password" >
                 </div>
                 
             <div>    
                 <label for = "passwordConf" > Confirmation du passe : </label>
                <input type="passwordConf" name="passwordConf" >
                 </div>
                 
                 <h4>Informations personnelles :</h4>

                 <div>
                 <input id="Femme" type="radio" name="radio" value="1" /> <label for="Femme"> Femme</label>
                <input id="Homme" type="radio"  name="radio" value="2" /> <label for="Homme" > Homme </label>    
                 </div>
                 
                 <div>
                <label for = "Age" > Age : </label>
                <input id="Age" type ="text" name="Age"<?php restore('Age') ?> />
                
                </div>
				 
                 <div>
                <label for = "Nom" > Nom : </label>
                <input id="Nom" type ="text" name="Nom"<?php restore('Nom') ?> />
                
                </div>
                 
               
                  <div>
                <label for = "Prenom" > Prenom : </label>
                <input id="Prenom" type ="text" name="Prenom" <?php restore('Prenom') ?>/>
                
                </div>
                 
            
                 
                     <div>
                <label for = "Telephone" > Téléphone : </label>
                <input id="Telephone" type ="text" name="Telephone"<?php restore('Telephone') ?> />
         
                </div>
                 
                 
                  <div>
                <label for = "Mail" > Mail : </label>
                <input id="Mail" type ="text" name="Mail"<?php restore('Mail') ?> />
         
                </div>
                 
                 
                  <div>
                  <h5>Votre descriptif : </h5>
                  <TD>
                  <TEXTAREA rows="4" name="descriptif">
                  </TEXTAREA>
                  </TD>
            
                </div>
