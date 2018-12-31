<?php
session_start();
require'OOPHP/Login/alphabet.php';
?>
<!DOCTYPE html>
<html>
<head>
	<title>Security Question</title>
	<link rel="stylesheet" type="text/css" href="Css/bootstrap.css">
	   
	   <script src="Js/jquery-3.3.1.min.js"></script>
	   <link rel="stylesheet" type="text/css" href="Css/style.css">
		
	<style type="text/css">

			body
			{
			    background-color: #1da1f2;
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
<body>
		<div class="main1">
			<form method="post" action='AdminPassReset.php'>
				<fieldset>
					<center>
						<div class="circle">
						<?php 
							$var=$_SESSION['name'];
							$var=strtoupper($var);							
							$fir=substr($var,0,1);
						?>
								<p style="font-size: 45pt;"><?php echo"$fir";?></p>	
						<?php
						
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
					<input type="submit" name="next2" value="Reset" style=" margin-left: 30px;"></input>
					<br>
					<div id="success" style="margin-left: 30px;"></div>
					
					<a href="AdminDash.php" class="btn btn-link" style="margin-left:30px; ">Go Back</a>

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
		if(isset($_POST['next2']))
		{
			$repass=$_POST['repass'];
			$res=$alphabet->updatepass($repass,$_SESSION['name']);
			if ($res=='true') {
				?>

				<script type="text/javascript">
				$('#success').html('<span class="alert alert-success">Successfully Change</span>').fadeIn().delay(1000).fadeOut();
				</script>
			<?php
		}
			else {?>
				<script type="text/javascript">
				$('#success').html('<span class="alert alert-danger">Not Successfully Change</span>').fadeIn().delay(1000).fadeOut();
				</script>
			<?php
		}
		}

?>
</html>