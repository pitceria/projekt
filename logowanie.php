<?php

session_start();
require_once('baza_danych.php');
$email = $_POST['email'];
$haslo = md5($_POST['haslo']);
$sql="select iduzytkownicy,nick,data_urodzenia,is_varified,is_active,email,haslo from uzytkownicy where email like '".$email."'";
$bufor =$conn->query($sql);
$row = $bufor->fetch_assoc();



echo "<br/>";
if(isset($row['email'])){
    $checks = [
        // $row=>"taki email nie został zarejestrowany w naszej bazie danych proszę się zarejestrować ",
        $row['is_varified']=>"nie jesteś zweryfikowany przesłaliśmy link weryfikujący na podany przez ciebie adres email w celu weryfikacji należy go kliknąć",
        $haslo == $row['haslo'] =>"wprowadzone hasło nie jest prawidłowe ",
    
    ];
foreach ($checks as $key => $value) {

    
        if(boolval($key) ){

        }
        else{
            $_SESSION['error'] = $value;
            header('location:index.php');
            var_dump($_SESSION);
            echo "<br/>";
            var_dump($row);
            exit();
            break;
        }
    }
                $_SESSION['iduzytkownicy'] = $row['iduzytkownicy'];
                $_SESSION['nick'] = $row['nick'];
                $_SESSION['email'] = $row['email'];
                $_SESSION['data_ur'] = $row['data_urodzenia'];
                $_SESSION['isverified'] = $row['is_varified'];
                $_SESSION['haslo']= $row['haslo'];
                unset($_SESSION['error']);
                header('location:user_panel.php');
                exit();
  

}else{
    $_SESSION['error'] ="taki email nie został zarejestrowany w naszej bazie danych proszę się zarejestrować " ;
            header('location:index.php');
}


    
               

                
 
var_dump($_SESSION);

// header("location:user_panel.php")
// // albo jezeli to admin to  daj mu wybór gdzie chce iść 
// header('location:admin_panel.php')
?>