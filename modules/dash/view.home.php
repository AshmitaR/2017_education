<?php

include_once 'blade/view.home.blade.php';

?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Home Page</title>
        <link rel="stylesheet" href="resources/css/style.css" type="text/css" />
    </head>

<body>
<center>
    <div id="header">
        <label>By : Kazi Masudul Alam</a></label>
        <?php require 'header.php'; ?>
    </div>

    <div id="menu">
    	<?php 
    		require 'menu.php'; 
    		print_r($globalPermission); 
    		//echo '<br><br>';
    		//print_r($globalMenu); 
    	?>
    </div>

    <div id="form">
			<?php 
					if(isset($globalMenu))
						echo print_menu_vertical($globalMenu);	
			?>	        
    </div>   

    <div id="footer">
    	<?php require 'footer.php'; ?>
    </div> 
</center>


</body>
</html>