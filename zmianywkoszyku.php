<?php
// var_dump($_POST);
require_once("baza_danych.php");
if(isset($_POST['zamid'])){
    echo "xd";
    $sqlusunzawatrosc ="DELETE from zawartosc_zamowien_has_pizza where  zawartosc_zamowien_pizza_zamowienia_id = ".$_POST['zamid'];
    
    $conn->query($sqlusunzawatrosc);
      $sqlusunzamowienie = "DELETE from zawartosc_zamowien_pizza where zamowienia_id = ".$_POST['zamid'];
   
    $conn->query($sqlusunzamowienie);
}
else{
    $sqlzmianywkoszyku;
if($_POST['todo'] == "dodaj"){
    $sqlzmianywkoszyku = "UPDATE zawartosc_zamowien_has_pizza SET ilosc = ilosc + 1";
}
elseif($_POST['todo'] == "odejmij"){
    
    $sqlzmianywkoszyku = "UPDATE zawartosc_zamowien_has_pizza SET ilosc = abs(ilosc - 1)";
}
elseif($_POST['todo'] == "usun"){
    $sqlzmianywkoszyku = "DELETE from zawartosc_zamowien_has_pizza ";
}
$tmpsql = $sqlzmianywkoszyku." where id_pk = {$_POST['towho']}";
// var_dump($tmpsql); 
$conn->query($tmpsql);
}


?>