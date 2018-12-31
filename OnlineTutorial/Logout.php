
<?php
session_start();
unset($_SESSION['user']);
session_destroy();
header('Location: http://localhost/OnlineTutorial/login-form.php');
?>