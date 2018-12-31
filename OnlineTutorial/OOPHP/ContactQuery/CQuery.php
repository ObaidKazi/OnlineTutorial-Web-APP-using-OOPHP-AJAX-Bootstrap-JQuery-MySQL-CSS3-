<?php
/*
Author: Javed Ur Rehman
Website: https://www.allphptricks.com
*/
require_once('DB.php');
	
	class Cquery extends Database{

		function __construct()
		{
			$this->connect_db();
			$this->squery();

		}

		 public function squery(){
			
			$name = $_POST['Uname'];
			$contact = $_POST['Ucontact'];
			$email = $_POST['UEmail'];
			$subject = $_POST['USubj'];
			$message = $_POST['textrem'];
		 	
			$sql = "INSERT INTO `enquiry` (ID,Name, Contact, Email, Subject, Mesg,Time,GroupName) VALUES ('','$name', '$contact', '$email', '$subject', '$message',Now(),'Admin')";
			$res = mysqli_query($this->connection, $sql);
			if($res){
		 		echo "<span style='color:green; font-weight:bold;'>
				Thank you for contacting us, we will get back to you shortly.
				</span>";
			}else{
				echo "<span style='color:red; font-weight:bold;'>
				Sorry! Your form submission is failed.
				</span>";
			}
		}
	}


$Cquery=new Cquery();
?>