<?php
session_start();
var_dump($_SESSION);

// sprawdz czy jest zalogowany i czy jest adminem



?>

<!doctype html>

<html lang="en">
<head>
  <meta charset="utf-8">

  <title></title>
  <meta name="description" content="">
  <meta name="author" content="">

  <link rel="stylesheet" href="css.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>

<body>
    
  <input type="text" id="search">
  <span id="result"></span>














  <a href="wyloguj.php">wyloguj sie </a>

  <!-- <script src="js/scripts.js"></script> -->
  <script>
  $(document).ready(function(){
    $("#search").keyup(function(){
      $.ajax({
        url:'backend.php',
        type:'post',
        data:{search: $(this).val()},
        success:function(result){
          $("#result").html(result);
        }
      });
    });
  });
  
  
  </script>
</body>
</html>
