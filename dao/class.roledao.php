<?php
// write dao object for each class
include_once '/../common/class.common.php';
include_once '/../util/class.util.php';

Class RoleDAO{

	private $_DB;
	private $_Role;

	function RoleDAO(){

		$this->_DB = DBUtil::getInstance();
		$this->_Role = new Role();

	}

	// get all the Roles from the database using the database query
	public function getAllRoles(){

		$RoleList = array();

		$this->_DB->doQuery("SELECT * FROM tbl_Role");

		$rows = $this->_DB->getAllRows();

		for($i = 0; $i < sizeof($rows); $i++) {
			$row = $rows[$i];
			$this->_Role = new Role();

		    $this->_Role->setID ( $row['ID']);
		    $this->_Role->setName( $row['Name'] );


		    $RoleList[]=$this->_Role;
   
		}

		//todo: LOG util with level of log


		$Result = new Result();
		$Result->setIsSuccess(1);
		$Result->setResultObject($RoleList);

		return $Result;
	}

	//create Role funtion with the Role object
	public function createRole($Role){

		$ID=$Role->getID();
		$Name=$Role->getName();


		$SQL = "INSERT INTO tbl_Role(ID,Name) VALUES('$ID','$Name')";

		$SQL = $this->_DB->doQuery($SQL);		
		
	 	$Result = new Result();
		$Result->setIsSuccess(1);
		$Result->setResultObject($SQL);

		return $Result;
	}

	//read an Role object based on its id form Role object
	public function readRole($Role){
		
		
		$SQL = "SELECT * FROM tbl_Role WHERE ID='".$Role->getID()."'";
		$this->_DB->doQuery($SQL);

		//reading the top row for this Role from the database
		$row = $this->_DB->getTopRow();

		$this->_Role = new Role();

		//preparing the Role object
	    $this->_Role->setID ( $row['ID']);
	    $this->_Role->setName( $row['Name'] );



	 	$Result = new Result();
		$Result->setIsSuccess(1);
		$Result->setResultObject($this->_Role);

		return $Result;
	}

	//update an Role object based on its 
	public function updateRole($Role){

		$SQL = "UPDATE tbl_Role SET Name='".$Role->getName()."' WHERE ID='".$Role->getID()."'";


		$SQL = $this->_DB->doQuery($SQL);

	 	$Result = new Result();
		$Result->setIsSuccess(1);
		$Result->setResultObject($SQL);

		return $Result;

	}

	//delete an Role based on its id of the database
	public function deleteRole($Role){


		$SQL = "DELETE from tbl_Role where ID ='".$Role->getID()."'";
	
		$SQL = $this->_DB->doQuery($SQL);

	 	$Result = new Result();
		$Result->setIsSuccess(1);
		$Result->setResultObject($SQL);

		return $Result;

	}

}

echo '<br> log:: exit the class.roledao.php';

?>