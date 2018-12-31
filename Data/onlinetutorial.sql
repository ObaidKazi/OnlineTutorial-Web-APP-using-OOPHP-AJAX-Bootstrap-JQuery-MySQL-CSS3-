-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 14, 2018 at 06:40 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlinetutorial`
--

-- --------------------------------------------------------

--
-- Table structure for table `assignments`
--

CREATE TABLE `assignments` (
  `CID` int(11) NOT NULL,
  `Year` varchar(20) NOT NULL,
  `Topic` varchar(300) NOT NULL,
  `AssignNo` varchar(5) NOT NULL,
  `Marks` int(11) NOT NULL,
  `Question` text NOT NULL,
  `Answer` text NOT NULL,
  `Option1` text,
  `Option2` text,
  `Option3` text,
  `Option4` text,
  `Option5` text,
  `QuesImg` varchar(100) DEFAULT NULL,
  `Option1Img` varchar(100) DEFAULT NULL,
  `Option2Img` varchar(100) DEFAULT NULL,
  `Option3Img` varchar(100) DEFAULT NULL,
  `Option4Img` varchar(100) DEFAULT NULL,
  `Option5Img` varchar(100) DEFAULT NULL,
  `Name` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `belongs`
--

CREATE TABLE `belongs` (
  `GroupName` varchar(30) NOT NULL,
  `Username` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `belongs`
--

INSERT INTO `belongs` (`GroupName`, `Username`) VALUES
('Admin', 'shadab'),
('Faculty', 'mudassar'),
('Faculty', 'obaid'),
('Faculty', 'obaidkazi12'),
('Faculty', 'test'),
('Faculty', 'testingfac'),
('Student', 'adnan'),
('Student', 'obaidkazi'),
('Student', 'rehan'),
('Student', 'Student'),
('Student', 'testing');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `CID` int(11) NOT NULL,
  `dept_id` int(11) DEFAULT NULL,
  `CName` varchar(100) NOT NULL,
  `COutcome` longtext NOT NULL,
  `CDuration` varchar(30) NOT NULL,
  `CPrereq` varchar(100) DEFAULT NULL,
  `Last_Modified` timestamp(2) NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`CID`, `dept_id`, `CName`, `COutcome`, `CDuration`, `CPrereq`, `Last_Modified`) VALUES
(20, 1, 'DBMS', 'To be well introduce with database concepts and storage mechanisms', '52-Hr', 'Operating system', '2018-10-02 13:50:11.00'),
(21, 1, 'AOA', 'To have good grasping knowledge of algorithms and its working', '52-Hr', 'Data Structure', '2018-10-02 13:50:58.00'),
(23, 1, 'OS', 'To have been introduce with process concepts', '52-Hr', 'COA', '2018-10-02 13:51:40.00'),
(24, 1, 'WDL', 'To be a better website developer', '52-hr', 'HTML', '2018-10-02 21:47:47.00'),
(25, 1, 'CNE', 'To be developed with topologies and schema of netowrk', '52-hr', 'Basic networking details', '2018-10-03 03:38:34.00'),
(26, 1, 'GST', 'hiie', '52-hr', 'hello', '2018-10-11 03:11:29.00'),
(27, 1, 'testing', 'testing', '52-hr', 'testing', '2018-10-14 13:52:00.00');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `dept_id` int(11) NOT NULL,
  `dept_name` varchar(30) NOT NULL,
  `hod` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`dept_id`, `dept_name`, `hod`) VALUES
(1, 'Computer', NULL),
(2, 'Civil', NULL),
(3, 'Pharmacy', NULL),
(4, 'Electronics', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `enquiry`
--

CREATE TABLE `enquiry` (
  `ID` int(11) NOT NULL,
  `Name` char(100) NOT NULL,
  `Contact` varchar(15) NOT NULL,
  `Email` varchar(60) NOT NULL,
  `Subject` varchar(50) NOT NULL,
  `Mesg` longtext NOT NULL,
  `Time` timestamp(2) NOT NULL DEFAULT CURRENT_TIMESTAMP
) ;

--
-- Dumping data for table `enquiry`
--

INSERT INTO `enquiry` (`ID`, `Name`, `Contact`, `Email`, `Subject`, `Mesg`, `Time`, `GroupName`) VALUES
(88, 'rehan', '9702359708', 'rehankhan@gmail.com', 'hello', 'THis is test message', '2018-10-02 11:13:22.00', 'Admin'),
(89, 'salman', '9967743703', 'salman@gmail.com', 'Contacting', 'i have one query', '2018-10-03 04:09:36.00', 'Admin'),
(90, 'demo', '8898115125', 'demo@gmail.com', 'hiie', 'hello', '2018-10-11 02:59:59.00', 'Admin'),
(91, 'Test', '8858112536', 'test@gmail.com', 'hiie', 'hello', '2018-10-14 12:51:48.00', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `FID` int(11) NOT NULL,
  `Designation` varchar(25) NOT NULL,
  `Qualification` varchar(100) NOT NULL,
  `Specialization` varchar(255) NOT NULL,
  `Experience` varchar(10) NOT NULL,
  `DOJ` date NOT NULL,
  `dept_id` int(11) DEFAULT NULL,
  `LastModified` timestamp(2) NULL DEFAULT NULL,
  `Username` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`FID`, `Designation`, `Qualification`, `Specialization`, `Experience`, `DOJ`, `dept_id`, `LastModified`, `Username`) VALUES
(34, 'Prof', 'BE', 'Data', '2', '2018-10-02', 1, '2018-10-02 09:20:57.00', 'obaid'),
(35, 'Prof', 'Bachelor', 'Data', '2', '2018-10-03', 1, '2018-10-03 03:37:01.00', 'mudassar'),
(36, 'Prof', 'BE', 'Data', '5', '2018-10-11', 1, '2018-10-11 03:11:13.00', 'obaidkazi12'),
(38, 'Asst. Prof', 'B.E', 'DBMS', '3', '2018-10-14', 1, '2018-10-14 13:27:54.00', 'test'),
(39, 'Asst. Prof', 'B.E', 'DBMS', '3', '2018-10-14', 1, '2018-10-14 15:34:56.00', 'testingfac');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `GroupName` varchar(30) NOT NULL,
  `CreationTime` timestamp(2) NOT NULL DEFAULT CURRENT_TIMESTAMP
) ;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`GroupName`, `CreationTime`) VALUES
('Admin', '2018-10-02 07:00:00.00'),
('Faculty', '2018-10-02 07:02:00.00'),
('Student', '2018-10-02 07:03:00.00');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `MessageID` bigint(20) NOT NULL,
  `SenderID` varchar(30) DEFAULT NULL,
  `RecieverID` varchar(30) NOT NULL,
  `Message` mediumtext NOT NULL,
  `ParentMsgID` bigint(20) DEFAULT NULL,
  `sendAt` timestamp(2) NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `response`
--

CREATE TABLE `response` (
  `CID` int(11) NOT NULL,
  `Year` varchar(20) NOT NULL,
  `Topic` varchar(300) NOT NULL,
  `AssignNo` varchar(5) NOT NULL,
  `RNO` int(11) NOT NULL,
  `Answer` text NOT NULL,
  `Marks` int(11) DEFAULT NULL,
  `Attempt1` timestamp NULL DEFAULT NULL,
  `Attempt2` timestamp NULL DEFAULT NULL,
  `Attempt3` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `RNO` int(11) NOT NULL,
  `Year` varchar(20) NOT NULL,
  `Class` varchar(2) NOT NULL,
  `DOA` date DEFAULT NULL,
  `dept_id` int(11) DEFAULT NULL,
  `Username` varchar(30) DEFAULT NULL,
  `Last_Modified` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`RNO`, `Year`, `Class`, `DOA`, `dept_id`, `Username`, `Last_Modified`) VALUES
(8, '2018', '', '2018-10-03', 1, 'rehan', '2018-10-03 01:50:15'),
(9, '2018', '', '2018-10-03', 1, 'adnan', '2018-10-03 03:48:52'),
(10, '2018', '', '2018-10-03', 1, 'Student', '2018-10-03 04:11:38'),
(12, '2018', '', '2018-10-11', 1, 'obaidkazi', '2018-10-11 03:15:28'),
(24, '2018', '', '2018-10-14', 1, 'testing', '2018-10-14 15:37:35');

-- --------------------------------------------------------

--
-- Table structure for table `takes`
--

CREATE TABLE `takes` (
  `RNO` int(11) NOT NULL,
  `CID` int(11) NOT NULL,
  `Year` varchar(20) NOT NULL,
  `Percentage` decimal(5,2) DEFAULT NULL,
  `Grade` varchar(2) DEFAULT NULL,
  `EnrollTime` timestamp(2) NOT NULL DEFAULT CURRENT_TIMESTAMP
) ;

--
-- Dumping data for table `takes`
--

INSERT INTO `takes` (`RNO`, `CID`, `Year`, `Percentage`, `Grade`, `EnrollTime`, `Progress`) VALUES
(8, 20, '2018', '0.00', '', '2018-10-03 01:50:15.00', ''),
(9, 25, '2018', '0.00', '', '2018-10-03 03:48:52.00', ''),
(10, 20, '2018', '0.00', '', '2018-10-03 04:11:38.00', ''),
(12, 26, '2018', '0.00', '', '2018-10-11 03:15:28.00', ''),
(24, 27, '2018', '0.00', '', '2018-10-14 15:37:35.00', '');

-- --------------------------------------------------------

--
-- Table structure for table `teaches`
--

CREATE TABLE `teaches` (
  `CID` int(11) NOT NULL,
  `FID` int(11) NOT NULL,
  `Year` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teaches`
--

INSERT INTO `teaches` (`CID`, `FID`, `Year`) VALUES
(20, 34, '2018'),
(21, 34, '2018'),
(23, 34, '2018'),
(24, 34, '2018'),
(25, 35, '2018'),
(26, 36, '2018'),
(27, 38, '2018'),
(27, 39, '2018');

-- --------------------------------------------------------

--
-- Table structure for table `tutorial`
--

CREATE TABLE `tutorial` (
  `CID` int(11) NOT NULL,
  `Year` varchar(20) NOT NULL,
  `Topic` varchar(300) NOT NULL,
  `content` longtext NOT NULL,
  `Name` mediumtext NOT NULL,
  `Weightage` int(11) NOT NULL,
  `Media` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tutorial`
--

INSERT INTO `tutorial` (`CID`, `Year`, `Topic`, `content`, `Name`, `Weightage`, `Media`) VALUES
(20, '2018', 'Intro, Features, EER Model, Importance', '<p>An&nbsp;<strong>entity&ndash;relationship model</strong>&nbsp;(<strong>ER model</strong>&nbsp;for short) describes interrelated things of interest in a specific domain of knowledge. A basic ER model is composed of entity types (which classify the things of interest) and specifies relationships that can exist between instances of those entity types</p>\r\n\r\n<p>An entity&ndash;relationship diagram for an&nbsp;<a href="https://en.wikipedia.org/wiki/MMORPG" title="MMORPG">MMORPG</a>&nbsp;using Chen&#39;s notation.</p>\r\n\r\n<p>In&nbsp;<a href="https://en.wikipedia.org/wiki/Software_engineering" title="Software engineering">software engineering</a>, an ER model is commonly formed to represent things that a business needs to remember in order to perform business processes. Consequently, the ER model becomes an abstract&nbsp;<a href="https://en.wikipedia.org/wiki/Data_modeling" title="Data modeling">data model</a>, that defines a data or information structure which can be implemented in a&nbsp;<a href="https://en.wikipedia.org/wiki/Database" title="Database">database</a>, typically a&nbsp;<a href="https://en.wikipedia.org/wiki/Relational_database" title="Relational database">relational database</a>.</p>\r\n\r\n<p>Entity&ndash;relationship modeling was developed for database design by&nbsp;<a href="https://en.wikipedia.org/wiki/Peter_Chen" title="Peter Chen">Peter Chen</a>&nbsp;and published in a 1976 paper.<sup><a href="https://en.wikipedia.org/wiki/Entity%E2%80%93relationship_model#cite_note-Chen-1">[1]</a></sup>&nbsp;However, variants of the idea existed previously.<sup><a href="https://en.wikipedia.org/wiki/Entity%E2%80%93relationship_model#cite_note-2">[2]</a></sup>&nbsp;Some ER models show super and subtype entities connected by generalization-specialization relationships,<sup><a href="https://en.wikipedia.org/wiki/Entity%E2%80%93relationship_model#cite_note-3">[3]</a></sup>&nbsp;and an ER model can be used also in the specification of domain-specific&nbsp;<a href="https://en.wikipedia.org/wiki/Ontology_(computer_science)" title="Ontology (computer science)">ontologies</a>.</p>\r\n', 'ER Model', 40, 'MediaFiles/DBMS/ER Model/Intro, Features, EER Model, Importance.mp4'),
(20, '2018', 'Reational concepts, Relational queries', '<h2>Relational model[<a href="https://en.wikipedia.org/w/index.php?title=Relational_database&amp;action=edit&amp;section=1" title="Edit section: Relational model">edit</a>]</h2>\r\n\r\n<p>Main article:&nbsp;<a href="https://en.wikipedia.org/wiki/Relational_model" title="Relational model">Relational model</a></p>\r\n\r\n<p>This model organizes data into one or more&nbsp;<a href="https://en.wikipedia.org/wiki/Table_(database)" title="Table (database)">tables</a>&nbsp;(or &quot;relations&quot;) of&nbsp;<a href="https://en.wikipedia.org/wiki/Column_(database)" title="Column (database)">columns</a>&nbsp;and&nbsp;<a href="https://en.wikipedia.org/wiki/Row_(database)" title="Row (database)">rows</a>, with a unique key identifying each row. Rows are also called&nbsp;<a href="https://en.wikipedia.org/wiki/Record_(computer_science)" title="Record (computer science)">records</a>&nbsp;or&nbsp;<a href="https://en.wikipedia.org/wiki/Tuple" title="Tuple">tuples</a>.<sup><a href="https://en.wikipedia.org/wiki/Relational_database#cite_note-3">[3]</a></sup>&nbsp;Columns are also called attributes. Generally, each table/relation represents one &quot;entity type&quot; (such as customer or product). The rows represent instances of that type of entity (such as &quot;Lee&quot; or &quot;chair&quot;) and the columns representing values attributed to that instance (such as address or price).</p>\r\n\r\n<h2>Keys[<a href="https://en.wikipedia.org/w/index.php?title=Relational_database&amp;action=edit&amp;section=2" title="Edit section: Keys">edit</a>]</h2>\r\n\r\n<p>Each row in a table has its own unique key. Rows in a table can be linked to rows in other tables by adding a column for the unique key of the linked row (such columns are known as&nbsp;<a href="https://en.wikipedia.org/wiki/Foreign_key" title="Foreign key">foreign keys</a>). Codd showed that data relationships of arbitrary complexity can be represented by a simple set of concepts.<sup>[<em><a href="https://en.wikipedia.org/wiki/Wikipedia:Citation_needed" title="Wikipedia:Citation needed">citation needed</a></em>]</sup></p>\r\n\r\n<p>Part of this processing involves consistently being able to select or modify one and only one row in a table. Therefore, most physical implementations have a unique&nbsp;<a href="https://en.wikipedia.org/wiki/Primary_key" title="Primary key">primary key</a>&nbsp;(PK) for each table. When a new row is written to the table, a new unique value for the primary key is generated; this is the key that the system uses primarily for accessing the table. System performance is optimized for PKs. Other, more&nbsp;<a href="https://en.wikipedia.org/wiki/Natural_key" title="Natural key">natural keys</a>&nbsp;may also be identified and defined as&nbsp;<a href="https://en.wikipedia.org/wiki/Alternate_key" title="Alternate key">alternate keys</a>&nbsp;(AK). Often several columns are needed to form an AK (this is one reason why a single integer column is usually made the PK). Both PKs and AKs have the ability to uniquely identify a row within a table. Additional technology may be applied to ensure a unique ID across the world, a&nbsp;<a href="https://en.wikipedia.org/wiki/Globally_unique_identifier" title="Globally unique identifier">globally unique identifier</a>, when there are broader system requirements.</p>\r\n\r\n<p>The primary keys within a database are used to define the relationships among the tables. When a PK migrates to another table, it becomes a foreign key in the other table. When each cell can contain only one value and the PK migrates into a regular entity table, this design pattern can represent either a&nbsp;<a href="https://en.wikipedia.org/wiki/One-to-one_(data_model)" title="One-to-one (data model)">one-to-one</a>&nbsp;or&nbsp;<a href="https://en.wikipedia.org/wiki/One-to-many_(data_model)" title="One-to-many (data model)">one-to-many</a>&nbsp;relationship. Most relational database designs resolve&nbsp;<a href="https://en.wikipedia.org/wiki/Many-to-many_(data_model)" title="Many-to-many (data model)">many-to-many</a>&nbsp;relationships by creating an additional table that contains the PKs from both of the other entity tables&mdash;the relationship becomes an entity; the resolution table is then named appropriately and the two FKs are combined to form a PK. The migration of PKs to other tables is the second major reason why system-assigned integers are used normally as PKs; there&#39;s seldom efficiency nor clarity in migrating a bunch of other types of columns.</p>\r\n', 'Relational Database', 30, 'MediaFiles/DBMS/Relational Database/Reational concepts, Relational queries.mp4'),
(24, '2018', 'HTML,CSS', '<p>&nbsp;&lt;input id=&quot;repairID_0&quot; name=&quot;dynfields[0][repairID]&quot; value=&quot;1&quot; class=&quot;form-control removeDiv&quot; type=&quot;hidden&quot;&gt;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &lt;img class=&quot;removeRow removeImg removeDiv&quot; src=&quot;img/remove.png&quot; width=&quot;100%&quot;&gt;<br />\r\n&nbsp; &nbsp; &lt;/div&gt;</p>\r\n\r\n<p>&nbsp; &nbsp; &lt;di<sub><em><strong>v&gt;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &lt;div class=&quot;col-sm-5&quot;&gt;&lt;input id=&quot;DescRepair_1&quot; name=&quot;dynfields[1][DescRepair]&quot; class=&quot;form-control removeDiv&quot; type=&quot;text&quot;&gt;&lt;/div&gt;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &lt;div class=&quot;col-sm-5&quot;&gt;&lt;input id=&quot;NestParts_1&quot; name=&quot;dynfields[1][NestParts]&quot; class=&quot;form-control removeDiv&quot; type=&quot;text&quot;&gt;&lt;/div&gt;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &lt;div class=&quot;col-sm-1 removeDiv&quot;&gt;&lt;input id=&quot;EdPrice_1&quot; name=&quot;dynfields[1][EdPrice]&quot; class=&quot;form-control removeDiv&quot; type=&quot;text&quot;&gt;&lt;/div&gt;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &lt;div class=&quot;col-sm-1 removeDiv&quot;&gt;&lt;input id=&quot;DateRepair_1&quot; name=&quot;dynfields[1][DateRepair]&quot; class=&quot;form-control dateBox removeDiv&quot; type=&quot;text&quot;&gt;&lt;/div&gt;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &lt;input id=&quot;repairID_1&quot; name=&quot;dynfields[1][repairID]&quot; value=&quot;2&quot; class=&quot;form-control removeDiv&quot; type=&quot;hidden&quot;&gt;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &lt;img class=&quot;removeRow removeImg removeDiv&quot; src=&quot;img/remove.png&quot; width=&quot;100%&quot;&gt;&lt;/div&gt;<br />\r\n&nbsp; &nbsp; &lt;/di</strong></em></sub>v&gt;<br />\r\n&lt;/div&gt;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>these are the example of html</p>\r\n', 'Introduction to WDL', 30, 'MediaFiles/WDL/Introduction to WDL/HTML,CSS.mp4'),
(25, '2018', 'Basics,Topologies,Hardwrae devices', '<p style="margin-left:0px; margin-right:0px; text-align:justify"><span style="font-size:15px !important"><span style="color:#000000"><span style="font-family:&quot;Open Sans&quot;,Helvetica,Arial,Verdana,sans-serif"><span style="background-color:#ffffff"><strong>Open system:</strong><br />\r\nA system which is connected to the network and is ready for communication.</span></span></span></span></p>\r\n\r\n<p style="margin-left:0px; margin-right:0px; text-align:justify"><span style="font-size:15px !important"><span style="color:#000000"><span style="font-family:&quot;Open Sans&quot;,Helvetica,Arial,Verdana,sans-serif"><span style="background-color:#ffffff"><strong>Closed system:</strong><br />\r\nA system which is not connected to the network and can&rsquo;t be communicated with.</span></span></span></span></p>\r\n\r\n<p style="margin-left:0px; margin-right:0px; text-align:justify"><span style="font-size:15px !important"><span style="color:#000000"><span style="font-family:&quot;Open Sans&quot;,Helvetica,Arial,Verdana,sans-serif"><span style="background-color:#ffffff"><strong>Computer Network:&nbsp;</strong><br />\r\nIt is the interconnection of multiple devices, generally termed as Hosts connected using multiple paths for the purpose of sending/receiving data or media.<br />\r\nThere are also multiple devices or mediums which helps in the communication between two different devices which are known as&nbsp;<strong>Network devices</strong>. Ex: Router, Switch, Hub, Bridge.<br />\r\n<img alt="Computer-Networking-Diagram" src="https://cdncontribute.geeksforgeeks.org/wp-content/uploads/Computer-Networking-Diagram.png" /></span></span></span></span></p>\r\n\r\n<p style="margin-left:0px; margin-right:0px; text-align:justify"><span style="font-size:15px !important"><span style="color:#000000"><span style="font-family:&quot;Open Sans&quot;,Helvetica,Arial,Verdana,sans-serif"><span style="background-color:#ffffff">The layout pattern using which devices are interconnected is called as network topology. Such as Bus, Star, Mesh, Ring, Daisy chain.<br />\r\n<img alt="Network-Topology-Diagram" src="https://cdncontribute.geeksforgeeks.org/wp-content/uploads/Network-Topology-Diagram.png" /></span></span></span></span></p>\r\n\r\n<p style="margin-left:0px; margin-right:0px; text-align:justify"><span style="font-size:15px !important"><span style="color:#000000"><span style="font-family:&quot;Open Sans&quot;,Helvetica,Arial,Verdana,sans-serif"><span style="background-color:#ffffff"><strong>OSI:</strong><br />\r\nOSI stands for&nbsp;<strong>Open Systems Interconnection</strong>. It is a reference model that specifies standards for communications protocols and also the functionalities of each layer.</span></span></span></span></p>\r\n\r\n<p><br />\r\n&nbsp;</p>\r\n\r\n<p style="margin-left:0px; margin-right:0px; text-align:justify"><span style="font-size:15px !important"><span style="color:#000000"><span style="font-family:&quot;Open Sans&quot;,Helvetica,Arial,Verdana,sans-serif"><span style="background-color:#ffffff"><strong>Protocol:&nbsp;</strong><br />\r\nProtocol is the set of rules or algorthims which define the way how two entities can communicate across the network and there exists different protocol defined at each layer of OSI model. Few of such protocols are TCP, IP, UDP, ARP, DHCP, FTP and so on.</span></span></span></span></p>\r\n\r\n<p style="margin-left:0px; margin-right:0px; text-align:justify"><span style="font-size:15px !important"><span style="color:#000000"><span style="font-family:&quot;Open Sans&quot;,Helvetica,Arial,Verdana,sans-serif"><span style="background-color:#ffffff"><u><strong>UNIQUE IDENTIFIERS OF NETWORK</strong></u><br />\r\n<strong>Host name:</strong><br />\r\nEach device in the network is associated with a unique device name known as Hostname.<br />\r\nType &ldquo;hostname&rdquo; in the command prompt and press &lsquo;Enter&rsquo;, this displays the hostname of your machine.<br />\r\n<img alt="" src="http://contribute.geeksforgeeks.org/wp-content/uploads/hostname.png" /></span></span></span></span></p>\r\n\r\n<p style="margin-left:0px; margin-right:0px; text-align:justify"><span style="font-size:15px !important"><span style="color:#000000"><span style="font-family:&quot;Open Sans&quot;,Helvetica,Arial,Verdana,sans-serif"><span style="background-color:#ffffff"><strong>IP Address (Internet Protocol address):</strong><br />\r\nAlso know as Logical Address, is the network address of the system across the network.<br />\r\nTo identify each device in the world-wide web, Internet Assigned Numbers Authority (IANA) assigns IPV4 (Version 4) address as unique identifier for each device on the Internet.<br />\r\nLength of the IP address is : 32-bits. (Hence we have 2<sup>32</sup>&nbsp;ip addresses available.)<br />\r\n<em>Type &ldquo;ipconfig&rdquo; in the command prompt and press &lsquo;Enter&rsquo;, this gives us the IP address of the device.</em></span></span></span></span></p>\r\n\r\n<p style="margin-left:0px; margin-right:0px; text-align:justify"><span style="font-size:15px !important"><span style="color:#000000"><span style="font-family:&quot;Open Sans&quot;,Helvetica,Arial,Verdana,sans-serif"><span style="background-color:#ffffff"><strong>MAC Address (Media Access Control address):&nbsp;</strong><br />\r\nAlso known as physical address, is the unique identifier of each host and is associated with the NIC (Network Interface Card).<br />\r\nMAC address is assigned to the NIC at the time of manufacturing.<br />\r\nLength of the MAC address is : 12-digit/ 6 bytes/ 48 bits<br />\r\n<em>Type &ldquo;ipconfig/all&rdquo; in the command prompt and press &lsquo;Enter&rsquo;, this gives us the MAC address.</em></span></span></span></span></p>\r\n\r\n<p style="margin-left:0px; margin-right:0px; text-align:justify"><span style="font-size:15px !important"><span style="color:#000000"><span style="font-family:&quot;Open Sans&quot;,Helvetica,Arial,Verdana,sans-serif"><span style="background-color:#ffffff"><strong>Port:&nbsp;</strong><br />\r\nPort can be referred as logical channel through which data can be sent/received to an application. Any host may have multiple applications running, and each of this application is identified using the port number on which they are running on.<br />\r\nPort number is a 16-bit integer, hence we have 2<sup>16</sup>&nbsp;ports available which are categorized as shown below:</span></span></span></span></p>\r\n\r\n<table cellspacing="0" style="-webkit-text-stroke-width:0px; background-color:#ffffff; border-bottom-color:#ededed; border-bottom-style:solid; border-collapse:collapse; border-image:initial; border-left-color:initial; border-left-style:initial; border-right-color:initial; border-right-style:initial; border-spacing:0px; border-top-color:initial; border-top-style:initial; border-width:0px 0px 1px; border:undefined; color:#000000; font-family:&quot;Open Sans&quot;,Helvetica,Arial,Verdana,sans-serif; font-size:12px; font-style:normal; font-variant-caps:normal; font-variant-ligatures:normal; font-weight:400; letter-spacing:normal; line-height:2; margin:0px 0px 24px; orphans:2; padding:0px; text-align:justify; text-decoration-color:initial; text-decoration-style:initial; text-transform:none; vertical-align:baseline; white-space:normal; widows:2; width:627px; word-spacing:0px">\r\n	<tbody>\r\n		<tr>\r\n			<th style="text-align:center; vertical-align:baseline">PORT TYPES</th>\r\n			<th style="text-align:center; vertical-align:baseline">RANGE</th>\r\n		</tr>\r\n		<tr>\r\n			<td style="background-color:#ffffff; text-align:center; vertical-align:baseline"><span style="font-size:12px"><span style="color:black">Well known Ports</span></span></td>\r\n			<td style="background-color:#ffffff; text-align:center; vertical-align:baseline"><span style="font-size:12px"><span style="color:black">0 &ndash; 1023</span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style="background-color:#ffffff; text-align:center; vertical-align:baseline"><span style="font-size:12px"><span style="color:black">Registered Ports</span></span></td>\r\n			<td style="background-color:#ffffff; text-align:center; vertical-align:baseline"><span style="font-size:12px"><span style="color:black">1024 &ndash; 49151</span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style="background-color:#ffffff; text-align:center; vertical-align:baseline"><span style="font-size:12px"><span style="color:black">Ephemeral Ports</span></span></td>\r\n			<td style="background-color:#ffffff; text-align:center; vertical-align:baseline"><span style="font-size:12px"><span style="color:black">49152 &ndash; 65535</span></span></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p style="margin-left:0px; margin-right:0px; text-align:justify"><span style="font-size:15px !important"><span style="color:#000000"><span style="font-family:&quot;Open Sans&quot;,Helvetica,Arial,Verdana,sans-serif"><span style="background-color:#ffffff">Number of ports: 65,536<br />\r\nRange: 0 &ndash; 65535<br />\r\n<em>Type &ldquo;<strong>netstat -a</strong>&rdquo; in the command prompt and press &lsquo;Enter&rsquo;, this lists all the ports being used.</em><br />\r\n<img alt="" src="http://contribute.geeksforgeeks.org/wp-content/uploads/ports.png" /></span></span></span></span></p>\r\n\r\n<p style="margin-left:0px; margin-right:0px; text-align:justify"><span style="font-size:15px !important"><span style="color:#000000"><span style="font-family:&quot;Open Sans&quot;,Helvetica,Arial,Verdana,sans-serif"><span style="background-color:#ffffff"><strong>Socket:</strong><br />\r\nThe unique combination of IP address and Port number together are termed as Socket.</span></span></span></span></p>\r\n\r\n<p style="margin-left:0px; margin-right:0px; text-align:justify"><span style="font-size:15px !important"><span style="color:#000000"><span style="font-family:&quot;Open Sans&quot;,Helvetica,Arial,Verdana,sans-serif"><span style="background-color:#ffffff"><u><strong>Few more concepts</strong></u><br />\r\n<strong>DNS Server:</strong><br />\r\nDNS stands for&nbsp;<strong>Domain Name system</strong>.<br />\r\nDNS is basically a server which translate web addresses or URL (ex: www.google.com) into their corresponding IP addresses. We don&rsquo;t have to remember all the IP addresses of each and every website.<br />\r\nThe command &lsquo;<strong>nslookup</strong>&rsquo; gives you the IP address of the domain you are looking for. This also provides the information of our DNS Server.<br />\r\n<img alt="" src="http://contribute.geeksforgeeks.org/wp-content/uploads/nslookup.png" /></span></span></span></span></p>\r\n\r\n<p style="margin-left:0px; margin-right:0px; text-align:justify"><span style="font-size:15px !important"><span style="color:#000000"><span style="font-family:&quot;Open Sans&quot;,Helvetica,Arial,Verdana,sans-serif"><span style="background-color:#ffffff"><strong>ARP:</strong><br />\r\nARP stands for&nbsp;<strong>Address Resolution Protocol</strong>.<br />\r\nIt is used to convert the IP address to its corresponding Physical Address(i.e.MAC Address).<br />\r\nARP is used by the Data Link Layer to identify the MAC address of the Receiver&rsquo;s machine.<br />\r\n<strong>RARP:</strong><br />\r\nRARP stands for&nbsp;<strong>Reverse Address Resolution Protocol</strong>.<br />\r\nAs the name suggest, it provides the IP address of the a device given physical address as input. But RARP has become obsolete since the time DHCP has come into picture.</span></span></span></span></p>\r\n\r\n<p style="margin-left:0px; margin-right:0px; text-align:justify"><span style="font-size:15px !important"><span style="color:#000000"><span style="font-family:&quot;Open Sans&quot;,Helvetica,Arial,Verdana,sans-serif"><span style="background-color:#ffffff">This article is contributed by&nbsp;<strong>Kundana Thiyari</strong>. If you like GeeksforGeeks and would like to contribute, you can also write an article using&nbsp;<a href="http://www.contribute.geeksforgeeks.org/" style="margin:0px; padding:0px; border:0px; font-size:15px; vertical-align:baseline; outline:none; color:#ec4e20; text-decoration:none">contribute.geeksforgeeks.org</a>&nbsp;or mail your article to contribute@geeksforgeeks.org. See your article appearing on the GeeksforGeeks main page and help other Geeks.</span></span></span></span></p>\r\n\r\n<p style="margin-left:0px; margin-right:0px; text-align:justify"><span style="font-size:15px !important"><span style="color:#000000"><span style="font-family:&quot;Open Sans&quot;,Helvetica,Arial,Verdana,sans-serif"><span style="background-color:#ffffff">Please write comments if you find anything incorrect, or you want to share more information about the topic discussed above.</span></span></span></span></p>\r\n', 'Introduction', 50, 'MediaFiles/CNE/Introduction/Basics,Topologies,Hardwrae devices.mp4'),
(26, '2018', 'hello', '<p><strong>xjhskcljwdiucevchechjevh</strong></p>\r\n', 'hiie', 10, 'MediaFiles/GST/hiie/hello.mp4'),
(27, '2018', 'something', '<p>somethhing</p>\r\n', 'something', 20, 'MediaFiles/testing/something/something.mp4'),
(27, '2018', 'something2', '<p>somethhing2</p>\r\n', 'something2', 21, 'MediaFiles/testing/something2/something2.mp4'),
(27, '2018', 'testing', '<p>testing</p>\r\n', 'testing', 20, 'MediaFiles/testing/testing/testing.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `Username` varchar(30) NOT NULL,
  `Password` text NOT NULL,
  `Fname` char(20) NOT NULL,
  `Mname` char(20) NOT NULL,
  `Lname` char(20) NOT NULL,
  `EmailID` varchar(60) NOT NULL,
  `ContactNo` varchar(20) NOT NULL,
  `Address` mediumtext NOT NULL,
  `DOB` date NOT NULL,
  `Age` int(11) NOT NULL,
  `Image` mediumtext,
  `Quest` varchar(100) NOT NULL,
  `Ans` varchar(100) NOT NULL,
  `CreationTime` timestamp(2) NOT NULL DEFAULT CURRENT_TIMESTAMP
) ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`Username`, `Password`, `Fname`, `Mname`, `Lname`, `EmailID`, `ContactNo`, `Address`, `DOB`, `Age`, `Image`, `Quest`, `Ans`, `CreationTime`, `LastModified`) VALUES
('adnan', 'Student@1234', 'adnan', 'Nizam', 'ansari', 'adnankhan@gmail.com', '9967741231', 'Kalina', '1998-12-11', 20, 'Images/User/Student/adnan/adnan_03-10-18.png', 'What is Your Pet Name', 'Net', '2018-10-03 03:34:00.00', '2018-10-03 03:34:00.00'),
('mudassar', 'muddu@1234', 'mudassar', '', 'pawaskar', 'mudassar@gmail.com', '9967741253', 'Kalina', '1998-12-11', 20, 'Images/User/Faculty/mudassar/mudassar_03-10-18.png', 'What is Your Car Numbers', '8108', '2018-10-03 03:35:07.00', '2018-10-03 03:35:07.00'),
('obaid', 'Faculty@1234', 'Obaid', '', 'Kazi', 'obaidkazi@gmail.com', '7208377337', 'Mumbra', '1999-11-12', 19, 'Images/User/Faculty/obaid/obaid_02-10-18.png', 'What is Your Car Numbers', '8108', '2018-10-02 05:30:11.92', '2018-10-02 01:35:33.00'),
('obaidkazi', '432`', 'obaid', 'kazi', 'abdul', 'obaidkazi03@gmail.com', '8852156325', 'Kalina', '1998-11-12', 20, 'Images/User/Student/obaidkazi/obaidkazi_11-10-18.png', 'What is Your Car Numbers', '8108', '2018-10-11 03:04:50.76', '2018-10-11 03:04:05.00'),
('obaidkazi12', '1234', 'ub', 'ub', 'ub', 'ubaid@gmail.com', '8852156323', 'kurla', '1992-12-12', 26, NULL, 'What is Your Car Numbers', '8108', '2018-10-11 03:12:38.00', '2018-10-11 03:10:20.00'),
('rehan', 'Student@1234', 'rehan', '', 'khan', 'rehankhan@gmail.com', '9702359708', 'Kurla', '1998-11-12', 20, NULL, 'What is the first name of your best friend in high school', 'SD', '2018-10-02 05:46:01.00', '2018-10-02 05:46:01.00'),
('shadab', 'Admin@1234', 'Shadab', 'Murad', 'Shaikh', 'shaikhshadabali2@gmail.com', '7506455707', 'Kalina', '1998-11-12', 20, 'Images/User/Admin/shadab/shadab_02-10-18.png', 'What is the first name of your best friend in high school', 'RH', '2018-10-02 05:48:17.67', '2018-10-02 01:34:12.00'),
('Student', 'Student@1234', 'Student', '', '', 'student@gmail.com', '9892327169', 'Kalina', '1998-12-11', 20, 'Images/User/Student/Student/Student_03-10-18.png', 'What is Your Pet Name', 'SD', '2018-10-03 04:10:52.00', '2018-10-03 04:10:52.00'),
('test', 'testing@1234', 'test', 'test', 'test', 'test1@gmail.com', '8879456213', 'mumbai', '1998-11-12', 20, 'Images/User/Faculty/test/test_14-10-18.png', 'What is Your Car Numbers', '8108', '2018-10-14 13:27:54.40', '2018-10-14 13:17:14.00'),
('testing', 'testing', 'test', 'test', 'test', 'test@gmail.com', '8898112563', 'mumbai', '1998-11-12', 20, 'Images/User/Student/testing/testing_14-10-18.png', 'What is the first name of your best friend in high school', 'SD', '2018-10-14 13:54:13.12', '2018-10-14 12:52:44.00'),
('testingfac', 'testing', 'testing', 'testing', 'testing', 'testing23@gmail.com', '8898112335', 'Kalina', '1998-11-12', 20, 'Images/User/Faculty/testingfac/testingfac_14-10-18.png', 'What is Your Car Numbers', '8108', '2018-10-14 15:34:56.02', '2018-10-14 15:34:29.00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assignments`
--
ALTER TABLE `assignments`
  ADD PRIMARY KEY (`CID`,`Year`,`Topic`,`AssignNo`);

--
-- Indexes for table `belongs`
--
ALTER TABLE `belongs`
  ADD PRIMARY KEY (`GroupName`,`Username`),
  ADD KEY `fk_Groups_has_Users_Users1_idx` (`Username`),
  ADD KEY `fk_Groups_has_Users_Groups_idx` (`GroupName`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`CID`),
  ADD UNIQUE KEY `CPreq_UNIQUE` (`CPrereq`),
  ADD KEY `fk_dept_id` (`dept_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`dept_id`),
  ADD UNIQUE KEY `dept_name_UNIQUE` (`dept_name`),
  ADD KEY `fk_Department_Faculty_idx` (`hod`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`FID`),
  ADD KEY `Facult_Users_FK_idx` (`Username`),
  ADD KEY `fk_Faculty_Department_idx` (`dept_id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`MessageID`),
  ADD KEY `fk_Message_Users_1_idx` (`SenderID`),
  ADD KEY `fk_Message_Users_2_idx` (`RecieverID`);

--
-- Indexes for table `response`
--
ALTER TABLE `response`
  ADD PRIMARY KEY (`CID`,`Year`,`Topic`,`AssignNo`,`RNO`),
  ADD KEY `fk_Response_Student_idx` (`RNO`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`RNO`),
  ADD KEY `fk_Student_Users1_idx` (`Username`),
  ADD KEY `fk_Student_Department_idx` (`dept_id`);

--
-- Indexes for table `teaches`
--
ALTER TABLE `teaches`
  ADD PRIMARY KEY (`CID`,`FID`,`Year`),
  ADD KEY `fk_Course_has_Faculty_Faculty1_idx` (`FID`),
  ADD KEY `fk_Course_has_Faculty_Course1_idx` (`CID`);

--
-- Indexes for table `tutorial`
--
ALTER TABLE `tutorial`
  ADD PRIMARY KEY (`CID`,`Year`,`Topic`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `CID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `dept_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `enquiry`
--
ALTER TABLE `enquiry`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `faculty`
--
ALTER TABLE `faculty`
  MODIFY `FID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `MessageID` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `RNO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `belongs`
--
ALTER TABLE `belongs`
  ADD CONSTRAINT `fk_Groups_has_Users_Groups` FOREIGN KEY (`GroupName`) REFERENCES `groups` (`GroupName`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Groups_has_Users_Users1` FOREIGN KEY (`Username`) REFERENCES `users` (`Username`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `course`
--
ALTER TABLE `course`
  ADD CONSTRAINT `fk_dept_id` FOREIGN KEY (`dept_id`) REFERENCES `department` (`dept_id`);

--
-- Constraints for table `department`
--
ALTER TABLE `department`
  ADD CONSTRAINT `fk_Department_Faculty` FOREIGN KEY (`hod`) REFERENCES `faculty` (`FID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `faculty`
--
ALTER TABLE `faculty`
  ADD CONSTRAINT `fk_Faculty_Department` FOREIGN KEY (`dept_id`) REFERENCES `department` (`dept_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Faculty_Users` FOREIGN KEY (`Username`) REFERENCES `users` (`Username`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `message`
--
ALTER TABLE `message`
  ADD CONSTRAINT `fk_Message_Users_1` FOREIGN KEY (`SenderID`) REFERENCES `users` (`Username`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Message_Users_2` FOREIGN KEY (`RecieverID`) REFERENCES `users` (`Username`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `response`
--
ALTER TABLE `response`
  ADD CONSTRAINT `fk_Respone_Assignment` FOREIGN KEY (`CID`,`Year`,`Topic`,`AssignNo`) REFERENCES `assignments` (`CID`, `Year`, `Topic`, `AssignNo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Response_Student` FOREIGN KEY (`RNO`) REFERENCES `student` (`RNO`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `fk_Student_Department` FOREIGN KEY (`dept_id`) REFERENCES `department` (`dept_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Student_Users1` FOREIGN KEY (`Username`) REFERENCES `users` (`Username`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `teaches`
--
ALTER TABLE `teaches`
  ADD CONSTRAINT `fk_Course_has_Faculty_Course1` FOREIGN KEY (`CID`) REFERENCES `course` (`CID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Course_has_Faculty_Faculty1` FOREIGN KEY (`FID`) REFERENCES `faculty` (`FID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tutorial`
--
ALTER TABLE `tutorial`
  ADD CONSTRAINT `fk_Tutorial_Course` FOREIGN KEY (`CID`) REFERENCES `course` (`CID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
