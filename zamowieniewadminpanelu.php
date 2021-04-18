<?php 
require_once('baza_danych.php');
require_once('klasy.php');
// var_dump($_POST);
$sqlzaw = "SELECT * FROM `zawartosc_zamowien_pizza` WHERE zamowienia_id =".$_POST['nr'];
$buf = $conn->query($sqlzaw)->fetch_all()[0];
// var_dump($buf);
 $danezamowienie = new zamowienie($buf[0],$buf[1],$buf[2],$buf[3],$buf[4],$buf[5]);
$danezamowienie->get_content();
// var_dump($danezamowienie);
$danezamowienie->wypiszzawartosc('zawartoscbylychzamowien');


?>