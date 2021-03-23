<?php

session_start();
require_once('baza_danych.php');
$email = $_POST['email'];
$haslo = md5($_POST['haslo']);
$sql="select iduzytkownicy,nick,data_urodzenia,is_varified,is_active,email,haslo from uzytkownicy where email like '".$email."'";
$bufor =$conn->query($sql);
$row = $bufor->fetch_assoc();
var_dump($row);
var_dump($haslo);
echo "<br/>";
$checks = [
    $row=>"taki email nie został zarejestrowany w naszej bazie danych proszę się zarejestrować ",
    $row['is_varified']=>"nie jesteś zweryfikowany przesłaliśmy link weryfikujący na podany przez ciebie adres email w celu weryfikacji należy go kliknąć",
    $haslo == $row['haslo'] =>"wprowadzone hasło nie jest prawidłowe ",

]

foreach ($checks as $key => $value) {
    if($key){

    }
    else{
        $_SESSION['error'] = $value;
        header('location:index.php');
        exit();
        break;
    }
                echo "działa";
                
                $_SESSION['iduzytkownicy'] = $row['iduzytkownicy'];
                $_SESSION['nick'] = $row['nick'];
                $_SESSION['email'] = $row['email'];
                $_SESSION['data_ur'] = $row['data_urodzenia'];
                $_SESSION['isverified'] = $row['is_varified'];
                $_SESSION['haslo']= $row['haslo'];
                unset($_SESSION['error']);
                header('location:user_panel.php');
                exit();
}
// if($row){
//     if($row['is_varified']){
//         if($haslo == $row['haslo']){
//                 echo "działa";
                
//                 $_SESSION['iduzytkownicy'] = $row['iduzytkownicy'];
//                 $_SESSION['nick'] = $row['nick'];
//                 $_SESSION['email'] = $row['email'];
//                 $_SESSION['data_ur'] = $row['data_urodzenia'];
//                 $_SESSION['isverified'] = $row['is_varified'];
//                 $_SESSION['haslo']= $row['haslo'];
//                 unset($_SESSION['error']);
//                 header('location:user_panel.php');
//                 exit();
//             }
//             else{
//                 $_SESSION['error'] = "wprowadzone hasło nie jest prawidłowe ";
//                 header('location:index.php');
//                 exit();
//             }
//     }
//     else{
//         $_SESSION['error'] = "nie jesteś zweryfikowany przesłaliśmy link weryfikujący na podany przez ciebie adres email w celu weryfikacji należy go kliknąć";
//         header('location:index.php');
//         exit();
//     }
    
// }
// else{
//     $_SESSION['error'] = "taki email nie został zarejestrowany w naszej bazie danych proszę się zarejestrować ";
//     header('location:index.php');
//     exit();
// }
var_dump($_SESSION);

// header("location:user_panel.php")
// // albo jezeli to admin to  daj mu wybór gdzie chce iść 
// header('location:admin_panel.php')
?>