<?php
session_start();
var_dump($_SESSION);

if(isset($_SESSION['error'])){
  echo $_SESSION['error'];
  unset($_SESSION['error']);
}elseif(isset($_SESSION['messege'])){
  echo $_SESSION['messege'];
  unset($_SESSION['messege']);
}
unset($_SESSION['iduzytkownicy']);
unset($_SESSION['nick']);
unset($_SESSION['email']);
unset($_SESSION['data_ur']);
unset($_SESSION['isverified']);
unset($_SESSION['haslo']);
unset($_SESSION['varificode']);
// session_destroy();
// var_dump($_SESSION);
// session_start();
// var_dump($_SESSION);

?>
<!doctype html>

<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  
  <meta name="description" content="">
  <meta name="author" content="">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <link rel="stylesheet" href="css.css">

</head>

<body>
<div class="section">
  <div class = "row">

        <!-- <div class="col-sm-4"> -->
        <p>logowanie:</p>
          <form action="logowanie.php" method="POST">
          <input type='email' name='email'>
          <input type='password' name='haslo'>
          <input type='submit' >
          </form>
          <p>rejestracja:</p>
          <form action="rejestracja.php" method="POST">
          <input type="text" name ='nick' placeholder="wpisz nick">
          <input type='email' name='email' placeholder="wpisz email">
          <input type="date" name="data_ur" placeholder="podaj datę urodzenia">
          <input type='password' name='haslo' placeholder="wpisz hasło">
          <input type='password' name='haslo_powtorz' placeholder="powtórz hasło">
          <input type='submit' name="Submit" >
          </form>
        <!-- </div> -->
  </div>
</div>

      


    

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js.js"></script>
</body>
</html>
