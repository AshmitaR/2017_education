-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 07, 2017 at 04:46 AM
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
  `ID` varchar(20) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Description` varchar(300) NOT NULL,
  `CreationDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_club_module`
--

CREATE TABLE `tbl_club_module` (
  `ClubID` varchar(20) NOT NULL,
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
  `ID` varchar(30) NOT NULL,
  `Title` varchar(100) NOT NULL,
  `Credit` double NOT NULL,
  `CourseTypeID` varchar(30) NOT NULL,
  `DisciplineID` varchar(20) NOT NULL,
  `IsDeleted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_course_marks_attendance`
--

CREATE TABLE `tbl_course_marks_attendance` (
  `CourseID` varchar(20) NOT NULL,
  `TeacherID` varchar(20) NOT NULL,
  `SessionID` varchar(20) NOT NULL,
  `StudentID` varchar(20) NOT NULL,
  `ClassDate` date NOT NULL,
  `IsPresent` tinyint(1) NOT NULL,
  `UseFace` tinyint(1) NOT NULL,
  `UseFinger` tinyint(1) NOT NULL,
  `UseSheet` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_course_marks_result`
--

CREATE TABLE `tbl_course_marks_result` (
  `CourseID` varchar(20) NOT NULL,
  `TeacherID` varchar(20) NOT NULL,
  `SessionID` varchar(20) NOT NULL,
  `StudentID` varchar(20) NOT NULL,
  `MarksID` varchar(50) NOT NULL,
  `MarksValue` double NOT NULL,
  `MarksGrade` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_course_marks_setup`
--

CREATE TABLE `tbl_course_marks_setup` (
  `CourseID` varchar(20) NOT NULL,
  `TeacherID` varchar(20) NOT NULL,
  `SessionID` varchar(20) NOT NULL,
  `MarksID` varchar(50) NOT NULL,
  `MarksHeader` varchar(20) NOT NULL,
  `MarksMax` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_course_teacher`
--

CREATE TABLE `tbl_course_teacher` (
  `CourseID` varchar(20) NOT NULL,
  `TeacherID` varchar(20) NOT NULL,
  `SessionID` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_course_type`
--

CREATE TABLE `tbl_course_type` (
  `ID` varchar(20) NOT NULL,
  `Name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_discipline`
--

CREATE TABLE `tbl_discipline` (
  `ID` varchar(40) NOT NULL,
  `Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_discipline`
--

INSERT INTO `tbl_discipline` (`ID`, `Name`) VALUES
('{FFDB1CB8-AF34-4381-8971-9784DCB516C5}', 'Computer Science and Engineering'),
('{560A0FC0-6221-497D-8D41-E584EE4BBEE3}', 'Architecture'),
('{B34A0580-0B92-49BD-84FB-929297B104C5}', 'Electrical and Communication Engineering'),
('{0CF37516-06FE-41CD-93AD-D2D1652509D6}', 'Mathematics'),
('{E7280448-E379-424E-A11D-357F4334AC8D}', 'Physics'),
('{E03C2DC3-CAF3-477E-A851-0C11DF93FD3B}', 'Chemistry'),
('{63F3C00B-6168-4FBD-AB01-7A1FE413BDDE}', 'Statistics'),
('{AF41CC9F-3BCD-4952-9D02-17184CC40C79}', 'Urban and Rural Planning');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_discipline_school`
--

CREATE TABLE `tbl_discipline_school` (
  `DisciplineID` varchar(20) NOT NULL,
  `SchoolID` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_discussion`
--

CREATE TABLE `tbl_discussion` (
  `ID` varchar(50) NOT NULL,
  `Title` varchar(150) NOT NULL,
  `Description` varchar(300) NOT NULL,
  `CreationDate` date NOT NULL,
  `CreatorID` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_discussion_comment`
--

CREATE TABLE `tbl_discussion_comment` (
  `CommentID` varchar(50) NOT NULL,
  `DiscussionID` varchar(50) NOT NULL,
  `Comment` varchar(300) NOT NULL,
  `CreatorID` varchar(20) NOT NULL,
  `CommentIDTop` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_file`
--

CREATE TABLE `tbl_file` (
  `ID` varchar(50) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Link` varchar(150) NOT NULL,
  `CreatorID` varchar(20) NOT NULL,
  `DisciplineID` varchar(20) NOT NULL,
  `CreationDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_file_assign`
--

CREATE TABLE `tbl_file_assign` (
  `FileID` varchar(50) NOT NULL,
  `RevisionNo` double NOT NULL,
  `RevisionDate` date NOT NULL,
  `AssignedToID` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_marks_grade`
--

CREATE TABLE `tbl_marks_grade` (
  `MarksMin` double NOT NULL,
  `MarksMax` double NOT NULL,
  `MarksGrade` varchar(10) NOT NULL
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
('DISCIPLINE_C', 'DISCIPLINE_C', 'DISCIPLINE'),
('DISCIPLINE_D', 'DISCIPLINE_D', 'DISCIPLINE'),
('DISCIPLINE_R', 'DISCIPLINE_R', 'DISCIPLINE'),
('DISCIPLINE_U', 'DISCIPLINE_U', 'DISCIPLINE'),
('POSITION_C', 'POSITION_C', 'POSITION'),
('POSITION_D', 'POSITION_D', 'POSITION'),
('POSITION_R', 'POSITION_R', 'POSITION'),
('POSITION_U', 'POSITION_U', 'POSITION'),
('ROLE_C', 'ROLE_C', 'ROLE'),
('ROLE_D', 'ROLE_D', 'ROLE'),
('ROLE_R', 'ROLE_R', 'ROLE'),
('ROLE_U', 'ROLE_U', 'ROLE'),
('SCHOOL_C', 'SCHOOL_C', 'SCHOOL'),
('SCHOOL_D', 'SCHOOL_D', 'SCHOOL'),
('SCHOOL_R', 'SCHOOL_R', 'SCHOOL'),
('SCHOOL_U', 'SCHOOL_U', 'SCHOOL'),
('USER_C', 'USER_C', 'USER'),
('USER_D', 'USER_D', 'USER'),
('USER_R', 'USER_R', 'USER'),
('USER_U', 'USER_U', 'USER');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_position`
--

CREATE TABLE `tbl_position` (
  `ID` varchar(40) NOT NULL,
  `Name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_position`
--

INSERT INTO `tbl_position` (`ID`, `Name`) VALUES
('{7CDA1F32-A2F8-4469-B5A8-C2038FCE1F9A}', 'Lecturer'),
('{64D25DDA-16B6-47B8-BBFC-4E2AAF5680C7}', 'Assistant Professor'),
('{C27B6BCF-FB83-4F3D-85CA-B7870D8B12D0}', 'Associate Professor'),
('{EB4880E2-01B3-4C6E-A2C9-89B6E5427C0A}', 'Professor'),
('{B78C7A7B-4D38-4025-8170-7B8C9F291946}', 'Head of Discipline'),
('{818DE12F-60CC-42E4-BAEC-48EAAED65179}', 'Dean of School'),
('{932CB0EE-76C2-448E-A40E-2D167EECC479}', 'Registrar'),
('{ADA027D3-21C1-47AF-A21D-759CAFCFE58D}', 'Assistant Registrar'),
('{1BFE76DB-C2AA-4FAA-A23B-F43E6150A2F6}', 'Section Officer'),
('{92FDDA3F-1E91-4AA3-918F-EB595F85790C}', 'Daywise Worker'),
('{B76EB035-EA26-4CEB-B029-1C6129574D98}', 'Librarian'),
('{928EE9FF-E02D-470F-9A6A-AD0EB38B848F}', 'Vice Chancellor'),
('{2E024DF5-BD45-4EF2-A5E3-43BCA3E9777F}', 'Pro-vice Chancellor');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_project`
--

CREATE TABLE `tbl_project` (
  `ID` varchar(50) NOT NULL,
  `Title` varchar(100) NOT NULL,
  `Description` varchar(200) NOT NULL,
  `Link` varchar(200) NOT NULL,
  `CourseID` varchar(20) NOT NULL,
  `CreationDate` date NOT NULL,
  `ProjectDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_project_student`
--

CREATE TABLE `tbl_project_student` (
  `ProjectID` varchar(50) NOT NULL,
  `StudentID` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_question_archive`
--

CREATE TABLE `tbl_question_archive` (
  `ID` varchar(50) NOT NULL,
  `Title` varchar(50) NOT NULL,
  `CourseID` varchar(20) NOT NULL,
  `QuestionDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_registration_session`
--

CREATE TABLE `tbl_registration_session` (
  `ID` varchar(20) NOT NULL,
  `Name` varchar(30) NOT NULL
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
('{1AF8A832-4C03-49C7-8071-C71D4EB4FC57}', 'Staff'),
('{3477F777-3F53-408B-9773-249C5937C2B8}', 'Teacher'),
('{9CC63B6A-99BD-4710-B675-9881B5F7337A}', 'Student'),
('{F9C458F2-5298-441F-AE63-7514029760C4}', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_role_permission`
--

CREATE TABLE `tbl_role_permission` (
  `PermissionID` varchar(100) NOT NULL,
  `IsChecked` tinyint(1) NOT NULL,
  `RoleID` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_school`
--

CREATE TABLE `tbl_school` (
  `ID` varchar(40) NOT NULL,
  `Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_school`
--

INSERT INTO `tbl_school` (`ID`, `Name`) VALUES
('{39DDC0C2-CFC2-4246-8748-8812B1751A5C}', 'Science Engineering and Technology'),
('{4D46079B-AFA3-40F1-B8D1-6CC9E9F56812}', 'Life Science'),
('{86E0F021-B30D-48D2-B177-247180633C5E}', 'Social Science'),
('{879375F7-0A15-4705-AC90-C6786D279EF1}', 'Law and Humanities'),
('{CE09AA38-205B-4F50-A0E0-14DB8686C912}', 'Fine Arts');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_school_dean`
--

CREATE TABLE `tbl_school_dean` (
  `SchoolID` varchar(40) NOT NULL,
  `DeanID` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_student_registration`
--

CREATE TABLE `tbl_student_registration` (
  `StudentID` varchar(20) NOT NULL,
  `CourseID` varchar(30) NOT NULL,
  `SessionID` varchar(20) NOT NULL,
  `IsRetake` tinyint(1) NOT NULL,
  `IsApproved` tinyint(1) NOT NULL,
  `IsDeleted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
-- Table structure for table `tbl_teacher_registration`
--

CREATE TABLE `tbl_teacher_registration` (
  `TeacherID` varchar(20) NOT NULL,
  `SessionID` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
('{22EDE2D2-D36C-4160-9D2A-80184B8AD35B}', '1st'),
('{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', '2nd'),
('{E2D0D30D-654E-4157-8F71-527023AFAB2F}', '3rd'),
('{9C84629E-11FA-4459-A593-C9AD9CF0D3F2}', '4th'),
('{B8541009-29AC-4988-B17B-91CA3E1E27E3}', '5th'),
('{C0C2FBD3-75DB-4A6F-BB2A-3F131027A744}', '6th'),
('{9D35C1A5-8091-47BE-AF7E-160C95789EC3}', '7th'),
('{19B15CDF-264C-4924-8608-258673BCC448}', '8th'),
('{298E9628-8DE2-4742-8F93-0491C01BB152}', 'M.Sc 1st'),
('{F78D6E1A-8B11-46D3-A88A-BD6D8DA4532B}', 'M.Sc 2nd'),
('{F3C92204-C532-4544-9729-858EFBED98A1}', 'M.Sc 3rd');

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
('{0B2F4F89-2048-4504-AB17-0412CC624A05}', '020215', 'mohidul@gmail.com', 'test', 'SM Mohidul', 'Islam          ', 0, 0),
('{8104FB4F-8E63-489D-8D90-DB45A9A2327B}', '020203', 'zahid@gmail.com', 'test', 'Md. Zahid', 'Islam     ', 0, 0),
('{8B24B76D-9969-4F71-ABC4-6EE59355C686}', '020229', 'mkazi078@uottawa.ca', 'test', 'Kazi Masudul', 'Alam           ', 0, 0),
('{9E2E6363-A0FF-4C0F-B58F-D162725FB702}', '020216', 'alamgir@gmail.com', 'test', 'Sk Alamgir', 'Hossain   ', 0, 0),
('{A4F96981-F014-46F6-BB93-87500C3CBB03}', '020208', 'aakth072@uottawa.ca', 'test', 'Aysha', 'Akther     ', 0, 0),
('{B51D020E-1BB9-4FA3-86BF-C32949367885}', '040212', 'saikat@gmail.com', 'test', 'Saikat', 'Mondal  ', 0, 0),
('{E0F0AE1A-AECF-46C1-A148-4485036F3CCF}', 'e020202', 'rafiq@gmail.com', 'test', 'Md. Rafiqul', 'Islam ', 0, 0),
('{EC675CB7-2551-4062-A79E-0EF15481D38A}', 'test new!', 'test@gmail.com', 'test', 'test', 'test ', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_discipline`
--

CREATE TABLE `tbl_user_discipline` (
  `UserID` varchar(20) NOT NULL,
  `DisciplineID` varchar(20) NOT NULL
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
(1, '{9E2E6363-A0FF-4C0F-B58F-D162725FB702}', '{C27B6BCF-FB83-4F3D-85CA-B7870D8B12D0}'),
(4, '{693F944F-328D-433A-9F94-459D92841645}', '{EB4880E2-01B3-4C6E-A2C9-89B6E5427C0A}'),
(10, '{8104FB4F-8E63-489D-8D90-DB45A9A2327B}', '{64D25DDA-16B6-47B8-BBFC-4E2AAF5680C7}'),
(11, '{8B24B76D-9969-4F71-ABC4-6EE59355C686}', '{64D25DDA-16B6-47B8-BBFC-4E2AAF5680C7}'),
(13, '{B51D020E-1BB9-4FA3-86BF-C32949367885}', '{64D25DDA-16B6-47B8-BBFC-4E2AAF5680C7}'),
(14, '{E0F0AE1A-AECF-46C1-A148-4485036F3CCF}', '{EB4880E2-01B3-4C6E-A2C9-89B6E5427C0A}'),
(16, '{A4F96981-F014-46F6-BB93-87500C3CBB03}', '{7CDA1F32-A2F8-4469-B5A8-C2038FCE1F9A}'),
(17, '{0B2F4F89-2048-4504-AB17-0412CC624A05}', '{64D25DDA-16B6-47B8-BBFC-4E2AAF5680C7}');

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
(40, '{8104FB4F-8E63-489D-8D90-DB45A9A2327B}', '{3477F777-3F53-408B-9773-249C5937C2B8}'),
(41, '{8B24B76D-9969-4F71-ABC4-6EE59355C686}', '{3477F777-3F53-408B-9773-249C5937C2B8}'),
(42, '{8B24B76D-9969-4F71-ABC4-6EE59355C686}', '{F9C458F2-5298-441F-AE63-7514029760C4}'),
(43, '{B51D020E-1BB9-4FA3-86BF-C32949367885}', '{3477F777-3F53-408B-9773-249C5937C2B8}'),
(44, '{E0F0AE1A-AECF-46C1-A148-4485036F3CCF}', '{3477F777-3F53-408B-9773-249C5937C2B8}'),
(47, '{A4F96981-F014-46F6-BB93-87500C3CBB03}', '{3477F777-3F53-408B-9773-249C5937C2B8}'),
(48, '{0B2F4F89-2048-4504-AB17-0412CC624A05}', '{3477F777-3F53-408B-9773-249C5937C2B8}'),
(49, '{0B2F4F89-2048-4504-AB17-0412CC624A05}', '{9CC63B6A-99BD-4710-B675-9881B5F7337A}');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_video`
--

CREATE TABLE `tbl_video` (
  `ID` varchar(50) NOT NULL,
  `Title` varchar(150) NOT NULL,
  `Description` varchar(300) NOT NULL,
  `Link` varchar(150) NOT NULL,
  `IsEmbed` tinyint(1) NOT NULL,
  `CreationDate` date NOT NULL,
  `CreatorID` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_video_comment`
--

CREATE TABLE `tbl_video_comment` (
  `CommentID` varchar(50) NOT NULL,
  `Comment` varchar(150) NOT NULL,
  `CreatorID` varchar(20) NOT NULL,
  `VideoID` varchar(50) NOT NULL,
  `CommentIDTop` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_course`
--
ALTER TABLE `tbl_course`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_course_type`
--
ALTER TABLE `tbl_course_type`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_permission`
--
ALTER TABLE `tbl_permission`
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
  ADD PRIMARY KEY (`PermissionID`,`RoleID`);

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
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`ID`);

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_survey_question_filled`
--
ALTER TABLE `tbl_survey_question_filled`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_user_position`
--
ALTER TABLE `tbl_user_position`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `tbl_user_role`
--
ALTER TABLE `tbl_user_role`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
