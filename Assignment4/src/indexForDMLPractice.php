<?php
ini_set('display_errors', 1);
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

// add in the extra physics department is because i don't have physic department in my database for the 2nd sql statement
$sql = "INSERT INTO department values ('English', 'Jennings', 10000.00), ('Journalism', 'Morrill', 1500), ('Physics', 'phys', 1000)";
$sql2 = "INSERT INTO student values ('11111', 'david', 'Physics', 3.5)";
if($conn->query($sql) && $conn->query($sql2)){
	echo "<br/>"; //new line
	echo "Insertion Successful";
}
else{
	echo "<br/>"; //new line
	echo "Error accessing the database: ".$conn->error;
}

//Update: increase the budget of Microbiology department by 5 percent
$sql = "UPDATE department set budget = budget*1.05 where dept_name = 'English'";
if($conn->query($sql) === TRUE){
	echo "<br/>"; //new line
	echo "Update Successful";
}
else{
	echo "<br/>"; //new line
	echo "Error accessing the database: ".$conn->error;
}

$sql = "UPDATE department set building = 'Jennings' where dept_name = 'Journalism'";
if($conn->query($sql) === TRUE){
	echo "<br/>"; //new line
	echo "Update Successful";
}
else{
	echo "<br/>"; //new line
	echo "Error accessing the database: ".$conn->error;
}

$sql = "SELECT * FROM student";
$result = $conn->query($sql);
//number of rows
echo "<br/>Total records: $result->num_rows<br/>";

//Display the rows
if ($result->num_rows>0){
	//output data of each row using loop
	while($row = $result->fetch_assoc()){
		echo "ID: ".$row["ID"]." Name: ".$row["name"]." Department Name: ".$row["dept_name"]. " Total Credits: ". $row["tot_cred"] ."<br>";
	}
}
else{
	echo "0 results";
}

$sql = "SELECT building FROM department WHERE dept_name = 'English'";
$result = $conn->query($sql);
//number of rows
echo "<br/>Total records: $result->num_rows<br/>";

//Display the rows
if ($result->num_rows>0){
	//output data of each row using loop
	while($row = $result->fetch_assoc()){
		echo "Building: " . $row["building"] . "<br>";
	}
}
else{
	echo "0 results";
}
$conn->close();
?>