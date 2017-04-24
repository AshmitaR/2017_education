<?php


class Club{

    private $_ID;
    private $_Name;
    private $_CoverPhoto;
    private $_Description;
    private $_CreationDate;

    public function setID( $ID ) {
        $this->_ID = $ID;
    }

    public function getID() {
        return $this->_ID;
    }

    public function setName( $Name ) {
        $this->_Name = $Name;
    }

    public function getName() {
        return $this->_Name;
    }

    public function setCoverPhoto( $CoverPhoto ) {
        $this->_CoverPhoto = $CoverPhoto;
    }

    public function getCoverPhoto() {
        return $this->_CoverPhoto;
    }

    public function setDescription( $Description ) {
        $this->_Description = $Description;
    }

    public function getDescription() {
        return $this->_Description;
    }

    public function setCreationDate( $CreationDate ) {
        $this->_CreationDate = $CreationDate;
    }

    public function getCreationDate() {
        return $this->_CreationDate;
    }

} 

class ClubExecutive{

    private $_Club;
    private $_Executive;
    private $_Designation;

    public function setClub( $Club ) {
        $this->_Club = $Club;
    }

    public function getClub() {
        return $this->_Club;
    }

    public function setExecutive( $Executive ) {
        $this->_Executive = $Executive;
    }

    public function getExecutive() {
        return $this->_Executive;
    }

    public function setDesignation( $Designation ) {
        $this->_Designation = $Designation;
    }

    public function getDesignation() {
        return $this->_Designation;
    }

}

class ClubModule{

    private $_Club;
    private $_ModuleID;
    private $_ModuleName;
    private $_IsVisible;
    private $_PositionX;
    private $_PositionY;
    private $_SizeX;
    private $_SizeY;

    public function setClub( $Club ) {
        $this->_Club = $Club;
    }

    public function getClub() {
        return $this->_Club;
    }


    public function setModuleID( $ModuleID ) {
        $this->_ModuleID = $ModuleID;
    }

    public function getModuleID() {
        return $this->_ModuleID;
    }

    public function setModuleName( $ModuleName ) {
        $this->_ModuleName = $ModuleName;
    }

    public function getModuleName() {
        return $this->_ModuleName;
    }

    public function setIsVisible( $IsVisible ) {
        $this->_IsVisible = $IsVisible;
    }

    public function getIsVisible() {
        return $this->_IsVisible;
    }

    public function setPositionX( $PositionX ) {
        $this->_PositionX = $PositionX;
    }

    public function getPositionX() {
        return $this->_PositionX;
    }

    public function setPositionY( $PositionY ) {
        $this->_PositionY = $PositionY;
    }

    public function getPositionY() {
        return $this->_PositionY;
    }

    public function setSizeX( $SizeX ) {
        $this->_SizeX = $SizeX;
    }

    public function getSizeX() {
        return $this->_SizeX;
    }

    public function setSizeY( $SizeY ) {
        $this->_SizeY = $SizeY;
    }

    public function getSizeY() {
        return $this->_SizeY;
    }

}



?>