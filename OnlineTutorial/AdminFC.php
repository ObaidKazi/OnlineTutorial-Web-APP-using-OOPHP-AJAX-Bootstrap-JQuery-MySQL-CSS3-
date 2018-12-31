<?php

?>
<!DOCTYPE html>
<html>
<head>
	<title>Register</title>
	<link rel="stylesheet" type="text/css" href="Css/slide2.css">
	<link rel="stylesheet" type="text/css" href="Css/bootstrap.css">
	<script src="Js/jquery-3.3.1.min.js"></script>
	<script src="Js/registerFC.js"></script>
  	<script src="Js/misc.js"></script>
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
  	#abcwata{
	top: 5em;
	
	box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
	margin-bottom: 10pt;
	}

	#abcwata .form-control{
	border-right: 0;
	border-left: 0;
	border-top: 0;
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
						Registration
					</legend>
				</center>
				<div class="form-group" >
    				<input type="text" id="user" name="user"  class="form-control" required=""  placeholder="Username">
    				<br>
    				<span id="usererr"></span>
  				</div>
  				<div class="form-group">
					<input type="password" id="pass" name="pass"   class="form-control"	required="" placeholder="Password" onkeyup="return passwordChanged();"/>
					<span id="strength"></span>
    				
				</div>
  				<div class="form-group">
					<input type="password" id="cpass"   class="form-control" required="" placeholder="Confirm Password" />
					<br>
					<span id="cpasserr"></span>
				</div>	
				<div class="form-inline">
					<input type="text" name="fname"  class="form-control " style="width:32%;" required="" placeholder="First Name" />
					<input type="text" name="mname" class="form-control" style="margin-left: 2%;width: 32%;" placeholder="Middle Name">
					<input type="text" name="lname" class="form-control" style="margin-left: 2%;width: 32%;" placeholder="Last Name">
				</div>
				<div class="form-group">
					<input type="email" name="emailid" class="form-control" style="margin-top: 2%;" required="" placeholder="Email ID"
					pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}" title="Email is in Not valid form" id="semail">
					<br>
					<span id="emailmsg" ></span>
					 <small  class="form-text">We'll never share your email with anyone else.</small>
				</div>
				<div class="form-group">
					<input type="tel" name="contactno" class="form-control"  required="" placeholder="Contact Number" pattern="^[789]\d{9}$" title="Contact Number is invalid">
				</div>
				<div class="form-group">
					<textarea  name="address" id="textrem" placeholder="Address" class="form-control noresize" style="margin-top:2%;"></textarea>
					<h6 id="count_message" style="text-align: right;" ></h6>
				</div>
				<div class="form-group">
					<label for="dob">Date Of Birth</label>
					<input type="date" name="dob" class="form-control"></textarea>
				</div>
				<div class="form-group">
					<select name="question" class="form-control" required="">
						<option value="">Security Question</option>
						<option value="What is Your Pet Name">What is Your Pet Name</option>
						<option value="What is Your Car Numbers">What is Your Car Number</option>
						<option value="What is the first name of your best friend in high school">What is the first name of your best friend in high school?</option>
					</select>
				</div>
				<div class="form-group">
					<input type="text" name="answer" class="form-control" placeholder="Answer">
				</div>
				<div class="form-group">
					<label for="pp">Profile Picture</label>
					<input type="file" name="uploadimage"  class="form-control">
				</div>

				<div style="width: 100%;border-bottom: 04px dotted black;">
		</div>
		<br>
				
				<div id='abcwata'>
					<legend style="text-align: center;">Faculty Detail</legend>
					<div class="form-inline">
						<input type="text" name="des" placeholder="Designation"  style="width: 45%;" class="form-control">
						<?php
						require_once 'OOPHP/Course/Course.php';
						$res = $Course->DeptNM();
							if($res)
							{
								echo "<select name='dep' style='width: 45%;margin-left: 10%;' class='form-control'>";
								echo "<option>Select Department</option>";
								while($r = mysqli_fetch_assoc($res)){
									echo "<option value= ". $r['dept_name'] .">".$r['dept_name']."</option>";
								}
								echo "</select>"."<br>";

							}
						?>

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
				</div>
				<br>

					<input type="submit" id="submit" class="btn btn-primary" value="Register">
					<div id="regmsg"></div>
					<br>
			</fieldset>
		</form>
	</div>
	<script type="text/javascript">
		
		function passwordChanged() {
			var strength = document.getElementById('strength');
			var strongRegex = new RegExp("^(?=.{8,})(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])(?=.*\\W).*$", "g");
			var mediumRegex = new RegExp("^(?=.{7,})(((?=.*[A-Z])(?=.*[a-z]))|((?=.*[A-Z])(?=.*[0-9]))|((?=.*[a-z])(?=.*[0-9]))).*$", "g");
			var enoughRegex = new RegExp("(?=.{6,}).*", "g");
			var pwd = document.getElementById("pass");
			if (pwd.value.length==0) {
				strength.innerHTML = 'Type Password';
			} 
			else if (false == enoughRegex.test(pwd.value)) {
				strength.innerHTML = 'More Characters';
			} 
			else if (strongRegex.test(pwd.value)) {
				strength.innerHTML = '<span style="color:green">Strong!</span>';
			} 
			else if (mediumRegex.test(pwd.value)) {
				strength.innerHTML = '<span style="color:orange">Medium!</span>';
			} 
			else {
			strength.innerHTML = '<span style="color:red">Weak!</span>';
			}
		}
	</script>
</body>
</html>
