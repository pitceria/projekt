<?php
require_once("maxid.php");

session_start();
// var_dump($_SESSION);
$isloggedin = $_SESSION['isloggedin'];
if($isloggedin){
}
else{
  wypaddoindexuerror("nie jesteś zalogowany prosimy sie zalogować");//nie testowany ale myśle że ciekawy pomysł
}

//zrob koszyk
// $_SESSION['koszyk'] = [];

?>
<!doctype html>

<html lang="en">
<head>
  <meta charset="utf-8">

  <title></title>
  <meta name="description" content="">
  <meta name="author" content="">
  

<!-- start bootstrap -->
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="css/bootstrap.min.css">
<!-- koniec bootstrap -->


  <link rel="stylesheet" href="css.css">

</head>

<body>
  <div class="container-fluid">
  <div class="row">
    <a href='wyloguj.php'>wyloguj</a>
    <a href='user_settings.php'>ustawienia</a>
    
    
<?php 
echo"<br/>";
//wypisz dane usera 
foreach ($_SESSION as $key => $value) {
    echo $key." : ".serialize($value)."<br/>";
}

//pokaz wszyskie pizze 
require_once('baza_danych.php');
$sql_pizza = "select * from pizza ";
$bufor =$conn->query($sql_pizza);
?>
</div><!-- row -->
</div><!-- container -->

<div id="warunkipizzy">
<input type="text" id="search"placeholder="nazwy oddzielane przecinkami ">
<label><input type="checkbox" id="chck1" onchange="query()" checked="checked">lista składnikow<label>
<label><input type="checkbox" id="chck2"onchange="query()" checked="checked">rozmiar</label>


<select name="rozmiar" id="rozmiarset" onchange="query()">
<?php
$rozmiary =["wszystkie rozmiary","xs","s","m","l","xl","xxl"] ;
foreach ($rozmiary as $key => $value) {
  echo"<option>".$value."</option>";
}
?>
</select>
<!-- tu jeszcze slider z ceną -->
</div>





<div class="container-fluid" id="tamgdziepizzesawyswietlane">
<div class="row" id="pizza_container_container">

<?php

foreach ($bufor as $key => $value) {
  ?>
  <div class='pizza_container  col-12 col-sm-6 col-md-4 col-lg-3 col-xl-2' onclick="choose(<?php echo $value['idpizza'] ?>)" id="<?php echo "id".$value['idpizza'];?>">
  <img src="http://localhost/projekt%20programowanie%20i%20administracja%20pitcernia/projekt2/assety/zdjecia_pizzy/<?php echo $value['sciezka_zdjecie'];?>" alt="cos sie zdjecia nie wczytaly">
  <span>
  <?php
 
  echo $value['idpizza']."<br/>";  
   echo $value['nazwa']."<br/>";  
  $tmp = dejson($value['skladniki_json']);
   foreach ($tmp as  $val) {
     echo $val."<br/>";
   }
   echo "rozmiar : ".$value['rozmiar'];  
  ?>
  </span>

   </div>

  <?php
  
}
?>

</div><!-- row -->
</div><!-- container -->














<!-- start bootstrap -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
  <script src="js/bootstrap.min.js"></script>
<!-- koniec bootstrap -->


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>


<script>
 var tlo = document.createElement('div');//tlo 
tlo.style.cssText = 'position:fixed;top:0;width:100%;height:100vh;opacity:0.3;z-index:100;background:#000;';
tlo.id="tlo";
var panelDoInterakcji = document.createElement('div');//panel
panelDoInterakcji.classList.add( "col-12", "col-sm-6","offset-sm-2","offset-lg-3")
panelDoInterakcji.style.cssText = 'position:fixed;top:15vh;height:70vh;z-index:101;background:#fff;color:#000;';
panelDoInterakcji.id="paneldointerakcji";


function choose(numer){
  console.log(numer);
  pokazpanelinterakcji();
  // console.log(tlo.id);
  $(document).ready(function(){
    $.ajax({
        url:'paneldointerakcjicontent.php?idpizza='+numer,
        type:'post',
        data:{search:$(this).val()},
        success:function(result){
          $("#paneldointerakcji").html(result);
        }
      })
  })


  
  
}
tlo.addEventListener("click",()=>{

  usunpanelinterakcji();
 
})
function pokazpanelinterakcji(){
document.body.appendChild(tlo);
  document.body.appendChild(panelDoInterakcji);
}
function usunpanelinterakcji(){
 document.body.removeChild(tlo);
  document.body.removeChild(panelDoInterakcji);
}



$(document).ready(function(){
    $("#search").keyup(function(){
       query();
       console.log()
    });
    
  });
function query(){
      $.ajax({
        url:'wyswietlpizze.php',
        type:'post',
        data:{search: $("#search").val(),skladnikichck: $("#chck1").is(":checked"),rozmiarchck: $("#chck2").is(":checked"),rozmiarset:$("#rozmiarset").val()},
        success:function(result){
          $("#pizza_container_container").html(result);
        }
      });
}
</script>



</body>
</html>
