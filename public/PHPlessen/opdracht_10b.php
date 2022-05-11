<?PHP
$titel=str_replace("_"," ",substr(__FILE__,strpos(__FILE__,"opdracht"),-4));
include('opdracht_begin.php');
/****************************
TYP HIERONDER JOUW PHPCODE
****************************/

require('database.php');
$straat = 'Aluminiumstraat';
$database = "postcode";
$DBverbinding = mysqli_connect($servernaam, $gebruikersnaam, $wachtwoord, $database);
echo "<h2>RESULTAAT</h2>";
$sql = "SELECT * FROM postcode WHERE straat= $straat ORDER BY positie ASC";
$adress = mysqli_query($DBverbinding, $sql);
      
while($adress = mysqli_fetch_assoc($adress)) {
  echo "<b>".$adress["straat"].".<br>";
}
mysqli_close($DBverbinding);  

/****************************
EINDE VAN JOUW PHPCODE
****************************/
include('opdracht_eind.php');
?>