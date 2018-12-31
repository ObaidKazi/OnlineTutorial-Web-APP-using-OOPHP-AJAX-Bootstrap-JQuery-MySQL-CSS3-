<?php
session_start();
	if(isset($_SESSION['username'])){
?>
<!DOCTYPE html>
<html>
<head>
	<title>side Menu</title>
	<link rel="stylesheet" type="text/css" href="Css/bootstrap.css">
	<script src="Js/jquery-3.3.1.min.js"></script>


	<style type="text/css">
		*{
			margin: 0;
			padding: 0;
		}
		#side
		{
			position: fixed;
			width: 200px;
			height: 100%;
			background-color: black;
			color: white;
			left: -200px;
			transition: all 500ms linear;
		}
		#side.active{
			left: 0px;
		}
		button{
			background-color:#343a40;
			width: 200px;
			height: 40px;
			color: white;
			border: 1px solid #4f5f5f;
			margin-bottom: 0px; 
			font-size: 14pt;

		}
		button:hover
		{
			background-color: orange;
		}
		#side ul li{
			background-color: rgba(255,255,255,255,0.5);
			list-style: none;
			padding: 15px 10px;
			border-bottom: 2px solid rgba(100,100,100,0.9); 
		}


		#side .toggle {
			position: absolute;
			left: 230px;
			top: 20px;
		}
		#side .toggle span{
			display: block;
			width: 33px;
			height: 5px;

			background-color: white;
			margin: 3px 0px;
		}


		#content{
			margin-left: 10%;
			height: 90%;
			width: 80%;
			margin-top:30pt;

		}

		.toggle span:hover{
			cursor: pointer;
			
		}
	</style>
</head>
<body>
<div id="side" class="bg-dark" style="width: 20%; float:left">
	<div class="toggle" onclick="toggleside()">
		<span></span>
		<span></span>
		<span></span>
	</div>
	<ul>
		<button onClick="load('content','Register.php')">Register</button>
		
		<button onClick="load('content','Register.php')">Register</button>
		
		<button onClick="load('content','Register.php')">Register</button>

		<button onClick="load('content','Register.php')">Register</button> 
	</ul>
</div>
	<div id ="content" style="width: 80%; float:right">
	</div>
	<script src="Js/jquery-3.3.1.min.js"></script>
	<script type="text/javascript" src="Js/misc.js"></script>
	<script src="Js/loadPage.js"></script>
	<script type="text/javascript">
		function toggleside() {
			document.getElementById('side').classList.toggle('active');
		}
	</script>
<?php
}
else
{
	header('Location: http://localhost/Demo/login-form.php');
}
?>
</body>
</html>