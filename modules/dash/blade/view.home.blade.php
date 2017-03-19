<?php

include_once '/../../../util/class.xml.php';
include_once '/../../../common/class.common.php'; //very important include in every new page before using session globaluser



$_Menu = XMLtoMenuUtil::getInstance();
$globalUser='';
$globalPermission='';
$globalMenu ='';
$superLayer = '';

if (session_status() == PHP_SESSION_NONE) {
    session_start();
}


if (isset($_SESSION["globalUser"])){

	//retreving the logged user from the session 
	$globalUser = $_SESSION["globalUser"];

	//finding the complete permission list
	$globalPermission = getAllPermissions($globalUser);
  	
  	//storing permission in the session
  	$_SESSION["globalPermission"] = $globalPermission;

	$_Menu->load();
	$_Menu->viewable_menu($globalPermission);
	
	$globalMenu =  $_Menu->reorganize_menu();
  	
  	//storing in the session
  	$_SESSION["globalMenu"] = $globalMenu;

}


function print_menu_vertical($globalMenu){

	$superLayer ='<table><tr><td>Options</td></tr>';
	//going through first layer of menus
	
	for ($i=0; $i < sizeof($globalMenu) ; $i++) {

		// if the first layer is visible then go inside -- build table row by row for the category
		if($globalMenu[$i]->isVisible()){ 
		
		$firstLayer  = '<tr><td><table>';
		$firstLayer  = $firstLayer . '<tr><td>'.$globalMenu[$i]->getTitle().'</td></tr>';



			for ($j=0; $j <sizeof($globalMenu[$i]->_Child) ; $j++) {	

				//if the second layer is visible go inside -- build table row by row
				if($globalMenu[$i]->_Child[$j]->isVisible()){

				$secondLayer  = '<tr><td><table>' ;

				$secondLayer = $secondLayer . '<tr><td>'.
								$globalMenu[$i]->_Child[$j]->getTitle().
								'</td></tr>';

				$secondLayer = $secondLayer . '<tr>';				
				
				for ($k=0; $k <sizeof($globalMenu[$i]->_Child[$j]->_Child) ; $k++) {

					//if the third layer is visible -- build table column by column
					if($globalMenu[$i]->_Child[$j]->_Child[$k]->isVisible()){

					$thirdLayer  = '<td><table>' ;

					$thirdLayer = $thirdLayer . '<tr><td>'.
									$globalMenu[$i]->_Child[$j]->_Child[$k]->getTitle().
									'</td></tr>';
										
					
					$thirdLayer = $thirdLayer .'</table></td>';
					$secondLayer  = $secondLayer  . $thirdLayer;
					
					}
				}
									
				$secondLayer = $secondLayer . '</tr>';

				$secondLayer = $secondLayer .'</table></td></tr>';
				$firstLayer  = $firstLayer  . $secondLayer;
				}
			}
			

		$firstLayer = $firstLayer . '</table></td></tr>';
		$superLayer = $superLayer . $firstLayer;	
		}
	}

	$superLayer = $superLayer . '</td></tr></table>';
	
	return $superLayer;
}

function console_log( $data ){
  echo '<script>';
  echo 'console.log('. json_encode( $data ) .')';
  echo '</script>';
}


//return only the unique permissions a user has on the system
function getAllPermissions($User){

	//get all roles from user
	$Roles = $User->getRoles();
	
	$AllPermissions=array();
	
	foreach ($Roles as $Role) {
		
		//get all the permissions available in a role
		$Permissions = $Role->getPermissions();

		//iterate over the permission list
		foreach ($Permissions as $Permission) {
			
			//if a permission not available in the global list then add it
			if(!in_array($Permission->getID(), $AllPermissions)){

				//adding the permission to the global permission list
				$AllPermissions[]=$Permission->getID();

			}
		}

	}

	return $AllPermissions;
}

?>