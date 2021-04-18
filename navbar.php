	<header>
	
		<nav class="navbar navbar-dark bg-jumpers bg-dark navbar-expand-lg fixed-top">
		
			<a class="navbar-brand" href="user_panel.php">
            <!-- <img src="img/logo.png" width="30" height="30" class="d-inline-block mr-1 align-bottom" alt=""> -->
             Pitceria</a>
		
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#mainmenu" aria-controls="mainmenu" aria-expanded="false" aria-label="Przełącznik nawigacji">
				<span class="navbar-toggler-icon"></span>
			</button>
		
			<div class="collapse navbar-collapse" id="mainmenu">
			
				<ul class="navbar-nav mr-auto">
				
					<li class="nav-item active">
						<a class="nav-link" href="user_panel.php"> Zamów </a>
					</li>
					<?php
                    if($_SESSION['isadmin']){
                    ?>
                        <li class="nav-item active">
						<a class="nav-link" href="admin_panel.php"> adminpanel </a>
					</li>

                    <?php
                    }
                    ?>
				
					
					<li class="nav-item active">
						<a class="nav-link" href="user_settings.php"> ustawienia </a>
					</li>
					
					<li class="nav-item active ">
						<a class="nav-link" href="wyloguj.php"> wyloguj </a>
					</li>
					
					
				
				</ul>
			<?php
                // echo "witaj ".$_SESSION['nick']." masz pewnie na imie ".$_SESSION['imie']." a nazwisko pewnie wymyśliłeś " .$_SESSION['nazwisko']." jedyny prawdziwy argument(adres) ".$_SESSION['adres']." z temp maila pewnie ".$_SESSION['email']." data ".$_SESSION['data_ur'];
if($_SESSION['isadmin']){
    echo "witaj administratorze : ".$_SESSION['nick'];
}
else{
    echo "witaj ".$_SESSION['nick'];
}
                

?>
			
			</div>
		
		</nav>
	
	</header>
	
 
