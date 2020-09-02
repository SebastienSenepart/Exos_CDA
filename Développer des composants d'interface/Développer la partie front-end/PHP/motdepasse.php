<?php

function complexmdp($mdp)
        {
          if (preg_match('/^(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9]).{8,}$/',$mdp) == true)
          {
        return true;
          }
          else
          {
              return false;
          }

        }

$resultat = complexmdp("TopSecret42");
var_dump($resultat);

?>