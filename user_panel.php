<?php
require_once("maxid.php");
require_once('baza_danych.php');
session_start();
// var_dump($_SESSION);
$isloggedin = $_SESSION['isloggedin'];
if($isloggedin){
}
else{
  wypaddoindexuerror("nie jesteś zalogowany prosimy sie zalogować");
}

require_once("ustawkoszyk.php");
setkoszyk($_SESSION['iduzytkownicy']);



?>
<!DOCTYPE html>


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

  <!-- slider start -->
  <!-- <link href="nouislider.css" rel="stylesheet">
<script src="nouislider.js"></script> -->
<link href="//cdn.bootcss.com/noUiSlider/8.5.1/nouislider.min.css" rel="stylesheet">
    <script src="//cdn.bootcss.com/noUiSlider/8.5.1/nouislider.js"></script>
<!-- slider koniec -->


</head>

<body>
  <div class="container-fluid">
  <div class="row">
    <a href='wyloguj.php'>wyloguj</a>
    <a href='user_settings.php'>ustawienia</a>
    <button id="koszykshowbtn" onclick="showkoszyk()"> Twój koszyk</button>
    
    
<?php 
echo"<br/>";
//wypisz dane usera 
// foreach ($_SESSION as $key => $value) {
//   // if($key!="koszyk"){
//   //   echo $key." : ".serialize($value)."<br/>";
//   // }
//   // echo $key." : ".serialize($value)."<br/>";
    
// }
echo "witaj ".$_SESSION['nick']." masz pewnie na imie ".$_SESSION['imie']." a nazwisko pewnie wymyśliłeś " .$_SESSION['nazwisko']." jedyny prawdziwy argument(adres) ".$_SESSION['adres']." z temp maila pewnie ".$_SESSION['email']." data ".$_SESSION['data_ur'];

//pokaz wszyskie pizze 
// require_once('baza_danych.php');

$sql_pizza = "select * from pizza ";
$bufor =$conn->query($sql_pizza);
?>
</div><!-- row -->
</div><!-- container -->


<div class="container">
<div class="row">
<div id="warunkipizzy">
<div class="col-12 col-sm-6">
  <label><input type="text" id="search"placeholder="nazwy oddzielane przecinkami "></label>
</div>
<div class="col-12 col-sm-6">
  <label><input type="checkbox" id="chck1" onchange="query()" checked="checked">lista składnikow<label>
</div>
<div class="col-12 col-sm-6">
  <label><input type="checkbox" id="chck2"onchange="query()" checked="checked">rozmiar</label>
</div>
<div class="col-12 col-sm-6">
  <label><input type="checkbox" id="chck3" onchange="query();cenachangestate()" checked="checked">cena</label>
</div>
<div class="col-12 col-sm-6">
  <div id="range" ></div>
  <label id="lower-value">10 zł</label>
  <label id="myslnik-value">-</label>
  <label id="upper-value">30 zł</label>

</div>
<div class="col-12 col-sm-6">
<select name="rozmiar" id="rozmiarset" onchange="query()">
<?php
$rozmiary =["wszystkie rozmiary","xs","s","m","l","xl","xxl"] ;
foreach ($rozmiary as $key => $value) {
  echo"<option>".$value."</option>";
}
?>
</select>


</div>
</div>




</div></div>




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













<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<!-- start bootstrap -->

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
  <script src="js/bootstrap.min.js"></script>
<!-- koniec bootstrap -->


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="userpaneljs.js"></script>
<script>
//slider
    var range = document.querySelector('#range');
    console.log("slider");
    noUiSlider.create(range, {
     
        start: [10, 30],
        // step:0.5,laguje
        step:1,
        connect: true,
        range: {
        'min': 0,
        'max':100
        }
    });

    var nodes = [
    document.getElementById('lower-value'), // 0
    document.getElementById('upper-value')  // 1
];


range.noUiSlider.on('set', function (values, handle, unencoded, isTap, positions) {
    console.log(handle);
    query();
    nodes[handle].innerHTML = values[handle] +" zł" ;
});

</script>


</body>
</html>
