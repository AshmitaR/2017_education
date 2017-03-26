

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

if(isset($globalMenu))echo print_top_menu($globalMenu); 


function print_top_menu($globalMenu){
/* <div class="dropdown">
  	<div class="row">
  	<div class="col-sm-1">
    <button class="btn btn-default dropdown-toggle" type="button" data-toggle="dropdown">Tutorials
    <span class="caret"></span></button>
    <ul class="dropdown-menu">
      <li><a tabindex="-1" href="#">HTML</a></li>
      <li><a tabindex="-1" href="#">CSS</a></li>
      <li class="dropdown-submenu">
        <a class="test" tabindex="-1" href="#">New dropdown <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a tabindex="-1" href="#">2nd level dropdown</a></li>
          <li><a tabindex="-1" href="#">2nd level dropdown</a></li>
        </ul>
      </li>
    </ul>
  </div>
  	<div class="col-sm-1">
    <button class="btn btn-default dropdown-toggle" type="button" data-toggle="dropdown">Tutorials
    <span class="caret"></span></button>
    <ul class="dropdown-menu">
      <li><a tabindex="-1" href="#">HTML</a></li>
      <li><a tabindex="-1" href="#">CSS</a></li>
      <li class="dropdown-submenu">
        <a class="test" tabindex="-1" href="#">New dropdown <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a tabindex="-1" href="#">2nd level dropdown</a></li>
          <li><a tabindex="-1" href="#">2nd level dropdown</a></li>
        </ul>
      </li>
    </ul>
  </div>
  </div>	
</div>
*/
	$superLayer = '<div class="dropdown"><div class="row">';

	for ($i=0; $i < sizeof($globalMenu) ; $i++) {

		// if the first layer is visible then go inside -- build table row by row for the category
		if($globalMenu[$i]->isVisible()){ 
		
 			$firstLayer  = '<div class="col-sm-1">';
    		$firstLayer  =  $firstLayer.'<button class="btn btn-default dropdown-toggle" type="button" data-toggle="dropdown">'.$globalMenu[$i]->getTitle().'<span class="caret"></span></button>';
    		$firstLayer  =  $firstLayer.'<ul class="dropdown-menu">';

			for ($j=0; $j <sizeof($globalMenu[$i]->_Child) ; $j++) {	

				//if the second layer is visible go inside -- build table row by row
				if($globalMenu[$i]->_Child[$j]->isVisible()){

					if(sizeof($globalMenu[$i]->_Child[$j]->_Child)>0){

						$secondLayer  =  '<li class="dropdown-submenu">
					        <a class="test" tabindex="-1" href="#">'.$globalMenu[$i]->_Child[$j]->getTitle().
					        '<span class="caret"></span></a>';
					    $secondLayer = $secondLayer.'<ul class="dropdown-menu">';    	

						for ($k=0; $k <sizeof($globalMenu[$i]->_Child[$j]->_Child) ; $k++) {

						//if the third layer is visible -- build table column by column
							if($globalMenu[$i]->_Child[$j]->_Child[$k]->isVisible()){

							$thirdLayer  = '<li><a tabindex="-1" href="#">'.
											$globalMenu[$i]->_Child[$j]->_Child[$k]->getTitle().
											'</a></li>' ;

							$secondLayer  = $secondLayer  . $thirdLayer;
							
							}
						}	

						$secondLayer = $secondLayer.'</ul></li>';
					}	
					else{
						$secondLayer  = '<li><a tabindex="-1" href="#">'.$globalMenu[$i]->_Child[$j]->getTitle().
									'</a></li>';
	  				}
									
				$firstLayer  = $firstLayer  . $secondLayer;
				}
			}
			

		$firstLayer = $firstLayer . '<ul></div>';
		$superLayer = $superLayer . $firstLayer;	
		}
	}

	$superLayer = $superLayer . '</div></div>';

	return $superLayer;


}

				
?>