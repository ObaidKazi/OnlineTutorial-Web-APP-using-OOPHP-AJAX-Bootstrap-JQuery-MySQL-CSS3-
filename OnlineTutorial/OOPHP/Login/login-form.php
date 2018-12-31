<!DOCTYPE html>
<html>
	<head>
		<title>Login</title>
		<link rel="stylesheet" href="../../Css/bootstrap.min.css">
		<link rel="stylesheet" type="text/css" href="../../Css/glyphicon.css">
	    <link rel="stylesheet" type="text/css" href="../../Css/style.css">
	    <script src="../../Js/jquery-3.3.1.min.js"></script>
	    <script src="../../Js/bootstrap.min.js"></script>
	    <style>
	    	body{
	    		background-color: #2E8B57;
	    	}
	    	.main form div
			{
				position: relative;
			}

			.main form div#notvalid
			{
				margin-left: 30px;
				width: 270px;
				color: red;
			}
			.main form div span
			{
				position: absolute;
				top: 80px;
				pointer-events: none;
				left: 30px;
				transition: .3s;
			}
			.main input:focus ~span,
			.main input:valid ~span
			{
				right: 20;
				top: 60px;
				color: rgb(66,133,244);
				font-size: 12px;
				font-weight: bold;
			}

			.main1 form div
			{
				position: relative;
			}
			.main1 form div span#abc
			{
				position: absolute;
				top: 80px;
				pointer-events: none;
				left: 30px;
				transition: .3s;
			}
			.main1 input:focus ~span#abc,
			.main1 input:valid ~span#abc
			{
				right: 20;
				top: 60px;
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
		<div class="main">
			<form method="post" action="">
				<fieldset>
					<center><span class="glyphicon glyphicon-user usercir " style="font-size:60px;"></span></center>
					<center><label style="font-size:20pt; width:90px;">Login</label></center>
					<br>
					<div>
					  	<input type="text" name="uname" class="inputText" required/>
					  	<span>Username</span>
					</div>
					<div id="notvalid"></div>
					<br>
					<a href="Register.php" class="ref btn btn-link" >Not a user?</a>
					<input type="submit"  name="next1" value="Next" class='btn btn-primary' style="width:200px">
				</fieldset>
			</form>
		</div>


		<?php
		require_once'alphabet.php';
		if (isset($_POST['next1'])) 
		{
			session_start();
			$uname=$_POST['uname'];
			$_SESSION['username']=$_POST['uname'];

			$res=$alphabet->checkimg($uname);
			
			while($r = mysqli_fetch_assoc($res)){
				$dbuser=$r['Username'];
			}
				if ($uname==$dbuser){
		?>
					<div class="main1">
						<form method="post" action="">
							<fieldset>

								<center>
									<div class="circle">
									<?php
									$var=$_SESSION['username'];
									$alph=$alphabet->checkalpha($var);
									$len=strlen($alph);
									if($len>1){
										echo $alph;
										echo "<img src=".$alph." alt=".$alph.">";
									}
									else{
										$fir=substr($var,0,1);
										$fir=strtoupper($fir);
									?>
										<p style="font-size: 38pt;"><?php echo"$fir";?></p>	
									<?php
									}
									?>
									</div>
								</center>
								<center><label style="font-size:20pt; width:90px;">Login</label></center>
								<br>
								<div class='form-group'>
									<input id="password-field" type="password"  name="upass" class="inputText" required>
									 <span class="glyphicon glyphicon-eye-open"></span>
									 <span id='abc'>Password</span>
								</div>
								<div id="notvalid"></div>
								<br>
								<a href="securityques.php" class="ref1 btn btn-link" >ForgotPassword?</a>
								
								<br>
									<input type="submit" name="next2" value="Login">
							</fieldset>	
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
						</form>
					</div>

					<style type="text/css">
						.main{
							display: none;
						}	
					</style>
						
				<?php
						
				}
				else{
					?>
					<script type="text/javascript">
					$(function () {
						$('#notvalid').html('<div>User Name is not available</div>').fadeIn().delay(1000).fadeOut();
					});
				</script>
				<?php
				}

			}
			if(isset($_POST['next2']))
				{
					session_start();
					$uname=$_SESSION['username'];
					$upass=$_POST['upass'];
					$res=$alphabet->checkpass($uname,$upass);
						while ($row=mysqli_fetch_assoc($res))
						{
							$dbname=$row['Username'];
							$dbpass=$row['Password'];
						}
						if ($uname==$dbname&&$upass==$dbpass) 
						{
							header('Location: http://localhost/OnlineTutorial/side.php');
						}
						else{
						?>
						<script type="text/javascript">
						$(function () {
							$('#notvalid').html('<div>Username and password didnt match</div>').fadeIn().delay(3000).fadeOut();
						});
						</script>
					<?php
					}
				}
				
		?>

		
	</body>
</html>