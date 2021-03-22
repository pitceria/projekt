<?php
session_abort();
session_start();

if(isset($_POST['Submit'])){
    $nick = $_POST['nick'];
    $email = $_POST['email'];
    $data = $_POST['data_ur'];
    $haslo = $_POST['haslo'];
    $haslo2=$_POST['haslo_powtorz'];
    require_once('baza_danych.php');
    $sql_mail = "select count(email) from uzytkownicy where email like '".$email."'";
    $mail_wynik = $conn->query($sql_mail);

  
    if(strlen($nick)<5){
        $_SESSION['error'] = "twoja nazwa jest zbyt krótka ";
        header('location:index.php');
        exit();
    }
    elseif($haslo2 !=$haslo){
        $_SESSION['error'] = "hasła nie są identyczne";
        header('location:index.php');
        exit();
    }
    elseif($mail_wynik->fetch_assoc()['count(email)']!=0){
        $_SESSION['error'] = "taki adres email jest już zarejestrowany w naszy systemie spróbuj zresetować hasło";
        header('location:index.php');
        exit();
    }
    
    else{
        
        $nick = $conn->real_escape_string($nick);
        $email = $conn->real_escape_string($email);
        $data = $conn->real_escape_string($data);
        $haslo = $conn->real_escape_string($haslo);
        $haslo = md5($haslo);
        $kod_weryfikacyjny = md5(time().$nick);//tu by wypadało zmienić na coś innego niz md5 
        $sql = "insert into uzytkownicy values(null,'$nick','$data','$kod_weryfikacyjny',0,1,'$email','$haslo')";
        $insert =$conn->query($sql);
        if($insert){
            echo "succes";
            //próba wysyłania maila z localhostu zakończyła się niepowodzeniem miejmy nadzieję że na serwerze będzie działać
            // unset($_SESSION['error']);
            // $to = $email;
            // $subject = "email verification" ;
            // $verification_messege = "hey there u wanna get verified <a href='http://localhost/projekt%20programowanie%20i%20administracja%20pitcernia/projekt2/weryfikacja.php?verify=$kod_weryfikacyjny'>so let it begin </a>";
            // $headers = "From: projektpitcernia@gmail.com \r \n";
            // $headers .="MIME-Vaersion: 1.0 "."\r\n";
            // $headers .="Content-type:text/html;charset=UTF-8"."\r\n";
            // mail($to,$subject,$verification_messege,$headers);

            $_SESSION['messege'] = "pomyślnie zarejestrowano proszę sprawdzić skrzynkę odbiorczą w celu weryfikacji konta  ";
            header('location:index.php');
            
            
            exit();
        }
       

    }
}


?>