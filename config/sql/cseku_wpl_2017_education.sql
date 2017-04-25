-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 25, 2017 at 04:16 AM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cseku_wpl_2017_education`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_club`
--

CREATE TABLE `tbl_club` (
  `ID` varchar(40) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `CoverPhoto` varchar(100) NOT NULL,
  `Description` varchar(300) NOT NULL,
  `CreationDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_club_member`
--

CREATE TABLE `tbl_club_member` (
  `ClubID` varchar(40) NOT NULL,
  `ExecutiveID` varchar(40) NOT NULL,
  `Designation` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_club_module`
--

CREATE TABLE `tbl_club_module` (
  `ClubID` varchar(20) NOT NULL,
  `ModuleID` varchar(40) NOT NULL,
  `ModuleName` varchar(50) NOT NULL,
  `IsVisible` tinyint(1) NOT NULL,
  `PositionX` int(11) NOT NULL,
  `PositionY` int(11) NOT NULL,
  `SizeX` int(11) NOT NULL,
  `SizeY` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_course`
--

CREATE TABLE `tbl_course` (
  `ID` varchar(40) NOT NULL,
  `CourseNo` varchar(40) NOT NULL,
  `Title` varchar(100) NOT NULL,
  `Credit` double NOT NULL,
  `CourseTypeID` varchar(40) NOT NULL,
  `DisciplineID` varchar(40) NOT NULL,
  `IsDeleted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_course`
--

INSERT INTO `tbl_course` (`ID`, `CourseNo`, `Title`, `Credit`, `CourseTypeID`, `DisciplineID`, `IsDeleted`) VALUES
('{2A038C6A-B6DA-408D-8458-7493D4EE5D6C}', 'cse-3200', 'Web Programming Lab', 1.5, '{EF5CA3BF-A886-4450-ABC4-DED45C7600C0}', '{FFDB1CB8-AF34-4381-8971-9784DCB516C5}', 0),
('{53650FB7-D76E-459D-8B56-BC7A4919C0F6}', 'cse-4112', 'Computer Networks Lab', 1.5, '{3DC4DDE5-514F-4BE4-8682-37EA32C3FDB7}', '{FFDB1CB8-AF34-4381-8971-9784DCB516C5}', 0),
('{683A3D91-D124-44AF-82A3-FB43837A4392}', 'cse-4111', 'Computer Networks', 3, '{3DC4DDE5-514F-4BE4-8682-37EA32C3FDB7}', '{FFDB1CB8-AF34-4381-8971-9784DCB516C5}', 0),
('{B17BDB32-6D88-4537-9545-65D940E17EEF}', 'cse-2115', 'Advanced Programming Lab', 1.5, '{EF5CA3BF-A886-4450-ABC4-DED45C7600C0}', '{FFDB1CB8-AF34-4381-8971-9784DCB516C5} ', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_course_marks_attendance`
--

CREATE TABLE `tbl_course_marks_attendance` (
  `CourseID` varchar(40) NOT NULL,
  `TeacherID` varchar(40) NOT NULL,
  `SessionID` varchar(40) NOT NULL,
  `TermID` varchar(40) NOT NULL,
  `StudentID` varchar(40) NOT NULL,
  `ClassDate` date NOT NULL,
  `IsPresent` tinyint(1) NOT NULL,
  `UseFace` tinyint(1) NOT NULL,
  `UseFinger` tinyint(1) NOT NULL,
  `UseSheet` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_course_marks_attendance_publish`
--

CREATE TABLE `tbl_course_marks_attendance_publish` (
  `CourseID` varchar(40) NOT NULL,
  `SessionID` varchar(40) NOT NULL,
  `TeacherID` varchar(40) NOT NULL,
  `TermID` varchar(40) NOT NULL,
  `StudentID` varchar(40) NOT NULL,
  `TotalAttendance` int(11) NOT NULL,
  `TotalClass` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_course_marks_result`
--

CREATE TABLE `tbl_course_marks_result` (
  `CourseID` varchar(40) NOT NULL,
  `TeacherID` varchar(40) NOT NULL,
  `SessionID` varchar(40) NOT NULL,
  `TermID` varchar(40) NOT NULL,
  `StudentID` varchar(40) NOT NULL,
  `MarksID` varchar(50) NOT NULL,
  `MarksValue` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_course_marks_result_publish`
--

CREATE TABLE `tbl_course_marks_result_publish` (
  `CourseID` varchar(40) NOT NULL,
  `TeacherID` varchar(40) NOT NULL,
  `TermID` varchar(40) NOT NULL,
  `SessionID` varchar(40) NOT NULL,
  `StudentID` varchar(40) NOT NULL,
  `MarksTotal` double NOT NULL,
  `MarksGrade` varchar(10) NOT NULL,
  `GPA` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_course_marks_setup`
--

CREATE TABLE `tbl_course_marks_setup` (
  `CourseID` varchar(40) NOT NULL,
  `TeacherID` varchar(40) NOT NULL,
  `SessionID` varchar(40) NOT NULL,
  `TermID` varchar(40) NOT NULL,
  `MarksID` varchar(50) NOT NULL,
  `MarksHeader` varchar(20) NOT NULL,
  `MarksMax` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_course_resource`
--

CREATE TABLE `tbl_course_resource` (
  `CourseID` varchar(40) NOT NULL,
  `ResourceID` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_course_sessional_type`
--

CREATE TABLE `tbl_course_sessional_type` (
  `ID` varchar(40) NOT NULL,
  `Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_course_sessional_type`
--

INSERT INTO `tbl_course_sessional_type` (`ID`, `Name`) VALUES
('{126156BB-18ED-4CAB-8DB9-1C0F72BB63C1}', 'N/A'),
('{45B2147F-5FE0-4CC9-880C-C19EB6323955}', 'physics'),
('{4B342686-B38E-449C-AAD2-1F7DD77E6594}', 'chemistry'),
('{D1E54E03-CDEB-4155-AD0C-27C70A3A490C}', 'ece'),
('{D3F895D3-7389-487F-A604-0BD546DCC764}', 'software'),
('{F1D0443A-EC5D-41C4-94BA-D6F0D9AB1691}', 'hardware');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_course_student_registration`
--

CREATE TABLE `tbl_course_student_registration` (
  `StudentID` varchar(40) NOT NULL,
  `TermID` varchar(40) NOT NULL,
  `CourseID` varchar(40) NOT NULL,
  `SessionID` varchar(40) NOT NULL,
  `IsRetake` tinyint(1) NOT NULL,
  `IsApproved` tinyint(1) NOT NULL,
  `IsDeleted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_course_teacher`
--

CREATE TABLE `tbl_course_teacher` (
  `CourseID` varchar(40) NOT NULL,
  `TeacherID` varchar(40) NOT NULL,
  `SessionID` varchar(40) NOT NULL,
  `TermID` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_course_teacher_registration`
--

CREATE TABLE `tbl_course_teacher_registration` (
  `TeacherID` varchar(40) NOT NULL,
  `SessionID` varchar(40) NOT NULL,
  `TermID` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_course_type`
--

CREATE TABLE `tbl_course_type` (
  `ID` varchar(40) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `SessionalTypeID` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_course_type`
--

INSERT INTO `tbl_course_type` (`ID`, `Name`, `SessionalTypeID`) VALUES
('{3DC4DDE5-514F-4BE4-8682-37EA32C3FDB7}', 'Theory', '{126156BB-18ED-4CAB-8DB9-1C0F72BB63C1}'),
('{5F886686-4EB1-48C8-A801-8D46233739D1}', 'Thesis', '{126156BB-18ED-4CAB-8DB9-1C0F72BB63C1}'),
('{EF5CA3BF-A886-4450-ABC4-DED45C7600C0}', 'Sessional', '{126156BB-18ED-4CAB-8DB9-1C0F72BB63C1}');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_discipline`
--

CREATE TABLE `tbl_discipline` (
  `ID` varchar(40) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `SchoolID` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_discipline`
--

INSERT INTO `tbl_discipline` (`ID`, `Name`, `SchoolID`) VALUES
('{0CF37516-06FE-41CD-93AD-D2D1652509D6}', 'Mathematics', '{39DDC0C2-CFC2-4246-8748-8812B1751A5C}'),
('{560A0FC0-6221-497D-8D41-E584EE4BBEE3}', 'Architecture', '{39DDC0C2-CFC2-4246-8748-8812B1751A5C}'),
('{63F3C00B-6168-4FBD-AB01-7A1FE413BDDE}', 'Forestry and Wood Technology', '{4D46079B-AFA3-40F1-B8D1-6CC9E9F56812}'),
('{AF41CC9F-3BCD-4952-9D02-17184CC40C79}', 'Urban and Rural Planning', '{4D46079B-AFA3-40F1-B8D1-6CC9E9F56812}'),
('{E065BBA7-D0C5-4DFA-9768-81B6F056EB4A}', 'FMRT', '{4D46079B-AFA3-40F1-B8D1-6CC9E9F56812}'),
('{E7280448-E379-424E-A11D-357F4334AC8D}', 'Physics', '{39DDC0C2-CFC2-4246-8748-8812B1751A5C}'),
('{FFDB1CB8-AF34-4381-8971-9784DCB516C5}', 'Computer Science and Engineering', '{39DDC0C2-CFC2-4246-8748-8812B1751A5C}');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_discipline_resource`
--

CREATE TABLE `tbl_discipline_resource` (
  `DisciplineID` varchar(40) NOT NULL,
  `ResourceID` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_discussion`
--

CREATE TABLE `tbl_discussion` (
  `ID` varchar(40) NOT NULL,
  `Title` varchar(150) NOT NULL,
  `CategoryID` varchar(40) NOT NULL,
  `Description` varchar(300) NOT NULL,
  `Tag` varchar(200) NOT NULL,
  `CreationDate` date NOT NULL,
  `CreatorID` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_discussion_category`
--

CREATE TABLE `tbl_discussion_category` (
  `ID` varchar(40) NOT NULL,
  `Name` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_discussion_comment`
--

CREATE TABLE `tbl_discussion_comment` (
  `CommentID` varchar(50) NOT NULL,
  `DiscussionID` varchar(40) NOT NULL,
  `Comment` varchar(300) NOT NULL,
  `CreatorID` varchar(40) NOT NULL,
  `CommentIDTop` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_file`
--

CREATE TABLE `tbl_file` (
  `ID` varchar(50) NOT NULL,
  `CreatorID` varchar(40) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Link` varchar(150) NOT NULL,
  `DisciplineID` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_file_assign`
--

CREATE TABLE `tbl_file_assign` (
  `FileID` varchar(50) NOT NULL,
  `FileComment` varchar(300) NOT NULL,
  `IsApproved` tinyint(1) NOT NULL,
  `IsRejected` tinyint(1) NOT NULL,
  `CurrentUserID` varchar(40) NOT NULL,
  `IsPending` tinyint(1) NOT NULL,
  `HasSeen` tinyint(1) NOT NULL,
  `CreationDate` date NOT NULL,
  `ApproveDate` date NOT NULL,
  `AssignDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_marks_grade`
--

CREATE TABLE `tbl_marks_grade` (
  `MarksMin` double NOT NULL,
  `MarksMax` double NOT NULL,
  `MarksGrade` varchar(10) NOT NULL,
  `GPA` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_permission`
--

CREATE TABLE `tbl_permission` (
  `ID` varchar(100) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Category` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_permission`
--

INSERT INTO `tbl_permission` (`ID`, `Name`, `Category`) VALUES
('CLUB_C', 'CLUB_C', 'CLUB'),
('CLUB_D', 'CLUB_D', 'CLUB'),
('CLUB_R', 'CLUB_R', 'CLUB'),
('CLUB_U', 'CLUB_U', 'CLUB'),
('COURSE_C', 'COURSE_C', 'COURSE'),
('COURSE_D', 'COURSE_D', 'COURSE'),
('COURSE_R', 'COURSE_R', 'COURSE'),
('COURSE_SESSIONAL_TYPE_C', 'COURSE_SESSIONAL_TYPE_C', 'COURSE SESSIONAL TYPE'),
('COURSE_SESSIONAL_TYPE_D', 'COURSE_SESSIONAL_TYPE_D', 'COURSE SESSIONAL TYPE'),
('COURSE_SESSIONAL_TYPE_R', 'COURSE_SESSIONAL_TYPE_R', 'COURSE SESSIONAL TYPE'),
('COURSE_SESSIONAL_TYPE_U', 'COURSE_SESSIONAL_TYPE_U', 'COURSE SESSIONAL TYPE'),
('COURSE_TYPE_C', 'COURSE_TYPE_C', 'COURSE TYPE'),
('COURSE_TYPE_D', 'COURSE_TYPE_D', 'COURSE TYPE'),
('COURSE_TYPE_R', 'COURSE_TYPE_R', 'COURSE TYPE'),
('COURSE_TYPE_U', 'COURSE_TYPE_U', 'COURSE TYPE'),
('COURSE_U', 'COURSE_U', 'COURSE'),
('DISCIPLINE_C', 'DISCIPLINE_C', 'DISCIPLINE'),
('DISCIPLINE_D', 'DISCIPLINE_D', 'DISCIPLINE'),
('DISCIPLINE_R', 'DISCIPLINE_R', 'DISCIPLINE'),
('DISCIPLINE_U', 'DISCIPLINE_U', 'DISCIPLINE'),
('DISCUSSION_C', 'DISCUSSION_C', 'DISCUSSION'),
('DISCUSSION_COMMENT_C', 'DISCUSSION_COMMENT_C', 'DISCUSSION COMMENT'),
('DISCUSSION_COMMENT_D', 'DISCUSSION_COMMENT_D', 'DISCUSSION COMMENT'),
('DISCUSSION_COMMENT_R', 'DISCUSSION_COMMENT_R', 'DISCUSSION COMMENT'),
('DISCUSSION_COMMENT_U', 'DISCUSSION_COMMENT_U', 'DISCUSSION COMMENT'),
('DISCUSSION_D', 'DISCUSSION_D', 'DISCUSSION'),
('DISCUSSION_R', 'DISCUSSION_R', 'DISCUSSION'),
('DISCUSSION_U', 'DISCUSSION_U', 'DISCUSSION'),
('FILE_C', 'FILE_C', 'FILE'),
('FILE_D', 'FILE_D', 'FILE'),
('FILE_R', 'FILE_R', 'FILE'),
('FILE_U', 'FILE_U', 'FILE'),
('PERMISSION_C', 'PERMISSION_C', 'PERMISSION'),
('PERMISSION_D', 'PERMISSION_D', 'PERMISSION'),
('PERMISSION_R', 'PERMISSION_R', 'PERMISSION'),
('PERMISSION_U', 'PERMISSION_U', 'PERMISSION'),
('POSITION_C', 'POSITION_C', 'POSITION'),
('POSITION_D', 'POSITION_D', 'POSITION'),
('POSITION_R', 'POSITION_R', 'POSITION'),
('POSITION_U', 'POSITION_U', 'POSITION'),
('PROJECT_C', 'PROJECT_C', 'PROJECT'),
('PROJECT_D', 'PROJECT_D', 'PROJECT'),
('PROJECT_R', 'PROJECT_R', 'PROJECT'),
('PROJECT_U', 'PROJECT_U', 'PROJECT'),
('QUESTION_C', 'QUESTION_C', 'QUESTION'),
('QUESTION_D', 'QUESTION_D', 'QUESTION'),
('QUESTION_R', 'QUESTION_R', 'QUESTION'),
('QUESTION_U', 'QUESTION_U', 'QUESTION'),
('REGISTRATION_C', 'REGISTRATION_C', 'REGISTRATION'),
('REGISTRATION_D', 'REGISTRATION_D', 'REGISTRATION'),
('REGISTRATION_R', 'REGISTRATION_R', 'REGISTRATION'),
('REGISTRATION_U', 'REGISTRATION_U', 'REGISTRATION'),
('RESULT_C', 'RESULT_C', 'RESULT'),
('RESULT_D', 'RESULT_D', 'RESULT'),
('RESULT_R', 'RESULT_R', 'RESULT'),
('RESULT_U', 'RESULT_U', 'RESULT'),
('ROLE_C', 'ROLE_C', 'ROLE'),
('ROLE_D', 'ROLE_D', 'ROLE'),
('ROLE_R', 'ROLE_R', 'ROLE'),
('ROLE_U', 'ROLE_U', 'ROLE'),
('SCHOOL_C', 'SCHOOL_C', 'SCHOOL'),
('SCHOOL_D', 'SCHOOL_D', 'SCHOOL'),
('SCHOOL_R', 'SCHOOL_R', 'SCHOOL'),
('SCHOOL_U', 'SCHOOL_U', 'SCHOOL'),
('SESSION_C', 'SESSION_C', 'SESSION'),
('SESSION_D', 'SESSION_D', 'SESSION'),
('SESSION_R', 'SESSION_R', 'SESSION'),
('SESSION_U', 'SESSION_U', 'SESSION'),
('SURVEY_C', 'SURVEY_C', 'SURVEY'),
('SURVEY_D', 'SURVEY_D', 'SURVEY'),
('SURVEY_QUESTION_C', 'SURVEY_QUESTION_C', 'SURVEY QUESTION'),
('SURVEY_QUESTION_D', 'SURVEY_QUESTION_D', 'SURVEY QUESTION'),
('SURVEY_QUESTION_FILLUP_C', 'SURVEY_QUESTION_FILLUP_C', 'SURVEY QUESTION FILLUP'),
('SURVEY_QUESTION_FILLUP_D', 'SURVEY_QUESTION_FILLUP_D', 'SURVEY QUESTION FILLUP'),
('SURVEY_QUESTION_FILLUP_R', 'SURVEY_QUESTION_FILLUP_R', 'SURVEY QUESTION FILLUP'),
('SURVEY_QUESTION_FILLUP_U', 'SURVEY_QUESTION_FILLUP_U', 'SURVEY QUESTION FILLUP'),
('SURVEY_QUESTION_R', 'SURVEY_QUESTION_R', 'SURVEY QUESTION'),
('SURVEY_QUESTION_TYPE_C', 'SURVEY_QUESTION_TYPE_C', 'SURVEY QUESTION TYPE'),
('SURVEY_QUESTION_TYPE_D', 'SURVEY_QUESTION_TYPE_D', 'SURVEY QUESTION TYPE'),
('SURVEY_QUESTION_TYPE_R', 'SURVEY_QUESTION_TYPE_R', 'SURVEY QUESTION TYPE'),
('SURVEY_QUESTION_TYPE_U', 'SURVEY_QUESTION_TYPE_U', 'SURVEY QUESTION TYPE'),
('SURVEY_QUESTION_U', 'SURVEY_QUESTION_U', 'SURVEY QUESTION'),
('SURVEY_R', 'SURVEY_R', 'SURVEY'),
('SURVEY_U', 'SURVEY_U', 'SURVEY'),
('TERM_C', 'TERM_C', 'TERM'),
('TERM_D', 'TERM_D', 'TERM'),
('TERM_R', 'TERM_R', 'TERM'),
('TERM_U', 'TERM_U', 'TERM'),
('USER_C', 'USER_C', 'USER'),
('USER_D', 'USER_D', 'USER'),
('USER_R', 'USER_R', 'USER'),
('USER_U', 'USER_U', 'USER'),
('VIDEO_C', 'VIDEO_C', 'VIDEO'),
('VIDEO_COMMENT_C', 'VIDEO_COMMENT_C', 'VIDEO COMMENT'),
('VIDEO_COMMENT_D', 'VIDEO_COMMENT_D', 'VIDEO COMMENT'),
('VIDEO_COMMENT_R', 'VIDEO_COMMENT_R', 'VIDEO COMMENT'),
('VIDEO_COMMENT_U', 'VIDEO_COMMENT_U', 'VIDEO COMMENT'),
('VIDEO_D', 'VIDEO_D', 'VIDEO'),
('VIDEO_R', 'VIDEO_R', 'VIDEO'),
('VIDEO_U', 'VIDEO_U', 'VIDEO'),
('YEAR_C', 'YEAR_C', 'YEAR'),
('YEAR_D', 'YEAR_D', 'YEAR'),
('YEAR_R', 'YEAR_R', 'YEAR'),
('YEAR_U', 'YEAR_U', 'YEAR');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_position`
--

CREATE TABLE `tbl_position` (
  `ID` varchar(40) NOT NULL,
  `Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_position`
--

INSERT INTO `tbl_position` (`ID`, `Name`) VALUES
('{1BFE76DB-C2AA-4FAA-A23B-F43E6150A2F6}', 'Section Officer'),
('{2E024DF5-BD45-4EF2-A5E3-43BCA3E9777F}', 'Pro-vice Chancellor'),
('{64D25DDA-16B6-47B8-BBFC-4E2AAF5680C7}', 'Assistant Professor'),
('{7CDA1F32-A2F8-4469-B5A8-C2038FCE1F9A}', 'Lecturer'),
('{818DE12F-60CC-42E4-BAEC-48EAAED65179}', 'Dean of School'),
('{928EE9FF-E02D-470F-9A6A-AD0EB38B848F}', 'Vice Chancellor'),
('{92FDDA3F-1E91-4AA3-918F-EB595F85790C}', 'Daywise Worker'),
('{932CB0EE-76C2-448E-A40E-2D167EECC479}', 'Registrar'),
('{ADA027D3-21C1-47AF-A21D-759CAFCFE58D}', 'Assistant Registrar'),
('{B76EB035-EA26-4CEB-B029-1C6129574D98}', 'Librarian'),
('{B78C7A7B-4D38-4025-8170-7B8C9F291946}', 'Head of Discipline'),
('{C27B6BCF-FB83-4F3D-85CA-B7870D8B12D0}', 'Associate Professor'),
('{EB4880E2-01B3-4C6E-A2C9-89B6E5427C0A}', 'Professor');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_project`
--

CREATE TABLE `tbl_project` (
  `ID` varchar(40) NOT NULL,
  `Title` varchar(100) NOT NULL,
  `Description` varchar(200) NOT NULL,
  `Link` varchar(200) NOT NULL,
  `Tag` varchar(200) NOT NULL,
  `CourseID` varchar(40) NOT NULL,
  `TermID` varchar(40) NOT NULL,
  `SessionID` varchar(40) NOT NULL,
  `CreationDate` date NOT NULL,
  `ProjectDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_project_student`
--

CREATE TABLE `tbl_project_student` (
  `ProjectID` varchar(40) NOT NULL,
  `StudentID` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_question_archive`
--

CREATE TABLE `tbl_question_archive` (
  `ID` varchar(40) NOT NULL,
  `Title` varchar(50) NOT NULL,
  `CourseID` varchar(40) NOT NULL,
  `TermID` varchar(40) NOT NULL,
  `SessionID` varchar(40) NOT NULL,
  `TeacherID` varchar(40) NOT NULL,
  `Type` varchar(20) NOT NULL,
  `Tag` varchar(200) NOT NULL,
  `QuestionDate` date NOT NULL,
  `Link` varchar(300) NOT NULL,
  `CreatorID` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_question_archive`
--

INSERT INTO `tbl_question_archive` (`ID`, `Title`, `CourseID`, `TermID`, `SessionID`, `TeacherID`, `Type`, `Tag`, `QuestionDate`, `Link`, `CreatorID`) VALUES
('{FA88E08E-4F53-420B-8055-AE89CA8A55B8}', '123', '123', '{C0C2FBD3-75DB-4A6F-BB2A-3F131027A744}', '123', 'mkazi078@uottawa.ca', 'Term-Final', 'lab', '2017-04-19', 'www.test.me.123', 'mkazi078@uottawa.ca'),
('{E5F1917B-6636-48FB-8854-39CA9F258C77}', '123', '123', '{22EDE2D2-D36C-4160-9D2A-80184B8AD35B}', '123', 'jinat@gmail.com', 'Term-Final', 'love', '2017-04-12', 'www.test.me', 'mkazi078@uottawa.ca');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_registration_session`
--

CREATE TABLE `tbl_registration_session` (
  `ID` varchar(40) NOT NULL,
  `Name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_registration_session`
--

INSERT INTO `tbl_registration_session` (`ID`, `Name`) VALUES
('123', '2012-2013');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_resource`
--

CREATE TABLE `tbl_resource` (
  `ID` varchar(40) NOT NULL,
  `ShortID` varchar(30) NOT NULL,
  `Name` varchar(40) NOT NULL,
  `Type` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_role`
--

CREATE TABLE `tbl_role` (
  `ID` varchar(40) NOT NULL,
  `Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_role`
--

INSERT INTO `tbl_role` (`ID`, `Name`) VALUES
('administrator', 'Administrator'),
('registration coordinator', 'Registration Coordinator'),
('student', 'Student'),
('stuff', 'Stuff'),
('tabulator', 'Tabulator'),
('teacher', 'Teacher');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_role_permission`
--

CREATE TABLE `tbl_role_permission` (
  `Row` int(11) NOT NULL,
  `RoleID` varchar(40) NOT NULL,
  `PermissionID` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_role_permission`
--

INSERT INTO `tbl_role_permission` (`Row`, `RoleID`, `PermissionID`) VALUES
(1001, 'teacher', 'COURSE_C'),
(1002, 'teacher', 'COURSE_D'),
(1003, 'teacher', 'COURSE_R'),
(1004, 'teacher', 'COURSE_U'),
(1005, 'teacher', 'DISCUSSION_C'),
(1006, 'teacher', 'DISCUSSION_D'),
(1007, 'teacher', 'DISCUSSION_R'),
(1008, 'teacher', 'DISCUSSION_U'),
(1009, 'teacher', 'DISCUSSION_COMMENT_U'),
(1010, 'teacher', 'DISCUSSION_COMMENT_C'),
(1011, 'teacher', 'DISCUSSION_COMMENT_D'),
(1012, 'teacher', 'DISCUSSION_COMMENT_R'),
(1013, 'teacher', 'FILE_C'),
(1014, 'teacher', 'FILE_D'),
(1015, 'teacher', 'FILE_R'),
(1016, 'teacher', 'FILE_U'),
(1017, 'teacher', 'PROJECT_C'),
(1018, 'teacher', 'PROJECT_D'),
(1019, 'teacher', 'PROJECT_R'),
(1020, 'teacher', 'PROJECT_U'),
(1021, 'teacher', 'QUESTION_C'),
(1022, 'teacher', 'QUESTION_D'),
(1023, 'teacher', 'QUESTION_R'),
(1024, 'teacher', 'QUESTION_U'),
(1025, 'teacher', 'REGISTRATION_C'),
(1026, 'teacher', 'REGISTRATION_D'),
(1027, 'teacher', 'REGISTRATION_R'),
(1028, 'teacher', 'REGISTRATION_U'),
(1029, 'teacher', 'RESULT_C'),
(1030, 'teacher', 'RESULT_D'),
(1031, 'teacher', 'RESULT_R'),
(1032, 'teacher', 'RESULT_U'),
(1033, 'student', 'CLUB_C'),
(1034, 'student', 'CLUB_D'),
(1035, 'student', 'CLUB_R'),
(1036, 'student', 'CLUB_U'),
(1037, 'student', 'DISCUSSION_C'),
(1038, 'student', 'DISCUSSION_D'),
(1039, 'student', 'DISCUSSION_R'),
(1040, 'student', 'DISCUSSION_U'),
(1041, 'student', 'DISCUSSION_COMMENT_U'),
(1042, 'student', 'DISCUSSION_COMMENT_C'),
(1043, 'student', 'DISCUSSION_COMMENT_D'),
(1044, 'student', 'DISCUSSION_COMMENT_R'),
(1045, 'student', 'PROJECT_C'),
(1046, 'student', 'PROJECT_D'),
(1047, 'student', 'PROJECT_R'),
(1048, 'student', 'PROJECT_U'),
(1049, 'student', 'QUESTION_C'),
(1050, 'student', 'QUESTION_D'),
(1051, 'student', 'QUESTION_R'),
(1052, 'student', 'QUESTION_U'),
(1053, 'student', 'REGISTRATION_C'),
(1054, 'student', 'REGISTRATION_D'),
(1055, 'student', 'REGISTRATION_R'),
(1056, 'student', 'REGISTRATION_U'),
(1057, 'student', 'VIDEO_C'),
(1058, 'student', 'VIDEO_D'),
(1059, 'student', 'VIDEO_R'),
(1060, 'student', 'VIDEO_U'),
(1241, 'administrator', 'CLUB_C'),
(1242, 'administrator', 'CLUB_D'),
(1243, 'administrator', 'CLUB_R'),
(1244, 'administrator', 'CLUB_U'),
(1245, 'administrator', 'COURSE_C'),
(1246, 'administrator', 'COURSE_D'),
(1247, 'administrator', 'COURSE_R'),
(1248, 'administrator', 'COURSE_U'),
(1249, 'administrator', 'COURSE_SESSIONAL_TYPE_C'),
(1250, 'administrator', 'COURSE_SESSIONAL_TYPE_D'),
(1251, 'administrator', 'COURSE_SESSIONAL_TYPE_R'),
(1252, 'administrator', 'COURSE_SESSIONAL_TYPE_U'),
(1253, 'administrator', 'COURSE_TYPE_C'),
(1254, 'administrator', 'COURSE_TYPE_D'),
(1255, 'administrator', 'COURSE_TYPE_R'),
(1256, 'administrator', 'COURSE_TYPE_U'),
(1257, 'administrator', 'DISCIPLINE_C'),
(1258, 'administrator', 'DISCIPLINE_D'),
(1259, 'administrator', 'DISCIPLINE_R'),
(1260, 'administrator', 'DISCIPLINE_U'),
(1261, 'administrator', 'DISCUSSION_C'),
(1262, 'administrator', 'DISCUSSION_D'),
(1263, 'administrator', 'DISCUSSION_R'),
(1264, 'administrator', 'DISCUSSION_U'),
(1265, 'administrator', 'DISCUSSION_COMMENT_C'),
(1266, 'administrator', 'DISCUSSION_COMMENT_D'),
(1267, 'administrator', 'DISCUSSION_COMMENT_R'),
(1268, 'administrator', 'DISCUSSION_COMMENT_U'),
(1269, 'administrator', 'FILE_C'),
(1270, 'administrator', 'FILE_D'),
(1271, 'administrator', 'FILE_R'),
(1272, 'administrator', 'FILE_U'),
(1273, 'administrator', 'PERMISSION_C'),
(1274, 'administrator', 'PERMISSION_D'),
(1275, 'administrator', 'PERMISSION_R'),
(1276, 'administrator', 'PERMISSION_U'),
(1277, 'administrator', 'POSITION_C'),
(1278, 'administrator', 'POSITION_D'),
(1279, 'administrator', 'POSITION_R'),
(1280, 'administrator', 'POSITION_U'),
(1281, 'administrator', 'PROJECT_C'),
(1282, 'administrator', 'PROJECT_D'),
(1283, 'administrator', 'PROJECT_R'),
(1284, 'administrator', 'PROJECT_U'),
(1285, 'administrator', 'QUESTION_C'),
(1286, 'administrator', 'QUESTION_D'),
(1287, 'administrator', 'QUESTION_R'),
(1288, 'administrator', 'QUESTION_U'),
(1289, 'administrator', 'REGISTRATION_C'),
(1290, 'administrator', 'REGISTRATION_D'),
(1291, 'administrator', 'REGISTRATION_R'),
(1292, 'administrator', 'REGISTRATION_U'),
(1293, 'administrator', 'RESULT_C'),
(1294, 'administrator', 'RESULT_D'),
(1295, 'administrator', 'RESULT_R'),
(1296, 'administrator', 'RESULT_U'),
(1297, 'administrator', 'ROLE_C'),
(1298, 'administrator', 'ROLE_D'),
(1299, 'administrator', 'ROLE_R'),
(1300, 'administrator', 'ROLE_U'),
(1301, 'administrator', 'SCHOOL_C'),
(1302, 'administrator', 'SCHOOL_D'),
(1303, 'administrator', 'SCHOOL_R'),
(1304, 'administrator', 'SCHOOL_U'),
(1305, 'administrator', 'SESSION_C'),
(1306, 'administrator', 'SESSION_D'),
(1307, 'administrator', 'SESSION_R'),
(1308, 'administrator', 'SESSION_U'),
(1309, 'administrator', 'SURVEY_C'),
(1310, 'administrator', 'SURVEY_D'),
(1311, 'administrator', 'SURVEY_R'),
(1312, 'administrator', 'SURVEY_U'),
(1313, 'administrator', 'SURVEY_QUESTION_C'),
(1314, 'administrator', 'SURVEY_QUESTION_D'),
(1315, 'administrator', 'SURVEY_QUESTION_R'),
(1316, 'administrator', 'SURVEY_QUESTION_U'),
(1317, 'administrator', 'SURVEY_QUESTION_FILLUP_C'),
(1318, 'administrator', 'SURVEY_QUESTION_FILLUP_D'),
(1319, 'administrator', 'SURVEY_QUESTION_FILLUP_R'),
(1320, 'administrator', 'SURVEY_QUESTION_FILLUP_U'),
(1321, 'administrator', 'SURVEY_QUESTION_TYPE_C'),
(1322, 'administrator', 'SURVEY_QUESTION_TYPE_D'),
(1323, 'administrator', 'SURVEY_QUESTION_TYPE_R'),
(1324, 'administrator', 'SURVEY_QUESTION_TYPE_U'),
(1325, 'administrator', 'TERM_C'),
(1326, 'administrator', 'TERM_D'),
(1327, 'administrator', 'TERM_R'),
(1328, 'administrator', 'TERM_U'),
(1329, 'administrator', 'USER_C'),
(1330, 'administrator', 'USER_D'),
(1331, 'administrator', 'USER_R'),
(1332, 'administrator', 'USER_U'),
(1333, 'administrator', 'VIDEO_C'),
(1334, 'administrator', 'VIDEO_D'),
(1335, 'administrator', 'VIDEO_R'),
(1336, 'administrator', 'VIDEO_U'),
(1337, 'administrator', 'VIDEO_COMMENT_C'),
(1338, 'administrator', 'VIDEO_COMMENT_D'),
(1339, 'administrator', 'VIDEO_COMMENT_R'),
(1340, 'administrator', 'VIDEO_COMMENT_U'),
(1341, 'administrator', 'YEAR_C'),
(1342, 'administrator', 'YEAR_D'),
(1343, 'administrator', 'YEAR_R'),
(1344, 'administrator', 'YEAR_U');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_routine`
--

CREATE TABLE `tbl_routine` (
  `DayID` varchar(40) NOT NULL,
  `TimeID` varchar(40) NOT NULL,
  `CourseID` varchar(40) NOT NULL,
  `TermID` varchar(40) NOT NULL,
  `SlotNo` int(11) NOT NULL,
  `TeacherID` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_routine_day`
--

CREATE TABLE `tbl_routine_day` (
  `ID` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_routine_time`
--

CREATE TABLE `tbl_routine_time` (
  `ID` varchar(40) NOT NULL,
  `Name` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_school`
--

CREATE TABLE `tbl_school` (
  `ID` varchar(40) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `DeanID` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_school`
--

INSERT INTO `tbl_school` (`ID`, `Name`, `DeanID`) VALUES
('{39DDC0C2-CFC2-4246-8748-8812B1751A5C}', 'Science Engineering and Technology', ''),
('{4D46079B-AFA3-40F1-B8D1-6CC9E9F56812}', 'Life Science', ''),
('{86E0F021-B30D-48D2-B177-247180633C5E}', 'Social Science', ''),
('{879375F7-0A15-4705-AC90-C6786D279EF1}', 'Law and Humanities', ''),
('{CE09AA38-205B-4F50-A0E0-14DB8686C912}', 'Fine Arts', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_survey`
--

CREATE TABLE `tbl_survey` (
  `ID` varchar(40) NOT NULL,
  `Title` varchar(100) NOT NULL,
  `Description` varchar(300) NOT NULL,
  `Link` varchar(100) NOT NULL,
  `TotalQuestions` int(11) NOT NULL,
  `CreatorID` varchar(40) NOT NULL,
  `CreationDate` date NOT NULL,
  `CompletionDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_survey_question`
--

CREATE TABLE `tbl_survey_question` (
  `ID` varchar(40) NOT NULL,
  `SurveyID` varchar(40) NOT NULL,
  `QuestionNo` int(11) NOT NULL,
  `QuestionType` varchar(20) NOT NULL,
  `IsVisible` tinyint(1) NOT NULL,
  `IsRequired` tinyint(1) NOT NULL,
  `QuestionValue` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_survey_question_filled`
--

CREATE TABLE `tbl_survey_question_filled` (
  `ID` int(11) NOT NULL,
  `SurveyID` varchar(40) NOT NULL,
  `QuestionID` varchar(40) NOT NULL,
  `FilledValue` varchar(200) NOT NULL,
  `FilledUserID` varchar(40) NOT NULL,
  `FilledTime` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_survey_question_type`
--

CREATE TABLE `tbl_survey_question_type` (
  `ID` varchar(40) NOT NULL,
  `Type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_survey_question_type`
--

INSERT INTO `tbl_survey_question_type` (`ID`, `Type`) VALUES
('ques_dropdown', 'Dropdown'),
('ques_radio', 'Radio'),
('ques_textInput', 'Text Input');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_term`
--

CREATE TABLE `tbl_term` (
  `ID` varchar(40) NOT NULL,
  `Name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_term`
--

INSERT INTO `tbl_term` (`ID`, `Name`) VALUES
('{19B15CDF-264C-4924-8608-258673BCC448}', 'B.Sc 8th'),
('{22EDE2D2-D36C-4160-9D2A-80184B8AD35B}', 'B.Sc I'),
('{298E9628-8DE2-4742-8F93-0491C01BB152}', 'M.Sc 1st'),
('{9C84629E-11FA-4459-A593-C9AD9CF0D3F2}', 'B.Sc 4th'),
('{9D35C1A5-8091-47BE-AF7E-160C95789EC3}', 'B.Sc 7th'),
('{B8541009-29AC-4988-B17B-91CA3E1E27E3}', 'B.Sc 5th'),
('{C0C2FBD3-75DB-4A6F-BB2A-3F131027A744}', 'B.Sc 6th'),
('{E2D0D30D-654E-4157-8F71-527023AFAB2F}', 'B.Sc 3rd'),
('{F3C92204-C532-4544-9729-858EFBED98A1}', 'M.Sc 3rd'),
('{F78D6E1A-8B11-46D3-A88A-BD6D8DA4532B}', 'M.Sc 2nd'),
('{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', 'B.Sc II');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `ID` varchar(40) NOT NULL,
  `UniversityID` varchar(20) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `IsArchived` tinyint(1) NOT NULL,
  `IsDeleted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`ID`, `UniversityID`, `Email`, `Password`, `FirstName`, `LastName`, `IsArchived`, `IsDeleted`) VALUES
('jinat@gmail.com', '020230', 'jinat@gmail.com', 'test', 'Jinat', 'Rehana ', 0, 1),
('mkazi078@uottawa.ca', '020229', 'mkazi078@uottawa.ca', '123', 'Kazi Masudul', 'Alam                    ', 0, 0),
('mohidul@gmail.com', '020219', 'mohidul@gmail.com', '123', 'SM Mohidul', 'Islam ', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_discipline`
--

CREATE TABLE `tbl_user_discipline` (
  `UserID` varchar(40) NOT NULL,
  `DisciplineID` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_position`
--

CREATE TABLE `tbl_user_position` (
  `ID` int(11) NOT NULL,
  `UserID` varchar(40) NOT NULL,
  `PositionID` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user_position`
--

INSERT INTO `tbl_user_position` (`ID`, `UserID`, `PositionID`) VALUES
(4, '{693F944F-328D-433A-9F94-459D92841645}', '{EB4880E2-01B3-4C6E-A2C9-89B6E5427C0A}'),
(14, '{E0F0AE1A-AECF-46C1-A148-4485036F3CCF}', '{EB4880E2-01B3-4C6E-A2C9-89B6E5427C0A}'),
(16, '{A4F96981-F014-46F6-BB93-87500C3CBB03}', '{7CDA1F32-A2F8-4469-B5A8-C2038FCE1F9A}'),
(17, '{0B2F4F89-2048-4504-AB17-0412CC624A05}', '{64D25DDA-16B6-47B8-BBFC-4E2AAF5680C7}'),
(19, '{8104FB4F-8E63-489D-8D90-DB45A9A2327B}', '{64D25DDA-16B6-47B8-BBFC-4E2AAF5680C7}'),
(21, '{8B24B76D-9969-4F71-ABC4-6EE59355C686}', '{64D25DDA-16B6-47B8-BBFC-4E2AAF5680C7}'),
(24, '{9E2E6363-A0FF-4C0F-B58F-D162725FB702}', '{C27B6BCF-FB83-4F3D-85CA-B7870D8B12D0}'),
(30, 'mohidul@gmail.com', '{64D25DDA-16B6-47B8-BBFC-4E2AAF5680C7}'),
(31, 'mkazi078@uottawa.ca', '{64D25DDA-16B6-47B8-BBFC-4E2AAF5680C7}');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_role`
--

CREATE TABLE `tbl_user_role` (
  `ID` int(11) NOT NULL,
  `UserID` varchar(40) NOT NULL,
  `RoleID` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user_role`
--

INSERT INTO `tbl_user_role` (`ID`, `UserID`, `RoleID`) VALUES
(82, 'mohidul@gmail.com', 'teacher'),
(83, 'mkazi078@uottawa.ca', 'administrator'),
(84, 'mkazi078@uottawa.ca', 'teacher');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_video`
--

CREATE TABLE `tbl_video` (
  `ID` varchar(40) NOT NULL,
  `Title` varchar(150) NOT NULL,
  `Description` varchar(300) NOT NULL,
  `TagID` varchar(40) NOT NULL,
  `Link` varchar(150) NOT NULL,
  `IsEmbed` tinyint(1) NOT NULL,
  `CreationDate` date NOT NULL,
  `CreatorID` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_video`
--

INSERT INTO `tbl_video` (`ID`, `Title`, `Description`, `TagID`, `Link`, `IsEmbed`, `CreationDate`, `CreatorID`) VALUES
('{A5329563-EA17-4240-B632-AC3F1627AAC3}', 'Mera sanam o sanam', 'mera sanam', 'movie', 'https://www.youtube.com/watch?v=M8U6EDjQhpM', 1, '2017-04-22', 'mkazi078@uottawa.ca');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_video_comment`
--

CREATE TABLE `tbl_video_comment` (
  `CommentID` varchar(40) NOT NULL,
  `Comment` varchar(150) NOT NULL,
  `CreatorID` varchar(40) NOT NULL,
  `VideoID` varchar(40) NOT NULL,
  `CommentIDTop` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_video_comment`
--

INSERT INTO `tbl_video_comment` (`CommentID`, `Comment`, `CreatorID`, `VideoID`, `CommentIDTop`) VALUES
('{7BCC6DCD-001E-4200-970C-EB296B3AAD28}', 'test me', 'mkazi078@uottawa.ca', '{A5329563-EA17-4240-B632-AC3F1627AAC3}', NULL),
('{1F93DC0E-6569-481A-BFD8-709A2B11AB53}', 'another test me', 'mkazi078@uottawa.ca', '{A5329563-EA17-4240-B632-AC3F1627AAC3}', NULL),
('{60628F87-0CDA-4BEF-8F4B-40B3129D98C6}', 'a new test me', 'mkazi078@uottawa.ca', '{A5329563-EA17-4240-B632-AC3F1627AAC3}', NULL),
('{EEBD990E-A4D7-4B75-900D-9B5D1F82FD65}', 'a beautiful test', 'mkazi078@uottawa.ca', '', NULL),
('{BEF9EF7F-EDB8-48E3-9D72-10E2CB3BAFE2}', 'another test me', 'mkazi078@uottawa.ca', '{A5329563-EA17-4240-B632-AC3F1627AAC3}', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_video_tag`
--

CREATE TABLE `tbl_video_tag` (
  `VideoID` varchar(40) NOT NULL,
  `Tag` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_club`
--
ALTER TABLE `tbl_club`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_course`
--
ALTER TABLE `tbl_course`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_course_sessional_type`
--
ALTER TABLE `tbl_course_sessional_type`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_course_type`
--
ALTER TABLE `tbl_course_type`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_discipline`
--
ALTER TABLE `tbl_discipline`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_discussion`
--
ALTER TABLE `tbl_discussion`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_discussion_category`
--
ALTER TABLE `tbl_discussion_category`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_discussion_comment`
--
ALTER TABLE `tbl_discussion_comment`
  ADD PRIMARY KEY (`CommentID`);

--
-- Indexes for table `tbl_file`
--
ALTER TABLE `tbl_file`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_permission`
--
ALTER TABLE `tbl_permission`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_position`
--
ALTER TABLE `tbl_position`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_project`
--
ALTER TABLE `tbl_project`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_resource`
--
ALTER TABLE `tbl_resource`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_role`
--
ALTER TABLE `tbl_role`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_role_permission`
--
ALTER TABLE `tbl_role_permission`
  ADD PRIMARY KEY (`Row`);

--
-- Indexes for table `tbl_survey`
--
ALTER TABLE `tbl_survey`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_survey_question_filled`
--
ALTER TABLE `tbl_survey_question_filled`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_survey_question_type`
--
ALTER TABLE `tbl_survey_question_type`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_term`
--
ALTER TABLE `tbl_term`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Email` (`Email`),
  ADD UNIQUE KEY `UniversityID` (`UniversityID`);

--
-- Indexes for table `tbl_user_position`
--
ALTER TABLE `tbl_user_position`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_user_role`
--
ALTER TABLE `tbl_user_role`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_video`
--
ALTER TABLE `tbl_video`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_role_permission`
--
ALTER TABLE `tbl_role_permission`
  MODIFY `Row` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1345;
--
-- AUTO_INCREMENT for table `tbl_survey_question_filled`
--
ALTER TABLE `tbl_survey_question_filled`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_user_position`
--
ALTER TABLE `tbl_user_position`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `tbl_user_role`
--
ALTER TABLE `tbl_user_role`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
