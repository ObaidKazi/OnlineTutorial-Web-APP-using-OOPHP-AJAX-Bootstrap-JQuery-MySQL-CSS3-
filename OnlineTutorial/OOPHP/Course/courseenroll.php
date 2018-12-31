<?php
require_once('DB.php');
	
	class courseenroll extends Database{

		function __construct()
		{
			$this->connect_db();
			$this->chCourse();

		}

		public function chCourse(){
			session_start();
			$uname=$_SESSION['username'];


			$CNAME=$_GET['details'];

			echo $CNAME;

			$sql1="select CID,dept_id from Course where CName='$CNAME'";

			

			$res=mysqli_query($this->connection,$sql1);
			while ($row=mysqli_fetch_array($res)) {
					$CID=$row['CID'];
					$DEPTID=$row['dept_id'];
				}

			$sql3="INSERT into student (RNO,Year,DOA,dept_id,Username,Last_Modified) values ('',YEAR(CURDATE()),CURDATE(),'$DEPTID','$uname',now())";
			$res6=mysqli_query($this->connection,$sql3);


			$sql40="select MAX(RNO) from Student";
			$res40=mysqli_query($this->connection,$sql40);
			while ($row=mysqli_fetch_array($res40)) {
					$RNO=$row['MAX(RNO)'];
				}


			$sql41="INSERT into takes (RNO,CID,Year,Percentage,Grade,EnrollTime) values ('$RNO','$CID',YEAR(CURDATE()),'0','',now())";
			$res41=mysqli_query($this->connection,$sql41);

				
				if($res41)
				{
					header('location: ../../StudentDash.php'); 
				}
				else 
				{
					echo 'false';
				}
			
		}


	}
$courseenroll =new courseenroll ();
?>