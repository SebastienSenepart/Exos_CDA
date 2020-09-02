
  
    function Avertissement()

       { 
        var envoi = true;
        var nomentreprise = $("#entreprise").val();
        var nompersonne = $("#personne").val();
        var nomville = $("#ville").val();
        var codepostal = $("#codepostal").val();
        var addmail = $("#mail").val();
        var mailcorrect = new RegExp("(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*|"(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21\x23-\x5b\x5d-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])*")@(?:(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\[(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?|[a-z0-9-]*[a-z0-9]:(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21-\x5a\x53-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])+)\])");
        
       if (nomentreprise.length<1)
                    {
                      alert("Le nom de la société comporte au moins un caractère.");
                      envoi = false;
                      $("#err_entreprise").text("Le nom de la société comporte au moins un caractère.");
                    }
       if (nompersonne.length<1)
                    {
                      alert("Le nom de la personne comporte au moins un caractère.");
                      envoi = false;
                      $("#err_personne").text("Le nom de la personne comporte au moins un caractère.");
                    }
       if (nomville.length<1)
                    {
                      alert("Le nom de la ville comporte au moins un caractère.");
                      envoi = false;
                      $("#err_ville").text("Le nom de la ville comporte au moins un caractère.");
                    }
       if (codepostal.length!==5)
                    {
                      alert("Entrez le code postal sur 5 chiffres svp.");
                      envoi = false;
                      $("#err_codepostal").text("Le code postal comporte cinq chiffres.");
                    }
       if (mailcorrect.test(addmail) == false) 
                    {
                      alert("Entrez un mail comprenant un @.");
                      envoi = false;
                      $("#err_societe").text("Le nom de la société comporte au moins un caractère.");
                    }

                    if (envoi == true) 
     { 
         document.forms[0].submit();
     } 
     else 
     {
         return false;
     }
} 
 
$("#btn_envoyer").click(function(e) 
{
    
    e.preventDefault();
 
    Avertissement();             
}); 


         
        
     