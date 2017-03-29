<?php

include_once '/common/class.common.php';

// start session always
if (session_status() == PHP_SESSION_NONE) {
    session_start();
}

$_URI = $_SERVER['REQUEST_URI'];

//finding the page 
$page = unparse_url(parse_url($_URI));

if(isset($page)){
    //TODO: check whether middleware application is active
    //apply middleware 
    $page = apply_middleware($page);
}

//store current page in the session
 $_SESSION['globalPage']=$page;

?>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Home Page</title>
        <link rel="stylesheet" href="resources/css/bootstrap.min.css">
        <link rel="stylesheet" href="resources/css/style.css" type="text/css" />        
        <script src="resources/js/jquery.min.js"></script>
        <script src="resources/js/bootstrap.min.js"></script>
        <script src="resources/js/myscript.js"></script>                
    </head>

<body>

<div class="container-fluid" >
    <div id="menu" style="background-color:LightSteelBlue">
            <?php 
                //do not show the menu for login page
                if(strcasecmp($page, PageUtil::$LOGIN)!=0)
                    require 'menu.php'; 
                
            ?>
    </div>
    <div id="header" >
            <?php 

                //do not show the header for login page
                if(strcasecmp($page, PageUtil::$LOGIN)!=0)
                	require 'header.php'; 
            	
            ?>        
    </div>    
     <div id="body" style="background-color:AliceBlue" >   
            <?php 
                require 'body.php'; 

            ?>	                    
   </div>   
   <div id="footer" style="background-color:LightSteelBlue">
        	<?php 
        		require 'footer.php'; 

        	?>
    </div> 
</div>    
</body>
</html>