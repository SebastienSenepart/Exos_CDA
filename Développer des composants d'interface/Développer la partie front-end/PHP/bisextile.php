<?php


$tableau = array(
    "Janvier"=>"31",
    "Février" => "28",
    "Mars" => "31",
    "Avril" => "30",
    "Mai" => "31",
    "Juin" => "30",
    "Juillet" => "31",
    "Août" => "31",
    "Septembre" => "30",
    "Octobre" => "31",
    "Novembre" => "30",
    "Décembre" => "31"
);


echo "<table><tr><td><b>Mois</b></td><td><b>Nombre de jours</b></td></tr>";
foreach ($tableau as $cle => $valeur)
  { 
    echo "<tr><td>$cle</td><td>$valeur</td></tr>";
  }
echo "</table></br>";

asort($tableau);

echo "<table><tr><td><b>Mois</b></td><td><b>Nombre de jours par ordre croissant</b></td></tr>";
foreach ($tableau as $cle => $valeur)
  { 
    echo "<tr><td>$cle</td><td>$valeur</td></tr>";
  }
echo "</table>";



?>

