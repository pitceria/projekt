<?php

session_start();
require_once('baza_danych.php');
@$email = $_POST['email'];
@$haslo = md5($_POST['haslo']);
@$sql="select iduzytkownicy,nick,imie,nazwisko,adres,is_admin,data_urodzenia,is_verified,is_active,email,haslo,count(iduzytkownicy) as count,verification_key from uzytkownicy where email like '".$email."'";
@$bufor =$conn->query($sql);
@$row = $bufor->fetch_assoc();
// $verificode = 
var_dump($_POST);
var_dump($row);
var_dump($_SESSION);
//nie moze byc tutaj bo przy zapomniales hasla nie ma emaila 
// if($_POST['email']==""){
//     $_SESSION['error'] ="prosze wpisać adres email " ;
//     header('location:index.php');
//     exit();
// }elseif($_POST['haslo']==""){
//     $_SESSION['error'] ="prosze wpisac haslo" ;
//     header('location:index.php');
//     exit();
// }

if(@$_POST['btn'] == "zaloguj"){
    if($_POST['email']==""){
        $_SESSION['error'] ="prosze wpisać adres email " ;
        header('location:index.php');
        exit();
    }elseif($_POST['haslo']==""){
        $_SESSION['error'] ="prosze wpisac haslo" ;
        header('location:index.php');
        exit();
    }
echo "<br/>";
var_dump($row['is_active']);
if(isset($row['email'])){
    $checks = [
        $row['is_verified']=>"nie jesteś zweryfikowany przesłaliśmy link weryfikujący na podany przez ciebie adres email w celu weryfikacji należy go kliknąć w przypadku gdyby nie dotarł prosimy o kliknięcie w ten link w celu powtórnego wysłania <a><a/>",
        $haslo == $row['haslo'] =>"wprowadzone hasło nie jest prawidłowe ",
        $row['is_active'] != "0" => "twoje konto zostało usuniete  tej operacji nie można cofnąć (tak łatwo)",
        
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
                $_SESSION['koszyk'] = [];
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
            exit();
}}
else if(@$_POST['btn'] == "zapomiales hasla?"){


    echo "dzialaa";
    if($email == ""){
            $_SESSION['messege'] = "nalezy wpisac adres email w celu zmiany hasla ";
            header('location:index.php');
            exit();
            
    }
    else if($row['count'] == 0 ){
        $_SESSION['error'] = "takiego adresu email nie ma w naszej bazie danych a co za tym idzie nie jest on powiązany z żadnym kontem prosze sie zarejstrowac lub sprawdzic poprawnosc wpisanego adresu email  ";
            header('location:index.php');
            exit();
    }




    require_once('sendmail.php');
    $link = "<a href='http://localhost/projekt%20programowanie%20i%20administracja%20pitcernia/projekt2/weryfikacja.php?vkey=".$row['verification_key']."&cel=zmianahasla'>link do zmiany hasla </a>";
    sendmail($email,$link);
}

//nieproszone wejscie z palca prze sciezke jescze trzeba cos z tym zrobic bo nie dziala 

// if(isset($_SESSION['islogged'])){
//     if($_SESSION['islogged'] == 1 ){
//         // $_SESSION['error'] = "takiego adresu email nie ma w naszej bazie danych a co za tym idzie nie jest on powiązany z żadnym kontem prosze sie zarejstrowac lub sprawdzic poprawnosc wpisanego adresu email  ";
//             header('location:user_panel.php');
//             exit();
//     }
// }
// else{

//     header('location:index.php');
//     exit();
// }

    
               

                
 
// var_dump($_SESSION);

// header("location:user_panel.php")
// // albo jezeli to admin to  daj mu wybór gdzie chce iść 
// header('location:admin_panel.php')
?>