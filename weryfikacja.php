<?php

$verifikey = $_GET['vkey'];
require_once('baza_danych.php');
 var_dump($verifikey);
$sqlweryfikacja = "update uzytkownicy set is_verified = 1 where verification_key like '".$verifikey."'";
// $sqlweryfikacja = "update uzytkownicy set is_verified = 1 where verification_key like \'$verifikey\'";

$verificationupdate = $conn->query($sqlweryfikacja);
if($verificationupdate){
  session_start();
  $_SESSION['messege'] = "zweryfikowano pomyślnie , już możesz się zalogować ";
  // echo"jestgit";
  header('location:index.php');
  exit();
}
else{
  echo $conn->error;
}






?>

