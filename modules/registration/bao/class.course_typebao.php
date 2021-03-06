<?php

include_once './util/class.util.php';
include_once '/../dao/class.course_typedao.php';


/*
	CourseType Business Object 
*/
Class CourseTypeBAO{

	private $_DB;
	private $_CourseTypeDAO;

	function CourseTypeBAO(){

		$this->_CourseTypeDAO = new CourseTypeDAO();

	}

	//get all CourseTypes value
	public function getAllCourseTypes(){

		$Result = new Result();	
		$Result = $this->_CourseTypeDAO->getAllCourseTypes();
		
		if(!$Result->getIsSuccess())
			$Result->setResultObject("Database failure in CourseTypeDAO.getAllCourseTypes()");		

		return $Result;
	}

	//create CourseType funtion with the CourseType object
	public function createCourseType($CourseType){

		$Result = new Result();	
		$Result = $this->_CourseTypeDAO->createCourseType($CourseType);
		
		if(!$Result->getIsSuccess())
			$Result->setResultObject("Database failure in CourseTypeDAO.createCourseType()");		

		return $Result;

	
	}

	//read an CourseType object based on its id form CourseType object
	public function readCourseType($CourseType){


		$Result = new Result();	
		$Result = $this->_CourseTypeDAO->readCourseType($CourseType);
		
		if(!$Result->getIsSuccess())
			$Result->setResultObject("Database failure in CourseTypeDAO.readCourseType()");		

		return $Result;


	}

	//update an CourseType object based on its current information
	public function updateCourseType($CourseType){

		$Result = new Result();	
		$Result = $this->_CourseTypeDAO->updateCourseType($CourseType);
		
		if(!$Result->getIsSuccess())
			$Result->setResultObject("Database failure in CourseTypeDAO.updateCourseType()");		

		return $Result;
	}

	//delete an existing CourseType
	public function deleteCourseType($CourseType){

		$Result = new Result();	
		$Result = $this->_CourseTypeDAO->deleteCourseType($CourseType);
		
		if(!$Result->getIsSuccess())
			$Result->setResultObject("Database failure in CourseTypeDAO.deleteCourseType()");		

		return $Result;

	}

}

echo '<br> log:: exit the class.CourseTypebao.php';

?>