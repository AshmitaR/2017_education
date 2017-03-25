<?php

/*All the common Model classes are listed here*/
class PermissionXML{
    var $id;  // id of permission
    var $name;    // name of permission
    var $category;  // category of permission
    
    //map the tag, value pair with the members serially
    //used in xml to permission mapping
    function PermissionXML ($row) {

        //todo: check for the exception situation

        foreach ($row as $k=>$v)
            $this->$k = $row[$k];

    }

}

class MenuXML{
    private $_ParentTitle;
    public $_Child;
    private $_Title;
    private $_Permissions;
    private $_Link;
    private $_Visible=0; // by default every menu is in visible

    public function getTitle(){
        return $this->_Title;
    }

    public function setTitle($Title){
        $this->_Title = $Title;
    }


    public function getParentTitle(){
        return $this->_ParentTitle;
    }

    public function setParentTitle($ParentTitle){
        $this->_ParentTitle = $ParentTitle; 
    }

    public function getPermissions(){
        return $this->_Permissions;
    }

    public function setPermissions($Permissions){
        $this->_Permissions = $Permissions;
    }

    public function getLink(){
        return $this->_Link;
    }

    public function setLink($Link){
        $this->_Link = $Link;
    }

    public function setVisible($Visible){
        $this->_Visible = $Visible;
    }

    public function isVisible(){

        return $this->_Visible;
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
    private $_Permissions;


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

    public function setPermissions( $Permissions ) {
        $this->_Permissions = $Permissions;
    }

    public function getPermissions() {
        return $this->_Permissions;
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



class PermissionUtil{

    public static $COURSE_C='COURSE_C';
    public static $COURSE_R='COURSE_R';
    public static $COURSE_U='COURSE_U';
    public static $COURSE_D='COURSE_D';

    public static $CLUB_C='CLUB_C';
    public static $CLUB_R='CLUB_R';
    public static $CLUB_U='CLUB_U';
    public static $CLUB_D='CLUB_D';

    public static $DISCIPLINE_C='DISCIPLINE_C';
    public static $DISCIPLINE_R='DISCIPLINE_R';
    public static $DISCIPLINE_U='DISCIPLINE_U';
    public static $DISCIPLINE_D='DISCIPLINE_D';

    public static $FILE_C='FILE_C';
    public static $FILE_R='FILE_R';
    public static $FILE_U='FILE_U';
    public static $FILE_D='FILE_D';

    public static $POSITION_C='POSITION_C';
    public static $POSITION_R='POSITION_R';
    public static $POSITION_U='POSITION_U';
    public static $POSITION_D='POSITION_D';

  
    public static $PROJECT_C='PROJECT_C';
    public static $PROJECT_R='PROJECT_R';
    public static $PROJECT_U='PROJECT_U';
    public static $PROJECT_D='PROJECT_D';

    public static $ROLE_C='ROLE_C';
    public static $ROLE_R='ROLE_R';
    public static $ROLE_U='ROLE_U';
    public static $ROLE_D='ROLE_D';

    public static $SESSION_C='SESSION_C';
    public static $SESSION_R='SESSION_R';
    public static $SESSION_U='SESSION_U';
    public static $SESSION_D='SESSION_D'; 

    public static $SURVEY_C='SURVEY_C';
    public static $SURVEY_R='SURVEY_R';
    public static $SURVEY_U='SURVEY_U';
    public static $SURVEY_D='SURVEY_D';

    public static $SCHOOL_C='SCHOOL_C';
    public static $SCHOOL_R='SCHOOL_R';
    public static $SCHOOL_U='SCHOOL_U';
    public static $SCHOOL_D='SCHOOL_D';

    public static $TERM_C='TERM_C';
    public static $TERM_R='TERM_R';
    public static $TERM_U='TERM_U';
    public static $TERM_D='TERM_D';


    public static $USER_C='USER_C';
    public static $USER_R='USER_R';
    public static $USER_U='USER_U';
    public static $USER_D='USER_D';

    public static $YEAR_C='YEAR_C';
    public static $YEAR_R='YEAR_R';
    public static $YEAR_U='YEAR_U';
    public static $YEAR_D='YEAR_D';

}

class PageUtil{

    public static $CLUB='club.php';
    public static $CLUB_EXECUTIVE='club_executive.php';
    public static $CLUB_MODULE='club_module.php';

    public static $COURSE='course.php';

    public static $DISCIPLINE='discipline.php';
    public static $DISCUSSION='discussion.php';

    public static $ERROR='error.php';

    public static $FILE='file.php';
    public static $FEEDBACK='feedback.php';

    public static $HOME='home.php';

    public static $QUESTION='question.php';


    public static $LOGIN='login.php';

    public static $PROJECT='project.php';
    public static $POSITION='position.php';
    public static $PERMISSION='permission.php';

    public static $ROLE='role.php';
    public static $RESOURCE='resource.php';


    public static $SCHOOL='school.php';
    public static $SESSION='session.php'; 
    public static $SURVEY='survey.php';
    
    public static $TERM='term.php';

    public static $USER='user.php';

    public static $YEAR='year.php';
    
    public static $VIDEO='video.php';
   
}

class RouteUtil{

    private static $s_Routes; //The single instance
    private static $s_instance; //The single instance


    private function RouteUtil(){
        
         self::$s_Routes = array();

        //add new page and routing address here always

         self::$s_Routes[PageUtil::$CLUB]       =   "/modules/club/view.club.php";
         self::$s_Routes[PageUtil::$CLUB_EXECUTIVE]       =   "/modules/club/view.club_executive.php";
         self::$s_Routes[PageUtil::$CLUB_MODULE]       =   "/modules/club/view.club_module.php";

         self::$s_Routes[PageUtil::$DISCIPLINE]       =   "/modules/dash/view.discipline.php";

         self::$s_Routes[PageUtil::$HOME]             =   "/modules/dash/view.home.php";

         self::$s_Routes[PageUtil::$LOGIN]            =   "/modules/dash/view.login.php";

         self::$s_Routes[PageUtil::$PERMISSION]       =   "/modules/dash/view.permission.php";
         self::$s_Routes[PageUtil::$POSITION]         =   "/modules/dash/view.position.php";

         self::$s_Routes[PageUtil::$ROLE]             =   "/modules/dash/view.role.php";

         self::$s_Routes[PageUtil::$SCHOOL]           =   "/modules/dash/view.school.php";

         self::$s_Routes[PageUtil::$TERM]             =   "/modules/regs/view.term.php";

         self::$s_Routes[PageUtil::$USER]             =   "/modules/dash/view.user.php";

        //the page not found will redirect to error page
         self::$s_Routes[PageUtil::$ERROR]            =   "/modules/dash/view.error.php";

         self::$s_Routes[PageUtil::$FEEDBACK]            =   "/modules/feed/view.feedback.php";

    }

    public static function getInstance() {
        if(!self::$s_instance) { // If no instance then make one
            self::$s_instance = new self();
        }
        return self::$s_instance;
    }

    public static function get($Page){

        $Page = strtolower(trim($Page)); 

        if(array_key_exists($Page, self::$s_Routes)){
        
            return self::$s_Routes[$Page];
        }
        else{
        
            return self::$s_Routes[PageUtil::$ERROR]; 
        }
    }

}

class MiddlewareUtil{

    private static $s_Routes; //The single instance
    private static $s_instance; //The single instance


    private function MiddlewareUtil(){
        
         self::$s_Routes = array();

        //add which page should be successfully logged before getting to this page
        //example: login.php should be successfully logged in to get to home.php
         self::$s_Routes[PageUtil::$HOME]   =  PageUtil::$LOGIN ;
         self::$s_Routes[PageUtil::$USER]   =  PageUtil::$LOGIN ;
   
    }

    public static function getInstance() {
        if(!self::$s_instance) { // If no instance then make one
            self::$s_instance = new self();
        }
        return self::$s_instance;
    }

    private static function isAvailable($Page){

        $Page = strtolower(trim($Page)); 

        //if the page is refereneced in the middleware
        if(array_key_exists($Page, self::$s_Routes)){
            
            return true;
        }
        else{
        
            return false; 
        }
    }

    public static function get($Page){


        //if page is referenced
        if(self::isAvailable($Page)){
            //start session and check whether the middleware is successfully crossed

            if (session_status() == PHP_SESSION_NONE) {
                session_start();
            }

            // other send initial page: example if logged out then go to login.php page
            return isset($_SESSION[self::$s_Routes[$Page]])? $Page: self::$s_Routes[$Page]; 

        }else{
            // if no middleware then just go on with the current request
            return $Page;
        }
    }

}

//finding different partse of an url
    function unparse_url($parsed_url) { 
        $scheme   = isset($parsed_url['scheme']) ? $parsed_url['scheme'] . '://' : ''; 
        $host     = isset($parsed_url['host']) ? $parsed_url['host'] : ''; 
        $port     = isset($parsed_url['port']) ? ':' . $parsed_url['port'] : ''; 
        $user     = isset($parsed_url['user']) ? $parsed_url['user'] : ''; 
        $pass     = isset($parsed_url['pass']) ? ':' . $parsed_url['pass']  : ''; 
        $pass     = ($user || $pass) ? "$pass@" : ''; 
        $path     = isset($parsed_url['path']) ? $parsed_url['path'] : ''; 
        $query    = isset($parsed_url['query']) ? '?' . $parsed_url['query'] : ''; 
        $fragment = isset($parsed_url['fragment']) ? '#' . $parsed_url['fragment'] : ''; 

        //extracting the page name such as user.php from the url
        $page = substr($path, strrpos($path,'/')+1,strrpos($path,'.php')-strrpos($path,'/')+strlen('.php'));

        // checking whtether there is any middleware     
        $page=MiddlewareUtil::get($page);   

        //looking for the extracted page in the route list
        $new_page=RouteUtil::get($page);

        //TODO:: just a hack, should be removed
        if (session_status() == PHP_SESSION_NONE) {
            session_start();
        }

        $_SESSION['globalPage']=$page;

        //$path=str_replace('/'.$page, $new_page, $path);
        return $new_page;
        //return "$scheme$user$pass$host$port$path$query$fragment"; 
    } 


MiddlewareUtil::getInstance();
RouteUtil::getInstance();

?>