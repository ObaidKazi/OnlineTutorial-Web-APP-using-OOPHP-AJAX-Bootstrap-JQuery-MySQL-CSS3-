<?php
require_once'DB.php';

class FCupass extends Database{

	function __construct()
	{
		$this->connect_db();
		$this->Fdtupass();
	}

	function Fdtupass(){
		if($_POST)
		{	
			session_start();
			$uname=$_SESSION['username'];
			$newpass=$_POST['fcpass'];

			$sql1="UPDATE Users set Password='$newpass' where Username='$uname'";

			$res1=mysqli_query($this->connection,$sql1);

			$sql2="UPDATE faculty set LastModified=now() where Username='$uname'";
			$res2=mysqli_query($this->connection,$sql2);

		}
			
	}
}
$FCupass=new FCupass();
?>