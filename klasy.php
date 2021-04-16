<?php
// zamowienia_id// iduzytkownicy// data// godzina_przyjecia// godzina_wydania// jest_koszykiem

class zamowienie{
    public $id_zamowienia;
    public $id_uzytkownika;
    public $data;
    public $godzina_przyjecia;
    public $godzina_wydania;
    public $status;
 
    
    // public $pizze_w_srodku =[];
    public $pizze_w_srodku  = array();
    


    function __construct($val1,$val2,$val3,$val4,$val5,$val6){
        $this->id_zamowienia = $val1;
        $this->id_uzytkownika = $val2;
        $this->data = $val3;
        $this->godzina_przyjecia = $val4;
        $this->godzina_wydania = $val5;
        $this->status = $val6;
    }
    function returnsumacenzamowien(){
        $tmpsuma = 0;
        foreach($this->pizze_w_srodku as $pizze){
            $tmpsuma+= $pizze->cena*$pizze->ilosc;
        }
        return $tmpsuma;
    }
    public function show_yourself_as_a_beautiful_div($gdzie){
        $tekst ="";
        $tmptekstzmienna;
        $ilosc_pozycji = count($this->pizze_w_srodku);
        if ($ilosc_pozycji == 0 ){
            $tekst= "w tym zamowieniu nie ma zadnych poazycji moze cos zamowisz ?";
            $tmptekstzmienna = 1;
        }
        else{
            $tekst= "ilosc pozycji :".$ilosc_pozycji."  ";
            $tmptekstzmienna =2;
        }


        if($gdzie == 'aktywne'){
        ?>
        <div class='imabeautifulldiv' onclick='widzizawartosc(<?php echo $this->id_zamowienia?>)'> <?php echo ' suma zawartości  : '.$this->returnsumacenzamowien()." zł "; ?>

        <button id='usunzamowieniebtn' onclick="usunzamowienie(<?php echo $this->id_zamowienia?>)">
        usun zamowienie
        </button>
        <?php
        if($tmptekstzmienna == 2){
            echo $tekst;
        }
        ?>
        </div>
        <?php
        }



        elseif($gdzie == 'przeszle'){
            ?>
            <div class='imabeautifulldiv' onclick='widzizawartosc(<?php echo $this->id_zamowienia?>)'> 
            <?php  
             echo ' suma zawartości  : '.$this->returnsumacenzamowien()." zł ". " ilosc pizz w srodku ".count($this->pizze_w_srodku); 
            //  print_r($this->pizze_w_srodku);
            ?>
          
            </div>



            <?php
        }


    }
    // public function wypisz(){
        
    //     return  $this->id_zamowienia.' '.$this->id_uzytkownika.' '.$this->data.' '.$this->godzina_przyjecia.' '.$this->godzina_wydania.' ';
        
        
    // }
    public function wypiszzawartosc($czego="zawartosc"){
    
           
            foreach ($this->pizze_w_srodku as $key => $value) {
                $value->pokaz($czego);
                
            }
            
        
    }
    function get_content(){
        
        global $conn;
        require_once('baza_danych.php');
        
        $sqlgetgetcontents = "SELECT  zawartosc_zamowien_pizza_zamowienia_id,pizza_idpizza,ilosc,`dadatkowe informacje`,pizza.idpizza,pizza.nazwa,pizza.skladniki_json,pizza.cena,pizza.rozmiar,pizza.sciezka_zdjecie,pizza.opis,id_pk from zawartosc_zamowien_has_pizza JOIN pizza on pizza.idpizza = zawartosc_zamowien_has_pizza.pizza_idpizza
        JOIN zawartosc_zamowien_pizza on zawartosc_zamowien_pizza.zamowienia_id=zawartosc_zamowien_has_pizza.zawartosc_zamowien_pizza_zamowienia_id where zawartosc_zamowien_has_pizza.zawartosc_zamowien_pizza_zamowienia_id = $this->id_zamowienia";
        $contents = $conn->query($sqlgetgetcontents)->fetch_all();
        // var_dump($sqlgetgetcontents);
        
        if($contents!=null){
             foreach($contents as $key=>$value){
                
                $tmp = new zawartosc($value[0],$value[1],$value[2],$value[3],$value[4],$value[5],$value[6],$value[7],$value[8],$value[9],$value[10],$value[11]);
                // var_dump($tmp);
                
                $this->pizze_w_srodku[] = $tmp;
                
                
        }
        }
       
        
    }
}

	
// zawartosc_zamowien_pizza_zamowienia_id// pizza_idpizza// ilosc// dadatkowe informacje// status
class zawartosc{
    public $id_pk;
    public $idzamowienia;
    public $idpizzy;
    public $ilosc;
    public $dodatkowe_informacje;
    public $idpizza;
    public $nazwa;
    public $skladniki_json;
    public $cena;
    public $rozmiar;
    public $sciezka_zdjecie;
    public $opis;//lorem
    
    function __construct($val1,$val2,$val3,$val4,$val5,$val6,$val7,$val8,$val9,$val10,$val11,$id_pk){
        
        $this->idzamowienia = $val1;
        $this->idpizzy = $val2;
        $this->ilosc = $val3;
        $this->dodatkowe_informacje = $val4;
        $this->idpizza = $val5;
        $this->nazwa = $val6;
        $this->skladniki_json = unserialize($val7);
        $this->cena = $val8;
        $this->rozmiar = $val9;
        $this->sciezka_zdjecie = $val10;
        $this->opis = $val11;
        $this->id_pk = $id_pk;
    }
    
  
    public function pokaz($jakoco ='zawartosc'){
        // echo $this->id_pk;
        if($jakoco == "zawartosc"){
        ?>
        <div class ='zawartosc x-<?php echo $this->idzamowienia;?> clearfix  '><div>
        <img class="rounded float-left" src ="assety\zdjecia_pizzy/<?php echo $this->sciezka_zdjecie; ?>">
        <p class='text-muted'>zamowienie nr <?php echo $this->idpizzy.' ile: '.$this->ilosc.'opis :'.$this->dodatkowe_informacje.' nazwa :'.$this->nazwa.' lista skladnikow'.join($this->skladniki_json,",").' cena jednostkowa '.$this->cena.' rozmiar'.$this->rozmiar.' opis :'.$this->opis.' id: '.$this->id_pk?></p>
        <button onclick="zmianazawartosci('dodaj','<?php echo $this->id_pk?>')">+</button>
        <button onclick="zmianazawartosci('odejmij','<?php echo $this->id_pk?>')">-</button>
        <button onclick="zmianazawartosci('usun','<?php echo $this->id_pk?>')">usun</button>
        </div>
        </div>


        <?php
        }
        elseif($jakoco == "zawartoscbylychzamowien"){
            ?>
            <div class ='zawartosc x-<?php echo $this->idzamowienia;?> clearfix  '><div>
            <img class="rounded float-left" src ="assety\zdjecia_pizzy/<?php echo $this->sciezka_zdjecie; ?>">
            <p class='text-muted'>zamowienie nr <?php echo $this->idpizzy.' ile: '.$this->ilosc.'opis :'.$this->dodatkowe_informacje.' nazwa :'.$this->nazwa.' lista skladnikow'.join($this->skladniki_json,",").' cena jednostkowa '.$this->cena.' rozmiar'.$this->rozmiar.' opis :'.$this->opis.' id: '.$this->id_pk?></p>
            </div>
            </div>

            <?php
        }
    }
    

}