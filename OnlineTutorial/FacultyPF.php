<?php
session_start();
if (isset($_SESSION['username'])) {
	require_once 'OOPHP/Profile/profile.php';
	$name=$_SESSION['username'];
	$res = $profile->pfselect($name);
	$res1 = $profile->pfselect1($name);
	if($res)
	{
		while ($row=mysqli_fetch_array($res)) {
			$Fname=$row['Fname'];
			$Mname=$row['Mname'];
			$Lname=$row['Lname'];
			$phno=$row['ContactNo'];
			$ad=$row['Address'];
			$dob=$row['DOB'];
		
?>
<!DOCTYPE html>
<html>
<head>
	<title>
		Profile
	</title>
	<link rel="stylesheet" type="text/css" href="Css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="Css/slide2.css">
	<style type="text/css">
	img{
		width: 200px;
		height: 200px;
	}

	.form-inline#abc .form-control{
		border-right: 1;
		border-left: 1;
		border-top: 1;
		border-bottom:3; 
	}

	.form-inline#abcd .form-control{
		border-right: 0;
		border-left: 0;
		border-top: 0;
	}
	.container{
	top: 1em;
	position: relative;
	background-color: white;
	box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
	margin-bottom:20pt;

	}

	
	input[type='text']:read-only { 
    	background-color: white;
	}

	p#imgabc{
		font-size: 100pt; 
		margin-top: 50pt; 
		margin-left: 28px;
		border-radius: 50%;
		height: 100px;
		width: 200px;
	}	

	</style>
</head>
<body>
	<div class="container">
		<div class="profile" style="border: 0px;margin-left: 0px;width: 90%">
			<?php 
				$alph=$row['Image'];
				$len=strlen($alph);
				if($len>1)
				{
					echo "<div class='inp1' style='margin-left: 0px'>";
					echo "<img src=".$alph." alt=".$alph.">";
					echo "</div>";
				}
				else{
					$fir=substr($name,0,1);
					$fir=strtoupper($fir);
					echo "<div class='inp1' style='margin-left: 0px;border:1px solid black;margin-top:10px;border-radius:50%;width:150px;'>";
					?>

				<p id='imgabc' style=""><?php echo"$fir";?></p>	
				<?php
				echo "</div>";
				}
				?>
			<div class="inp2" style="margin-top: 30px;margin-left: 140px;font-size: 13pt;">
				<span ><b>Username:</b><input type="text" class="form-control " style="width:120%;outline: 0;border-width: 0 0 3px;" value="<?php echo"".$row['Username']."";?>" readonly />
				<b>Password:</b>
				<span><input type="text" class="form-control  " style="width:120%;outline: 0;border-width: 0 0 3px;" value="<?php echo"".$row['Password']."";?>" readonly />
				</span>
			</div> 
		</div>

		<label><b>First name</b></label><label style="margin-left: 27%;"><b>Middle Name</b></label><label style="margin-left:25%;"><b>Last Name</b></label>
		<div class="form-inline" id=abc>
			<input type="text"   class="form-control " style="width:32%;" value="<?php echo"".$row['Fname']."";?>" readonly />
			<input type="text"  class="form-control" style="width: 32%;margin-left: 2%;" value="<?php echo"".$row['Mname']."";?>" readonly>
			<input type="text"  class="form-control" style="width: 32%;margin-left: 2%;" value="<?php echo"".$row['Lname']."";?>" readonly>
		</div>
		<br>
		<label><b>Email ID</b></label><label style="margin-left: 50%;"><b>Contact No</b></label>
		<div class="form-inline" id=abcd>
			<input type="text"   class="form-control " style="width:40%;" value="<?php echo"".$row['EmailID']."";?>" readonly />
			<input type="text"  class="form-control" style="margin-left:15%;width: 45%;" value="<?php echo"".$row['ContactNo']."";?>" readonly>
		</div>
		<br>
		<div class="form-group" id=abcd>
		<label><b>Address</b></label>
			<textarea   class="form-control noresize" style="margin-top:1%;margin-left: 0px;background-color: white;" placeholder="<?php echo"".$row['Address']."";?>" readonly></textarea>
		</div>
		<label><b>Date Of Birth</b></label><label style="margin-left: 47%;"><b>Age </b></label>
		<div class="form-inline" id=abcd>
			<input type="text"   class="form-control " style="width:40%;" value="<?php echo"".$row['DOB']."";?>" readonly />
			<input type="text"  class="form-control" style="margin-left:15%;width: 45%;" value="<?php echo"".$row['Age']."";?>" readonly>
		</div>
		<br>


		<?php
		}
		while ($row=mysqli_fetch_array($res1)) {
			$Designation=$row['Designation'];
			$Qualification=$row['Qualification'];
			$Specialization=$row['Specialization'];
			$Experience=$row['Experience'];
			$dept_id=$row['dept_id'];
		}
		$res2 = $profile->pfselect2($dept_id);
		while ($row=mysqli_fetch_array($res2)) {
			$Department=$row['dept_name'];
		}
		?>

		<div style="width: 100%;border-bottom: 04px dotted black;">
		</div>
		<br>
		<label><b>Designation</b></label><label style="margin-left: 27%;"><b>Qualification</b></label><label style="margin-left:25%;"><b>Specialization</b></label>
		<div class="form-inline" id=abc>
			<input type="text"   class="form-control " style="width:32%;" value="<?php echo $Designation;?>" readonly />
			<input type="text"  class="form-control" style="width: 32%;margin-left: 2%;" value="<?php echo $Qualification;?>" readonly>
			<input type="text"  class="form-control" style="width: 32%;margin-left: 2%;" value="<?php echo $Specialization;?>" readonly>
		</div>
		<br>
		<label><b>Experience</b></label><label style="margin-left: 50%;"><b>Department</b></label>
		<div class="form-inline" >
			<input type="text"   class="form-control " style="width:40%;" value="<?php echo $Experience;?>" readonly />
			<input type="text"  class="form-control" style="margin-left:15%;width: 45%;" value="<?php echo $Department;?>" readonly>
		</div>
	<?php
		
		}	
	}  
	?>
	<br>
	</div>
</body>
</html>