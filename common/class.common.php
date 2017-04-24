<?php

include_once 'class.common.video.php';
include_once 'class.common.question.php';
include_once 'class.common.user.php';
include_once 'class.common.course.php';
include_once 'class.common.club.php';


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
    public static $COURSE_TYPE='course_type.php';

    public static $DISCIPLINE='discipline.php';
    public static $DISCUSSION='discussion.php';

    public static $ERROR='error.php';

    public static $FILE='file.php';
    public static $FEEDBACK='feedback.php';

    public static $HOME='home.php';

    public static $QUESTION='question.php';
    public static $QUESTION_SEARCH='question_search.php';


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
    public static $VIDEO_COMMENT='video_comment.php';
    public static $VIDEO_SEARCH='video_search.php';
   
}

class RouteUtil{

    private static $s_Routes; //The single instance
    private static $s_instance; //The single instance


    private function RouteUtil(){
        
         self::$s_Routes = array();

        //add new page and routing address here always

         self::$s_Routes[PageUtil::$CLUB]       =   "/modules/club/ui/view.club.php";
         self::$s_Routes[PageUtil::$CLUB_EXECUTIVE]       =   "/modules/club/ui/view.club_executive.php";
         self::$s_Routes[PageUtil::$CLUB_MODULE]       =   "/modules/club/ui/view.club_module.php";

         self::$s_Routes[PageUtil::$DISCIPLINE]       =   "/modules/dashboard/ui/view.discipline.php";

         self::$s_Routes[PageUtil::$HOME]             =   "/modules/dashboard/ui/view.home.php";

         self::$s_Routes[PageUtil::$LOGIN]            =   "/modules/dashboard/ui/view.login.php";

         self::$s_Routes[PageUtil::$PERMISSION]       =   "/modules/dashboard/ui/view.permission.php";
         self::$s_Routes[PageUtil::$POSITION]         =   "/modules/dashboard/ui/view.position.php";

         self::$s_Routes[PageUtil::$POSITION]         =   "/modules/dashboard/ui/view.position.php";

         self::$s_Routes[PageUtil::$QUESTION]         =   "/modules/question/ui/view.question.php";
         self::$s_Routes[PageUtil::$QUESTION_SEARCH]  =   "/modules/question/ui/view.search.question.php";

         self::$s_Routes[PageUtil::$ROLE]             =   "/modules/dashboard/ui/view.role.php";

         self::$s_Routes[PageUtil::$SCHOOL]           =   "/modules/dashboard/ui/view.school.php";

         self::$s_Routes[PageUtil::$TERM]             =   "/modules/registration/ui/view.term.php";

         self::$s_Routes[PageUtil::$USER]             =   "/modules/dashboard/ui/view.user.php";

         self::$s_Routes[PageUtil::$VIDEO]             =   "/modules/video/ui/view.video.php";
         self::$s_Routes[PageUtil::$VIDEO_COMMENT]             =   "/modules/video/ui/view.videoComment.php";
         self::$s_Routes[PageUtil::$VIDEO_SEARCH]             =   "/modules/video/ui/view.videosearch.php";
  

        //the page not found will redirect to error page
         self::$s_Routes[PageUtil::$ERROR]            =   "/modules/dashboard/ui/view.error.php";

         self::$s_Routes[PageUtil::$FEEDBACK]            =   "/modules/survey/view.feedback.php";

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

        return $page;
        //return "$scheme$user$pass$host$port$path$query$fragment"; 
} 


//applying middleware such as login.php comes before home.php
    function apply_middleware($page) { 
     
        // checking whtether there is any middleware     
        $page=MiddlewareUtil::get($page);   

        return $page;
         
    }

//finding different partse of an url
    function apply_routing(&$page) { 
     
        //looking for the extracted page in the route list
        $page=RouteUtil::get($page);

        return true;
    }




MiddlewareUtil::getInstance();
RouteUtil::getInstance();

?>