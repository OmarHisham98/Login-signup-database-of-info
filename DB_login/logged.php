<?php
$servername = "127.0.0.1";
$username = "root";
$password = "";
$dbname = "university";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

$query = "SELECT * from user where email='".$_POST['email']."' AND password='".$_POST['password']."';";
$result = $conn->query($query);

if (mysqli_num_rows($result)>0) {
     header("Location: https://localhost/DB_LOGIN/departments.php");
  exit();
}
else{
    header("Location: https://localhost/DB_LOGIN/welcome.html");
  exit();
}
  

$conn->close();
?>