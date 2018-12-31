<!DOCTYPE html>
<html>
<head>
	<title></title>
		<link rel="stylesheet" type="text/css" href="Css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="Css/slide2.css">
	<style type="text/css">
	textarea{
	margin-top: 2px;
	margin-left: 0px;
    font-size: 16px;
    resize: none;
    height: 5em;
    }
    textarea:focus{
    transition: height .3s ease-out;	
    height: 9em;
  	}

  	.define{
		display: block;
		margin-left: 10%;
		width: 80%;
		border: 1px solid black;
		box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
		margin-bottom: 30pt;
		margin-top: 30pt;
	}
	</style>
</head>
<body>
	<form class="define">
				<fieldset class="col-lg-12 col-md-6 col-sm-6">
					<center>
						<legend>
							
						</legend>
					</center>
	  				<div class="form-group" >
	    				<input type="text"  name="chap1"  class="form-control" required=""  placeholder="Chapter Name" />
	  				</div>
					<div class="form-group">
						<textarea  name="topic1"  placeholder="Topics" class="form-control noresize" ></textarea>
					</div>
					<div class="form-group">
						<input type="text"  name="wt1"  placeholder="Weightage" maxlength="2" pattern="[0-9]" title="Weightage can only number" class="form-control" />
					</div>




					<label>Optional</label>
					<div class="form-group">
	    				<input type="text"  name="chap2"  class="form-control" required=""  placeholder="Chapter Name" />
	  				</div>
					<div class="form-group">
						<textarea  name="topic2"  placeholder="Topics" class="form-control noresize" ></textarea>
					</div>
					<div class="form-group">
						<input type="text"  name="wt2"  placeholder="Weightage" maxlength="2" pattern="[0-9]" title="Weightage can only number" class="form-control" />
					</div>




					<label>Optional</label>
					<div class="form-group" >
	    				<input type="text"  name="chap3"  class="form-control" required=""  placeholder="Chapter Name" />
	  				</div>
					<div class="form-group">
						<textarea  name="topic3"  placeholder="Topics" class="form-control noresize" ></textarea>
					</div>
					<div class="form-group">
						<input type="text"  name="wt3"  placeholder="Weightage"  maxlength="2" pattern="[0-9]" title="Weightage can only number" class="form-control" />
					</div>




					<label>Optional</label>
					<div class="form-group" >
	    				<input type="text"  name="chap4"  class="form-control" required=""  placeholder="Chapter Name" />
	  				</div>
					<div class="form-group">
						<textarea  name="topic4"  placeholder="Topics" class="form-control noresize" ></textarea>
					</div>
					<div class="form-group">
						<input type="text"  name="wt4"  placeholder="Weightage" maxlength="2"  pattern="[0-9]" title="Weightage can only number"class="form-control" />
					</div>

					<input type="submit1" name="submit1" class=" form-control btn btn-primary" value="Define">
					<div id="regmsg"></div>
					<br>
				</fieldset>
			</form>
</body>
</html>