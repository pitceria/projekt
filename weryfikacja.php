<?php
session_start();
require_once('baza_danych.php');

// if(isset($_SESSION['error'])){
//   echo $_SESSION['error'];
//   unset($_SESSION['error']);
// }elseif(isset($_SESSION['messege'])){
//   echo $_SESSION['messege'];
//   unset($_SESSION['messege']);
// }
// var_dump($_SESSION);
require_once("maxid.php");
    showerrorormessege();
require_once("klasy.php");

if(isset($_GET['cel'])){
  if($_GET['cel']=="mail"){
    // var_dump($_SESSION);
    // if(isset($_SESSION['nowy_mail'])){
    // $sql_zmiana_maila = "UPDATE uzytkownicy set email='{$_SESSION['nowy_mail']}' where verification_key ='".$_GET['vkey']."'";
    // $conn->query($sql_zmiana_maila);
    // $_SESSION['messege'] = "twoj adres email zostal zmieniony pomyslnie";
    // var_dump($sql_zmiana_maila); 
    // header('location:user_panel.php');
    // exit();
    // }
    if(isset($_GET['nowymail'])){
      $sql_zmiana_maila = "UPDATE uzytkownicy set email='{$_GET['nowymail']}' where verification_key ='".$_GET['vkey']."'";
      $conn->query($sql_zmiana_maila);
      $_SESSION['messege'] = "twoj adres email zostal zmieniony pomyslnie";
      var_dump($sql_zmiana_maila); 
      header('location:user_settings.php');
      exit();
      }
    else{
      // $_SESSION['error']= "nowy mail nie może byc ustawiony poniewaz sesja wygasla prosimy powtorzyc operacje w tej samej przegladarce w trakcie trwania sesji  ";
      $_SESSION['error']= "coś sie ewidentie zepsuło ";
      header('location:user_settings.php');
      exit();

    }


  }
  elseif($_GET['cel'] == "zmianahasla"){
    $verifikey = $_GET['vkey']; 
    $_SESSION['verifikey'] = $verifikey;
    $_SESSION['cel'] ="zmianahasla2";
    //nietestowane
    
    
    ?>
    <head> <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css.css">
   
    </head>
    <body>
      
        <div class="divyprzyrejestracji divyprzyrejestracjiwysrodkuj col-12 col-sm-8 col-md-6   offset-sm-2 offset-md-3   ">
   <form action="weryfikacja.php" method="POST">
    <input type="password" name="haslo" placeholder="nowe haslo">
    <input type="password" name="haslo2" placeholder="powtorz nowe haslo">
    <input type="submit" value="zmien">
    </form>
   </div>   


  
  
    <?php


  }

}

  elseif($_SESSION['cel'] == "zmianahasla2"){
    ?>

    <?php
    
    // var_dump($_POST);
    $haslo = $_POST['haslo'];
    $haslo2 = $_POST['haslo2'];
  
    require_once("walidacja.php");
    sprawdz_zmiany('haslo',"weryfikacja.php?vkey=".$_SESSION['verifikey']."&cel=zmianahasla");
    $sqlzmianahaslamail = "update uzytkownicy set haslo='".md5($haslo)."' where verification_key='".$_SESSION['verifikey']."'";
    // var_dump($sqlzmianahaslamail);
    $conn->query($sqlzmianahaslamail);
    $_SESSION['messege'] = "wszystko jest dobrze twoje haslo zostanie zmienione ";
    header('location:index.php');
    exit();
?>
<script>
	let tmperrorbox = document.querySelector(".errorbox")
	let tmpmessegebox = document.querySelector(".messegebox")
	setTimeout(() => {
		try{
			tmperrorbox.remove();
			tmpmessegebox.remove();
		}
		catch{
			// console.log("xderror");
		}
	}, 5000);

</script>

  </body>
<?php

  }

elseif(isset($_GET['vkey'])){
  $verifikey = $_GET['vkey'];
   var_dump($verifikey);
  $sqlweryfikacja = "update uzytkownicy set is_verified = 1 where verification_key like '".$verifikey."'";
 
  $verificationupdate = $conn->query($sqlweryfikacja);
  if($verificationupdate){
  
    $_SESSION['messege'] = "zweryfikowano pomyślnie , już możesz się zalogować ";
    
    header('location:index.php');
    exit();
  }
  else{
    echo $conn->error;
  }


}















?>

<!-- nietstowane -->
<script>
	let tmperrorbox = document.querySelector(".errorbox")
	let tmpmessegebox = document.querySelector(".messegebox")
	setTimeout(() => {
		try{
			tmperrorbox.remove();
			tmpmessegebox.remove();
		}
		catch{
			// console.log("xderror");
		}
	}, 5000);

</script>

