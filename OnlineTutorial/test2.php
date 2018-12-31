<html>
<head>
   <title>Sample - CKEditor</title>
   <script src="ckeditor/ckeditor.js"></script>
   <style type="text/css">
      
   #textarea {
    -moz-appearance: textfield-multiline;
    -webkit-appearance: textarea;
    border: 1px solid gray;
   
}
   </style>
</head>
<body>
   <form method="post">
         <textarea class="ckeditor" name="editor"> </textarea>
         <input type="submit" name="submit" />
      </p>
   </form>
   <?php
   $dbhost='localhost';
      $dbuser='root';
      $dbpass='';
      $dbname='OnlineTutorial';
      $connection = mysqli_connect($dbhost, $dbuser, $dbpass, $dbname);
      if(isset($_POST['submit']))
      {
         $tex=$_POST['editor'];
      
      $sql=mysqli_query($connection,"INSERT INTO dummy (Name) VALUES ('$tex')");
      if ($sql) {
         echo "true";

      }
      else{
         echo "false";
      }
   }
   ?>

</body>
</html>