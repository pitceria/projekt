<?php 
require_once("baza_danych.php");
require_once("maxid.php");
// var_dump($_POST);



$valuestocheck = explode(",",$_POST['search']);
$warunki = "where 1=1 and ( ";
// var_dump($valuestocheck);

$action;
if(strlen($valuestocheck[0])>0){
if($valuestocheck[0][0]==";"){
    $action = "pokolei";
    $valuestocheck[0] = substr($valuestocheck[0],1);
}
else{
    $action = "wszedzie";
}
}
else{
    $warunki.="1=1";
}

// foreach($valuestocheck as $key=>$value){
//     if($value!=""){

    
//     if($_POST['skladnikichck']=="true"){
//         $warunki.=" skladniki_json like '%".$value."%' or";
//     }
//     if($_POST['rozmiarchck']=="true"){
//         $warunki.=" rozmiar like '".$value."'or";
//     }
//     $warunki.=' nazwa like "%'.$value.'%" or ';
// }

// }
$wartosci_pizzy = [
    "nazwa",
    "skladniki_json",
    "rozmiar",
];

$koniec=")";
foreach($valuestocheck as $key=>$value){
    
    if($value!=""){
        if($action=="wszedzie"){
            if($_POST['skladnikichck']=="true"){
            $warunki.=" skladniki_json like '%".$value."%' or";
            }
            if($_POST['rozmiarchck']=="true"){
                $warunki.=" rozmiar like '%".$value."%' or ";
            }
           
            $warunki.=' nazwa like "%'.$value.'%"  or';
            $koniec=" 1!=1)";
        }
            
        elseif($action=="pokolei"){
            // echo"<br/>";

            //     var_dump($value);
            //     if($key == 1 ){
            //         if($value[0]=="[" && $value[strlen($value)-1]=="]"){
            //             echo "array dziala";
            //         }
            //     }
            //     echo"<br/>";

                $warunki.=$wartosci_pizzy[$key]." like '%".$value."%' and ";
                $koniec=" 1=1)";
        }
  
   
}

}

// $warunki.=" 1!=1)";
$warunki.=$koniec;

if($_POST['rozmiarset'] != "wszystkie rozmiary"){
    $warunki.="and rozmiar like '".$_POST['rozmiarset']."'";
}
if($_POST['cenachck']=="true"){
    $warunki.=" and cena between ".$_POST['cenamin']." and ".$_POST['cenamax']." ";
}


$sql_pizza = "select * from pizza ".$warunki;
// var_dump($sql_pizza);
$bufor =$conn->query($sql_pizza);






if(@$bufor->num_rows == 0){
    echo "wow such empty  ";
}
else{
echo "<div id='diviloscwynikow'> wyniki:  ".$bufor->num_rows."</div>" ;

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
}
?>


