<!DOCTYPE html>
<html>
<head>
	<title>Login</title>
	<link rel="stylesheet" type="text/css" href="Css/bootstrap.css">
	<script src="Js/jquery-3.3.1.min.js"></script>
	<script src="Js/Facultydet.js"></script>
	<style type="text/css">
	.security{
		background-color: lightgrey;
		height: 620px;
		position: fixed;
		background-size: 100%;
		left: 0;
		right: 0;
		z-index: -1;
		opacity: 0.2;
	}	
	.container{
	top: 14em;
	position: relative;
	box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.5), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
	width: 30%;
	}
	.change
	{
		
	}
	</style>
</head>
<body>
	<div class="security">
		
	</div>
	<div class="change">
	<div class="container">
		<form method="post" id="sign" action="">
		<?php
		session_start();
		if (isset($_SESSION['username'])) {
			$uname=$_SESSION['username'];

		
		?>
			<legend style="text-align: center;">
					Change Password
			</legend>
			<div class="form-group">
					<input type="password" name="fcpass" placeholder="Password" class="form-control" required="">
			</div>
			<div class="form-group">
					<input type="password" name="fcrepass" placeholder="Confirm Password" class="form-control" required="">
			</div>
			<button id='change'name="change" value="Change" class="btn btn-primary form-control" onClick="javascript:location.href='FacultyDash.php'">Change</button>
			<br>
			<br>
			</form>
		
	</div>
	</div>
	<?php
	}
	?>
</body>
</html>