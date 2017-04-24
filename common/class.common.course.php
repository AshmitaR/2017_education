<?php

class CourseTeacher
{
    private $_ID;
    private $_CourseID;
    private $_TeacherID;

    private $_SessionalID;
    private $_TermID;
    public function setID($ID)
    {
        $this->_ID = $ID;
    }

    public function getID () {
        return $this->_ID;
    }

    public function setCourseID($CourseID)
    {
        $this->_CourseID = $CourseID;
    }

    public function getCourseID () {
        return $this->_CourseID;
    }

    public function setTeacherID( $TeacherID)
    {
        $this->_TeacherID = $TeacherID;
    }

    public function getTeacherID () {
        return $this->_TeacherID;
    }

    public function setSessionID( $SessionalID)
    {
        $this->_SessionalID = $SessionalID;
    }

    public function getSessionID () {
        return $this->_SessionalID;
    }

    public function setTermID( $TermID)
    {
        $this->_TermID = $TermID;
    }

    public function getTermID () {
        return $this->_TermID;
    }

}
class CourseTeacherRegistration
{
    private $_ID;
    
    private $_TeacherID;
    private $_SessionalID;
    private $_TermID;
    public function setID($ID)
    {
        $this->_ID = $ID;
    }

    public function getID () {
        return $this->_ID;
    }
    
    public function setTeacherID( $TeacherID)
    {
        $this->_TeacherID = $TeacherID;
    }

    public function getTeacherID () {
        return $this->_TeacherID;
    }

    public function setSessionID( $SessionalID)
    {
        $this->_SessionalID = $SessionalID;
    }

    public function getSessionID () {
        return $this->_SessionalID;
    }

    public function setTermID( $TermID)
    {
        $this->_TermID = $TermID;
    }

    public function getTermID () {
        return $this->_TermID;
    }

}
class CourseType
{
    private $_ID;
    private $_Name;
    private $_SessionalTypeID;

    public function setID ( $ID ) {
        $this->_ID = $ID;
    }

    public function getID () {
        return $this->_ID;
    }

    public function setName ( $Name ) {
        $this->_Name = $Name;
    }

    public function getName () {
        return $this->_Name;
    }

    public function setSessionalTypeID ( $SessionalTypeID ) {
        $this->_SessionalTypeID = $SessionalTypeID;
    }

    public function getSessionalTypeID() {
        return $this->_SessionalTypeID;
    }

}
class Course
{
    private $_ID;
    private $_CourseNo;
    private $_Title;
    private $_Credit;
    private $_CourseTypeID;
    private $_DisciplineID;
    private $_ISdeleted;

    public function setID ( $ID ) {
        $this->_ID = $ID;
    }

    public function getID () {
        return $this->_ID;
    }

    public function setCourseNo ($CourseNo) {
        $this->_CourseNo = $CourseNo;
    }

    public function getCourseNo () {
        return $this->_CourseNo;
    }

    public function setTitle ( $Title ) {
        $this->_Title = $Title;
    }

    public function getTitle() {
        return $this->_Title;
    }

    public function setCredit ( $Credit ) {
        $this->_Credit = $Credit;
    }

    public function getCredit () {
        return $this->_Credit;
    }

    public function setCourseTypeID ($CourseTypeID) {
        $this->_CourseTypeID = $CourseTypeID;
    }

    public function getCourseTypeID () {
        return $this->_CourseTypeID;
    }

    public function setDisciplineID ( $DisciplineID ) {
        $this->_DisciplineID = $DisciplineID;
    }

    public function getDisciplineID() {
        return $this->_DisciplineID;
    }

    public function setISdeleted ( $ISdeleted ) {
        $this->_ISdeleted = $ISdeleted;
    }

    public function getISdeleted() {
        return $this->_ISdeleted;
    }
    

}
class RegistrationSession
{
    private $_ID;
    private $_Name;
    
    public function setID ( $ID ) {
        $this->_ID = $ID;
    }

    public function getID () {
        return $this->_ID;
    }

    public function setName ( $Name ) {
        $this->_Name = $Name;
    }

    public function getName () {
        return $this->_Name;
    }
}

class SessionalType
{
    private $_ID;
    private $_Name;

    public function setID ( $ID ) {
        $this->_ID = $ID;
    }

    public function getID () {
        return $this->_ID;
    }

    public function setName ( $Name ) {
        $this->_Name = $Name;
    }

    public function getName () {
        return $this->_Name;
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