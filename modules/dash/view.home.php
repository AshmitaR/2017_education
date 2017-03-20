<?php

include_once 'blade/view.home.blade.php';

?>

<center>
 
		<?php 
             
		if(isset($globalMenu))
			echo print_menu_vertical($globalMenu);

		?>	        

</center>


</body>
</html>