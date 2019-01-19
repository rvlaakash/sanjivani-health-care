<?php
define('DB_SERVER','localhost');
define('DB_USER','id8280403_hms');
define('DB_PASS' ,'rvlaakash9am');
define('DB_NAME', 'id8280403_hms');
$con = mysqli_connect(DB_SERVER,DB_USER,DB_PASS,DB_NAME);
// Check connection
if (mysqli_connect_errno())
{
 echo "Failed to connect to MySQL: " . mysqli_connect_error();
}
?>