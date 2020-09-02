
<?php

function somme($tableau)
{
$i = 0;
$sum=0;
for ($i=0; $i<=(count($tableau)-1);$i++)
  {
    $sum+=$tableau[$i];
  }
  return $sum;
}

$tab = array(4, 3, 8, 2);
 $resultat = somme($tab);

 echo $resultat;

 ?>