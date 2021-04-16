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

$sumastarychzamowien= 0;
$sumanowychzamowien= 0;
$sumailoscinowychzamowien=0;
$sumailoscistarychzamowien=0;
$tmpiteratornowe = 0;
$tmpiteratorstare = 0;
foreach ($_SESSION['koszyk'] as $key => $valu) {
    $valu->get_content();
    if($valu->status == 0){
      
        $tmpiteratornowe++;
        $sumanowychzamowien += $valu->returnsumacenzamowien();
        $sumailoscinowychzamowien += count($valu->pizze_w_srodku);
        
    }
    elseif($valu->status == 1) {
        $tmpiteratorstare++;
        $sumastarychzamowien +=$valu->returnsumacenzamowien();
        $sumailoscistarychzamowien += count($valu->pizze_w_srodku);
    }
}

?>
<div class="container"><div class="row">
<div id="koszykprzedstawienie" class="col-6" onclick="zmienwidokzamowien('nowe')">To jest twoj koszyk</div><div id="dawnezamowienia" class="col-6" onclick="zmienwidokzamowien('stare')">A tu są zamówienia juz zapłacone</div>
</div></div>

<div id='nowezam'>


<div> suma cen : <?php echo $sumanowychzamowien." w ".$sumailoscinowychzamowien." pizzach ";?></div>
<?php

foreach($_SESSION['koszyk'] as $key =>$value){
    
    if($value->status == 0){
        // $tmpiteratornowe++;
        //   $value->get_content();
 
    $value->show_yourself_as_a_beautiful_div('aktywne');
    $value->wypiszzawartosc();
    }
    
}
if(!$tmpiteratornowe){
    echo "woow jak tu pusto aż wiatr hula moze cos zamowisz ";
}

?>
</div>

<div id='starezam'>
<div> wartosc : <?php echo $sumastarychzamowien ." w ".$sumailoscistarychzamowien." pizzach ";?></div>
<?php


foreach($_SESSION['koszyk'] as $key =>$val){
    
    
    if($val->status == 1){
        // $val->get_content(); 
        // $tmpiteratorstare ++;
        $val->show_yourself_as_a_beautiful_div('przeszle');
        $val->wypiszzawartosc('zawartoscbylychzamowien');
        
    }
   
}

if(!$tmpiteratorstare){
    echo "woow jak tu pusto aż wiatr hula moze cos zamowisz  a póżniej sfinalizujesz transakcje";
} 
?>
</div>

<!-- </div> -->
