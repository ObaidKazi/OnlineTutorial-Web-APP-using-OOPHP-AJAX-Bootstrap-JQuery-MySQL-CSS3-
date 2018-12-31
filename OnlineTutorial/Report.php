<!DOCTYPE html>
<html>
<head>
	<title>
		Student Report
	</title>
	<link rel="stylesheet" type="text/css" href="Css/Bootstrap.css">
	<script src="Js/jquery.min.js"></script>
  	<script src="Js/popper.min.js"></script>
	<script src="Js/bootstrap.min.js"></script>
</head>
<style type="text/css">
    .progress {
  height: 35px;
}
i{
    padding-left: 90%;
}
.progress{
    margin-top: 10px;
}
.bg{
    margin-top: 10px;
    border: 1px solid black;
}
</style>

</head>
<br>
<body>
	<table class="table table-striped table-dark ">
  <thead>
    <tr class="bg-danger">
      <th scope="col">Roll NO</th>
      <th scope="col">Course ID</th>
      <th scope="col">Year</th>
      <th scope="col">Enroll Time</th>
      <th scope="col">Progress</th>
    </tr>
  </thead>
    <tbody>
<?php
$conn=mysqli_connect("localhost","root","","onlinetutorial");
session_start();
$name=$_SESSION['username'];
$sql="SELECT FID FROM  faculty WHERE Username='$name' ";
$res=mysqli_query($conn,$sql);
while ($row=mysqli_fetch_array($res)) {
	$fid=$row['FID'];
}
$sql="SELECT CID FROM teaches WHERE FID='$fid' ";
$res=mysqli_query($conn,$sql);
while ($row=mysqli_fetch_array($res)) {
	$cid=$row['CID'];
}
$sql1="SELECT * FROM takes WHERE CID='$cid' ";
$res1=mysqli_query($conn,$sql1);
while ($row1=mysqli_fetch_array($res1)) {
?>

    <tr>
      <td><?php echo $rno=$row1['RNO'];?></td>
      <td><?php echo $cid=$row1['CID'];?></td>
      <td><?php echo $year=$row1['Year'];?></td>
      <td><?php echo $enr=$row1['EnrollTime'];?></td>
      <?php $per=$row1['Percentage'];?>
        <?php
      if($per>=0&&$per<=25)
      {
        ?>
      <td>
    	 <div class="progress">
            <div class="progress-bar bg-danger progress-bar-striped progress-bar-animated"   role="progressbar" style="width:<?php echo"".$per."";?>%;"><div><i style="color: black;"><?php echo"".$per."";?>%</i></div>
         	</div>
     	 </div>
     </td>
     <?php
    }
     else if($per>25&&$per<=50){
      ?>
      <td>
       <div class="progress">
            <div class="progress-bar bg-warning progress-bar-striped progress-bar-animated"   role="progressbar" style="width:<?php echo"".$per."";?>%;"><div><i style="color: black;"><?php echo"".$per."";?>%</i></div>
          </div>
       </div>
     </td>
     <?php
   }
     else if($per>50&&$per<=75){
      ?>
      <td>
       <div class="progress">
            <div class="progress-bar  progress-bar-striped progress-bar-animated"   role="progressbar" style="width:<?php echo"".$per."";?>%;"><div><i style="color: black;"><?php echo"".$per."";?>%</i></div>
          </div>
       </div>
     </td>
     <?php
   }
   else {
    ?>
      <td>
       <div class="progress">
            <div class="progress-bar bg-success progress-bar-striped progress-bar-animated"   role="progressbar" style="width:<?php echo"".$per."";?>%;"><div><i style="color: black;"><?php echo"".$per."";?>%</i></div>
          </div>
       </div>
     </td>
   <?php
  }
     ?>


     <?php
}
?>   
  </tbody>
</table>

</body>
</html>