<?php

session_start();
require_once('baza_danych.php');
$email = $_POST['email'];
$haslo = md5($_POST['haslo']);
$sql="select iduzytkownicy,nick,imie,nazwisko,adres,is_admin,data_urodzenia,is_verified,is_active,email,haslo from uzytkownicy where email like '".$email."'";
$bufor =$conn->query($sql);
$row = $bufor->fetch_assoc();



echo "<br/>";
if(isset($row['email'])){
    $checks = [
        // $row=>"taki email nie został zarejestrowany w naszej bazie danych proszę się zarejestrować ",
        $row['is_verified']=>"nie jesteś zweryfikowany przesłaliśmy link weryfikujący na podany przez ciebie adres email w celu weryfikacji należy go kliknąć w przypadku gdyby nie dotarł prosimy o kliknięcie w ten link w celu powtórnego wysłania <a><a/>",
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
                $_SESSION['imie'] = $row['imie'];
                $_SESSION['nazwisko'] = $row['nazwisko'];
                $_SESSION['adres'] = $row['adres'];
                $_SESSION['email'] = $row['email'];
                $_SESSION['data_ur'] = $row['data_urodzenia'];
                $_SESSION['isverified'] = $row['is_verified'];
                $_SESSION['haslo']= $row['haslo'];
                $_SESSION['isloggedin'] = true;
                unset($_SESSION['error']);
                unset($_SESSION['verificode']);
                unset($_SESSION['haslo']);
                var_dump($row);
                if($row['is_admin']=='1'){
                    echo "jestes admin";
                    ?>
                    <a href="user_panel.php">idz do panelu uzytkownika</a><br/>
                    <a href="admin_panel.php">idz do panelu administratora</a>
            <?php

                }
                else{
                    header('location:user_panel.php');
                    exit();
                }
                
  

}else{
    $_SESSION['error'] ="taki email nie został zarejestrowany w naszej bazie danych proszę się zarejestrować " ;
            header('location:index.php');
}


    
               

                
 
// var_dump($_SESSION);

// header("location:user_panel.php")
// // albo jezeli to admin to  daj mu wybór gdzie chce iść 
// header('location:admin_panel.php')
?>