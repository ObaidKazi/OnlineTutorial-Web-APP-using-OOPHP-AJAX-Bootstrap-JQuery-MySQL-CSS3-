<?php
require_once('DB.php');
	
	class Profile extends Database{

		function __construct()
		{
			$this->connect_db();

		}

		 public function pfselect($name){
			
			$sql = "SELECT * FROM `users` WHERE Username='$name'";
			$res = mysqli_query($this->connection, $sql);
			return $res;
		}

		 public function pfselect1($name){
			
			$sql = "SELECT * FROM `faculty` WHERE Username='$name'";
			$res1 = mysqli_query($this->connection, $sql);
			return $res1;
		}

		 public function pfselect2($dept_id){
			
			$sql = "SELECT dept_name FROM `department` WHERE dept_id='$dept_id'";
			$res2 = mysqli_query($this->connection, $sql);
			return $res2;
		}
	}
$profile=new Profile();
?>