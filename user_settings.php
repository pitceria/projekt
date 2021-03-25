<?php
session_start();
var_dump($_SESSION);
require_once("baza_danych.php");
$tmp = $_SESSION['iduzytkownicy'];
$sqluser_settings = "SELECT iduzytkownicy,nick,imie,email,nazwisko,data_urodzenia,adres,is_verified from uzytkownicy where iduzytkownicy = $tmp";
$user_dane = $conn->query($sqluser_settings)->fetch_assoc();
// var_dump($sqluser_settings);
$iduzytkownika = $user_dane['iduzytkownicy'];

if(isset($_GET['co'])){
    $tmpco =$_GET['co'];
    if($tmpco == "dane"){
        var_dump($tmpco);
        
        $nick = $_POST['nick'];
        $imie = $_POST['imie'];
        $nazwisko =$_POST['nazwisko'];
        $data_ur = $_POST['data_ur'];
        $adres = $_POST['adres'];
        // $sql_update_user_data = "UPDATE uzytkownicy set (nick,imie,,nazwisko,data_urodzenia,adres,)";
        $sql_update= "UPDATE uzytkownicy set nick = "."'".$nick."'".",imie ="."'".$imie."'".",nazwisko="."'".$nazwisko."'".",data_urodzenia="."'".$data_ur."'".",adres ="."'".$adres."'"." where iduzytkownicy = $iduzytkownika";
        //dorobić walidacje //przerobić bardziej ale to mniejsza 
        
    }
    elseif(1==1){
        echo "nie ma takiej opcji ";
    }
    else{

    }
    $conn->query($sql_update);
    var_dump($sql_update);
    header('location:user_settings.php');
}

$nick = $user_dane['nick'];
$imie = $user_dane['imie'];
$nazwisko = $user_dane['nazwisko'];
$data_ur = $user_dane['data_urodzenia'];
$adres = $user_dane['adres'];
$email = $user_dane['email'];
$isverified = $user_dane['is_verified'];
$isloggedin = $_SESSION['isloggedin'];

// unset($_GET['co']);
// unset($tmpco);

// if(isset($_POST['Submit'])){
//   echo"działa";

// //   tu trzeba dać update do bazy danych 
// }else{
  
// }

// echo "ustawienia";
if($isloggedin){

}
else{
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
    <title>Document</title>
</head>
<body>
    <a href="user_panel.php">powrót do panelu </a>
    <!-- <a href="wyloguj.php">wyloguj </a> -->
<?php
?>
          <form action="user_settings.php?co=dane" method="POST">
          <input value="<?php echo $nick;?>" type="text" name ='nick' placeholder="wpisz imie"><br/>
          <input value="<?php echo $imie;?>" type="text" name ='imie' placeholder="wpisz imie"><br/>
          <input value="<?php echo $nazwisko;?>" type="text" name ='nazwisko' placeholder="wpisz nazwisko"><br/>
          <input value="<?php echo $data_ur;?>" type="date" name="data_ur" placeholder="podaj datę urodzenia"><br/>
          
          <input value="<?php echo $adres;?>" type="text" name="adres" placeholder="podaj adres"><br/>
          
          <input  type='submit' name="Submit" value="zaktualizuj">
          </form>

          <form method="POST" action="user_settings.php?co=email">
          <input value="<?php echo $email;?>" type='email' name='email' placeholder="wpisz email"><br/>
          <input type ="submit" name="submit1" value="zaktualizuj email">

          </form>
          <form method="POST" action="user_settings.php?co=haslo">
          <input value="" type='password' name='email' placeholder="wpisz stare haslo"><br/>
          <input value="" type='password' name='email' placeholder="wpisz nowe haslo"><br/>
          <input value="" type='password' name='email' placeholder="powtórz nowe haslo"><br/>
          <input type ="submit" name="submit" value="zmien haslo">

          </form>

          
      







</body>
</html>

