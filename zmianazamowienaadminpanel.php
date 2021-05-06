<?php
require_once('baza_danych.php');
// var_dump($_POST);
$id = $_POST['nr'];
$co = $_POST['co'];



if($co == "zmienstatus"){
    $sqlzmienstatus = "update zawartosc_zamowien_pizza set status =1 ,godzina_wydania = TIME(NOW()) where zamowienia_id=".$id;
    $conn->query($sqlzmienstatus);
    var_dump($sqlzmienstatus);

}
elseif($co == "usun"){

    $sqlusunzamowienie = "delete from zawartosc_zamowien_pizza where zamowienia_id =".$id;
    $sqlusunzawartosczamowienia = "delete from zawartosc_zamowien_has_pizza where zawartosc_zamowien_pizza_zamowienia_id = ".$id;
    $conn->query('SET foreign_key_checks = 0');
    $conn->query($sqlusunzamowienie);
    $conn->query('SET foreign_key_checks = 0');
    $conn->query($sqlusunzawartosczamowienia);
    var_dump($sqlusunzawartosczamowienia);

}

?>
