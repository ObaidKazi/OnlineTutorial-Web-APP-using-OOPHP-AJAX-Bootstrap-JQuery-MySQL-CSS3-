<?php
require_once'connect.php';
if($_POST)
{
	$uname=$_POST['user'];
	date_default_timezone_set('Asia/Kolkata');
	$file_name=$_FILES["uploadimage"]["name"];
	$temp_name=$_FILES["uploadimage"]["tmp_name"];
	$imgtype=$_FILES["uploadimage"]["type"];
	$imagename=$uname.' '.date("d-m-y");
	$directory="Images/User/". $uname ."/";
	if(!is_dir($directory)) {
    	mkdir($directory,"0777",true);
	}
	
	$target_path = $directory.$imagename.image_type_to_extension(IMAGETYPE_PNG);
	if(move_uploaded_file($temp_name, $target_path))
	{
		$sql="INSERT INTO dummy (Name,Image) VALUES ('$uname','$target_path')";

		$res=mysqli_query($conn,$sql);
		if($res)
			echo 'successful';
	}
}
?>

<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>
	<form method='post' enctype="multipart/form-data">
	<input type="text" id="user" name="user"  class="form-control" required=""  placeholder="Username">
	<input type="file" name="uploadimage"  class="form-control" required="">
	<input type="submit" name="submit"  class="form-control" required="">
	<img src="Images/Contact/Loader.gif" width="2%" height="2%">
	</form>
</body>
</html>