<?php

$datefin = "14-07-2019";
$semaine = date('W', strtotime($datefin));
echo $semaine;
echo "</br>";

$datefinform = new Datetime("14-07-2021");
$datenow = new Datetime();
$diff = $datenow->diff($datefinform);
echo $diff->format('%R%a jours');

?>

