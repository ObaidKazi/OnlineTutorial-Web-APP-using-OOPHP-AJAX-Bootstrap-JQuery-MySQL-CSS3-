<?php
require'OOPHP/Login/alphabet.php';
session_start();
if(isset($_SESSION['username'])) 
{
	$user1=$_SESSION['username'];
?>
<!DOCTYPE html>
<html>
<head>
	<title>Security Question</title>
	<link rel="stylesheet" type="text/css" href="Css/bootstrap.css">
	   
	   <script src="Js/jquery-3.3.1.min.js"></script>
	<style type="text/css">
	.security{
		background: url(Images/Reset/Forgot.jpg);
		height: 620px;
		position: fixed;
		background-size: 100%;
		left: 0;
		right: 0;
		z-index: -1;
		opacity: 0.3;
		background-repeat: no-repeat;
	}
	.container{
	top: 10em;
	position: relative;
	box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
	width: 30%;

	}
	legend{
		text-align: center;
	}
	</style>
</head>
<body>
		<div class="security">
		</div>
		<div class="container">
			<form  method="post" action="securityques.php" >
				<fieldset class="col-lg-12 col-md-6 col-sm-6">
					<legend>
							Seems that you have Forgotten Your Password! It happens relax
					</legend>
				<div class="form-group">
						<label ><?php  echo "Username: <b>".$_SESSION['username']."<b>"?></label>
						<select name="rquestion" class="form-control" required="">
							<option value="">Security Question</option>
							<option value="What is Your Pet Name">What is Your Pet Name</option>
							<option value="What is Your Car Numbers">What is Your Car Number</option>
							<option value="What is the first name of your best friend in high school">What is the first name of your best friend in high school?</option>
						</select>
					</div>
					<div class="form-group">
						<input type="text" name="ranswer" class="form-control" placeholder="Answer">
					</div>
					<div id="notvalid"></div>
					<br>
						<input type="submit" name="submit" class="form-control btn btn-primary" value="Send">
				</fieldset>
				<br>
			</form>
		</div>

</body>
</html>
<?php
error_reporting(0);
if(isset($_POST['submit']))
{
	$que=$_POST['rquestion'];
	$ans=$_POST['ranswer'];
	$res=$alphabet->question($que,$ans,$user1);
	while ($row=mysqli_fetch_array($res)) {
		$dbque=$row['Quest'];
		$dbans=$row['Ans'];
	}
	if ($que==$dbque&&$ans==$dbans) {
		$_SESSION['que']=$que;
		$_SESSION['ans']=$ans;
		header('Location: OOPHP/Login/reset.php');
	}
	else
	{
	?>
			<script type="text/javascript">
				$(function () {
					$("#notvalid").html("<div style='color:red;'>YOUR QUESTION ANS ANSWER IS WRONG</div>").fadeIn().delay(1000).fadeOut();
				});
			</script>
			<?php
	}
}
}
else
{
	header('Location: http://localhost/OnlineTutorial/login-form.php');
}
?>