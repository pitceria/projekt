<?php
session_start();

include "baza_danych.php";


require_once('maxid.php');
require_once('baza_danych.php');
require_once('klasy.php');


$sqlobj = 'SELECT * FROM `zawartosc_zamowien_pizza`';
$buforobj =$conn->query($sqlobj)->fetch_all();
$objtab  = [];
foreach ($buforobj as $key => $value) {
    $tmpobj = new zamowienie($value[0],$value[1],$value[2],$value[3],$value[4],$value[5]);
    $tmpobj->get_content();
    $tmpobj->getuserdane();
    $objtab[] = $tmpobj;
}
// var_dump($objtab);
?>


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
      
  
      
      <th scope="col">data</th>
      <th scope="col">godzina przyjecia</th>
      <th scope="col">godzina wydania</th>
    <th scope="col">zrobgotowe</th>
      <th scope="col">status</th>
    </tr>
  </thead>


  <tbody>
    <?php 
    foreach($objtab as $key =>$value){
        ?>
         <tr>
      <th scope="row"><?php echo $key;?></th>
      
      <td><?php echo $value->id_zamowienia ;?></td>
      <td><?php echo $value->id_uzytkownika ;?></td>

      <td><?php echo $value->user_dane[0] ;?></td>
      <td><?php echo $value->user_dane[1] ;?></td>
      <td><?php echo $value->user_dane[2] ;?></td>
      <td><?php echo $value->user_dane[3] ;?></td>
      <td><?php echo $value->data ;?></td>
      <td><?php echo $value->godzina_przyjecia ;?></td>
      <td><?php echo $value->godzina_wydania ;?></td>
      <td><button  onclick="btnchngstateclicked(<?php echo $value->id_zamowienia; ?>)" <?php echo  $value->status==0 ?  "enabled" : "disabled"; ?>> zrobione</button></td>
      <td><?php echo $value->status ;?></td>
      

    </tr>

        <?php
    }
    ?>


   
  </tbody>
</table>

<?php
?>







