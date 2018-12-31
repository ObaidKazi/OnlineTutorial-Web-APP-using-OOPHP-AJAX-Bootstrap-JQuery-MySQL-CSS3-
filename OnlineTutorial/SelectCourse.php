
<!DOCTYPE html>
<html>
<head>
	<title>Course</title>
	<link rel="stylesheet" type="text/css" href="Css/bootstrap.css">
	<script src="Js/jquery-3.3.1.min.js"></script>
	<link rel="stylesheet" type="text/css" href="Css/bootstrap.css">
	<script src="Js/jquery-3.3.1.min.js"></script>
  	<script src="ckeditor/ckeditor.js"></script>
  	<script src="Js/Cselect.js"></script>
  	<script src="Js/ChooseCO.js"></script>
	<style type="text/css">
		.row{
			margin-top: 50px;
			margin-left: 5%;
		}
	</style>
</head>
<body>
<div class="container-fluid">
	<form method="post" id="sign" action="" enctype="multipart/form-data">
			<fieldset class="col-lg-12 col-md-6 col-sm-6">
	<legend>
		<center>Courses Overview</center>
	</legend>
	<div class="row">
		<?php
	require_once 'OOPHP/Course/Course.php';
	$res = $Course->scourse();
	if($res)
	{
		while ($row=mysqli_fetch_array($res)) {
			$cname=$row['CName'];
			$cout=$row['COutcome'];
			$cdu=$row['CDuration'];
			$cpre=$row['CPrereq'];
?>
  		<div class="col-lg-6 col-sm-6" style="margin-top: 40px;">
		    <div class="card">
		      <div class="card-body">
		      	<div class="button-container">
		        <h5 class="card-title"><b><?php echo"".$cname."";?></b></h5>
		        <p class="card-text"><b>Course Duration</b>:<?php echo"".$cdu."";?></p>
		        <p class="card-text"><b>Course Outcome</b> : <?php echo"".$cout."";?></p>
		        <p class="card-text"><b>Course Pre-Requisitise</b> : <?php echo"".$cpre."";?></p>
		       		 <center><button id='<?php echo $cname ?>' class="btn btn-primary" value="Submit" style='width:300pt;'>Enroll for this course</button></center>
		    	</div>
		      </div>
		    </div>
		  </div>
		  <?php 
		}
	} ?>
	</div>
	
	
</div>
<br>

<div class='security'>

	</div>
	

	
</body>
</html>

<script type="text/javascript">
$("body").on( "click", ".button-container button", function(){
	var details=(this.id);
	var details = confirm("Are you sure you want to take "+details);
    if (details == true) {
       window.location.href = "http://localhost/OnlineTutorial/OOPHP/Course/courseenroll.php?details=" + (this.id) ;
    } else {
        
    }
	
	
	
}); 
</script>