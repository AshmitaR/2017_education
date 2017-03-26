<?php

include_once '/common/class.common.php';

?>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Home Page</title>
        <link rel="stylesheet" href="resources/css/style.css" type="text/css" />
        <link rel="stylesheet" href="resources/css/bootstrap.min.css">
        <script src="resources/js/jquery.min.js"></script>
        <script src="resources/js/bootstrap.min.js"></script>
        <script src="resources/js/myscript.js"></script>                
    </head>

<body>

<div class="container-fluid">
    <div id="header" class="row">
        <div class="col-sm-12">
            <?php 
            	require 'header.php'; 
            	
            ?>
        </div>    
    </div>
    <div id="menu" class="row">
        	<?php 
        		require 'menu.php'; 
        		
        	?>
    </div>
    
     <div id="content" class="row">   
            <?php 
                require 'body.php'; 

            ?>	                    
   </div>   
   <div id="footer" class="row">
        <div class="col-sm-12">   
        	<?php 
        		require 'footer.php'; 

        	?>
        </div>
    </div> 
</div>    
</body>
</html>