<?php


function getmaxid($tablica ,$nazwaid){
    include('baza_danych.php');
    $sqlmaxidtab = "SELECT max($nazwaid) as id from " .$tablica;
    $bufor = $conn->query($sqlmaxidtab);
    // var_dump($bufor->fetch_all());
    // var_dump($bufor->fetch_all()[0]);
    // var_dump($bufor->fetch_assoc()['id']);
    // echo $conn->error;
    // var_dump($sqlmaxidtab);
    return $bufor->fetch_assoc()['id'];
}

function json($object){
//  return base64_encode(serialize($object));
 return serialize($object);
}
function dejson($json){
    // return unserialize(base64_decode($json));
    return unserialize($json);
}
function wypaddoindexuerror($error_wiadomosc){
    $_SESSION['error'] = $error_wiadomosc;
    header('location:index.php');
    exit();
  } 



?>