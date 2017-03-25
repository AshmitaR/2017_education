<?php 

	$_URI = $_SERVER['REQUEST_URI'];

	$new_url = unparse_url(parse_url($_URI));

	if(isset($new_url)){

		// including all the content of the component page in this index page
		include $new_url;
	}
?>