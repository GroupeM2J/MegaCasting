<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Permet de gerer les header et footer qui sont statiques
 *
 * @author jblois
 */
class My_Template
{
    static function AfficherHeader($NomPage) 
    {
        echo '       
        <html>
        <head>
        <meta charset="UTF-8">
        <title>'.$NomPage.'-MegaCasting </title>
        </head>
        <body>
        <div class="navbar">
        <div class="navbar-inner">
        <ul class="nav">
        <li><a href="accueil.php">Accueil</a></li>
        <li><a href="listeOffres.php">Les Offres</a></li>
        <li><a href="partenaires.php">Nos Partenaires</a></li>
        <li><a href="description.php">Qui sommes nous?</a></li>
        <li><a href="contact.php">Nous contacter</a></li>
        <li><a href="connexion.php">Se connecter</a></li>
        <li><a href="inscription.php">S\'inscrire</a></li>
        </ul>
        </div>
        </div>';
    }
    
    static function AfficherFooter() 
    {
        echo '</body>
              </html>';
    }
}

?>
