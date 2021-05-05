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

$sql = "INSERT INTO user (username, password , email )
VALUES ('".$_POST["username"]."','".$_POST["password"]."','".$_POST["email"]."')";

if ($conn->query($sql) === TRUE) {
  header("Location: https://localhost/DB_LOGIN/welcome.html");
  exit();
} else {
  echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
?>