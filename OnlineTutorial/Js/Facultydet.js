$(document).ready(function(){
	$("#sign").submit(function(event){
		event.preventDefault(); 
		$.ajax({
			type: "POST",
			url: "OOPHP/Faculty/FCupass.php",
			data: new FormData(this),
			 contentType: false,
			 cache: false,
			 processData:false,
			});
		return false;
	});
});

$(document).ready(function(){
	$("#sign1").submit(function(event){
		event.preventDefault(); 
		$.ajax({
			type: "POST",
			url: "OOPHP/Faculty/FCins.php",
			data: new FormData(this),
			 contentType: false,
			 cache: false,
			 processData:false,
			success: function(result){
				if(result=="false")
				{
					$('#regmsg').html('<div class="alert alert-danger">Something went wrong</div>').fadeIn().delay(1000).fadeOut();
				}
				else
				{
					$('#regmsg').html('<div class="alert alert-info"><a href="FacultyDash.php">Successfully Registered!!!Click here to be redirected to login page</a></div>');
					
				}
			}
			});
		return false;
	});
});