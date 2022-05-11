<?PHP
$titel=str_replace("_"," ",substr(__FILE__,strpos(__FILE__,"opdracht"),-4));
include('opdracht_begin.php');
/****************************
TYP HIERONDER JOUW PHPCODE
****************************/

for ($o=1; $o<=6; $o++) {
  $frequentie[$o]=0;  
}

function dobbelsteen() {
  $worp=1+rand(0,5);
  echo $worp." | ";
  return $worp;
}

function hoogte_bereken($f){
  $hoogst = max($f);
    for ($o=1; $o<=6; $o++) {
      $h[$o]=200*$f[$o]/$hoogst;
}
  return $h;
}

for ($n=0; $n<100; $n++) {
  $frequentie[dobbelsteen()]++;  
}



$hoogte = hoogte_bereken($frequentie);

echo "<br>";
for($o=1; $o<=6;$o++){
  echo round($hoogte[$o]).'<br>';
}
echo "<br>";

echo '<h2>Staafdiagram frequentie</h2>';
for ($o=1; $o<=6; $o++) {
  echo '<img src="images/FF4D00-0.8.png" style="width: 100px; height: '.$hoogte[$o].'px; margin-left: 5px;">';  
}

/****************************
EINDE VAN JOUW PHPCODE
****************************/
include('opdracht_eind.php');
?>