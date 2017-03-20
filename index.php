<?php

include_once '/common/class.common.php';

?>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Home Page</title>
        <link rel="stylesheet" href="resources/css/style.css" type="text/css" />
    </head>

<body>
    <div id="header">
        <?php 
        	require 'header.php'; 
        	
        ?>
    </div>
    <div id="menu">
    	<?php 
    		require 'menu.php'; 
    		
    	?>
    </div>
    <div id="content">
			<?php 

				$_URI = $_SERVER['REQUEST_URI'];

				$new_url = unparse_url(parse_url($_URI));

				if(isset($new_url)){

					// including all the content of the component page in this index page
					include $new_url;
				}
			?>	        
   </div>   
   <div id="footer">
    	<?php 
    		require 'footer.php'; 

    	?>
    </div> 
</body>
</html>