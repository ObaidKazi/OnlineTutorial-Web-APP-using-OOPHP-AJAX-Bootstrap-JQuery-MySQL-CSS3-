<?php
require_once'DB.php';

class Register extends Database{

	function __construct()
	{
		$this->connect_db();
		$this->sregister();
	}

	function sregister(){
		if($_POST)
		{
			$uname=$_POST['user'];
			$upass=$_POST['pass'];
			$fname=$_POST['fname'];
			$mname=$_POST['mname'];
			$lname=$_POST['lname'];
			$email=$_POST['emailid'];
			$phno=$_POST['contactno'];
			$add=$_POST['address'];
			$dob=$_POST['dob'];
			$squest=$_POST['question'];
			$ans=$_POST['answer'];
			
			//Age Logic
			$ndob=substr($_POST['dob'],0,4);
			$cdate=date('Y-m-d');
			$today=substr($cdate,0,4);
			$age=$today-$ndob;


			//Images
			date_default_timezone_set('Asia/Kolkata');
			$file_name=$_FILES["uploadimage"]["name"];
			$temp_name=$_FILES["uploadimage"]["tmp_name"];
			$imgtype=$_FILES["uploadimage"]["type"];
			$imagename=$uname.'_'.date("d-m-y");
			$directory="../../Images/User/Student/". $uname ."/";
			if(!is_dir($directory)) {
		    	mkdir($directory,"0777",true);
			}
			$directory2="Images/User/Student/". $uname ."/";
			$target_path = $directory.$imagename.image_type_to_extension(IMAGETYPE_PNG);
			if(move_uploaded_file($temp_name, $target_path))
			{
				$target_path2=$directory2.$imagename.image_type_to_extension(IMAGETYPE_PNG);
				$sql="INSERT INTO users (Username,Password,Fname,Mname,Lname,EmailID,ContactNo,Address,DOB,Age,Image,Quest,Ans,CreationTime,LastModified) VALUES ('$uname','$upass','$fname','$mname','$lname','$email','$phno','$add','$dob','$age','$target_path2','$squest','$ans',now(),now())";

				$sql1="INSERT INTO belongs (Username,GroupName) VALUES ('$uname','Student')";

				$res=mysqli_query($this->connection,$sql);
				$res1=mysqli_query($this->connection,$sql1);
				if($res)
				{
					echo 'true';
				}
				else 
				{
					echo 'false';
				}
			}
			else if(!move_uploaded_file($temp_name, $target_path))
			{
				$sql="INSERT INTO users (Username,Password,Fname,Mname,Lname,EmailID,ContactNo,Address,DOB,Age,Quest,Ans,CreationTime,LastModified) VALUES ('$uname','$upass','$fname','$mname','$lname','$email','$phno','$add','$dob','$age','$squest','$ans',now(),now())";

				$sql1="INSERT INTO belongs (Username,GroupName) VALUES ('$uname','Student')";

				$res=mysqli_query($this->connection,$sql);
				$res1=mysqli_query($this->connection,$sql1);
				if($res)
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
				echo "false";
			}
		}
		else
		{
			echo 'false';
		}
	}
}
$Register=new Register();
?>