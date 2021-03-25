<?php
 function ispasswordok($password){

    $specchar = '/[!@#$%^&*()_+{}]/';
    $case = '/[a-z]/';
    $upcase = '/[A-Z]/';
    $nums =  '/[0-9]/';
    $lenght = '/[a-zA-Z0-9ZAQ!2wsxZAQ!2wsx]{8,25}/';
    $bledy = [
        // $specchar=>"w twoim haśle nie ma znaku specjalnego ",
        // $case=>"w twoim haśle brakuje małej litery ",
        // $nums=>"w twoim haśle brakuje liczby",
        // $upcase=>"w twoim haśle brakuje dużej litery ",
        // $lenght=>"twoje hasło nie mieści się w odpowiedzniej długości (8,25)"
    ];
    foreach ($bledy as $key => $value) {
        if(preg_match($key,$password)){

        }
        else {
            $_SESSION['error'] = $value;
            header('location:index.php');
            exit();
        }
    }


}

?>

<?php
// session_abort(); // nie jestem pewien czy to ma być może wyjdzie w testach że do skasowania nie jestem pewny co to robi xd 
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
    //nietestowane ale powinno działać 
    $checks2 = [
        // strlen($nick)<5 =>"twoja nazwa jest zbyt krótka ",
        // strlen($imie)<3 =>"nie wpisano poprawnego  imienia",
        // strlen($nazwisko)<3 =>"nie wpisano poprawnego  nazwiska",
        // $data ==""=>"nie wybrano daty urodzenia",
        // date_diff(date_create($data),date_create(date("Y-m-d")),true)->y<18 =>"jesteś za młody by samodzielnie zamawiać pizze wróć z rodzicem :)",
        // strlen($adres)<5 =>"nie wybrano poprawnej daty urodzenia ",
        // $haslo2 !=$haslo =>"hasła nie są identyczne",
        // $mail_wynik->fetch_assoc()['count(email)']!=0 =>"taki adres email jest już zarejestrowany w naszy systemie spróbuj zresetować hasło",
        // $nick_wynik->fetch_assoc()['count(nick)']!=0 =>"taki nickname jest już zajety prosze wybrać inny"

    ];
    foreach ($checks2 as $key => $value) {
        if($key){
        $_SESSION['error'] = $value;
        header('location:index.php');
        exit();
        }
        else{
            continue;
        }
    }


    // if(strlen($nick)<5){
    //     $_SESSION['error'] = "twoja nazwa jest zbyt krótka ";
    //     header('location:index.php');
    //     exit();
    // }
    // elseif(strlen($imie)<3){
    //     $_SESSION['error'] = "nie wpisano poprawnego  imienia";
    //     header('location:index.php');
    //     exit();
    // }
    // elseif(strlen($nazwisko)<3){
    //     $_SESSION['error'] = "nie wpisano poprawnego  nazwiska";
    //     header('location:index.php');
    //     exit();
    // }
    // elseif($data ==""){
    //     $_SESSION['error'] = "nie wybrano daty urodzenia";
    //     header('location:index.php');
    //     exit();
    // }
    // elseif(date_diff(date_create($data),date_create(date("Y-m-d")),true)->y<18){
    //     $_SESSION['error'] = "jesteś za młody by samodzielnie zamawiać pizze wróć z rodzicem :)";
    //     header('location:index.php');
    //     exit();

    // }
    // elseif(strlen($adres)<5){
    //     $_SESSION['error'] = "nie wybrano poprawnej daty urodzenia ";
    //     header('location:index.php');
    //     exit();
    // }
    // elseif($haslo2 !=$haslo){
    //     $_SESSION['error'] = "hasła nie są identyczne";
    //     header('location:index.php');
    //     exit();
    // }
    // elseif($mail_wynik->fetch_assoc()['count(email)']!=0){
    //     $_SESSION['error'] = "taki adres email jest już zarejestrowany w naszy systemie spróbuj zresetować hasło";
    //     header('location:index.php');
    //     exit();
    // }
    // elseif($nick_wynik->fetch_assoc()['count(nick)']!=0){
    //     $_SESSION['error'] = "taki nickname jest już zajety prosze wybrać inny";
    //     header('location:index.php');
    //     exit();
    // }
    // else{
        
        ispasswordok($haslo);
        $nick = $conn->real_escape_string($nick);
        $imie =  $conn->real_escape_string($imie);
        $nazwisko =  $conn->real_escape_string($nazwisko);
        $adres =  $conn->real_escape_string($adres);
        $email = $conn->real_escape_string($email);
        $data = $conn->real_escape_string($data);
        $haslo = $conn->real_escape_string($haslo);
        $haslo = md5($haslo);
        // var_dump($data);
        $kod_weryfikacyjny = md5(time().$nick);//tu by wypadało zmienić na coś innego niz md5 
        $sql = "insert into uzytkownicy values(null,'$nick','$imie','$nazwisko','$data','$adres','$kod_weryfikacyjny',0,1,0,'$email','$haslo')";
        $insert =$conn->query($sql);
        if($insert){ 
            $_SESSION['messege'] = "pomyślnie zarejestrowano proszę sprawdzić skrzynkę odbiorczą w celu weryfikacji konta  ";
            $_SESSION['email'] = $email;
            $_SESSION['verificode'] = $kod_weryfikacyjny;          
            require_once('sendmail.php');
            sendmail($email);
            
            var_dump($_SESSION);
            // header('location:sendmail.php');
            exit();
        }
        else{
            echo $conn->error;
            echo $sql;
        }
       

    // }
}


?>