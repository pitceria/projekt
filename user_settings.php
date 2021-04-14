<?php
require_once("klasy.php");
session_start();
var_dump($_SESSION);
require_once("baza_danych.php");
$tmp = $_SESSION['iduzytkownicy'];
$sqluser_settings = "SELECT iduzytkownicy,nick,imie,email,nazwisko,data_urodzenia,adres,is_verified,verification_key from uzytkownicy where iduzytkownicy = $tmp";
$user_dane = $conn->query($sqluser_settings)->fetch_assoc();
// var_dump($sqluser_settings);

if (isset($_SESSION['error'])) {
    echo $_SESSION['error'];
    unset($_SESSION['error']);
} elseif (isset($_SESSION['messege'])) {
    echo $_SESSION['messege'];
    unset($_SESSION['messege']);
}
// unset($sql_update);


$iduzytkownika = $user_dane['iduzytkownicy'];
$nick = $user_dane['nick'];
$imie = $user_dane['imie'];
$nazwisko = $user_dane['nazwisko'];
$data = $user_dane['data_urodzenia'];
$adres = $user_dane['adres'];
$email = $user_dane['email'];
$isverified = $user_dane['is_verified'];
$isloggedin = $_SESSION['isloggedin'];
$verificode = $user_dane['verification_key'];
$_SESSION['verificode'] = $verificode;
// var_dump($sql_update);
echo "<br/>";
var_dump($iduzytkownika);
if (isset($_GET['co'])) {
    $tmpco = $_GET['co'];
    if ($tmpco == "dane") {
        // var_dump($tmpco);

        $nick = $_POST['nick'];
        $imie = $_POST['imie'];
        $nazwisko = $_POST['nazwisko'];
        $data_ur = $_POST['data_ur'];
        $adres = $_POST['adres'];

        // $sql_update_user_data = "UPDATE uzytkownicy set (nick,imie,,nazwisko,data_urodzenia,adres,)";
        $sql_update = "UPDATE uzytkownicy set nick = " . "'" . $nick . "'" . ",imie =" . "'" . $imie . "'" . ",nazwisko=" . "'" . $nazwisko . "'" . ",data_urodzenia=" . "'" . $data_ur . "'" . ",adres =" . "'" . $adres . "'" . " where iduzytkownicy = $iduzytkownika";
        //dorobić walidacje //przerobić bardziej ale to mniejsza 

    } elseif ($tmpco == 'email') {
        $email = $_POST['email'];
        // require_once('walidacja.php');
        // sprawdz_zmiany('email','user_settings.php');
        require_once('sendmail.php'); //email gdzie iduser != od tego aktualnego jezeli count jet >1 nie moze 
        $email_zmiana_nowy = $_POST['email'];
        $sql_zmiana_emaila_sprawdzczy_wolny = "SELECT COUNT(email) as ile  from uzytkownicy where iduzytkownicy != " . $iduzytkownika . " and email like '" . $email_zmiana_nowy . "'";
        var_dump($sql_zmiana_emaila_sprawdzczy_wolny);
        $tmpmail = $conn->query($sql_zmiana_emaila_sprawdzczy_wolny);

        // $all = $tmpmail->fetch_all();
        $ile = $tmpmail->fetch_assoc()['ile'];
        var_dump($ile);
        if ($ile == 0) {

            //nie wysyła maila nie wiem czemu ;
            // $kod = md5($email_zmiana_nowy);
            $kod = $verificode;
            // $_SESSION['do_zmiany_maila']=1;
            $_SESSION['nowy_mail'] = $email_zmiana_nowy;
            $link = "<a href='http://localhost/projekt%20programowanie%20i%20administracja%20pitcernia/projekt2/weryfikacja.php?vkey=" . $verificode . "&cel=mail'>link do zmiany maila </a>";
            sendmail($email_zmiana_nowy, $link);
        } else {
            $_SESSION['error'] = "taki adres email jest już zapisany w naszej bazie danych nie możesz zmienić aktualnego na ten  ";
            header('location:user_settings.php');
            exit();
        }
        // foreach ($all as $key => $value) {
        //     var_dump($value);


        //     # code...
        // }
        unset($sql_update);
    } elseif ($tmpco == 'usun') {
        $tresc = $_POST['potwierdz'];
        if ($tresc == "potwierdzam") {
            $sql_usun_konto = "UPDATE uzytkownicy set is_active=0 where iduzytkownicy = " . $iduzytkownika;
            $_SESSION['messege'] = "potwierdziles i twoje konto jest usuniete co znaczy ze nie mozesz z niego korzystac :)";
            var_dump($sql_usun_konto);
            $conn->query($sql_usun_konto);
            header('location:wyloguj.php');
            header('location:user_settings.php');
            exit();
        } else {
            $_SESSION['error'] = "nie potwierdziles";
            header('location:user_settings.php');
            exit();
        }
    } elseif ($tmpco == 'haslo') {

        $haslo_stare = md5($_POST['haslo_stare']);

        $haslo = $_POST['haslo'];
        $haslo2 = $_POST['haslo2'];
        require_once('walidacja.php');
        // $sql_check_if_password_is_correct = "SELECT haslo from uzytkownicy where iduzytkownicy  = ".$iduzytkownika;
        $sql_get_users_password_for_comparision = "SELECT haslo from uzytkownicy where iduzytkownicy  = " . $iduzytkownika;
        // $haslotmp = $conn->query($sql_check_if_password_is_correct);
        // var_dump($haslotmp);
        $haslo_stare_z_bazy = $conn->query($sql_get_users_password_for_comparision);
        $haslo_stare_z_bazy = $haslo_stare_z_bazy->fetch_all();
        // var_dump($haslo_stare_z_bazy);
        // var_dump($haslo_stare_z_bazy->fetch_all()[0]);
        // var_dump($haslo_stare);
        if ($haslo_stare == $haslo_stare_z_bazy[0][0]) {

            if (md5($haslo) == $haslo_stare_z_bazy[0][0]) {
                // sprawdz_zmiany('haslo','user_settings.php');
                $_SESSION['error'] = "haslo nie moze byc identyczne z poprzednim ";
                header('location:user_settings.php');
                exit();
            } else {
                // echo 'succes';
                sprawdz_zmiany('haslo', 'user_settings.php');
                $_SESSION['messege'] = "twoje  haslo zostało zmienione";
                // header('location:user_settings.php');
                // exit();
            }
        } else {
            $_SESSION['error'] = "stare haslo jest nie poprawne";
            header('location:user_settings.php');
            exit();
        }

        $haslo = md5($haslo);

        // var_dump($_SESSION);
        $sql_update = "UPDATE uzytkownicy set haslo ='" . $haslo . "' where iduzytkownicy = $iduzytkownika";
    } elseif (1 == 1) {
        echo "nie ma takiej opcji ";
    } else {
    }
    if (isset($sql_update)) {
        $conn->query($sql_update);
        var_dump($sql_update);
        // header('location:user_settings.php');
        // exit();
    } else {
    }
    // var_dump($haslo_stare);
    // $bufor_update =$conn->query($sql_update)->fetch_all();
    // var_dump($bufor_update);
    if (isset($sql_update)) {
        var_dump($sql_update);
    }

    // header('location:user_settings.php');
}

// $nick = $user_dane['nick'];
// $imie = $user_dane['imie'];
// $nazwisko = $user_dane['nazwisko'];
// $data_ur = $user_dane['data_urodzenia'];
// $adres = $user_dane['adres'];
// $email = $user_dane['email'];
// $isverified = $user_dane['is_verified'];
// $isloggedin = $_SESSION['isloggedin'];

// unset($_GET['co']);
// unset($tmpco);

// if(isset($_POST['Submit'])){
//   echo"działa";

// //   tu trzeba dać update do bazy danych 
// }else{

// }

// echo "ustawienia";
if ($isloggedin) {
} else {
    $_SESSION['error'] = "nie jesteś zalogowany prosimy sie zalogować";
    header('location:index.php');
    exit();
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css.css">
    <title>Document</title>
</head>

<body>
    <a href="user_panel.php">powrót do panelu </a><br />
    <a href="wyloguj.php">wyloguj </a>
    <?php
    ?>

            <form action="user_settings.php?co=dane" method="POST">
                <input value="<?php  echo $nick; ?>" type="text" name='nick' placeholder="wpisz imie"><br />
                <input value="<?php echo $imie;?>" type="text" name='imie' placeholder="wpisz imie"><br />
                <input value="<?php echo $nazwisko; ?>" type="text" name='nazwisko' placeholder="wpisz nazwisko"><br/> 
                <input value="<?php echo $data_ur  ?>" type="date" name="data_ur" placeholder="podaj datę urodzenia">
                <input value="<?php echo $adres; ?>" type="text" name="adres" placeholder="podaj adres"><br />

                <input type='submit' name="Submit" value="zaktualizuj">
            </form>
       
        
            <form method="POST" action="user_settings.php?co=email">
                <input value="<?php
                 echo $email; 
                 ?>" type='email' name='email' placeholder="wpisz email"><br />
                <input type="submit" name="submit1" value="zaktualizuj email">
            </form>
        
            <form method="POST" action="user_settings.php?co=haslo">
                <input value="" type='password' name='haslo_stare' placeholder="wpisz stare haslo"><br />
                <input value="" type='password' name='haslo' placeholder="wpisz nowe haslo"><br />
                <input value="" type='password' name='haslo2' placeholder="powtórz nowe haslo"><br />
                <input type="submit" name="submit" value="zmien haslo">
            </form>
     
        
            <form action="user_settings.php?co=usun" method="post">
                <span>usun konto:</span></br>
                <span>potwierdz</span>
                <input type="text" name="potwierdz">
                <input type="submit">
            </form>
        
 





</body>

</html>