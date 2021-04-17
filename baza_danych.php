<?php
$conn = new mysqli("localhost",'root','','mydb');
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

// na serwerze
// $conn = new mysqli("localhost","pitcerni_mydb","ZAQ!2wsx","pitcerni_mydb");
// if ($conn->connect_error) {
//   die("Connection failed: " . $conn->connect_error);
// }
?>
