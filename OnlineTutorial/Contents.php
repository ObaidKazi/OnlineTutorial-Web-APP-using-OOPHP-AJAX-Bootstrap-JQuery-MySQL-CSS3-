<!DOCTYPE html>
<html>
<head>
	<title></title>
	<link rel="stylesheet" type="text/css" href="Css/bootstrap.css">
	<style type="text/css">
	body{
		background-color: #DEB887; 
	}
	.abc{

		top: 5em;
	position: relative;
	background-color: white;
	box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
	margin-bottom: 30pt;
	margin-left: 100pt;
	width: 80%;
	}	

	</style>
</head>
<body >
<?php
session_start();
if (isset($_SESSION['username'])) {

$CTopic=$_GET['age'];


	require_once 'OOPHP/Course/Showcourse.php';

	$res2=$Showcourse->getcontent($CTopic);
	while ($row=mysqli_fetch_assoc($res2)) {

	$cont=$row['content'];
	$med=$row['Media'];

	}
?>
<div class='abc'>
<?php
							echo $cont;
							?>
							<center>
							<video width="50%" height="500" controls>
								  <source src="<?php echo ''.$med.''?>" type="video/mp4">
						
							</video>
						</center>
						<center>
						<div class="alert alert-info"><a href="StudentDash.php">Click here to go back</a></div>
					</center>
</div>
<?php
							
}						

?>
</body>
</html>
