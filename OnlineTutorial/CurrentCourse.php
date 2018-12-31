<?php

?>
<!DOCTYPE html>
<html>
<head>
	<title>Register</title>
	<link rel="stylesheet" type="text/css" href="Css/slide2.css">
	<link rel="stylesheet" type="text/css" href="Css/bootstrap.css">
	<script src="Js/jquery-3.3.1.min.js"></script>
  	<script src="ckeditor/ckeditor.js"></script>
  	<script src="Js/Cselect.js"></script>
  	<script src="Js/Syllabus.js"></script>
  <style>
  textarea#addcheck{
    font-size: 16px;
    resize: none;
    height: 5em;
    transition: height .3s ease-out;
  }
    textarea:focus#addcheck{
    height: 9em;
  }
	.container{
	top: 5em;
	position: relative;
	background-color: white;
	box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
	margin-bottom: 30pt;

	}

	.security{
		background: url(Images/Registration/bk_Reg.jpg);
		height: 620px;
		position: fixed;
		background-size: 100%;
		left: 0;
		right: 0;
		top: 0;
		z-index: -1;
		opacity: 0.7;
		background-repeat: no-repeat;
	}

	
	input[type='button']{
			text-align: center;
			background-color:#343a40;
			width: 100px;
			height: 50px;
			color: white;
			border: 1px solid #4f5f5f;
			margin-bottom: 0px; 
			font-size: 14pt;
			border-radius: 5px;

		}
	input[type='button']:hover
		{
			background-color: orange;
			cursor: pointer;
		}
	

	
  </style>
</head>
<body>
	<div class='security'>

	</div>
	<div class="container col-lg-9 col-md-6 col-sm-4 ">
							<table class="table" id='example'>

							<tr>
								<th>Topic</th>
								
								<th>Weightage</th>
								<th>Name</th>
								
							</tr>
						<?php
							require_once 'OOPHP/Course/Showcourse.php';
							session_start();
							$uname=$_SESSION['username'];
							$res2=$Showcourse->getroll($uname);
							while ($row=mysqli_fetch_assoc($res2)) {
								$topic=$row['Topic'];
								$cont=$row['content'];
								$wt=$row['Weightage'];
								$name=$row['Name'];
								$med=$row['Media'];
							
						?>
							<tr ">
							<td><?php echo"".$topic."";?></td>
							
							<td><?php echo"".$wt.""; ?></td>
							<td ><?php echo"".$name.""; ?></td>
							
							<td><input value='Get Details' type='button' class='theButton' id='ma' onclick='test()'></td>
							</tr>
							<?php
					}
							?>
						</table>

					<center>
						
					</center>
					</div>
					<div id="regmsg"></div>
					<br>
			</fieldset>
		</form>
	</div>
</body>
</html>
<script type="text/javascript">
function test(){
$(document).find('.theButton').on('click',function(){
    var age = $(this).parents('tr:first').find('td:eq(0)').text();
    window.open( "http://localhost/OnlineTutorial/Contents.php?age=" + age,'_blank') ;
});
}
</script>
