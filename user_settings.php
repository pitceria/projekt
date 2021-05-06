<?php
require_once("klasy.php");
session_start();
// var_dump($_SESSION);
require_once("baza_danych.php");
if (isset($_SESSION['isloggedin'])) {
    if($_SESSION['isloggedin']==true){

    }
    else{
        $_SESSION['error'] = "nie jesteś zalogowany prosimy sie zalogować";
    header('location:index.php');
    exit();
    }
} else {
    $_SESSION['error'] = "nie jesteś zalogowany prosimy sie zalogować";
    header('location:index.php');
    exit();
}
$tmp = $_SESSION['iduzytkownicy'];
$sqluser_settings = "SELECT iduzytkownicy,nick,imie,email,nazwisko,data_urodzenia,adres,is_verified,verification_key from uzytkownicy where iduzytkownicy = $tmp";
$user_dane = $conn->query($sqluser_settings)->fetch_assoc();
require_once("maxid.php");

// if (isset($_SESSION['error'])) {
//     echo $_SESSION['error'];
//     unset($_SESSION['error']);
// } elseif (isset($_SESSION['messege'])) {
//     echo $_SESSION['messege'];
//     unset($_SESSION['messege']);
// }

showerrorormessege();


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


if (isset($_GET['co'])) {
    $tmpco = $_GET['co'];
    if ($tmpco == "dane") {
        
        require_once("walidacja.php");
       
        $nick = $_POST['nick'];
        $imie = $_POST['imie'];
        $nazwisko = $_POST['nazwisko'];
        $data = $_POST['data_ur'];
        $adres = $_POST['adres'];
         sprawdz_zmiany('dane', 'user_settings.php');
        $sql_update = "UPDATE uzytkownicy set nick = " . "'" . $nick . "'" . ",imie =" . "'" . $imie . "'" . ",nazwisko=" . "'" . $nazwisko . "'" . ",data_urodzenia=" . "'" . $data . "'" . ",adres =" . "'" . $adres . "'" . " where iduzytkownicy = $iduzytkownika";
        header('location:user_settings.php');

    } 
    elseif ($tmpco == 'email') {
        $email = $_POST['email'];
        require_once('walidacja.php');
        sprawdz_zmiany('email','user_settings.php');
        require_once('sendmail.php'); //email gdzie iduser != od tego aktualnego jezeli count jet >1 nie moze 
        $email_zmiana_nowy = $_POST['email'];
        $sql_zmiana_emaila_sprawdzczy_wolny = "SELECT COUNT(email) as ile  from uzytkownicy where iduzytkownicy != " . $iduzytkownika . " and email like '" . $email_zmiana_nowy . "'";
        var_dump($sql_zmiana_emaila_sprawdzczy_wolny);
        $tmpmail = $conn->query($sql_zmiana_emaila_sprawdzczy_wolny);

       
        $ile = $tmpmail->fetch_assoc()['ile'];
        var_dump($ile);
        if ($ile == 0) {
            $kod = $verificode;

            $_SESSION['nowy_mail'] = $email_zmiana_nowy;
            // $link = "<a href='http://localhost/projekt%20programowanie%20i%20administracja%20pitcernia/projekt2/weryfikacja.php?vkey=" .$verificode. "&cel=mail&nowymail=".$email_zmiana_nowy."'>link do zmiany maila </a>";
            $link = "<a href='http://pitcernia.opole.pl/weryfikacja.php?vkey=" .$verificode. "&cel=mail&nowymail=".$email_zmiana_nowy."'>link do zmiany maila </a>";
            sendmail($email_zmiana_nowy, $link);
            $_SESSION['messege'] ="wiadomość z potwierdzeniem została wysłana";
        } else {
            $_SESSION['error'] = "taki adres email jest już zapisany w naszej bazie danych nie możesz zmienić aktualnego na ten  ";
            
        }
        header('location:user_settings.php');
            exit();
     
        unset($sql_update);
    }
    elseif ($tmpco == 'usun') {
        $sql_sprawdz_czy_ma_obecne_zamowienia_nieodebrane = "SELECT COUNT(iduzytkownicy) FROM `zawartosc_zamowien_pizza` JOIN zawartosc_zamowien_has_pizza on zawartosc_zamowien_has_pizza.zawartosc_zamowien_pizza_zamowienia_id=zamowienia_id where status = 0 and iduzytkownicy = $iduzytkownika";
        $tmp = $conn->query($sql_sprawdz_czy_ma_obecne_zamowienia_nieodebrane)->fetch_assoc();
        var_dump($tmp);
        if($tmp["COUNT(iduzytkownicy)"] == 0){
            $tresc = $_POST['potwierdz'];
            if ($tresc == "potwierdzam") {
                $sql_usun_konto = "UPDATE uzytkownicy set is_active=0 where iduzytkownicy = " . $iduzytkownika;
                $_SESSION['messege'] = "potwierdziles i twoje konto jest usuniete co znaczy ze nie mozesz z niego korzystac :)";
                var_dump($sql_usun_konto);
                $conn->query($sql_usun_konto);
                header('location:wyloguj.php');
                exit();
                // header('location:user_settings.php');
                // exit();
            } else {
                $_SESSION['error'] = "nie potwierdziles";
                header('location:user_settings.php');
                exit();
            }
        }
        else{
            $_SESSION['error'] = "masz aktywne zamowienia nie możesz usunąć konta z aktywnymi zamówieniami";
            header('location:user_settings.php');
            exit();
            
        }
       
    } 
    elseif ($tmpco == 'haslo') {

        $haslo_stare = md5($_POST['haslo_stare']);

        $haslo = $_POST['haslo'];
        $haslo2 = $_POST['haslo2'];
        require_once('walidacja.php');

        $sql_get_users_password_for_comparision = "SELECT haslo from uzytkownicy where iduzytkownicy  = " . $iduzytkownika;
        
        $haslo_stare_z_bazy = $conn->query($sql_get_users_password_for_comparision);
        $haslo_stare_z_bazy = $haslo_stare_z_bazy->fetch_all();
      
        if ($haslo_stare == $haslo_stare_z_bazy[0][0]) {

            if (md5($haslo) == $haslo_stare_z_bazy[0][0]) {
                
                $_SESSION['error'] = "haslo nie moze byc identyczne z poprzednim ";
                header('location:user_settings.php');
                exit();
            } else {
                
                sprawdz_zmiany('haslo', 'user_settings.php');
                $_SESSION['messege'] = "twoje  haslo zostało zmienione";
            }
        } else {
            $_SESSION['error'] = "stare haslo jest nie poprawne";
            header('location:user_settings.php');
            exit();
        }

        $haslo = md5($haslo);
        $sql_update = "UPDATE uzytkownicy set haslo ='" . $haslo . "' where iduzytkownicy = $iduzytkownika";
        $_SESSION['test'] = $sql_update;
    } 
      
    if (isset($sql_update)) {
        $conn->query($sql_update);
        var_dump($sql_update);
        header('location:user_settings.php');
        exit();
    } else {
    }
    
    if (isset($sql_update)) {
        var_dump($sql_update);
    }

    header('location:user_settings.php');
}


?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <!-- nie wiem czemu ale bez tego nie chce działać  nawigacja albo nie chce mi sie tego  sprawdzać może będzie bloated ale przynajmniej będzie działać -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<!-- nie wiem czemu ale bez tego nie chce działać koniec  -->

<!-- start bootstrap -->
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="css/bootstrap.min.css">
 
<!-- koniec bootstrap -->


  <link rel="stylesheet" href="css.css">
    <title>Document</title>



    
</head>

<body>
    <!-- <a href="user_panel.php">powrót do panelu </a><br />
    <a href="wyloguj.php">wyloguj </a> -->
    <?php
    
        require_once('navbar.php');
?>  
        <!-- początek container -->
    <div class="container conteinerusersettings">
        <!-- początek row -->
        <div class="row">
            <div id="zmiendaneformusersettings" class="col-12 col-sm-6 col-md-4 col-lg-3">
            <form action="user_settings.php?co=dane" method="POST">
            <span class="opisformsettings">zmień dane:</span></br>
                <input value="<?php  echo $nick; ?>" type="text" name='nick' placeholder="wpisz imie"><br />
                <input value="<?php echo $imie;?>" type="text" name='imie' placeholder="wpisz imie"><br />
                <input value="<?php echo $nazwisko; ?>" type="text" name='nazwisko' placeholder="wpisz nazwisko"><br/> 
                <input value="<?php echo $data ; ?>" type="date" name="data_ur" placeholder="podaj datę urodzenia"><br/> 
                <input value="<?php echo $adres; ?>" type="text" name="adres" placeholder="podaj adres"><br />
                <input class="submitusersettings" type='submit' name="Submit" value="zaktualizuj">
            </form>
            </div>
            <div id="zmienemailformusersettings" class="col-12 col-sm-6 col-md-4 col-lg-3">
            <span class="opisformsettings">zmień email</span></br>
            <form method="POST" action="user_settings.php?co=email">
                <input value="<?php
                 echo $email; 
                 ?>" type='email' name='email' placeholder="wpisz email"><br />
                <input class="submitusersettings" type="submit" name="submit1" value="zaktualizuj email">
            </form>
            </div>
            <div id="zmienhasloformusersettings" class="col-12 col-sm-6 col-md-4 col-lg-3">
            <span class="opisformsettings">zmień haslo</span></br>
            <form method="POST" action="user_settings.php?co=haslo">
                <input value="" type='password' name='haslo_stare' placeholder="wpisz stare haslo"><br />
                <input value="" type='password' name='haslo' placeholder="wpisz nowe haslo"><br />
                <input value="" type='password' name='haslo2' placeholder="powtórz nowe haslo"><br />
                <input class="submitusersettings" type="submit" name="submit" value="zmien haslo">
            </form>
            </div>
            <div id="usunkontoformusersettings" class="col-12 col-sm-6 col-md-4 col-lg-3">
            <form action="user_settings.php?co=usun" method="post">
                <span class="opisformsettings">usuń konto:</span></br>
                <!-- <span>potwierdz</span> -->
                <input type="text" name="potwierdz" placeholder="potwierdź"><br />
                <input class="submitusersettings" type="submit">
            </form>
            </div>

        <!-- koniec row -->
        </div>
        <!-- koniec container -->
    </div>
    <?php require_once("stopka.php")?>





            <script src="userpaneljs.js"></script>
<!-- <script>
	let tmperrorbox = document.querySelector(".errorbox")
	let tmpmessegebox = document.querySelector(".messegebox")
	setTimeout(() => {
		try{
      try{
        tmperrorbox.remove();
      }
      catch{
        tmpmessegebox.remove();
      }
			
			
		}
		catch(xd){
			console.log(xd);
		}
	}, 5000);

</script> -->
</body>

</html>