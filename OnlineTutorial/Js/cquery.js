$(document).ready(function() {
	var delay = 2000;
	$('.btn-default').click(function(e){
		e.preventDefault();
		var name = $('#Uname').val();
        if(name == ''){
			$('.message_box').html(
			'<span style="color:red;">Enter Your Name!</span>'
			);
			$('#Uname').focus();
            return false;
			}

		var Contact = $('#Ucontact').val();
        if(Contact == ''){
			$('.message_box').html(
			'<span style="color:red;">Enter Your contact!</span>'
			);
			$('#Ucontact').focus();
            return false;
			}
		
		var email = $('#UEmail').val();
        if(email == ''){
			$('.message_box').html(
			'<span style="color:red;">Enter Email Address!</span>'
			);
			$('#UEmail').focus();
            return false;
			}
		
		var subject = $('#USubj').val();
        if(subject == ''){
			$('.message_box').html(
			'<span style="color:red;">Enter Your Subject!</span>'
			);
			$('#USubj').focus();
            return false;
			}
			
		var message = $('#textrem').val();
        if(message == ''){
			$('.message_box').html(
			'<span style="color:red;">Enter Your Message Here!</span>'
			);
			$('#textrem').focus();
            return false;
			}	
					
			$.ajax
			({
             type: "POST",
			 url: "OOPHP/ContactQuery/CQuery.php",
             data: "Uname="+name+"&Ucontact="+Contact+"&UEmail="+email+"&USubj="+subject+"&textrem="+message,
			 beforeSend: function() {
			 $('.message_box').html(
			 '<img src="Images/Contact/Loader.gif" style="width:30px;height:30px;"/>'
			 );
			 },		 
             success: function(data)
			 {
				 setTimeout(function() {
                    $('.message_box').html(data);
                }, delay);

				setTimeout(function() { 
					$('.message_box').fadeOut(); 
				 }, 5000); 	
             }
			});
	});
			
});
