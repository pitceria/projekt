<?php
session_start();
var_dump($_POST);
// var_dump($_SESSION);
require_once('baza_danych.php');
function addtocart(){
    require_once('maxid.php');
    
    global $conn;
    $id = $_POST['id'];//pizzy
    $ilosc = $_POST['ilosc'] ;
    $opis = $_POST['opis'];
    // $nr_zamowienia = $_SESSION['gdziewlozyc'];//tutaj moze byc wartość string jako nowy koszyk wtedy trzeba zrobic nowe zamowienie i inaczej to razpatrzyć // chyba nie z sesji tylko z posta 
    $nr_zamowienia = $_POST['gdziewlozyc'];
    $status = 0;
    if($nr_zamowienia =="nowy koszyk"){
        $sql1 = "INSERT into zawartosc_zamowien_pizza VALUES(null,".$_SESSION['iduzytkownicy'].",DATE(NOW()),TIME(NOW()),'TIME(NOW())' ,0)";
        $conn->query($sql1);
        $sql2 = "INSERT into zawartosc_zamowien_has_pizza VALUES(".getmaxid("zawartosc_zamowien_pizza","zamowienia_id").",$id,$ilosc,'".$opis."',0)";
        
        require_once("ustawkoszyk.php");
        setkoszyk($_SESSION['iduzytkownicy']);
    }
    else{
        
        $sql2 = "INSERT into zawartosc_zamowien_has_pizza VALUES(".$nr_zamowienia.",$id,$ilosc,'".$opis."',0)";
        
    }
    
    $conn->query($sql2);
}
addtocart();
// print_r($_SESSION);
// echo serialize($_SESSION['koszyk']);


?>
<script>


</script>