<?php
require_once'DB.php';

class Alphabet extends Database{

	function __construct(){
		$this->connect_db();
	}

	function checkalpha($check)
	{	
		$sql = mysqli_query($this->connection,"SELECT image FROM  users WHERE Username='$check'");	
		if($sql){
			while($row = mysqli_fetch_array($sql)){
				$img=$row['image'];	
				return $img;
			}
		}
	}

	function checkalpha2($check)
	{	
		$sql = mysqli_query($this->connection,"SELECT image FROM  users WHERE Username='$check'");	
		if($sql){
			while($row = mysqli_fetch_array($sql)){
				$img="../../".$row['image'];
				return $img;
			}
		}
	}

	function checkimg($uname){
		$sql=("SELECT Username,Password FROM users WHERE Username='$uname'");
		$res = mysqli_query($this->connection, $sql);
		return $res;
	}

	function checkpass($uname,$upass){
		$sql=("SELECT Username,Password FROM Users WHERE Username='$uname'");
		$res = mysqli_query($this->connection, $sql);
		return $res;
	}

	function question($que,$ans,$user1){
		$sql="SELECT Quest,Ans FROM users WHERE Username='$user1'";
		$res=mysqli_query($this->connection,$sql);
		return $res;
	}

	function reset($user,$rques,$rans){
		$sql=("SELECT Username,Quest,Ans FROM Users WHERE Username='$user'");
		$res = mysqli_query($this->connection, $sql);
		return $res;
	}

	function updatepass($repass,$user1){
		$sql=("UPDATE users SET Password='$repass' WHERE Username='$user1'");
		$res=mysqli_query($this->connection,$sql);
		return $res;
	}

	function checkaccess($uname){
		$sql=("SELECT GroupName FROM belongs WHERE Username='$uname'");
		$res=mysqli_query($this->connection,$sql);
		while ($row=mysqli_fetch_assoc($res))
		{
			$UGrp=$row['GroupName'];
		}
		return $UGrp;
	}

	function checklogin($uname){
		$sql=("SELECT LastModified FROM Faculty WHERE Username='$uname'");
		$res=mysqli_query($this->connection,$sql);
		while ($row=mysqli_fetch_assoc($res))
		{
			$logincheck=$row['LastModified'];
		}
		return $logincheck;
	}

	function checklogin1($uname){
		$sql=("SELECT Username FROM Student WHERE Username='$uname'");
		$res=mysqli_query($this->connection,$sql);
		while ($row=mysqli_fetch_assoc($res))
		{
			$logincheck1=$row['Username'];
		}
		return $logincheck1;
	}
}
$alphabet=new Alphabet();
?>
