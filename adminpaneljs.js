var tlo = document.createElement('div');//tlo 
 tlo.style.cssText = 'position:fixed;top:0;width:100%;height:100vh;opacity:0.3;z-index:100;background:#000;';
 tlo.id="tlo";
 var panelDoInterakcji = document.createElement("div");//panel
 panelDoInterakcji.classList.add( "col-12", "col-sm-10","offset-sm-1","col-md-8","offset-md-2","col-lg-6","offset-lg-3")
 panelDoInterakcji.style.cssText = 'position:fixed;top:15vh;height:70vh;z-index:101;background:#fff;color:#000;';
 panelDoInterakcji.id="paneldointerakcjiadmin";
 
 
 var panelDointerakcjikrzyzykdozamykania  = document.createElement('div');//krzyzyk
 panelDointerakcjikrzyzykdozamykania.id ='panelDointerakcjikrzyzykdozamykania';
 // $("#panelDointerakcjikrzyzykdozamykania").html('✖');
 panelDointerakcjikrzyzykdozamykania.innerHTML = '✖';
 // panelDoInterakcji.appendChild(panelDointerakcjikrzyzykdozamykania);
 panelDointerakcjikrzyzykdozamykania.addEventListener("click",()=>{
   usunpanelinterakcji();
 })
  
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
 
 

     $("#szukaj").keyup(function(){
        zapytanie();
        // console.log(range.noUiSlider.get())
        
     });

function zapytanie(){
       $.ajax({
         url:'tabelawadminpanel.php',
         type:'post',
         data:{search: $("#szukaj").val(),cenachck: $("#chckbx1").is(":checked"),cenamin:range.noUiSlider.get()[0],cenamax:range.noUiSlider.get()[1],czas:$("#czasset").val(),stan:$("#stanset").val()},
         success:function(result){
           $("#resultintable").html(result);
           
         }
    });
}



range.setAttribute('disabled', true);//wyłączony na początku 
 function cenachangestate(){
  let state = $("#chckbx1").is(":checked");
  
  if(state){
    range.removeAttribute('disabled');
    
  }else{
    range.setAttribute('disabled', true);
  }
 
  

}
 

// function btnchngstateclicked(numerzam){
//     console.log(numerzam);
// }

function pokazzawartosczamowieniawadminpanelu(nrzamowienia,status){
  console.log(nrzamowienia);
pokazpanelinterakcji();
pokazzamowienie(nrzamowienia,status);
}

function pokazzamowienie(id,status){
  $.ajax({
    url:'zamowieniewadminpanelu.php',
    type:'post',
    data:{nr:id,status:status},
    success:function(result){
      $("#paneldointerakcjiadmin").html(result);
      
    }
});
}

function zmienzamowieniewadminpanelu(cozrobic,komu){
console.log(komu);

$.ajax({
  url:'zmianazamowienaadminpanel.php',
  type:'post',
  data:{nr:komu,co:cozrobic},
  success:function(result){
    // $("#paneldointerakcjiadmin").html(result);
    
    if(cozrobic!='usun'){
      pokazzawartosczamowieniawadminpanelu(komu,1);
    }else{
      usunpanelinterakcji();
    }
    zapytanie();
    
  }
});

}