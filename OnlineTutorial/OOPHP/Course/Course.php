<?php
require_once('DB.php');
	
	class Course extends Database{

		function __construct()
		{
			$this->connect_db();

		}

		 public function scourse(){
			
			$sql = "SELECT * FROM `course`";
			$res = mysqli_query($this->connection, $sql);
			return $res;
		}

		public function fccourse($uname){
			$sql = "SELECT FID FROM faculty where Username='$uname'";
			$res = mysqli_query($this->connection, $sql);
			while($r = mysqli_fetch_assoc($res)){
				$FID=$r['FID'];
			}

			$sql1 = "SELECT CNAME from Course where CID IN (SELECT CID FROM teaches where FID='$FID')";
			$res1 = mysqli_query($this->connection, $sql1);
			return $res1;
		}


		public function stcourse($uname){
			$sql = "SELECT RNO FROM student where Username='$uname'";
			$res = mysqli_query($this->connection, $sql);
			while($r = mysqli_fetch_assoc($res)){
				$RNO=$r['RNO'];
			}

			$sql1 = "SELECT CNAME from Course where CID IN (SELECT CID FROM takes where RNO='$RNO')";
			$res1 = mysqli_query($this->connection, $sql1);
			return $res1;
		}

		 public function cntcourse($cname){
			
			$sql = "SELECT CID FROM `course` where CName='$cname'";
			$res = mysqli_query($this->connection, $sql);

			return $res;
		}

		public function CourseNM(){
			
			$sql = "SELECT CName FROM `Course`";
			$res = mysqli_query($this->connection, $sql);

			return $res;
		}

		public function DeptNM(){
			
			$sql = "SELECT dept_name FROM `department`";
			$res = mysqli_query($this->connection, $sql);

			return $res;
		}

		

	}
$Course=new Course();
?>