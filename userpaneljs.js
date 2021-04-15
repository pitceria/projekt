
 var tlo = document.createElement('div');//tlo 
 tlo.style.cssText = 'position:fixed;top:0;width:100%;height:100vh;opacity:0.3;z-index:100;background:#000;';
 tlo.id="tlo";
 var panelDoInterakcji = document.createElement("div");//panel
 panelDoInterakcji.classList.add( "col-12", "col-sm-10","offset-sm-1","col-md-8","offset-md-2","col-lg-6","offset-lg-3")
 panelDoInterakcji.style.cssText = 'position:fixed;top:15vh;height:70vh;z-index:101;background:#fff;color:#000;';
 panelDoInterakcji.id="paneldointerakcji";
 
 var panelDointerakcjikrzyzykdozamykania  = document.createElement('div');//krzyzyk
 panelDointerakcjikrzyzykdozamykania.id ='panelDointerakcjikrzyzykdozamykania';
 // $("#panelDointerakcjikrzyzykdozamykania").html('✖');
 panelDointerakcjikrzyzykdozamykania.innerHTML = '✖';
 // panelDoInterakcji.appendChild(panelDointerakcjikrzyzykdozamykania);
 panelDointerakcjikrzyzykdozamykania.addEventListener("click",()=>{
   usunpanelinterakcji();
 })
 
 
 
 
 function choose(numer){
   console.log(numer);
   pokazpanelinterakcji();
   // console.log(tlo.id);
   $(document).ready(function(){
     $.ajax({
         url:'paneldointerakcjicontent.php?idpizza='+numer,
         type:'post',
         data:{search:$(this).val()},
         success:function(result){
           $("#paneldointerakcji").html(result);
           
         }
       })
   })
 
 
   
   
 }
 tlo.addEventListener("click",()=>{
 
   usunpanelinterakcji();
  
 })
 function pokazpanelinterakcji(){
 document.body.appendChild(tlo);
 document.body.appendChild(panelDoInterakcji);
 document.body.appendChild(panelDointerakcjikrzyzykdozamykania);
 
 }
 function usunpanelinterakcji(){
  document.body.removeChild(tlo);
   document.body.removeChild(panelDoInterakcji);
   document.body.removeChild(panelDointerakcjikrzyzykdozamykania);
 }
 
 
 
 $(document).ready(function(){
     $("#search").keyup(function(){
        query();
        console.log(range.noUiSlider.get())
        
     });
     
   });
 function query(){
       $.ajax({
         url:'wyswietlpizze.php',
         type:'post',
         data:{search: $("#search").val(),skladnikichck: $("#chck1").is(":checked"),rozmiarchck: $("#chck2").is(":checked"),cenachck: $("#chck3").is(":checked"),rozmiarset:$("#rozmiarset").val(),cenamin:range.noUiSlider.get()[0],cenamax:range.noUiSlider.get()[1]},
         success:function(result){
           $("#pizza_container_container").html(result);
           // $("#koszykshowbtn").html("w twoim koszyku jest :".count($_SESSION['koszyk']."zamowien");
         }
       });
 }
 function cenachangestate(){
   let state = $("#chck3").is(":checked");
   if(state){
     range.removeAttribute('disabled');
     
   }else{
     range.setAttribute('disabled', true);
   }
   
 
 // To re-enable
   
 
   console.log(state);
 }
 
 
 function showkoszyk(){
   pokazpanelinterakcji();
   $.ajax({
         url:'koszykinterakcja.php',
         type:'post',
         //zeby sie pozniej nie zastanawiac te zmienne sa bez znaczenia raczej i zostaly po przekopiowaniu :)
         data:{search: $("#search").val(),skladnikichck: $("#chck1").is(":checked"),rozmiarchck: $("#chck2").is(":checked"),rozmiarset:$("#rozmiarset").val()},
         success:function(result){
           $("#paneldointerakcji").html(result);
         }
       });
 }
 
 function widzizawartosc(idzamowienia){
   // let dozdjecia = document.querySelector('.zawartosc').style.display = "none";
   let dozdjecia = document.querySelectorAll('.zawartosc');
   unikalnaklasa = '.x-' + idzamowienia;
   // $('.x-'+idzamowienia).style.display = "block";
 
   console.log(unikalnaklasa);
   // let dopokazanie =document.querySelector(unikalnaklasa).style.display = "block";
   let dopokazania =document.querySelectorAll(unikalnaklasa);
   for(dozdj of dozdjecia){
     dozdj.style.display = "none";
   }
   for(dopokaz of dopokazania){
     dopokaz.style.display = "block";
   }
 }
 //zmienia
 function zmianazawartosci(co,komu){
 
   $.ajax({
         url:'zmianywkoszyku.php',
         type:'post',
         data:{todo:co,towho:komu},
         success:function(result){
           // $("#paneldointerakcji").html(result);
           showkoszyk();
         }
       });
 
 }
 function usunzamowienie(ktore){
   $.ajax({
         url:'zmianywkoszyku.php',
         type:'post',
         data:{zamid:ktore},
         success:function(result){
           $("#paneldointerakcji").html(result);
           showkoszyk();
         }
       });
 }

ktonagorze = 'nowe';
 function zmienwidokzamowien(jakie){
    let starediv = document.querySelector("#starezam") 
    let nowediv = document.querySelector("#nowezam");

     if(jakie == 'nowe'){
         ktonagorze = 'nowe';
         console.log(ktonagorze);
     }
     else{
         ktonagorze = 'stare';
         console.log(ktonagorze);
     }


     if(ktonagorze =="nowe"){
         starediv.style.display = 'none';
        nowediv.style.display = 'block';
     }
     else{
        starediv.style.display = 'block';
        nowediv.style.display = 'none';
     }

 }