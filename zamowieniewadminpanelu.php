<?php 
require_once('baza_danych.php');
require_once('klasy.php');
// var_dump($_POST);
if($_POST['status']==1){
    echo "<div id='zamowieniehistorycznewadminpanelu'> to jest zamowienie historyczne nie możesz z nim nic zrobić</div>";
}
elseif ($_POST['status']==0) {
?>
<button class="width-buttons" onclick="zmienzamowieniewadminpanelu('usun',<?php echo $_POST['nr'];?>)">usun</button>
<button class="width-buttons" onclick="zmienzamowieniewadminpanelu('zmienstatus',<?php echo $_POST['nr'];?>)">zrobione!</button>
<?php
}
$sqlzaw = "SELECT * FROM `zawartosc_zamowien_pizza` WHERE zamowienia_id =".$_POST['nr'];
$buf = $conn->query($sqlzaw)->fetch_all()[0];

 $danezamowienie = new zamowienie($buf[0],$buf[1],$buf[2],$buf[3],$buf[4],$buf[5]);
$danezamowienie->get_content();
?>
<div id="opiszawartoscizamowieniawadminpanelu"> suma zamowienia: <?php echo $danezamowienie->returnsumacenzamowien() ?></div>

<div id="adresdostawyzamowieniawadminpanelu"> adres dostawy : <?php  $danezamowienie->getuserdane(); echo $danezamowienie->user_dane[4] ?></div>
<?php
$danezamowienie->wypiszzawartosc('zawartoscbylychzamowien');
// echo"xd";

?>