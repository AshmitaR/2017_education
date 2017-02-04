<?php

/*All the common Model classes are listed here*/


class Result{

    private $_IsSuccess=0;
    private $_ResultObject;

    public function setIsSuccess($IsSuccess){
        $this->_IsSuccess = $IsSuccess;
    }

    public function getIsSuccess(){

        return $this->_IsSuccess;
    }

    public function setResultObject($ResultObject){
        $this->_ResultObject = $ResultObject;
    }

    public function getResultObject(){

        return $this->_ResultObject;
    }

}

class User{

    private $_ID;
    private $_UniversityID;
    private $_Email;
    private $_Password;
    private $_FirstName;
    private $_LastName;
    private $_IsArchived=0;
    private $_IsDeleted=0;
    private $_Roles;
    private $_Positions;


    public function setID ( $ID ) {
        $this->_ID = $ID;
    }

    public function getID () {
        return $this->_ID;
    }


    public function setUniversityID ( $UniversityID ) {
        $this->_UniversityID = $UniversityID;
    }

    public function getUniversityID () {
        return $this->_UniversityID;
    }


    public function setEmail ( $Email ) {
        $this->_Email = $Email;
    }

    public function getEmail () {
        return $this->_Email;
    }

    
    public function setPassword ( $Password ) {
        $this->_Password = $Password;
    }

    public function getPassword () {
        return $this->_Password;
    }


    public function setFirstName( $FirstName ) {
        $this->_FirstName = $FirstName;
    }

    public function getFirstName() {
        return $this->_FirstName;
    }


    public function setLastName( $LastName ) {
        $this->_LastName = $LastName;
    }

    public function getLastName() {
        return $this->_LastName;
    }


    public function setIsArchived( $IsArchived ) {
        $this->_IsArchived = $IsArchived;
    }

    public function getIsArchived() {
        return $this->_IsArchived;
    }

    public function setIsDeleted( $IsDeleted ) {
        $this->_IsDeleted = $IsDeleted;
    }

    public function getIsDeleted() {
        return $this->_IsDeleted;
    }


    public function setRoles( $Roles ) {
        $this->_Roles = $Roles;
    }

    public function getRoles() {
        return $this->_Roles;
    }

    public function setPositions( $Positions ) {
        $this->_Positions = $Positions;
    }

    public function getPositions() {
        return $this->_Positions;
    }

}

class Position{
    
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


class UserPosition{

    private $_User;
    private $_PositionList = array();

    public function setUser ( $User ) {
        $this->_User = $User;
    }

    public function getUser () {
        return $this->_User;
    }


    public function setPositionList( $PositionList ) {
        if(is_array($PositionList)){
            $this->_PositionList = $PositionList;
        }
        else{
            throw new Exception("Error!! not an array!!!");
        }
            
    }

    public function getPositionList() {
        return $this->_PositionList;
    }

    public function addNewPosition($Position){

        $this->_PositionList[]=$Position;

    }

}


class Role{

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


/*class UserRole{

    private $_User;
    private $_RoleList = array();

    public function setUser ( $User ) {
        $this->_User = $User;
    }

    public function getUser () {
        return $this->_User;
    }


    public function setRoleList( $RoleList ) {
        if(is_array($RoleList)){
            $this->_RoleList = $RoleList;
        }
        else{
            throw new Exception("Error!! not an array!!!");
        }
            
    }

    public function getRoleList() {
        return $this->_RoleList;
    }

    public function addNewRole($Role){

        $this->_RoleList[]=$Role;

    }


}*/

class Permission{

    private $_ID;
    private $_Name;
    private $_Category;
    private $_IsChecked;


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

    public function setCategory( $Category ) {
        $this->_Category = $Category;
    }

    public function getCategory() {
        return $this->_Category;
    }

    public function setIsChecked( $IsChecked ) {
        $this->_IsChecked = $IsChecked;
    }

    public function getIsChecked() {
        return $this->_IsChecked;
    }


}

class RolePermission{

    private $_Role;
    private $_PermissionList = array();

    public function setRole ( $Role ) {
        $this->_Role = $Role;
    }

    public function getRole () {
        return $this->_Role;
    }


    public function setPermissionList( $PermissionList ) {
        if(is_array($PermissionList)){
            $this->_PermissionList = $PermissionList;
        }
        else{
            throw new Exception("Error!! not an array!!!");
        }
            
    }

    public function getPermissionList() {
        return $this->_PermissionList;
    }

    public function addNewPermission($Permission){

        $this->_PermissionList[]=$Permission;

    }

}

class Discipline{

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


class DisciplineSchool{


}

class UserDiscipline{


}

?>