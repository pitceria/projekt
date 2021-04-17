<?php

session_start();

if(isset($_POST['Submit'])){
    $nick = $_POST['nick'];
    $imie = $_POST['imie'];
    $nazwisko = $_POST['nazwisko'];
    $adres = $_POST['adres'];
    $email = $_POST['email'];
    $data = $_POST['data_ur'];
    $haslo = $_POST['haslo'];
    $haslo2=$_POST['haslo_powtorz'];
    
    require_once('baza_danych.php');
    $sql_mail = "select count(email) from uzytkownicy where email like '".$email."'";
    $mail_wynik = $conn->query($sql_mail);
    $sql_nick = "select count(nick) from uzytkownicy where nick like '".$nick."'";
    $nick_wynik = $conn->query($sql_nick);
   
        require_once( 'walidacja.php');
        // ispasswordok($haslo,'index.php');


        $nick = $conn->real_escape_string($nick);
        $imie =  $conn->real_escape_string($imie);
        $nazwisko =  $conn->real_escape_string($nazwisko);
        $adres =  $conn->real_escape_string($adres);
        $email = $conn->real_escape_string($email);
        $data = $conn->real_escape_string($data);
        $haslo = $conn->real_escape_string($haslo);
        sprawdz_zmiany('all','index.php');
        $haslo = md5($haslo);
        
        var_dump($checks);
        $kod_weryfikacyjny = md5(time().$nick);//tu by wypadało zmienić na coś innego niz md5 
        $sql = "insert into uzytkownicy values(null,'$nick','$imie','$nazwisko','$data','$adres','$kod_weryfikacyjny',0,1,0,'$email','$haslo')";
        $insert =$conn->query($sql);
        if($insert){ 
            $_SESSION['messege'] = "pomyślnie zarejestrowano proszę sprawdzić skrzynkę odbiorczą w celu weryfikacji konta  ";
            $_SESSION['email'] = $email;
            $_SESSION['verificode'] = $kod_weryfikacyjny;          
            require_once('sendmail.php');
            // sendmail($email,"<a href='http://localhost/projekt%20programowanie%20i%20administracja%20pitcernia/projekt2/weryfikacja.php?vkey=$kod_weryfikacyjny'>link do weryfikacji</a>"); // localhost
            sendmail($email,"<a href='http://pitcernia.opole.pl/weryfikacja.php?vkey=$kod_weryfikacyjny'>link do weryfikacji</a>");//serwer
            
            var_dump($_SESSION);
            // header('location:sendmail.php');
            // exit();
            header('location:index.php');
            exit();
        }
        else{
            echo $conn->error;
            echo $sql;
        }
       

    // }
}


?>