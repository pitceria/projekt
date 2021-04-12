<?php
session_start();
var_dump($_POST);
var_dump($_SESSION);
function addtocart(){
    require_once('maxid.php');
    require_once('baza_danych.php');
    $id = $_POST['id'];//pizzy
    $ilosc = $_POST['ilosc'] ;
    $opis = $_POST['opis'];
    $_SESSION['koszyk'][] = [$id,$ilosc,$opis];
    $sql1 = "insert into zamowienia values(null,0)";
    
    // $sql3 = "insert into zawartosc_zamowien_pizza values(".getmaxid("zamowienia","idzamowienia").",".$id.",".$ilosc.",'".$opis."',".date("Y-m-d").",".date("H:i:s").",null,0)";
    // $sql3 = 'insert into zawartosc_zamowien_pizza values('.getmaxid("zamowienia","idzamowienia").",$id,$ilosc,$opis,'".date('Y-m-d')."','".date('H:i:s')."',null,0)";
    
    // var_dump($_SESSION);
    // var_dump($sql2);
    // var_dump($sql3);
    $conn->query($sql1);
    $sql2 = "insert into zamowienia_uzytkownikow values(".$_SESSION['iduzytkownicy'].",".getmaxid("zamowienia","idzamowienia").")";
    $conn->query($sql2);
    $sql3 = 'insert into zawartosc_zamowien_pizza values('.getmaxid("zamowienia","idzamowienia").",$id,$ilosc,'$opis',DATE(NOW()),TIME(NOW()),'TIME(NOW())',0)";
    var_dump($sql3);
    $conn->query($sql3);
}
addtocart();
// print_r($_SESSION);
echo serialize($_SESSION['koszyk']);


?>
<script>


</script>