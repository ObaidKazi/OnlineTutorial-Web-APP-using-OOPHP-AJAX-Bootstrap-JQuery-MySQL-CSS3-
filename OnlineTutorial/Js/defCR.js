$(document).ready(function(){
	$("#define").submit(function(event){
		event.preventDefault(); 
		$.ajax({
			type: "POST",
			url: "OOPHP/Course/CourseSchema.php",
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
					$('#regmsg').html('<div class="alert alert-success">Schema of course created successfully</div>').fadeIn().delay(1000).fadeOut();
					
				}
			}
			});
		return false;
	});
	$("#define")[0].reset();
});