<?php
// zamowienia_id// iduzytkownicy// data// godzina_przyjecia// godzina_wydania// jest_koszykiem

class zamowienie{
    public $id_zamowienia;
    public $id_uzytkownika;
    public $data;
    public $godzina_przyjecia;
    public $godzina_wydania;
    public $jest_koszykiem;
    // public $pizze_w_srodku =[];
    public $pizze_w_srodku  = array();
    


    function __construct($val1,$val2,$val3,$val4,$val5,$val6){
        $this->id_zamowienia = $val1;
        $this->id_uzytkownika = $val2;
        $this->data = $val3;
        $this->godzina_przyjecia = $val4;
        $this->godzina_wydania = $val5;
        $this->jest_koszykiem =$val6;
        
        
    }
    function returnsumacenzamowien(){
        $tmpsuma = 0;
        foreach($this->pizze_w_srodku as $pizze){
            $tmpsuma+= $pizze->cena*$pizze->ilosc;
        }
        return $tmpsuma;
    }
    public function show_yourself_as_a_beautiful_div(){
        echo "<div class='imabeautifulldiv' onclick='widzizawartosc($this->id_zamowienia)'>{$this->wypisz()} suma zamowien{$this->returnsumacenzamowien()} </div>";
        
    }
    public function wypisz(){
        
        return  $this->id_zamowienia.' '.$this->id_uzytkownika.' '.$this->data.' '.$this->godzina_przyjecia.' '.$this->godzina_wydania.' ';
        
        
    }
    public function wypiszzawartosc(){
    
            $ilosc_pozycji = count($this->pizze_w_srodku);
            
            if ($ilosc_pozycji == 0 ){
                echo "w tym zamowieniu nie ma zadnych poazycji moze cos zamowisz ?";
            }
            else{
                echo "ilosc pozycji :".$ilosc_pozycji."  ";
            }
            foreach ($this->pizze_w_srodku as $key => $value) {
                
                $value->pokaz();
                
            }
            
  
        
        
    }
    function get_content(){
        global $conn;
        require_once('baza_danych.php');
        
        $sqlgetgetcontents = "SELECT  zawartosc_zamowien_pizza_zamowienia_id,pizza_idpizza,ilosc,`dadatkowe informacje`,status,pizza.idpizza,pizza.nazwa,pizza.skladniki_json,pizza.cena,pizza.rozmiar,pizza.sciezka_zdjecie from zawartosc_zamowien_has_pizza JOIN pizza on pizza.idpizza = zawartosc_zamowien_has_pizza.pizza_idpizza
        JOIN zawartosc_zamowien_pizza on zawartosc_zamowien_pizza.zamowienia_id=zawartosc_zamowien_has_pizza.zawartosc_zamowien_pizza_zamowienia_id where zawartosc_zamowien_has_pizza.zawartosc_zamowien_pizza_zamowienia_id = $this->id_zamowienia";
        $contents = $conn->query($sqlgetgetcontents)->fetch_all();
        
        
        if($contents!=null){
            
             foreach($contents as $key=>$value){
                
                $tmp = new zawartosc($value[0],$value[1],$value[2],$value[3],$value[4],$value[5],$value[6],$value[7],$value[8],$value[9],$value[10]);
                $this->pizze_w_srodku[] = $tmp;
                
        }
        }
       
        
    }
}

	
// zawartosc_zamowien_pizza_zamowienia_id// pizza_idpizza// ilosc// dadatkowe informacje// status
class zawartosc{
    public $idzamowienia;
    public $idpizzy;
    public $ilosc;
    public $dodatkowe_informacje;
    public $status;
    public $idpizza;
    public $nazwa;
    public $skladniki_json;
    public $cena;
    public $rozmiar;
    public $sciezka_zdjecie;

    function __construct($val1,$val2,$val3,$val4,$val5,$val6,$val7,$val8,$val9,$val10,$val11){
        $this->idzamowienia = $val1;
        $this->idpizzy = $val2;
        $this->ilosc = $val3;
        $this->dodatkowe_informacje = $val4;
        $this->status = $val5;
        $this->idpizza = $val6;
        $this->nazwa = $val7;
        $this->skladniki_json = unserialize($val8);
        $this->cena = $val9;
        $this->rozmiar = $val10;
        $this->sciezka_zdjecie = $val11;
    }
    
    // public function pokaz(){
    //     // echo $this->idzamowienia.$this->idpizzy.$this->ilosc.$this->dodatkowe_informacje.$this->status.$this->idpizza.$this->nazwa.serialize($this->skladniki_json).$this->cena.$this->rozmiar.$this->sciezka_zdjecie;
    //     echo "<div class='container'><div class='row'>";
    //     echo "<div class ='zawartosc x-{$this->idzamowienia} clearfix  '><div class='col-12 col-sm-6' >";
    //     echo '<img class="rounded" src ="assety\zdjecia_pizzy/'.$this->sciezka_zdjecie."\"> ";
    //     echo "</div><div id='opisobokzdjeciawkoszyku' class='col-12 col-sm-6 '> zamowienie nr".$this->idpizzy.' ile: '.$this->ilosc.'opis :'.$this->dodatkowe_informacje.' status: '.$this->status.' nazwa :'.$this->nazwa.'lista skladnikow'.join($this->skladniki_json,",").' cena jednostkowa '.$this->cena.' rozmiar'.$this->rozmiar."</div>";
    //     echo "</div>";
    //     echo "</div></div>";
    // }
    public function pokaz(){
        // echo $this->idzamowienia.$this->idpizzy.$this->ilosc.$this->dodatkowe_informacje.$this->status.$this->idpizza.$this->nazwa.serialize($this->skladniki_json).$this->cena.$this->rozmiar.$this->sciezka_zdjecie;
     
        echo "<div class ='zawartosc x-{$this->idzamowienia} clearfix  '><div>";
        echo '<img class="rounded float-left" src ="assety\zdjecia_pizzy/'.$this->sciezka_zdjecie."\"> ";
        echo "<p class='text-muted'>zamowienie nr".$this->idpizzy.' ile: '.$this->ilosc.'opis :'.$this->dodatkowe_informacje.' status: '.$this->status.' nazwa :'.$this->nazwa.'lista skladnikow'.join($this->skladniki_json,",").' cena jednostkowa '.$this->cena.' rozmiar'.$this->rozmiar."</p></div>";
        echo "</div>";
 
    }
    

}