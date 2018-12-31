<!DOCTYPE html>
<html>
<head>
	<title>Reset</title>
	<link rel="stylesheet" type="text/css" href="Css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="Css/glyphicon.css">
	<script src="Js/jquery-3.3.1.min.js"></script>
	<style type="text/css">	
	.container{
	top: 2em;
	position: relative;
	box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
	width: 100%;

	}
	</style>
</head>
<body>
	<div class="container">
		<form>
			<br>
			<div class="form-inline">
				<input type="text" name="search" id="textsearch" placeholder="Search..." class="form-control" style="width: 80%;">
				<button type="button" class="btn btn-primary" id="search" style="margin-left: 30px;width: 15%;">
          		<span class="glyphicon glyphicon-search"></span> Search
        		</button>
			</div>	
			<br>
			<div id="result" style="display:none;">
				
			</div>
		</form>
		<br>
	</div>
</body>

<script>
$(document).ready(function(){

 load_data();

 function load_data(query)
 {
  $.ajax({
   url:"FetchFC.php",
   method:"POST",
   data:{name:query},
   success:function(data)
   {
    $('#result').html(data);
   }
  });
 }
 $('#search').click(function(){
  var search = $("#textsearch").val();
  $('#result').show();
  if(search != '')
  {
   load_data(search);
  }
  else
  {
   load_data();
  }
 });
});
</script>
</html>