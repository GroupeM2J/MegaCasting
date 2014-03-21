<?php
    
    function restore ($pElement)
    {
        if(isset($_POST[$pElement]) == TRUE)
        {
            echo 'value="' , htmlentities($_POST[$pElement],ENT_QUOTES,'utf-8'),'"';
        }

    }

    function TestChiffre($Element)
    {
        $Element = trim($Element);
    
        if((  is_numeric($Element)== TRUE)||($Element == ''))
        {
            echo '<p> Veuiller renseigner une saisie valide. </p>';     
        }
     
    }
    

    function TestLettre($Element)
    {
        $Element = trim($Element);
    
   
        if(($Element == '')||(is_numeric($Element)== TRUE))
        {
            echo '<p> Veuiller renseigner une saisie valide. </p>';
        } 
            
    }
    
    
?>

