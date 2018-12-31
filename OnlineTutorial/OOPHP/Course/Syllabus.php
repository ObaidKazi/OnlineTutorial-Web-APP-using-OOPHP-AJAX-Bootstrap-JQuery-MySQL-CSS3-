<?php
require_once'DB.php';

class Syllabus extends Database{

	function __construct()
	{
		$this->connect_db();
		$this->syl();
	}

	function syl(){
		if($_POST)
		{

			$CNAME=$_POST['cname'];

			$Chapter1=$_POST['chap1'];
			

			$Topic1=$_POST['topic1'];
			

			$Editor1=$_POST['editora'];
		

			$Media1=$_POST['media1'];


			$weight1=$_POST['wt1'];
		
			


			$info = pathinfo($_FILES['media1']['name']);
			$ext = $info['extension']; // get the extension of the file
			$newname = $Topic1.".".$ext; 
			$directory = '../../MediaFiles/'.$CNAME.'/'.$Chapter1.'/';
			if(!is_dir($directory)) {
		    	mkdir($directory,"0777",true);
			}
			$directory2 = 'MediaFiles/'.$CNAME.'/'.$Chapter1.'/';
			$target = $directory.$newname;
			$target2 = $directory2.$newname;
			move_uploaded_file( $_FILES['media1']['tmp_name'], $target);


			

			$sql0="SELECT CID FROM Course where CName='$CNAME'";
			$res0=mysqli_query($this->connection,$sql0);
			while ($row=mysqli_fetch_array($res0)) {
				$CID=$row['CID'];
			}

			
			$res1=mysqli_query($this->connection,$sql1);

			$sql1="INSERT into Tutorial (CID,YEAR,Topic,content,Name,Weightage,Media) values ('$CID',YEAR(CURDATE()),'$Topic1','$Editor1','$Chapter1','$weight1','$target2')";
			
			$res2=mysqli_query($this->connection,$sql1);			

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
$Syllabus=new Syllabus();
?>