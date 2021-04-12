<?php
    require_once("baza_danych.php");
    require_once("maxid.php");
    $sql_wybrana_pizza ="select * from pizza where idpizza=".$_GET['idpizza'];
    $bufor = $conn->query($sql_wybrana_pizza);
    // var_dump($bufor->fetch_all());
    // var_dump($sql_wybrana_pizza);

?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
</head>
<body>


<?php

    foreach ($bufor as $key => $value) {
        ?>
        
        <img src="http://localhost/projekt%20programowanie%20i%20administracja%20pitcernia/projekt2/assety/zdjecia_pizzy/<?php echo $value['sciezka_zdjecie'];?>" alt="cos sie zdjecia nie wczytaly">
        <span>
        <?php   
        echo "pizza nr :".$value['idpizza']."<br/>";  
         echo $value['nazwa']."<br/>";  
         echo"składniki: <br/>";
        $tmp = dejson($value['skladniki_json']);
         foreach ($tmp as  $val) {
           echo $val."<br/>";
         }
         echo "rozmiar : ".$value['rozmiar']."<br/>";  
        ?>
        </span>
       <input type="number" value="1" min="1" id="ilosc"/>
       <input type="textarea" id="opis"/>
       <button id="btndodajdokoszyka">dodaj do koszyka</button>
      <?php
}

?>


<script>
$("#btndodajdokoszyka").click(function(){
  console.log("xd");
  $.ajax({
        url:'zrobkoszyk.php',
        type:'post',
        data:{id:<?php echo "'".$value['idpizza']."'";?>,ilosc:$("#ilosc").val(),opis:$("#opis").val()},
        success:function(result){
          $("#paneldointerakcji").html(result);
          // usunpanelinterakcji();
        }
      })
})


</script>
  
</body>
</html>
