<?php
require_once('klasy.php');
require_once("baza_danych.php");
session_start();
// var_dump($_SESSION['koszyk']);
?>
<div id="paneldointerakcjikoszyk">
<?php
require_once("ustawkoszyk.php");
setkoszyk($_SESSION['iduzytkownicy']);

?>
<div class="container"><div class="row">
<div id="koszykprzedstawienie" class="col-6" onclick="zmienwidokzamowien('nowe')">To jest twoj koszyk</div><div id="dawnezamowienia" class="col-6" onclick="zmienwidokzamowien('stare')">A tu są zamówienia juz zapłacone</div>
</div></div>

<div id='nowezam'>
<?php
// var_dump($_SESSION['koszyk']);

if(count($_SESSION['koszyk'])==0){
    echo "woow jak tu pusto aż wiatr hula moze cos zamowisz ";
}

foreach($_SESSION['koszyk'] as $key =>$value){
    
    if($value->status == 0){
          $value->get_content();
    
    // var_dump($_SESSION['koszyk']);
    //  echo serialize($value);
    $value->show_yourself_as_a_beautiful_div();
    $value->wypiszzawartosc();
    }

  
   
}

?>
</div>
<div id='starezam'>
<?php
// var_dump($_SESSION['koszyk']);

if(count($_SESSION['koszyk'])==0){
    echo "woow jak tu pusto aż wiatr hula moze cos zamowisz ";
}

foreach($_SESSION['koszyk'] as $key =>$value){
    
    if($value->status == 1){
        
    $value->get_content();
    
    // var_dump($_SESSION['koszyk']);
    //  echo serialize($value);
    $value->show_yourself_as_a_beautiful_div();
    $value->wypiszzawartosc();


    }

    
   
}

?>
</div>
</div>
