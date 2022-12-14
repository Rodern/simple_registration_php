<?php
$server = "localhost";
$user = "root";
$password = "";

//connecting to the database
$connection = new mysqli($server, $user, $password);
$connection->select_db("sr_data");


//Checking if a post request has been made to the file
if(isset($_POST['save_data'])) {
    $name = $_POST['name']; //from form with name name
    $pass = $_POST['password']; //from form with name password
    $sql = "INSERT INTO data (name, password) VALUE('$name', '$pass')"; 
    $connection->query($sql);
    $id = $connection->insert_id;
}

//displaying data from the database
$result = $connection->query("select * from data");
while ($row = $result->fetch_assoc()) {
    echo 'data_id: '.$row["data_id"] . ' - Name: ' . $row["name"] . ' Password: ' . $row["password"] . '<br>';
}

?>