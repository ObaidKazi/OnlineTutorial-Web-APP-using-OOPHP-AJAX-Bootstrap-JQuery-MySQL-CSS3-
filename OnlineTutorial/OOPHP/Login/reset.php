<!DOCTYPE html>
<html>
<head>
	<title> Reset Password</title>
		<link rel="stylesheet" type="text/css" href="../../Css/bootstrap.css">
		<link rel="stylesheet" type="text/css" href="../../Css/glyphicon.css">
		<link rel="stylesheet" type="text/css" href="../../Css/style.css">
		<script src="../../Js/jquery-3.3.1.min.js"></script>
		<style type="text/css">
			body{
			    background-color: #2E8B57;
			 }
			.main1 form div
			{
				position: relative;
			}
			.main1 form div span#abc
			{
				position: absolute;
				top: 100px;
				pointer-events: none;
				left: 30px;
				transition: .3s;
			}
			.main1 input:focus ~span#abc,
			.main1 input:valid ~span#abc
			{
				right: 20;
				top: 90px;
				color: rgb(66,133,244);
				font-size: 12px;
				font-weight: bold;
			}
			.form-group {
				position: relative
			}
			.form-group input[type="password"] {
				padding-right: 30px
			}
			.form-group .glyphicon{
				right: 65px;
				position:absolute;
				top:82px;	
			}
			span:hover{
				cursor: pointer;
			}
			input[type="submit"]:hover{
				cursor:pointer;
			}
		</style>
</head>
<?php
require_once'alphabet.php';
session_start();
$user1=$_SESSION['username'];
if(isset($_SESSION['username']))
{	
	
		$user=$_SESSION['username'];
		$rques=$_SESSION['que'];
		$rans=$_SESSION['ans'];
		$res=$alphabet->reset($user,$rques,$rans);
		while ($row=mysqli_fetch_assoc($res))
		{
			$dbuser=$row['Username'];
			$dbques=$row['Quest'];
			$dbans=$row['Ans'];
		}
		if($user==$dbuser&&$rques==$dbques&&$rans==$dbans)	
		{
?>	
	<body>
		<div class="main1">
			<form method="post" action='reset.php'>
				<fieldset>
					<center>
						<div class="circle">
						<?php 
							$var=$dbuser;
							$alph=$alphabet->checkalpha2($var);
							$len=strlen($alph);
							if($len>1&&$alph!='../../')
							{
								echo "<img src=".$alph." alt=".$alph.">";
							}		
							else
							{
								$fir=substr($var,0,1);
						?>
								<p style="font-size: 45pt;"><?php echo"$fir";?></p>	
						<?php
						}
						?>
						</div>
					</center>

					<center>
						<label style="font-size:17pt; width:200	px;">Reset Password</label>
					</center>
					
					<br>
					<div>
						<br>
					  	<input id="password-field" type="password"  name="repass" class="inputText" style=""required/>
					  	<span toggle="#password-field" class="toggle-password glyphicon glyphicon-eye-open " style="left:-20px;"></span>		  	
					  	<span id="abc">Password</span>
					</div>
					<br>
					<input type="submit" name="next2" value="Reset">
				</fieldset>
			</form>

			<script>
				$(".glyphicon-eye-open").on("click", function() {
					$(this).toggleClass("glyphicon-eye-close");
					var type = $("#password-field").attr("type");
					if (type == "text"){ 
						$("#password-field").prop('type','password');}
					else{ 
						$("#password-field").prop('type','text'); }
					});
			</script>
		</div>
	</body> 	
<?php
}
}
?>
<?php
		if(isset($_POST['next2']))
		{
			$repass=$_POST['repass'];
			$res=$alphabet->updatepass($repass,$user1);
			if($res)
			{
				session_destroy();
				header('Location: http://localhost/OnlineTutorial/login-form.php');
				
			}
			else {
				session_destroy();
				header('Location: https://localhost/OnlineTutorial/index.html');
			}
		}

?>
</html>