$(document).ready(function(){
	$("#FcPF").on("click",function(){
		$("#content").load("FacultyPF.php");
	});
});

$(document).ready(function(){
	$("#FcCR").on("click",function(){
		$("#content").load("FCCRCO.php");
	});
});

$(document).ready(function(){
	$("#FcCNT").on("click",function(){
		$("#content").load("FCCRCNT.php");
	});
});

$(document).ready(function(){
	$("#report").on("click",function(){
		$("#content").load("Report.php");
	});
});


			