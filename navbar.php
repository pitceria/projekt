

<header>
	
		<nav class="navbar navbar-dark bg-jumpers bg-dark navbar-expand-lg fixed-top">
		
			<a class="navbar-brand" href="user_panel.php">
            <!-- <img src="img/logo.png" width="30" height="30" class="d-inline-block mr-1 align-bottom" alt=""> -->
             Pitceria</a>
		
			<button class="navbar-toggler" id="btnprzelaczniknava" type="button" data-toggle="collapse" data-target="#mainmenu" aria-controls="mainmenu" aria-expanded="false" aria-label="Przełącznik nawigacji">
				<span class="navbar-toggler-icon"></span>
			</button>
			
		
			<div class="collapse navbar-collapse" id="mainmenu">
			<?php
                // echo "witaj ".$_SESSION['nick']." masz pewnie na imie ".$_SESSION['imie']." a nazwisko pewnie wymyśliłeś " .$_SESSION['nazwisko']." jedyny prawdziwy argument(adres) ".$_SESSION['adres']." z temp maila pewnie ".$_SESSION['email']." data ".$_SESSION['data_ur'];
if($_SESSION['isadmin']){
    echo "Witaj administratorze : ".$_SESSION['nick'];
}
else{
    echo "Witaj ".$_SESSION['nick'];
}
                

?>
				<ul class="navbar-nav mr-auto">
					
				
					<li class="nav-item active">
						<a class="nav-link" href="user_panel.php"> Zamów </a>
					</li>
					<?php
                    if($_SESSION['isadmin']){
                    ?>
                        <!-- <li class="nav-item active">
						<a class="nav-link" href="admin_panel.php"> Adminpanel </a>
					</li> -->
					<li class="nav-item active">
						<a class="nav-link" href="admin_panel.php"> Adminpanel </a>
					</li>

                    <?php
                    }
                    ?>
				
					
					<li class="nav-item active">
						<a class="nav-link" href="user_settings.php"> Ustawienia </a>
					</li>
					<!-- <li class="nav-item active">
						<a class="nav-link" href="user_settings.php">
						<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-gear" viewBox="0 0 16 16">
  <path d="M8 4.754a3.246 3.246 0 1 0 0 6.492 3.246 3.246 0 0 0 0-6.492zM5.754 8a2.246 2.246 0 1 1 4.492 0 2.246 2.246 0 0 1-4.492 0z"/>
  <path d="M9.796 1.343c-.527-1.79-3.065-1.79-3.592 0l-.094.319a.873.873 0 0 1-1.255.52l-.292-.16c-1.64-.892-3.433.902-2.54 2.541l.159.292a.873.873 0 0 1-.52 1.255l-.319.094c-1.79.527-1.79 3.065 0 3.592l.319.094a.873.873 0 0 1 .52 1.255l-.16.292c-.892 1.64.901 3.434 2.541 2.54l.292-.159a.873.873 0 0 1 1.255.52l.094.319c.527 1.79 3.065 1.79 3.592 0l.094-.319a.873.873 0 0 1 1.255-.52l.292.16c1.64.893 3.434-.902 2.54-2.541l-.159-.292a.873.873 0 0 1 .52-1.255l.319-.094c1.79-.527 1.79-3.065 0-3.592l-.319-.094a.873.873 0 0 1-.52-1.255l.16-.292c.893-1.64-.902-3.433-2.541-2.54l-.292.159a.873.873 0 0 1-1.255-.52l-.094-.319zm-2.633.283c.246-.835 1.428-.835 1.674 0l.094.319a1.873 1.873 0 0 0 2.693 1.115l.291-.16c.764-.415 1.6.42 1.184 1.185l-.159.292a1.873 1.873 0 0 0 1.116 2.692l.318.094c.835.246.835 1.428 0 1.674l-.319.094a1.873 1.873 0 0 0-1.115 2.693l.16.291c.415.764-.42 1.6-1.185 1.184l-.291-.159a1.873 1.873 0 0 0-2.693 1.116l-.094.318c-.246.835-1.428.835-1.674 0l-.094-.319a1.873 1.873 0 0 0-2.692-1.115l-.292.16c-.764.415-1.6-.42-1.184-1.185l.159-.291A1.873 1.873 0 0 0 1.945 8.93l-.319-.094c-.835-.246-.835-1.428 0-1.674l.319-.094A1.873 1.873 0 0 0 3.06 4.377l-.16-.292c-.415-.764.42-1.6 1.185-1.184l.292.159a1.873 1.873 0 0 0 2.692-1.115l.094-.319z"/>
</svg>
							 </a>
					</li> -->
					<li class="nav-item active ">
					<button id="koszykshowbtn" onclick="showkoszyk()"> Twój koszyk</button>
					</li>
					<!-- <li class="nav-item active ">
					<button id="koszykshowbtn" onclick="showkoszyk()"> 
					<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-cart3" viewBox="0 0 16 16">
  <path d="M0 1.5A.5.5 0 0 1 .5 1H2a.5.5 0 0 1 .485.379L2.89 3H14.5a.5.5 0 0 1 .49.598l-1 5a.5.5 0 0 1-.465.401l-9.397.472L4.415 11H13a.5.5 0 0 1 0 1H4a.5.5 0 0 1-.491-.408L2.01 3.607 1.61 2H.5a.5.5 0 0 1-.5-.5zM3.102 4l.84 4.479 9.144-.459L13.89 4H3.102zM5 12a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm7 0a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm-7 1a1 1 0 1 1 0 2 1 1 0 0 1 0-2zm7 0a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"/>
</svg>
				
				</button>
					</li> -->
					
					<li class="nav-item active ">
						<a class="nav-link" href="wyloguj.php"> Wyloguj </a>
					</li>
					
					
					
				
				</ul>

			
			</div>
		
		</nav>
	
	</header>
	
 
<?php
showerrorormessege();
?>

<script>
	let tmperrorbox = document.querySelector(".errorbox")
	let tmpmessegebox = document.querySelector(".messegebox")
	setTimeout(() => {
		try{
			tmperrorbox.remove();
			tmpmessegebox.remove();
		}
		catch{
			// console.log("xderror");
		}
	}, 5000);

</script>