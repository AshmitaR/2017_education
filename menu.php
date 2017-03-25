<?php
//menu based on the permission value from the globaluser variable

$globalUser='';
$globalPermission='';
$globalMenu ='';
$globalPage ='';

if (session_status() == PHP_SESSION_NONE) {
    session_start();
}


if (isset($_SESSION["globalUser"])){
	//retreving the logged user from the session 
	$globalUser = $_SESSION["globalUser"];


	if (isset($_SESSION["globalPermission"])){	
		//retreiveing the permission from the session
		$globalPermission = $_SESSION["globalPermission"]; 
	}

	if (isset($_SESSION["globalMenu"])){	
		//retreving the menu setup	
		$globalMenu =  $_SESSION["globalMenu"];
	  	
	}

}

if (isset($_SESSION["globalPage"])){	
	//retreving the current page
	$globalPage =  $_SESSION["globalPage"];
  	
}


//isset($globalMenu)&&isset($globalPage)&&(strcasecmp($globalPage, PageUtil::$LOGIN)!=0)

if(isset($globalMenu))
	   print_r($globalPermission); 

				
?>