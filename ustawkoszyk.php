<?php

function setkoszyk($id_user){
require_once('klasy.php');

global $conn;

$sqlkoszyk = "SELECT * from zawartosc_zamowien_pizza where iduzytkownicy = $id_user";
$sqlzawartosc = "SELECT * from zawartosc_zamowien_has_pizza JOIN pizza on pizza.idpizza = zawartosc_zamowien_has_pizza.pizza_idpizza
 JOIN zawartosc_zamowien_pizza on zawartosc_zamowien_pizza.zamowienia_id=zawartosc_zamowien_has_pizza.zawartosc_zamowien_pizza_zamowienia_id where zawartosc_zamowien_pizza.iduzytkownicy =$id_user";


$koszykwynik = $conn->query($sqlkoszyk)->fetch_all();
$tablicazklas = [];
if(count($koszykwynik)!=0){
    foreach($koszykwynik as $key=>$value){
    $tablicazklas[] = new zamowienie($value[0],$value[1],$value[2],$value[3],$value[4],$value[5]);
}
}


$_SESSION['koszyk'] = $tablicazklas; 

}


?>