-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 06, 2018 at 01:58 PM
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
  `Topic` varchar(100) NOT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `belongs`
--

CREATE TABLE `belongs` (
  `GroupName` varchar(30) NOT NULL,
  `Username` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `belongs`
--

INSERT INTO `belongs` (`GroupName`, `Username`) VALUES
('Admin', 'shadab'),
('Faculty', 'faculty1'),
('Faculty', 'obaid'),
('Student', 'rehan'),
('Student', 'student1');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `CID` int(11) NOT NULL,
  `CName` varchar(100) NOT NULL,
  `COutcome` longtext NOT NULL,
  `CDuration` varchar(30) NOT NULL,
  `CPrereq` varchar(100) DEFAULT NULL,
  `Last_Modified` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`CID`, `CName`, `COutcome`, `CDuration`, `CPrereq`, `Last_Modified`) VALUES
(20, 'DBMS', 'To be well introduce with database concepts and storage mechanisms', '52-Hr', 'Operating system', '2018-10-02 19:20:11'),
(21, 'AOA', 'To have good grasping knowledge of algorithms and its working', '52-Hr', 'Data Structure', '2018-10-02 19:20:58'),
(23, 'OS', 'To have been introduce with process concepts', '52-Hr', 'COA', '2018-10-02 19:21:40'),
(24, 'WDL', 'To be a better website developer', '52-hr', 'HTML', '2018-10-03 03:17:47'),
(26, 'CG', 'to be informed with applications of cg', '52', 'Mathematics', '2018-10-06 10:56:55');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `dept_id` int(11) NOT NULL,
  `dept_name` varchar(30) NOT NULL,
  `hod` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
-- Table structure for table `dummy`
--

CREATE TABLE `dummy` (
  `Name` text,
  `Image` text,
  `Test` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dummy`
--

INSERT INTO `dummy` (`Name`, `Image`, `Test`) VALUES
('<figure class="easyimage easyimage-full"><img alt="" src="blob:http://localhost/621f7095-538b-415e-8ab5-5471170b2d80" width="640" />\r\n<figcaption></figcaption>\r\n</figure>\r\n\r\n<p>&nbsp;</p>\r\n', NULL, NULL),
(NULL, NULL, '21'),
(NULL, NULL, ''),
(NULL, NULL, ''),
(NULL, '20', ''),
(NULL, '20', ''),
(NULL, '20', 'shshshshs'),
(NULL, '21', ''),
(NULL, '20', ''),
(NULL, '20', '<p>shshshs</p>\r\n'),
(NULL, NULL, '../../MediaFiles/.jpeg'),
(NULL, NULL, '../../MediaFiles/Introduction.jpeg'),
(NULL, NULL, '../../MediaFiles/.'),
(NULL, NULL, '../../MediaFiles/introduction.mp4'),
('', '<p>This is good</p>\r\n', '../../MediaFiles/DBMSIntroduction.mp4'),
('20', '<p>This is good</p>\r\n', '../../MediaFiles/DBMSIntroduction.mp4'),
(NULL, NULL, NULL);

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
  `Time` timestamp(2) NULL DEFAULT NULL,
  `GroupName` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `enquiry`
--

INSERT INTO `enquiry` (`ID`, `Name`, `Contact`, `Email`, `Subject`, `Mesg`, `Time`, `GroupName`) VALUES
(88, 'rehan', '9702359708', 'rehankhan@gmail.com', 'hello', 'THis is test message', '2018-10-02 16:43:22.00', 'Admin'),
(89, 'Kalpana', '9892327160', 'kalpana@gmail.com', 'Contact', 'Hiie', '2018-10-05 10:18:14.00', 'Admin'),
(90, 'contact', '8888988898', 'contact@gmail.com', 'hiie', 'hello', '2018-10-06 10:23:14.00', 'Admin');

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
  `dept_id` int(11) NOT NULL,
  `LastModified` timestamp NULL DEFAULT NULL,
  `Username` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`FID`, `Designation`, `Qualification`, `Specialization`, `Experience`, `DOJ`, `dept_id`, `LastModified`, `Username`) VALUES
(34, 'Prof', 'BE', 'Data', '2', '2018-10-02', 1, '2018-10-02 14:50:57', 'obaid'),
(35, 'Prof', 'B.E', 'Ullu kaatna', '2', '2018-10-06', 1, '2018-10-06 10:30:42', 'faculty1');

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
('Admin', '2018-10-02 12:30:00.00'),
('Faculty', '2018-10-02 12:32:00.00'),
('Student', '2018-10-02 12:33:00.00');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `MessageID` bigint(20) NOT NULL,
  `SenderID` varchar(30) NOT NULL,
  `RecieverID` varchar(30) NOT NULL,
  `Message` mediumtext NOT NULL,
  `ParentMsgID` bigint(20) DEFAULT NULL,
  `sendAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `response`
--

CREATE TABLE `response` (
  `CID` int(11) NOT NULL,
  `Year` varchar(20) NOT NULL,
  `TopicNo` varchar(10) NOT NULL,
  `AssignNo` varchar(5) NOT NULL,
  `RNO` int(11) NOT NULL,
  `Answer` text NOT NULL,
  `Marks` int(11) DEFAULT NULL,
  `Attempt1` timestamp NULL DEFAULT NULL,
  `Attempt2` timestamp NULL DEFAULT NULL,
  `Attempt3` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `RNO` int(11) NOT NULL,
  `Year` varchar(20) NOT NULL,
  `DOA` date DEFAULT NULL,
  `dept_id` int(11) DEFAULT NULL,
  `Username` varchar(30) DEFAULT NULL,
  `Last_Modified` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`RNO`, `Year`, `DOA`, `dept_id`, `Username`, `Last_Modified`) VALUES
(8, '2018', '2018-10-03', 1, 'rehan', '2018-10-03 07:20:15'),
(13, '2018', '2018-10-06', 1, 'student1', '2018-10-06 10:59:03');

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

INSERT INTO `takes` (`RNO`, `CID`, `Year`, `Percentage`, `Grade`, `EnrollTime`) VALUES
(8, 20, '2018', '0.00', '', '2018-10-03 07:20:15.00'),
(13, 26, '2018', '0.00', '', '2018-10-06 10:59:03.00');

-- --------------------------------------------------------

--
-- Table structure for table `teaches`
--

CREATE TABLE `teaches` (
  `CID` int(11) NOT NULL,
  `FID` int(11) NOT NULL,
  `Year` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `teaches`
--

INSERT INTO `teaches` (`CID`, `FID`, `Year`) VALUES
(20, 34, '2018'),
(21, 34, '2018'),
(23, 34, '2018'),
(24, 34, '2018'),
(26, 35, '2018');

-- --------------------------------------------------------

--
-- Table structure for table `tutorial`
--

CREATE TABLE `tutorial` (
  `CID` int(11) NOT NULL,
  `Year` varchar(20) NOT NULL,
  `Topic` varchar(100) NOT NULL,
  `content` longtext NOT NULL,
  `Name` mediumtext NOT NULL,
  `Weightage` int(11) NOT NULL,
  `Media` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tutorial`
--

INSERT INTO `tutorial` (`CID`, `Year`, `Topic`, `content`, `Name`, `Weightage`, `Media`) VALUES
(20, '2018', 'Basics, Database Administrator, File Processing System', '<h1><strong>Brief Introduction to Database Systems</strong></h1>\r\n\r\n<p>Database</p>\r\n\r\n<p>A database is simply an organized collection of related data, typically stored on disk, and accessible by possibly many concurrent users. Databases are generally separated into application areas. For example, one database may contain Human Resource (employee and payroll) data; another may contain sales data; another may contain accounting data; and so on. Databases are managed by a DBMS.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>DBMS</p>\r\n\r\n<p>A Database Management System (DBMS) is a set of programs that manages any number of databases.</p>\r\n\r\n<p>A DBMS is responsible for:</p>\r\n\r\n<ul>\r\n	<li>accessing data</li>\r\n	<li>inserting, updating, and deleting data</li>\r\n	<li>security</li>\r\n	<li>integrity, facilitated by:\r\n	<ul>\r\n		<li>locking</li>\r\n		<li>logging</li>\r\n		<li>application-defined rules, including triggers</li>\r\n	</ul>\r\n	</li>\r\n	<li>supporting batch and on-line programs</li>\r\n	<li>facilitating backups and recoveries</li>\r\n	<li>optimizing performance</li>\r\n	<li>maximizing availability</li>\r\n	<li>maintaining the catalog and directory of database objects</li>\r\n	<li>managing the buffer pools</li>\r\n	<li>acting as an interface to other systems programs</li>\r\n	<li>supporting user interface packages, such as the popular&nbsp;<a href="http://www.cs.ubc.ca/nest/dbsl/intro.html#SQL_link">SQL</a>&nbsp;interface for relational database systems</li>\r\n</ul>\r\n\r\n<p>There are 3 traditional types of database management systems: hierarchical, relational, and network. Current popular database systems include&nbsp;<a href="http://www.oracle.com/">Oracle</a>;&nbsp;<a href="http://www.sybase.com/">Sybase</a>&nbsp;(same as Microsoft&#39;s&nbsp;<a href="http://www.microsoft.com/SQL">SQL Server</a>&nbsp;but on a different platform); IBM&#39;s&nbsp;<a href="http://www.software.hosting.ibm.com/data/db2/index.html">DB2</a>,&nbsp;<a href="http://www.software.hosting.ibm.com/data/ims/imsfamly.html">IMS</a>, and SQL/DS;&nbsp;<a href="http://www.cai.com/products/ingr.htm">Ingres</a>;&nbsp;<a href="http://www.informix.com/img/prodhome.con?287,147">Informix</a>; and smaller, but reasonably powerful off-the-shelf products such as dBase, Access, Foxpro, Paradox, and dozens of others.</p>\r\n\r\n<p>The choice of a database product is often influenced by factors such as:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>the computing platform (i.e., hardware, operating system)</li>\r\n	<li>the volume of data to be managed</li>\r\n	<li>the number of transactions required per second</li>\r\n	<li>existing applications or interfaces that an organization may have</li>\r\n	<li>support for heterogeneous and/or distributed computing</li>\r\n	<li>cost</li>\r\n	<li>vendor support</li>\r\n</ul>\r\n\r\n<p>Object-oriented database systems are currently in development. They allow us to model and manipulate complex data structures and objects, and hence support many new applications, including CAD/CAM. As of 1996, object-oriented databases represent a very small segment of the commercial market (perhaps 1%). It is interesting to note that some major DBMS vendors are starting to support complex objects (such as images) in their relational products.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a name="SQL_link">SQL</a></p>\r\n\r\n<p>Structured Query Language is perhaps the most common way to extract data from a relational database system. The (simplified) format is:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<pre>\r\n        SELECT  field name(s)\r\n        FROM    database&#39;s table name(s)\r\n        WHERE   conditional clause\r\n        </pre>\r\n\r\n<p>For example, to find all professors earning more than $75,000, a suitable query might be:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<pre>\r\n        SELECT  name, salary\r\n        FROM    payroll\r\n        WHERE   job = &#39;Professor&#39; and salary &gt; 75000</pre>\r\n', 'Introduction To DBMS', 20, 'MediaFiles/DBMS/Introduction To DBMS/Basics, Database Administrator, File Processing System.mp4'),
(20, '2018', 'Intro, Features, EER Model, Importance', '<p>An&nbsp;<strong>entity&ndash;relationship model</strong>&nbsp;(<strong>ER model</strong>&nbsp;for short) describes interrelated things of interest in a specific domain of knowledge. A basic ER model is composed of entity types (which classify the things of interest) and specifies relationships that can exist between instances of those entity types</p>\r\n\r\n<p>An entity&ndash;relationship diagram for an&nbsp;<a href="https://en.wikipedia.org/wiki/MMORPG" title="MMORPG">MMORPG</a>&nbsp;using Chen&#39;s notation.</p>\r\n\r\n<p>In&nbsp;<a href="https://en.wikipedia.org/wiki/Software_engineering" title="Software engineering">software engineering</a>, an ER model is commonly formed to represent things that a business needs to remember in order to perform business processes. Consequently, the ER model becomes an abstract&nbsp;<a href="https://en.wikipedia.org/wiki/Data_modeling" title="Data modeling">data model</a>, that defines a data or information structure which can be implemented in a&nbsp;<a href="https://en.wikipedia.org/wiki/Database" title="Database">database</a>, typically a&nbsp;<a href="https://en.wikipedia.org/wiki/Relational_database" title="Relational database">relational database</a>.</p>\r\n\r\n<p>Entity&ndash;relationship modeling was developed for database design by&nbsp;<a href="https://en.wikipedia.org/wiki/Peter_Chen" title="Peter Chen">Peter Chen</a>&nbsp;and published in a 1976 paper.<sup><a href="https://en.wikipedia.org/wiki/Entity%E2%80%93relationship_model#cite_note-Chen-1">[1]</a></sup>&nbsp;However, variants of the idea existed previously.<sup><a href="https://en.wikipedia.org/wiki/Entity%E2%80%93relationship_model#cite_note-2">[2]</a></sup>&nbsp;Some ER models show super and subtype entities connected by generalization-specialization relationships,<sup><a href="https://en.wikipedia.org/wiki/Entity%E2%80%93relationship_model#cite_note-3">[3]</a></sup>&nbsp;and an ER model can be used also in the specification of domain-specific&nbsp;<a href="https://en.wikipedia.org/wiki/Ontology_(computer_science)" title="Ontology (computer science)">ontologies</a>.</p>\r\n', 'ER Model', 40, 'MediaFiles/DBMS/ER Model/Intro, Features, EER Model, Importance.mp4'),
(20, '2018', 'Reational concepts, Relational queries', '<h2>Relational model[<a href="https://en.wikipedia.org/w/index.php?title=Relational_database&amp;action=edit&amp;section=1" title="Edit section: Relational model">edit</a>]</h2>\r\n\r\n<p>Main article:&nbsp;<a href="https://en.wikipedia.org/wiki/Relational_model" title="Relational model">Relational model</a></p>\r\n\r\n<p>This model organizes data into one or more&nbsp;<a href="https://en.wikipedia.org/wiki/Table_(database)" title="Table (database)">tables</a>&nbsp;(or &quot;relations&quot;) of&nbsp;<a href="https://en.wikipedia.org/wiki/Column_(database)" title="Column (database)">columns</a>&nbsp;and&nbsp;<a href="https://en.wikipedia.org/wiki/Row_(database)" title="Row (database)">rows</a>, with a unique key identifying each row. Rows are also called&nbsp;<a href="https://en.wikipedia.org/wiki/Record_(computer_science)" title="Record (computer science)">records</a>&nbsp;or&nbsp;<a href="https://en.wikipedia.org/wiki/Tuple" title="Tuple">tuples</a>.<sup><a href="https://en.wikipedia.org/wiki/Relational_database#cite_note-3">[3]</a></sup>&nbsp;Columns are also called attributes. Generally, each table/relation represents one &quot;entity type&quot; (such as customer or product). The rows represent instances of that type of entity (such as &quot;Lee&quot; or &quot;chair&quot;) and the columns representing values attributed to that instance (such as address or price).</p>\r\n\r\n<h2>Keys[<a href="https://en.wikipedia.org/w/index.php?title=Relational_database&amp;action=edit&amp;section=2" title="Edit section: Keys">edit</a>]</h2>\r\n\r\n<p>Each row in a table has its own unique key. Rows in a table can be linked to rows in other tables by adding a column for the unique key of the linked row (such columns are known as&nbsp;<a href="https://en.wikipedia.org/wiki/Foreign_key" title="Foreign key">foreign keys</a>). Codd showed that data relationships of arbitrary complexity can be represented by a simple set of concepts.<sup>[<em><a href="https://en.wikipedia.org/wiki/Wikipedia:Citation_needed" title="Wikipedia:Citation needed">citation needed</a></em>]</sup></p>\r\n\r\n<p>Part of this processing involves consistently being able to select or modify one and only one row in a table. Therefore, most physical implementations have a unique&nbsp;<a href="https://en.wikipedia.org/wiki/Primary_key" title="Primary key">primary key</a>&nbsp;(PK) for each table. When a new row is written to the table, a new unique value for the primary key is generated; this is the key that the system uses primarily for accessing the table. System performance is optimized for PKs. Other, more&nbsp;<a href="https://en.wikipedia.org/wiki/Natural_key" title="Natural key">natural keys</a>&nbsp;may also be identified and defined as&nbsp;<a href="https://en.wikipedia.org/wiki/Alternate_key" title="Alternate key">alternate keys</a>&nbsp;(AK). Often several columns are needed to form an AK (this is one reason why a single integer column is usually made the PK). Both PKs and AKs have the ability to uniquely identify a row within a table. Additional technology may be applied to ensure a unique ID across the world, a&nbsp;<a href="https://en.wikipedia.org/wiki/Globally_unique_identifier" title="Globally unique identifier">globally unique identifier</a>, when there are broader system requirements.</p>\r\n\r\n<p>The primary keys within a database are used to define the relationships among the tables. When a PK migrates to another table, it becomes a foreign key in the other table. When each cell can contain only one value and the PK migrates into a regular entity table, this design pattern can represent either a&nbsp;<a href="https://en.wikipedia.org/wiki/One-to-one_(data_model)" title="One-to-one (data model)">one-to-one</a>&nbsp;or&nbsp;<a href="https://en.wikipedia.org/wiki/One-to-many_(data_model)" title="One-to-many (data model)">one-to-many</a>&nbsp;relationship. Most relational database designs resolve&nbsp;<a href="https://en.wikipedia.org/wiki/Many-to-many_(data_model)" title="Many-to-many (data model)">many-to-many</a>&nbsp;relationships by creating an additional table that contains the PKs from both of the other entity tables&mdash;the relationship becomes an entity; the resolution table is then named appropriately and the two FKs are combined to form a PK. The migration of PKs to other tables is the second major reason why system-assigned integers are used normally as PKs; there&#39;s seldom efficiency nor clarity in migrating a bunch of other types of columns.</p>\r\n', 'Relational Database', 30, 'MediaFiles/DBMS/Relational Database/Reational concepts, Relational queries.mp4'),
(24, '2018', 'HTML,CSS', '<p>&nbsp;&lt;input id=&quot;repairID_0&quot; name=&quot;dynfields[0][repairID]&quot; value=&quot;1&quot; class=&quot;form-control removeDiv&quot; type=&quot;hidden&quot;&gt;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &lt;img class=&quot;removeRow removeImg removeDiv&quot; src=&quot;img/remove.png&quot; width=&quot;100%&quot;&gt;<br />\r\n&nbsp; &nbsp; &lt;/div&gt;</p>\r\n\r\n<p>&nbsp; &nbsp; &lt;di<sub><em><strong>v&gt;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &lt;div class=&quot;col-sm-5&quot;&gt;&lt;input id=&quot;DescRepair_1&quot; name=&quot;dynfields[1][DescRepair]&quot; class=&quot;form-control removeDiv&quot; type=&quot;text&quot;&gt;&lt;/div&gt;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &lt;div class=&quot;col-sm-5&quot;&gt;&lt;input id=&quot;NestParts_1&quot; name=&quot;dynfields[1][NestParts]&quot; class=&quot;form-control removeDiv&quot; type=&quot;text&quot;&gt;&lt;/div&gt;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &lt;div class=&quot;col-sm-1 removeDiv&quot;&gt;&lt;input id=&quot;EdPrice_1&quot; name=&quot;dynfields[1][EdPrice]&quot; class=&quot;form-control removeDiv&quot; type=&quot;text&quot;&gt;&lt;/div&gt;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &lt;div class=&quot;col-sm-1 removeDiv&quot;&gt;&lt;input id=&quot;DateRepair_1&quot; name=&quot;dynfields[1][DateRepair]&quot; class=&quot;form-control dateBox removeDiv&quot; type=&quot;text&quot;&gt;&lt;/div&gt;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &lt;input id=&quot;repairID_1&quot; name=&quot;dynfields[1][repairID]&quot; value=&quot;2&quot; class=&quot;form-control removeDiv&quot; type=&quot;hidden&quot;&gt;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &lt;img class=&quot;removeRow removeImg removeDiv&quot; src=&quot;img/remove.png&quot; width=&quot;100%&quot;&gt;&lt;/div&gt;<br />\r\n&nbsp; &nbsp; &lt;/di</strong></em></sub>v&gt;<br />\r\n&lt;/div&gt;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>these are the example of html</p>\r\n', 'Introduction to WDL', 30, 'MediaFiles/WDL/Introduction to WDL/HTML,CSS.mp4'),
(26, '2018', 'Basics and stuffs', '<h1>Mid-Point Line Generation Algorithm</h1>\r\n\r\n<p>Given coordinate of two points A(x1, y1) and B(x2, y2) such that x1 &lt; x2 and y1 &lt; y2. The task to find all the intermediate points required for drawing line AB on the computer screen of pixels. Note that every pixel has integer coordinates.</p>\r\n\r\n<p>We have discussed below algorithms for this task.</p>\r\n\r\n<ol>\r\n	<li><a href="https://www.geeksforgeeks.org/dda-line-generation-algorithm-computer-graphics/" target="_blank">DDA algorithm for line drawing</a></li>\r\n	<li><a href="https://www.geeksforgeeks.org/bresenhams-line-generation-algorithm/" target="_blank">Introduction to Bresenhams&rsquo;s algorithm for line drawing</a>.</li>\r\n</ol>\r\n\r\n<p>In this post, Mid-Point Line drawing algorithm is discussed which is a different way to represent Bresenham&rsquo;s algorithm introduced in previous post.</p>\r\n\r\n<p>As discussed in&nbsp;<a href="https://www.geeksforgeeks.org/bresenhams-line-generation-algorithm/">previous post</a>, for any given/calculated previous pixel P(X<sub>p</sub>,Y<sub>p</sub>), there are two candidates for the next pixel closest to the line, E(X<sub>p</sub>+1, Y<sub>p</sub>) and NE(X<sub>p</sub>+1, Y<sub>p</sub>+1) (<strong>E</strong>&nbsp;stands for East and&nbsp;<strong>NE</strong>&nbsp;stands for North-East).</p>\r\n\r\n<p>In Mid-Point algorithm we do following.</p>\r\n\r\n<p><br />\r\n&nbsp;</p>\r\n\r\n<ol>\r\n	<li>Find middle of two possible next points. Middle of E(X<sub>p</sub>+1, Y<sub>p</sub>) and NE(X<sub>p</sub>+1, Y<sub>p</sub>+1) is M(X<sub>p+1</sub>, Y<sub>p</sub>+1/2).</li>\r\n	<li>If M is above the line, then choose E as next point.</li>\r\n	<li>If M is below the line, then choose NE as next point.</li>\r\n</ol>\r\n\r\n<p><a href="https://cdncontribute.geeksforgeeks.org/wp-content/uploads/mid.png"><img alt="midpoint" height="294" src="https://cdncontribute.geeksforgeeks.org/wp-content/uploads/mid.png" width="392" /></a></p>\r\n\r\n<p><strong>How to find if a point is above a line or below a line?</strong><br />\r\nBelow are some assumptions to keep algorithm simple.</p>\r\n\r\n<ol>\r\n	<li>We draw line from left to right.</li>\r\n	<li>x1 &lt; x2 and y1&lt; y2</li>\r\n	<li>Slope of the line is between 0 and 1. We draw a line from lower left to upper right.</li>\r\n</ol>\r\n\r\n<p>Cases other than above assumptions can be handled using reflection.</p>\r\n\r\n<pre>\r\nLet us consider a line y = mx + B. \r\nWe can re-write the equation as :\r\ny = (dy/dx)x + B or \r\n(dy)x + B(dx) - y(dx) = 0\r\nLet <strong>F(x, y)</strong> = (dy)x - y(dx) + B(dx)   -----(1)\r\nLet we are given two end points of a line (under\r\nabove assumptions)\r\n-&gt; For all points (x,y) on the line, \r\n      the solution to F(x, y) is 0. \r\n-&gt; For all points (x,y) above the line, \r\n      F(x, y) result in a negative number. \r\n-&gt; And for all points (x,y) below the line, \r\n      F(x, y) result in a positive number. \r\n<a href="https://cdncontribute.geeksforgeeks.org/wp-content/uploads/midpoint-1.png"><img alt="midpoint" height="277" src="https://cdncontribute.geeksforgeeks.org/wp-content/uploads/midpoint-1.png" width="450" /></a>\r\n</pre>\r\n\r\n<p>This relationship is used to determine the relative<br />\r\nposition of M<br />\r\nM = (X<sub>p+1</sub>, Y<sub>p+1</sub>/2)</p>\r\n\r\n<p>So our&nbsp;<strong>decision parameter d</strong>&nbsp;is,<br />\r\nd = F(M) = F(X<sub>p+1</sub>, Y<sub>p+1</sub>/2)</p>\r\n\r\n<p><strong>How to efficiently find new value of d from its old value?</strong><br />\r\nFor simplicity, let as write F(x, y) as ax + by + c.<br />\r\nWhere a = dy<br />\r\nb = -dx<br />\r\nc = B*dx<br />\r\nWe got these values from above equation (1)</p>\r\n\r\n<p><strong>Case 1:</strong>&nbsp;If E is chosen then for next point :<br />\r\ndnew = F(X<sub>p</sub>+2, Y<sub>p+1</sub>/2)<br />\r\n= a(X<sub>p</sub>+2) + b(Y<sub>p+1</sub>/2) + c<br />\r\ndold = a(X<sub>p+1</sub>) + b(Y<sub>p+1</sub>/2) + c</p>\r\n\r\n<p>Difference (Or delta) of two distances:<br />\r\nDELd = dnew &ndash; dold<br />\r\n= a(X<sub>p</sub>+2)- a(X<sub>p+1</sub>)+ b(Y<sub>p+1</sub>/2)- b(Y<sub>p+1</sub>/2)+ c-c<br />\r\n= a(X<sub>p</sub>) +2a &ndash; a(X<sub>p</sub>) &ndash; a<br />\r\n= a.<br />\r\nTherefore, dnew = dold + dy. (as a = dy)<br />\r\n<a href="https://cdncontribute.geeksforgeeks.org/wp-content/uploads/midalgo.png"><img alt="mid point line" height="304" src="https://cdncontribute.geeksforgeeks.org/wp-content/uploads/midalgo.png" width="346" /></a></p>\r\n\r\n<p><strong>Case 2:</strong>&nbsp;If NE is chosen then for next point :<br />\r\ndnew = F(X<sub>p</sub>+2, Y<sub>p</sub>+3/2)<br />\r\n= a(X<sub>p</sub>+2) + b(Y<sub>p</sub>+3/2) + c<br />\r\ndold = a(X<sub>p+1</sub>) + b(Y<sub>p+1</sub>/2) + c</p>\r\n\r\n<p>Difference (Or delta) of two distances:<br />\r\nDELd = dnew -dold<br />\r\n= a(X<sub>p</sub>+2)- a(X<sub>p+1</sub>)+ b(Y<sub>p</sub>+3/2)- b(Y<sub>p+1</sub>/2)+ c-c<br />\r\n= a(X<sub>p</sub>) + 2a &ndash; a(X<sub>p</sub>) &ndash; a + b(Y<sub>p</sub>) + 3/2b &ndash; b(Y<sub>p</sub>) -1/2b<br />\r\n= a + b<br />\r\nTherefore, dnew = dold + dy &ndash; dx. (as a = dy , b = -dx)</p>\r\n\r\n<p><strong>Calculation For initial value of decision parameter d0:</strong><br />\r\nd0 = F(X1+1 , Y1+1/2)<br />\r\n= a(X1 + 1) + b(Y1 + 1/2) +c<br />\r\n= aX1+ bY1 + c + a + b/2<br />\r\n= F(X1,Y1) + a + b/2<br />\r\n= a + b/2 (as F(X1, Y1) = 0 )<br />\r\nd0 = dy &ndash; dx/2. (as a = dy, b = -dx)</p>\r\n\r\n<p><strong>Algorithm:</strong></p>\r\n\r\n<pre>\r\nInput (X1,Y1) and (X2,Y2)\r\ndy = Y2- Y1\r\ndx = X2 - X1\r\n// initial value of \r\n// decision parameter d\r\nd = dy - (dx/2)\r\nx = X1 , y = Y1\r\n\r\n// plot initial given point\r\nPlot(x , y)\r\n\r\n// iterate through value of X\r\nwhile(x &lt; X2)\r\n    x = x+1\r\n\r\n    // &#39;E&#39; is chosen\r\n    if (d &lt; 0)\r\n       d = d + dy\r\n\r\n    // &#39;NE&#39; is chosen\r\n    else\r\n       d = d + dy - dx\r\n       y = y+1\r\n    Plot(x,y)\r\n</pre>\r\n\r\n<p>Below is the implementation of above idea.</p>\r\n\r\n<ul>\r\n	<li>C++</li>\r\n	<li>Java</li>\r\n	<li>C#</li>\r\n	<li>PHP</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table border="0" cellpadding="0" cellspacing="0">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p><code>// C++ program for Mid-point line generation </code></p>\r\n\r\n			<p><code>#include&lt;bits/stdc++.h&gt; </code></p>\r\n\r\n			<p><code>using</code> <code>namespace</code> <code>std; </code></p>\r\n\r\n			<p><code>&nbsp;</code>&nbsp;</p>\r\n\r\n			<p><code>// Header file for including graphics functions </code></p>\r\n\r\n			<p><code>// #include&lt;graphics.h&gt; </code></p>\r\n\r\n			<p><code>&nbsp;</code>&nbsp;</p>\r\n\r\n			<p><code>// midPoint function for line generation </code></p>\r\n\r\n			<p><code>void</code> <code>midPoint(</code><code>int</code> <code>X1, </code><code>int</code> <code>Y1, </code><code>int</code> <code>X2, </code><code>int</code> <code>Y2) </code></p>\r\n\r\n			<p><code>{ </code></p>\r\n\r\n			<p><code>&nbsp;&nbsp;&nbsp;&nbsp;</code><code>// calculate dx &amp; dy </code></p>\r\n\r\n			<p><code>&nbsp;&nbsp;&nbsp;&nbsp;</code><code>int</code> <code>dx = X2 - X1; </code></p>\r\n\r\n			<p><code>&nbsp;&nbsp;&nbsp;&nbsp;</code><code>int</code> <code>dy = Y2 - Y1; </code></p>\r\n\r\n			<p><code>&nbsp;</code>&nbsp;</p>\r\n\r\n			<p><code>&nbsp;&nbsp;&nbsp;&nbsp;</code><code>// initial value of decision parameter d </code></p>\r\n\r\n			<p><code>&nbsp;&nbsp;&nbsp;&nbsp;</code><code>int</code> <code>d = dy - (dx/2); </code></p>\r\n\r\n			<p><code>&nbsp;&nbsp;&nbsp;&nbsp;</code><code>int</code> <code>x = X1, y = Y1; </code></p>\r\n\r\n			<p><code>&nbsp;</code>&nbsp;</p>\r\n\r\n			<p><code>&nbsp;&nbsp;&nbsp;&nbsp;</code><code>// Plot initial given point </code></p>\r\n\r\n			<p><code>&nbsp;&nbsp;&nbsp;&nbsp;</code><code>// putpixel(x,y) can be used to print pixel </code></p>\r\n\r\n			<p><code>&nbsp;&nbsp;&nbsp;&nbsp;</code><code>// of line in graphics </code></p>\r\n\r\n			<p><code>&nbsp;&nbsp;&nbsp;&nbsp;</code><code>cout &lt;&lt; x &lt;&lt; </code><code>&quot;,&quot;</code> <code>&lt;&lt; y &lt;&lt; </code><code>&quot;\n&quot;</code><code>; </code></p>\r\n\r\n			<p><code>&nbsp;</code>&nbsp;</p>\r\n\r\n			<p><code>&nbsp;&nbsp;&nbsp;&nbsp;</code><code>// iterate through value of X </code></p>\r\n\r\n			<p><code>&nbsp;&nbsp;&nbsp;&nbsp;</code><code>while</code> <code>(x &lt; X2) </code></p>\r\n\r\n			<p><code>&nbsp;&nbsp;&nbsp;&nbsp;</code><code>{ </code></p>\r\n\r\n			<p><code>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code>x++; </code></p>\r\n\r\n			<p><code>&nbsp;</code>&nbsp;</p>\r\n\r\n			<p><code>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code>// E or East is chosen </code></p>\r\n\r\n			<p><code>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code>if</code> <code>(d &lt; 0) </code></p>\r\n\r\n			<p><code>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code>d = d + dy; </code></p>\r\n\r\n			<p><code>&nbsp;</code>&nbsp;</p>\r\n\r\n			<p><code>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code>// NE or North East is chosen </code></p>\r\n\r\n			<p><code>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code>else</code></p>\r\n\r\n			<p><code>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code>{ </code></p>\r\n\r\n			<p><code>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code>d += (dy - dx); </code></p>\r\n\r\n			<p><code>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code>y++; </code></p>\r\n\r\n			<p><code>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code>} </code></p>\r\n\r\n			<p><code>&nbsp;</code>&nbsp;</p>\r\n\r\n			<p><code>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code>// Plot intermediate points </code></p>\r\n\r\n			<p><code>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code>// putpixel(x,y) is used to print pixel </code></p>\r\n\r\n			<p><code>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code>// of line in graphics </code></p>\r\n\r\n			<p><code>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code>cout &lt;&lt; x &lt;&lt; </code><code>&quot;,&quot;</code> <code>&lt;&lt; y &lt;&lt; </code><code>&quot;\n&quot;</code><code>; </code></p>\r\n\r\n			<p><code>&nbsp;&nbsp;&nbsp;&nbsp;</code><code>} </code></p>\r\n\r\n			<p><code>} </code></p>\r\n\r\n			<p><code>&nbsp;</code>&nbsp;</p>\r\n\r\n			<p><code>// Driver program </code></p>\r\n\r\n			<p><code>int</code> <code>main() </code></p>\r\n\r\n			<p><code>{ </code></p>\r\n\r\n			<p><code>&nbsp;&nbsp;&nbsp;&nbsp;</code><code>// graphics driver and mode </code></p>\r\n\r\n			<p><code>&nbsp;&nbsp;&nbsp;&nbsp;</code><code>// used in graphics.h </code></p>\r\n\r\n			<p><code>&nbsp;&nbsp;&nbsp;&nbsp;</code><code>// int gd = DETECT, gm; </code></p>\r\n\r\n			<p><code>&nbsp;</code>&nbsp;</p>\r\n\r\n			<p><code>&nbsp;&nbsp;&nbsp;&nbsp;</code><code>// Initialize graphics function </code></p>\r\n\r\n			<p><code>&nbsp;&nbsp;&nbsp;&nbsp;</code><code>// initgraph (&amp;gd, &amp;gm, &quot;&quot;); </code></p>\r\n\r\n			<p><code>&nbsp;</code>&nbsp;</p>\r\n\r\n			<p><code>&nbsp;&nbsp;&nbsp;&nbsp;</code><code>int</code> <code>X1 = 2, Y1 = 2, X2 = 8, Y2 = 5; </code></p>\r\n\r\n			<p><code>&nbsp;&nbsp;&nbsp;&nbsp;</code><code>midPoint(X1, Y1, X2, Y2); </code></p>\r\n\r\n			<p><code>&nbsp;&nbsp;&nbsp;&nbsp;</code><code>return</code> <code>0; </code></p>\r\n\r\n			<p><code>} </code></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'Introduction to C graphics', 10, 'MediaFiles/CG/Introduction to C graphics/Basics and stuffs.mp4'),
(26, '2018', 'somthth', '<p>shshsh</p>\r\n', 'somethng', 20, 'MediaFiles/CG/somethng/somthth.');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `Username` varchar(30) NOT NULL,
  `Password` text NOT NULL,
  `Fname` char(20) NOT NULL,
  `Mname` char(20) DEFAULT NULL,
  `Lname` char(20) DEFAULT NULL,
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
('faculty1', 'Faculty@1234', 'Faculty1', '', '', 'faculty1@gmail.com', '9892252158', 'Mumbra', '1998-11-12', 20, 'Images/User/Faculty/faculty1/faculty1_06-10-18.png', 'What is Your Car Numbers', '1056', '2018-10-06 10:29:58.56', '2018-10-06 10:26:56.00'),
('obaid', 'Faculty@1234', 'Obaid', '', 'Kazi', 'obaidkazi@gmail.com', '7208377337', 'Mumbra', '1999-11-12', 19, 'Images/User/Faculty/obaid/obaid_02-10-18.png', 'What is Your Car Numbers', '8108', '2018-10-02 16:30:11.92', '2018-10-02 12:35:33.00'),
('rehan', 'Student@1234', 'rehan', '', 'khan', 'rehankhan@gmail.com', '9702359708', 'Kurla', '1998-11-12', 20, NULL, 'What is the first name of your best friend in high school', 'SD', '2018-10-02 16:46:01.00', '2018-10-02 16:46:01.00'),
('shadab', 'Admin@1234', 'Shadab', 'Murad', 'Shaikh', 'shaikhshadabali2@gmail.com', '7506455707', 'Kalina', '1998-11-12', 20, 'Images/User/Admin/shadab/shadab_02-10-18.png', 'What is the first name of your best friend in high school', 'RH', '2018-10-02 16:48:17.67', '2018-10-02 12:34:12.00'),
('student1', 'Student1@1234', 'student', '2', '', 'studnet1@gmail.com', '9967741253', 'kalina', '1998-11-12', 20, NULL, 'What is Your Car Numbers', '8108', '2018-10-06 10:24:27.00', '2018-10-06 10:24:27.00');

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
  ADD UNIQUE KEY `CPrereq_UNIQUE` (`CPrereq`),
  ADD KEY `fk_Course_SelfRefrential_idx` (`CPrereq`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`dept_id`),
  ADD UNIQUE KEY `dept_name` (`dept_name`),
  ADD KEY `fk_Department_Faculty_idx` (`hod`);

--
-- Indexes for table `enquiry`
--
ALTER TABLE `enquiry`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Contact_UNIQUE` (`Contact`),
  ADD UNIQUE KEY `Email_UNIQUE` (`Email`),
  ADD KEY `fk_Enquiry_Belongs1_idx` (`GroupName`),
  ADD KEY `GroupName` (`GroupName`);

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
  ADD PRIMARY KEY (`CID`,`Year`,`TopicNo`,`AssignNo`,`RNO`),
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
  MODIFY `CID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `dept_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `enquiry`
--
ALTER TABLE `enquiry`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;
--
-- AUTO_INCREMENT for table `faculty`
--
ALTER TABLE `faculty`
  MODIFY `FID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `MessageID` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `RNO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `belongs`
--
ALTER TABLE `belongs`
  ADD CONSTRAINT `fk_Groups_has_Users_Groups` FOREIGN KEY (`GroupName`) REFERENCES `groups` (`GroupName`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_Groups_has_Users_Users1` FOREIGN KEY (`Username`) REFERENCES `users` (`Username`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `department`
--
ALTER TABLE `department`
  ADD CONSTRAINT `fk_Department_Faculty` FOREIGN KEY (`hod`) REFERENCES `faculty` (`FID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `enquiry`
--
ALTER TABLE `enquiry`
  ADD CONSTRAINT `fk_Enquiry_Belongs1` FOREIGN KEY (`GroupName`) REFERENCES `belongs` (`GroupName`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `faculty`
--
ALTER TABLE `faculty`
  ADD CONSTRAINT `fk_Faculty_Department` FOREIGN KEY (`dept_id`) REFERENCES `department` (`dept_id`) ON DELETE CASCADE ON UPDATE CASCADE,
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
  ADD CONSTRAINT `fk_Respone_Assignment` FOREIGN KEY (`CID`,`Year`,`TopicNo`,`AssignNo`) REFERENCES `assignments` (`CID`, `Year`, `Topic`, `AssignNo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
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
