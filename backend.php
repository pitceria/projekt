<?php
session_start();

// include "baza_danych.php";


require_once('maxid.php');
require_once('baza_danych.php');

if(isset($_POST['search'])){
    $search = $_POST['search'];
    if(strlen($search)>3){
        echo getmaxid('pizza','idpizza');
        // echo $search;
        // $sqlzamowienia ="SELECT * FROM zamowienia JOIN zamowienia_uzytkownikow on zamowienia_uzytkownikow.idzamowienia = zamowienia.idzamowienia join zawartosc_zamowien_pizza on zamowienia.idzamowienia = zawartosc_zamowien_pizza.zamowienia_id";
        $sqlzamowienia =  "SELECT zamowienia.idzamowienia as idzam ,zamowienia_uzytkownikow.iduzytkownicy as iduser, ilosc,'dodatkowe informacje',data, godzina_przyjecia,godzina_wydania,jest_koszykiem,pizza_id,pizza.nazwa,pizza.skladniki_json,pizza.cena,pizza.rozmiar,pizza.sciezka_zdjecie FROM zamowienia JOIN zamowienia_uzytkownikow on zamowienia_uzytkownikow.idzamowienia = zamowienia.idzamowienia join zawartosc_zamowien_pizza on zamowienia.idzamowienia = zawartosc_zamowien_pizza.zamowienia_id join pizza on pizza.idpizza = zawartosc_zamowien_pizza.pizza_id";
        $nazwy = ["idzamowienia","iduzytkownika","ilosc","dodatkowe informacje","data","godzina przyjecia","godzina wydania","czy to koszyk","pizzaid","pizzanazwa","skladniki","cena","rozmiar","sciezka do zdjecia"];
        echo "<br/>";


        $bufor = $conn->query($sqlzamowienia)->fetch_all();
        echo "<br/>";
        var_dump($bufor);
        echo "<br/>";
        foreach ($bufor as $key => $value) {
            foreach ($value as $klucz => $wartosc) {
                // echo $key." : ".$wartosc."<br/>";
                if($klucz == 10){
                    $wartosc = implode(",", dejson($wartosc));
                }
                echo $nazwy[$klucz]." : ".$wartosc."<br/>";

            }
            echo "<br/>";
        }


    }
   
}
// SELECT * FROM zamowienia JOIN zamowienia_uzytkownikow on zamowienia_uzytkownikow.idzamowienia = zamowienia.idzamowienia join zawartosc_zamowien_pizza on zamowienia.idzamowienia = zawartosc_zamowien_pizza.zamowienia_id where
// SELECT zamowienia.idzamowienia as idzam ,zamowienia_uzytkownikow.iduzytkownicy as iduser, ilosc,'dodatkowe informacje',data , godzina_przyjecia,godzina_wydania,jest_koszykiem FROM zamowienia JOIN zamowienia_uzytkownikow on zamowienia_uzytkownikow.idzamowienia = zamowienia.idzamowienia join zawartosc_zamowien_pizza on zamowienia.idzamowienia = zawartosc_zamowien_pizza.zamowienia_id join pizza on 


// function getmaxid($tablica ,$nazwaid){
//     require_once('baza_danych.php');
//     $sqlmaxidtab = "SELECT max($nazwaid) as id from " .$tablica;
//     $bufor = $conn->query($sqlmaxidtab);
//     // var_dump($bufor->fetch_all());
//     // var_dump($bufor->fetch_all()[0]);
//     // var_dump($bufor->fetch_assoc()['id']);
//     // echo $conn->error;
//     // var_dump($sqlmaxidtab);
//     return $bufor->fetch_assoc()['id'];
// }

?>

