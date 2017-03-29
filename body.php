<?php 

	//TODO: check whether routing is active
	if(isset($page) && apply_routing($page)){
		
		include $page;
	}

	
	
?>