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
<form method="post" id="sign1" action="">
		<?php
		session_start();
		if (isset($_SESSION['username'])) {
			$uname=$_SESSION['username'];

		
		?>
			<div class="container">
				
					<legend style="text-align: center;">Faculty Detail</legend>
					<div class="form-inline">
						<input type="text" name="des" placeholder="Designation"  style="width: 45%;" class="form-control">
						<input type="text" name="dep" placeholder="Department" style="width: 45%;margin-left: 10%;" class="form-control">
					</div>					
					<br>
					<div class="form-group">
						<input type="text" name="qua" placeholder="Qualification" class="form-control">
					</div>
					<div class="form-inline">
						<input type="text" name="special" placeholder="Specialzation"  style="width: 45%;" class="form-control">
							<input type="text" name="exp" placeholder="Experience" style="width: 45%;margin-left: 10%;" class="form-control">
					</div>
					<br>
					
					<input type="submit" name="submit" id="updFC" value="Submit" class="btn btn-primary form-control" onClick="javascript:location.href='FacultyDash.php'">
					<br>
					<div id="regmsg"></div>
					<br>
					<br>
				</form>
			</div>
		<?php
	}
	?>
			
</body>
</html>
