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
<!-- nie wiem czemu ale bez tego nie chce działać  nawigacja albo nie chce mi sie tego  sprawdzać może będzie bloated ale przynajmniej będzie działać -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<!-- nie wiem czemu ale bez tego nie chce działać koniec  -->


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
  

<!-- navabar -->
<?php
require_once('navbar.php');
?>
<!-- navbar -->
<div class="container-fluid">
<div class="row">
<!-- <div id="warunkitabeli"> -->
<div class="warunki col-12 " >
  <label><input type="text" id="szukaj"placeholder="nazwy oddzielane przecinkami "></label>
</div>
<div class="warunki col-12 col-sm-2">
  <!-- <label><input type="checkbox" id="chckbx1" onchange="zapytanie();cenachangestate()" checked="checked">cena</label> -->
  <label><input type="checkbox" id="chckbx1" onchange="zapytanie();cenachangestate()" >cena</label>
</div>
<div class="warunki col-12 col-sm-4">
  <div id="range" ></div>
  <label id="lower-value">100 zł</label>
  <label id="myslnik-value">-</label>
  <label id="upper-value">300 zł</label>
</div>
<div class="warunki col-12 col-sm-3">
<select name="rozmiar" id="stanset" onchange="zapytanie()">
<?php
$mozliwe =["wszystkie stany ","zamowione(0)","wykonane(1)"] ;
foreach ($mozliwe as $key => $value) {
  echo"<option>".$value."</option>";
}

?>
</select></div>
<div class="warunki col-12 col-sm-3">
<select id="czasset"  onchange="zapytanie()">
<option>wszystkie czasy</option>
<?php
$mozliweprzedzialy =["dzis","miesiac","miesiac-kalendarz","rok","rok-kalendarz"] ;
foreach ($mozliweprzedzialy as $key => $value) {
  echo"<option>".$value."</option>";
}
?>
</select>
<!-- </div> -->
</div>
</div></div>




  <div id="resultintable" class="table-responisve">
  <?php
  require_once('maxid.php');
  require_once('baza_danych.php');
  require_once('klasy.php');
  $sqlobj = 'SELECT * FROM `zawartosc_zamowien_pizza`';
$buforobj =$conn->query($sqlobj)->fetch_all();
$objtab  = [];
$suma = 0;
foreach ($buforobj as $key => $value) {
    $tmpobj = new zamowienie($value[0],$value[1],$value[2],$value[3],$value[4],$value[5]);
    $tmpobj->get_content();
    $tmpobj->getuserdane();
    $objtab[] = $tmpobj;
    $suma+=$tmpobj->returnsumacenzamowien();
}

// var_dump($objtab);
?>

<div class="table-responsive">
<table class="table table-dark ">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">id zamowienia</th>
      <th scope="col">id_uzytkownika</th>

      <th scope="col">nick</th>
      <th scope="col">imie</th>
      <th scope="col">nazwisko</th>
      <th scope="col">adres</th>

      <th scope="col">wartosc</th>
      <th scope="col">ilosc pizz w środku</th>
  
      
      <th scope="col">data</th>
      <th scope="col">godzina przyjecia</th>
      <th scope="col">godzina wykonania</th>
    <!-- <th scope="col">zrobgotowe</th> -->
      <th scope="col">status</th>
    </tr>
  </thead>


  <tbody>
    <?php 
    foreach($objtab as $key =>$value){
        ?>




    <tr onclick="pokazzawartosczamowieniawadminpanelu(<?php echo $value->id_zamowienia; ?>,<?php echo $value->status;?> )">
      <th scope="row"><?php echo $key;?></th>
      
      <td><?php echo $value->id_zamowienia ;?></td>
      <td><?php echo $value->id_uzytkownika ;?></td>

      <td><?php echo $value->user_dane[0] ;?></td>
      <td><?php echo $value->user_dane[1] ;?></td>
      <td><?php echo $value->user_dane[2] ;?></td>
      <td><?php echo $value->user_dane[4] ;?></td>
      <td><?php echo $value->returnsumacenzamowien() ;?></td>
      <td><?php echo count($value->pizze_w_srodku) ;?></td>

      <td><?php echo $value->data ;?></td>
      <td><?php echo $value->godzina_przyjecia ;?></td>
      
      <td><?php echo $value->godzina_wydania=="00:00:00"?  "nie wydano" :$value->godzina_wydania  ;?></td>
      <!-- <td class="przyciskzmienstatus"><button  onclick="btnchngstateclicked(<?php
      //  echo $value->id_zamowienia; ?>)" <?php 
      // echo  $value->status==0 ?  "enabled" : "disabled";
        ?>> zrobione</button></td> -->
      <td><?php echo $value->status ;?></td>
    </tr>

        <?php
    }
   
    ?>


   
  </tbody>
</table>

<?php
 if(count($objtab) == 0){
      echo "tu miały być zamówienia ale za mało zainwestowaliście w marketing i nic tu nie ma :(";
    }
    ?>
</div>
<div class="divsumacenadminwybrane">suma wartości wszystkich zamowien <?php echo $suma;?>zł</div>
</div>
<?php require_once("stopka.php")?>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>


<!-- start bootstrap -->

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
  <script src="js/bootstrap.min.js"></script>
<!-- koniec bootstrap -->



  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <!-- <script src="js/scripts.js"></script> -->
  
  <script src="adminpaneljs.js">  </script>
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
