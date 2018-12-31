$(document).ready(function(){
	$("#sign").submit(function(event){
		event.preventDefault(); 
		$.ajax({
			type: "POST",
			url: "OOPHP/Register/Reg-InsertFC.php",
			data: new FormData(this),
			 contentType: false,
			 cache: false,
			 processData:false,
			success: function(result){
				if(result=="false")
				{
					$('#regmsg').html('<div class="alert alert-danger">Register was not successful</div>').fadeIn().delay(1000).fadeOut();
				}
				else
				{
					$('#regmsg').html('<div class="alert alert-success">Registered successfully</div>').fadeIn().delay(1000).fadeOut();
					
				}
			}
			});
		return false;
	});
});