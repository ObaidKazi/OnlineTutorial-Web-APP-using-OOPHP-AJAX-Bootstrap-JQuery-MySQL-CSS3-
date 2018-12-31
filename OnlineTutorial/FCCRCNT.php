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
  </style>
</head>
<body>
	<div class='security'>

	</div>
	<div class="container col-lg-9 col-md-6 col-sm-4 ">
		<form method="post" id="sign" action="" enctype="multipart/form-data">
			<fieldset class="col-lg-12 col-md-6 col-sm-6">
				<center>
					<legend>
						Select Course
					</legend>
				</center>
					<?php
					session_start();
					require_once 'OOPHP/Course/Course.php';
					if (isset($_SESSION['username'])) {
					$uname=$_SESSION['username'];
					$res1 = $Course->fccourse($uname);
					if($res1)
					{
						echo "<select name='cname' class='form-control'>";
						echo "<option>Select Course</option>";
						while($r = mysqli_fetch_assoc($res1)){
							echo "<option value= ". $r['CNAME'] .">".$r['CNAME']."</option>";
						}
						echo "</select>"."<br>";

					}
					?>
					<center>
					<button id='subm' class="btn btn-primary" value="Submit" style='width:300pt;'>Select</button>
				</center>
				
				<br><br>
					<div id="Contents" style="display:none">
							<div class="form-group" >
	    				<input type="text"  name="chap1"  class="form-control"  placeholder="Chapter Name" />
	  				</div>
					<div class="form-group">
						<textarea  name="topic1"  placeholder="Topics" class="form-control noresize" ></textarea>
					</div>
					<div class="form-group">
					<label for='editor1'>Enter The contents</label>
					<textarea  class="ckeditor" name="editora" style="margin-top:2%;"></textarea>
					</div>
					<div class="form-group">
					<label for="media">Upload Media</label>
					<input type="file" name="media1"  class="form-control">
				</div>
					<div class="form-group">
						<input type="text"  name="wt1"  placeholder="Weightage" maxlength="2"  class="form-control" />
					</div>
					

					<center>
						<input type="submit" id="submitform" class="btn btn-primary" value="Submit" style='width:300pt;'>
					</center>
					</div>
					<div id="regmsg"></div>
					<br>
			</fieldset>
		</form>
	</div>

	<?php
	}
	?>
</body>
</html>
