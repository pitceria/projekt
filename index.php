<?php
session_start();
require_once("maxid.php");
// var_dump($_SESSION);
// if (isset($_SESSION['error'])) {
//   echo $_SESSION['error'];
//   unset($_SESSION['error']);
// } elseif (isset($_SESSION['messege'])) {
//   echo $_SESSION['messege'];
//   unset($_SESSION['messege']);
// }
showerrorormessege();


unset($_SESSION['iduzytkownicy']);
unset($_SESSION['nick']);
unset($_SESSION['email']);
unset($_SESSION['data_ur']);
unset($_SESSION['isverified']);
unset($_SESSION['haslo']);
unset($_SESSION['verificode']);
unset($_SESSION['isloggedin']);
unset($_SESSION['verificode']);
unset($_SESSION['imie']);
unset($_SESSION['nazwisko']);
unset($_SESSION['adres']);
unset($_SESSION['do_zmiany_maila']);
unset($_SESSION['nowy_mail']);
unset($_SESSION['cel']);
unset($_SESSION['verifikey']);
unset($_SESSION['koszyk']);
unset($_SESSION['test']);
unset($_SESSION['isadmin']);
?>
<!doctype html>

<html lang="en">

<head>
  <meta charset="utf-8">
 


  <meta name="description" content="">
  <meta name="author" content="">

<!-- start bootstrap -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="css/bootstrap.min.css">
<!-- koniec bootstrap -->




  <link rel="stylesheet" href="css.css">

</head>

<body>
  
  
    <div class="container">
      <div class = "row"> 

    
      <div class="divyprzyrejestracji col-12 col-sm-12 col-md-5   offset-lg-1 ">
          <p>Logowanie</p>
          <form action="logowanie.php" method="POST">
            <input type='email' name='email' placeholder="wpisz email "><br />
            <input type='password' name='haslo' placeholder="wpisz haslo"><br />
            <input type='submit' name="btn" value="zaloguj">
            <input type='submit' name="btn" value="zapomiales hasla?">
          </form>
        </div>
        <div class="divyprzyrejestracji col-12 col-sm-12 col-md-5   offset-md-1">
          <p>Rejestracja</p>
          <form action="rejestracja.php" method="POST">
            <input type="text" name='nick' placeholder="wpisz nick"><br />
            <input type="text" name='imie' placeholder="wpisz imie"><br />
            <input type="text" name='nazwisko' placeholder="wpisz nazwisko"><br />
            <input type="date" name="data_ur" placeholder="podaj dat?? urodzenia"><br />
            <input type="text" name="adres" placeholder="podaj adres"><br />
            <input type='email' name='email' placeholder="wpisz email"><br />
            <input type='password' name='haslo' placeholder="wpisz has??o"><br />
            <input type='password' name='haslo_powtorz' placeholder="powt??rz has??o"><br />
            <input type='submit' name="Submit">
          </form>
        </div>
      
      </div>
  </div>
 






  

<!-- start bootstrap -->
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
  <script src="js/bootstrap.min.js"></script>
<!-- koniec bootstrap -->

  <script src="js.js"></script>
  <script>
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

</script>
</body>

</html>