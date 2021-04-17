<?php
session_start();
// var_dump($_SESSION);
require_once('maxid.php');
// sprawdz czy jest zalogowany i czy jest adminem
if($_SESSION['isloggedin']!=true){
  wypaddoindexuerror("nie jesteś zalogowany");
}
elseif($_SESSION['isadmin']!=true){
  wypaddoindexuerror("nie jestes administratorem ");
}




?>

<!doctype html>

<html lang="en">
<head>
  <meta charset="utf-8">

  <title></title>
  <meta name="description" content="">
  <meta name="author" content="">

  <link rel="stylesheet" href="css.css">
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
  <a href="wyloguj.php">wyloguj sie </a><br/>





<div class="container">
<div class="row">
<div id="warunkitabeli">
<div class="col-12 col-sm-6">
  <label><input type="text" id="szukaj"placeholder="nazwy oddzielane przecinkami "></label>
</div>
<div class="col-12 col-sm-6">
  <label><input type="checkbox" id="chckbx1" onchange="zapytanie();zmianastanuceny()" checked="checked">cena</label>
</div>
<div class="col-12 col-sm-6">
  <div id="range" ></div>
  <label id="lower-value">100 zł</label>
  <label id="myslnik-value">-</label>
  <label id="upper-value">300 zł</label>
</div>
<div class="col-12 col-sm-6">
<select name="rozmiar" id="rozmiarset" onchange="zapytanie()">
<?php
$mozliwe =["wszystkie","zamowione","wykonane"] ;
foreach ($mozliwe as $key => $value) {
  echo"<option>".$value."</option>";
}
?>
</select>


</div>
</div>
</div></div>





 
  <div ></div>

  <div id="resultintable" class="table-responisve">
  
  
  
  
  </div>










  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <!-- <script src="js/scripts.js"></script> -->
  <script src="adminpaneljs.js">




  </script>
  <script>
    var range = document.querySelector('#range');
    console.log("slider");
    noUiSlider.create(range, {
     
        start: [100, 300],
        // step:0.5,laguje
        step:1,
        connect: true,
        range: {
        'min': 0,
        'max':1000
        }
    });

    var nodes = [
    document.getElementById('lower-value'), // 0
    document.getElementById('upper-value')  // 1
];


range.noUiSlider.on('set', function (values, handle, unencoded, isTap, positions) {
    console.log(handle);
    zapytanie();
    nodes[handle].innerHTML = values[handle] +" zł" ;
});
</script>
</body>
</html>
