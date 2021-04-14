<?php
 
//zamiast query w rejestracjii nieuzyte
?>

<?php
// session_abort(); // nie jestem pewien czy to ma być może wyjdzie w testach że do skasowania nie jestem pewny co to robi xd 
session_start();


        
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
            require_once('sendmail.php');
            sendmail($email);
            $_SESSION['messege'] = "pomyślnie zarejestrowano proszę sprawdzić skrzynkę odbiorczą w celu weryfikacji konta  ";
            $_SESSION['email'] = $email;
            $_SESSION['verificode'] = $kod_weryfikacyjny;
            var_dump($_SESSION);
            // header('location:sendmail.php');
            exit();
        }
        else{
            echo $conn->error;
            echo $sql;
        }
       

    }
}


?>