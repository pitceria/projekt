<?php 


  require_once('baza_danych.php');
  $sql_mail = "select count(email) from uzytkownicy where email like '".$email."'";
  $mail_wynik = $conn->query($sql_mail);
  $sql_nick = "select count(nick) from uzytkownicy where nick like '".$nick."'";
  $nick_wynik = $conn->query($sql_nick);

$checks = [
    strlen($nick)<5 =>"twoja nazwa jest zbyt krótka ",
    strlen($imie)<3 =>"nie wpisano poprawnego  imienia",
    strlen($nazwisko)<3 =>"nie wpisano poprawnego  nazwiska",
    $data ==""=>"nie wybrano daty urodzenia",
    date_diff(date_create($data),date_create(date("Y-m-d")),true)->y<18 =>"jesteś za młody by samodzielnie zamawiać pizze wróć z rodzicem :)",
    strlen($adres)<5 =>"nie wybrano poprawnego adresu  ",
    $haslo2 !=$haslo =>"hasła nie są identyczne",
    $mail_wynik->fetch_assoc()['count(email)']!=0 =>"taki adres email jest już zarejestrowany w naszy systemie spróbuj zresetować hasło",
    $nick_wynik->fetch_assoc()['count(nick)']!=0 =>"taki nickname jest już zajety prosze wybrać inny"

];
$sql_mail = "select count(email) from uzytkownicy where email like '".$email."'";
  $mail_wynik = $conn->query($sql_mail);
$checks_email = [
    
    $mail_wynik->fetch_assoc()['count(email)']!=0 =>"taki adres email jest już zarejestrowany w naszy systemie spróbuj zresetować hasło",
  
];
$checks_haslo = [
    $haslo == ""=>'prosze wpisać haslo na które obecne haslo ma być zmienione ',
    $haslo2 == ""=>'pole potwierdzjące nowe hasło nie może być puste , musi zawierać powtórzenie nowego hasła prosimy o uzupełnienie formularza',
    $haslo2 !=$haslo =>"hasła nie są identyczne"
];  



function sprawdz_zmiany($co_sprawdzic,$gdzie_odeslac){
    // if($co_sprawdzic == 'all'){
    //     foreach ($checks2 as $key => $value) {
    //         if($key){
    //         $_SESSION['error'] = $value;
    //         header($gdzie_odeslac);
    //         exit();
    //         }
    //         else{
    //             continue;
    //         }
    
    // }
    global $checks;
    global $checks_email;
    global $checks_haslo;
    global $haslo;
   switch ($co_sprawdzic) {
       case 'all':
           # code...
           foreach ($checks as $key => $value) {
            if($key){
            $_SESSION['error'] = $value;
            header('location:'.$gdzie_odeslac);
            exit();
            }
            else{
                continue;
            }
            
            }
            ispasswordok($haslo,$gdzie_odeslac);
            // ispasswordok($co_sprawdzic,$gdzie_odeslac);
           break;




        case 'email':
        foreach ($checks_email as $key => $value) {
            if($key){
            $_SESSION['error'] = $value;
            header('location:'.$gdzie_odeslac);
            exit();
            }
            else{
                continue;
            }
        }
           break;



        case 'haslo':
            foreach ($checks_haslo as $key => $value) {
                if($key){
                $_SESSION['error'] = $value;
                header('location:'.$gdzie_odeslac);
                exit();
                }
                else{
                    // continue;
                }
                
            }
            ispasswordok($haslo,$gdzie_odeslac);
            // ispasswordok($co_sprawdzic,$gdzie_odeslac);

            break;
        case 'dane':
            
            break;
       default:
           # code...
           break;
   }




}

function ispasswordok($password,$gdzie_odeslac){

    $specchar = '/[!@#$%^&*()_+{}]/';
    $case = '/[a-z]/';
    $upcase = '/[A-Z]/';
    $nums =  '/[0-9]/';
    $lenght = '/[a-zA-Z0-9ZAQ!2wsxZAQ!2wsx]{8,25}/';
    $bledy = [
        $specchar=>"w twoim haśle nie ma znaku specjalnego ",
        $case=>"w twoim haśle brakuje małej litery ",
        $nums=>"w twoim haśle brakuje liczby",
        $upcase=>"w twoim haśle brakuje dużej litery ",
        $lenght=>"twoje hasło nie mieści się w odpowiedniej długości (8,25)"
    ];
    foreach ($bledy as $key => $value) {
        if(preg_match($key,$password)){

        }
        else {
            $_SESSION['error'] = $value;
            header('location:'.$gdzie_odeslac);
            exit();
        }
    }


}
