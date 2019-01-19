<?php
$mysql_hostname = "localhost";
$mysql_user = "id8280403_hms";
$mysql_password = "rvlaakash9am";
$mysql_database = "id8280403_hms";
$bd = mysql_connect($mysql_hostname, $mysql_user, $mysql_password, $mysql_database) or die("Could not connect database");
mysql_select_db($mysql_database, $bd) or die("Could not select database");

?>
