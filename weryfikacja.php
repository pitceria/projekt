<?php


session_start();
require_once('baza_danych.php');



if(isset($_GET['cel'])){
  if($_GET['cel']=="mail"){
    var_dump($_SESSION);
    if(isset($_SESSION['nowy_mail'])){
    $sql_zmiana_maila = "UPDATE uzytkownicy set email='{$_SESSION['nowy_mail']}' where verification_key ='".$_GET['vkey']."'";
    $conn->query($sql_zmiana_maila);
    $_SESSION['messege'] = "twoj adres email zostal zmieniony pomyslnie";
    var_dump($sql_zmiana_maila); 
    header('location:user_panel.php');
    exit();
    }
    else{
      $_SESSION['error']= "nowy mail nie może byc ustawiony poniewaz sesja wygasla prosimy powtorzyc operacje w tej samej przegladarce w trakcie trwania sesji  ";


    }


  }

  

}
else{
  $verifikey = $_GET['vkey'];
  // require_once('baza_danych.php');
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


}















?>

