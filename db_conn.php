<?php 

$sName = "localhost";
$uName = "id22314719_projetphpettoh";
$pass = "pass#Word1234";
$db_name = "id22314719_dbdatabase";

try {
    $conn = new PDO("mysql:host=$sName;dbname=$db_name", 
                    $uName, $pass);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
}catch(PDOException $e){
  echo "Connection failed : ". $e->getMessage();
}