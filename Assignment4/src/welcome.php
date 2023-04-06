<html>
<body>

<?php
ini_set('display_errors', 1);

$id = $_POST["id"];
$name = $_POST["name"];
$dept = $_POST["dept_name"];
$cred = $_POST["tot_cred"];

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "universitydb";

//Create database connection
$conn = new mysqli($servername, $username, $password, $dbname);

//check connection
if($conn->connect_error){
	die("Connection failed:".$conn->connect_error);
}
else{
	echo "Successfully connected to the database";
}

$sql = "INSERT INTO student VALUES ('$id', '$name', '$dept', '$cred')";
if($conn->query($sql)){
	echo "<br/>"; //new line
	echo "Insertion Successful";
}
else{
	echo "<br/>"; //new line
	echo "Error accessing the database: ".$conn->error;
}
//terminate the connection
$conn->close();
?>

</body>
</html>