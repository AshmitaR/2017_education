<?php

class Course{
    private $_ID;
    private $_Course;
    private $_Title;

    public function setID($ID){
        $this->_ID = $ID;
    }
    public function getID(){
        return $this->_ID;
    }
    public function setCourse($Course){
        $this->_Course = $Course;
    }
    public function getCourse(){
        return $this->_Course;
    }
    public function setTitle($Title){
        $this->_Title = $Title;
    }
    public function getTitle(){
        return $this->_Title;
    }
}

class CourseType{

    private $_ID;
    private $_Name;
    private $_SessionalType;


    public function setID ( $ID ) {
        $this->_ID = $ID;
    }

    public function getID () {
        return $this->_ID;
    }


    public function setName( $Name ) {
        $this->_Name = $Name;
    }

    public function getName() {
        return $this->_Name;
    }

    public function setSessionalType ( $SessionalType ) {
        $this->_SessionalType = $SessionalType;
    }

    public function getSessionalType () {
        return $this->_SessionalType;
    }

}

class Discipline{

    private $_ID;
    private $_Name;
    private $_School;

    public function setID ( $ID ) {
        $this->_ID = $ID;
    }

    public function getID () {
        return $this->_ID;
    }


    public function setName( $Name ) {
        $this->_Name = $Name;
    }

    public function getName() {
        return $this->_Name;
    }

    public function setSchool( $School ) {
        $this->_School = $School;
    }

    public function getSchool() {
        return $this->_School;
    }


}

class School{

    private $_ID;
    private $_Name;


    public function setID ( $ID ) {
        $this->_ID = $ID;
    }

    public function getID () {
        return $this->_ID;
    }


    public function setName( $Name ) {
        $this->_Name = $Name;
    }

    public function getName() {
        return $this->_Name;
    }


}

class Session{

    private $_ID;
    private $_Name;


    public function setID ( $ID ) {
        $this->_ID = $ID;
    }

    public function getID () {
        return $this->_ID;
    }


    public function setName( $Name ) {
        $this->_Name = $Name;
    }

    public function getName() {
        return $this->_Name;
    }


}

class Term{

    private $_ID;
    private $_Name;


    public function setID ( $ID ) {
        $this->_ID = $ID;
    }

    public function getID () {
        return $this->_ID;
    }


    public function setName( $Name ) {
        $this->_Name = $Name;
    }

    public function getName() {
        return $this->_Name;
    }


}



?>