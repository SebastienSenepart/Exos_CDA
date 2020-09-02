<?php

$departements = array(
    "Hauts-de-france" => array("Aisne", "Nord", "Oise", "Pas-de-Calais", "Somme"),
    "Bretagne" => array("Côtes d'Armor", "Finistère", "Ille-et-Vilaine", "Morbihan"),
    "Grand-Est" => array("Ardennes", "Aube", "Marne", "Haute-Marne", "Meurthe-et-Moselle", "Meuse", "Moselle", "Bas-Rhin", "Haut-Rhin", "Vosges"),
    "Normandie" => array("Calvados", "Eure", "Manche", "Orne", "Seine-Maritime")
);

$i=0;

foreach ($departements as $region => $depts)
   
    {
      echo "$region : ";
      for ($i=0; $i<=(count($depts)-1); $i++)
         {echo $depts[$i].", ";}
        echo "</br>";    
    }

    echo "</br>";

    foreach ($departements as $region => $depts)
   
    {
      echo "$region : ".count($depts)." départements";
      echo "</br>"; 
    }   
?>
