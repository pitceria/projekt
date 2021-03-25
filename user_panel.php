<?php
function wypaddoindexuerror($error_wiadomosc){
  $_SESSION['error'] = $error_wiadomosc;
  header('location:index.php');
  exit();
} 
?>

<?php
session_start();
var_dump($_SESSION);
$isloggedin = $_SESSION['isloggedin'];
if($isloggedin){

}
else{
  // $_SESSION['error'] = "nie jesteś zalogowany prosimy sie zalogować";
  // header('location:index.php');
  // exit();
  wypaddoindexuerror("nie jesteś zalogowany prosimy sie zalogować");//nie testowany ale myśle że ciekawy pomysł
}
?>

<!doctype html>

<html lang="en">
<head>
  <meta charset="utf-8">

  <title></title>
  <meta name="description" content="">
  <meta name="author" content="">

  <link rel="stylesheet" href="css.css">

</head>

<body>
    <a href='wyloguj.php'>wyloguj</a>
    <a href='user_settings.php'>ustawienia</a>
<?php 
echo"<br/>";
//wypisz dane usera 
foreach ($_SESSION as $key => $value) {
    echo $key." : ".$value."<br/>";
}
//pokaz wszyskie pizze 
require_once('baza_danych.php');
$sql_pizza = "select * from pizza ";
$bufor =$conn->query($sql_pizza);
foreach ($bufor as $key => $value) {
  var_dump($key);
  echo "  </br>      ";
  var_dump($value);
  echo "<br/>";
}
?>

  <script src="js/scripts.js"></script>
</body>
</html>
