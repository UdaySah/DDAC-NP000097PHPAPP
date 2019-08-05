<?php
/*Connect using SQL Server authentication.
$serverName = "tcp:servername.database.windows.net,1433";
$connectionOptions = array("Database"=>"DBName",
                           "UID"=>"Username",
                           "PWD" => "Password");
$conn = sqlsrv_connect($serverName, $connectionOptions);
if($conn === false)
{
    die(print_r(sqlsrv_errors(), true));
}
*/


$host = 'localhost';
$username = 'root';
$password = '';
$db_name = 'NP000097-DDAC';

//Establishes the connection of Database
$conn = mysqli_init();
mysqli_real_connect($conn, $host, $username, $password, $db_name);

?>
