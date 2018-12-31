<?php
require_once'DB.php';

class FCins extends Database{

	function __construct()
	{
		$this->connect_db();
		$this->Fdtins();
	}

	function Fdtins(){
		if($_POST)
		{	
			session_start();
				$uname=$_SESSION['username'];
				$designation=$_POST['des'];
				$department=$_POST['dep'];
				$qualification=$_POST['qua'];
				$specialization=$_POST['special'];
				$experience=$_POST['exp'];

				$sqlf="SELECT dept_id from department where dept_name='$department'";	
				$res=mysqli_query($this->connection,$sqlf);
				while ($row=mysqli_fetch_array($res)) {
					$deptID=$row['dept_id'];
				}


				$sql2="INSERT into Faculty (FID,Designation,Qualification,Specialization,Experience,DOJ,dept_id,LastModified,Username) values ('','$designation','$qualification','$specialization','$experience',CURDATE(),'$deptID',now(),'$uname')";
				
				$res2=mysqli_query($this->connection,$sql2);
				if($res2)
				{
					echo 'true';
				}
				else 
				{
					echo 'false';
				}
			
		}
		else
		{
			echo 'false';
		}
	}
}
$FCins=new FCins();
?>