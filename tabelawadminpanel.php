<?php
session_start();

include "baza_danych.php";

// var_dump($_POST);
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
$sumazmienna=0
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
   
      <th scope="col">status</th>
    </tr>
  </thead>


  <tbody>
    <?php 
  // var_dump($_POST);
    foreach($objtab as $key =>$value){
      // var_dump($value);
      $warunki=[];
      if(strlen($_POST['search'])>0){
      $tabsearchexploded = explode(",",$_POST['search']);
      $czyjest = 0;
      foreach ($tabsearchexploded as $sprawdz) {
       foreach ($value->user_dane as $nazwaatr => $wartoscatr) {
         
        
         if($sprawdz!="" && strpos($wartoscatr,$sprawdz)!==false ){
          $czyjest++;
         }
      
       }
      }
      $warunki[] =$czyjest;
    }

      if($_POST['cenachck']=='true'){
       $warunki[]= $value->returnsumacenzamowien()>$_POST['cenamin'] && $value->returnsumacenzamowien()<$_POST['cenamax'];
      //  echo $value->returnsumacenzamowien();
      }
      // var_dump($_POST['cenachck']);

      switch ($_POST['czas']) {
        case 'dzis':
          $warunki[] =$value->data == date("Y-m-d");
          
          break;
        case 'miesiac':
          
          // $warunki[] = date('m',strtotime($value->data)) == date('m');
          $warunki[] = date_diff(date_create(date('Y-m-d',strtotime($value->data))),date_create(date('Y-m-d')),true)->m <1;
         
          break;
          case 'miesiac-kalendarz':
          
            // $warunki[] = date('m',strtotime($value->data)) == date('m');
            // var_dump($value->data);
            $warunki[] = date('m',strtotime($value->data))==date('m') ;
           
            break;

            case 'rok-kalendarz':
          
              // $warunki[] = date('m',strtotime($value->data)) == date('m');
              // var_dump($value->data);
              $warunki[] = date('Y',strtotime($value->data))==date('Y') ;
             
              break;
        case 'rok':
          // $warunki[] = date('Y',strtotime($value->data)-date('Y-m-d')) == date('Y');
          $warunki[] = date_diff(date_create(date('Y-m-d',strtotime($value->data))),date_create(date('Y-m-d')),true)->y <1;
          break;
      }
      switch ($_POST['stan']) {
        case 'wszystkie':
          $warunki[] = $value->status==0 ||$value->status == 1;
          ;
          break;
        case 'zamowione(0)':
          $warunki[] =$value->status ==0;
          break;
        case 'wykonane(1)':
            $warunki[] = $value->status ==1;
          break;    
      }
     
      foreach($warunki as $warunek){
        if(!$warunek){
          continue 2;
        }
      }
        
        $sumazmienna+=$value->returnsumacenzamowien();

        ?>
        

    <tr onclick="pokazzawartosczamowieniawadminpanelu(<?php echo $value->id_zamowienia; ?>,<?php echo $value->status;?>)">
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
      // echo $value->id_zamowienia; ?>)" <?php 
      // echo $value->status==0 ?  "enabled" : "disabled";
       ?>> zrobione</button></td> -->
      <td><?php echo $value->status ;?></td>
    </tr>

        <?php
    }
    
    ?>


   
  </tbody>
</table>
<div class="divsumacenadminwybrane">suma wartości zamówień spełniających podane kryteria : <?php echo $sumazmienna;?>zł</div>

<?php
 if(count($objtab) == 0){
      echo "tu miały być zamówienia ale za mało zainwestowaliście w marketing i nic tu nie ma :(";
    }
    ?>
</div>


<?php

?>







