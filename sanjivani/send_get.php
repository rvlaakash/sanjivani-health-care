<?php
$servername = "localhost";
$username = "id8280403_hms";
$password = "rvlaakash9am";
$database = "id8280403_hms";

try {
    $conn = new PDO("mysql:host=$servername;dbname=$database", $username, $password);
    // set the PDO error mode to exception
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
   // echo "Connected successfully"; 
    
    
    if ((isset($_GET['name']) && !empty($_GET['name']))
&& (isset($_GET['email']) && !empty($_GET['email']))
&& (isset($_GET['subject']) && !empty($_GET['subject']))){
	$name = $_GET['name'];
	$email = $_GET['email'];

	$subject = $_GET['subject'];
	$message = $_GET['message'];
	
	$to = "rvlaakash@gmail.com";
	$headers = "From : " . $email;

$sql = "INSERT INTO contact (name, email, subject,message) VALUES (?,?,?,?)";

$conn->prepare($sql)->execute([$name, $email, $subject , $message]);

	if( mail($to, $subject, $message, $headers)){
		echo "E-Mail Sent successfully, I will get back to you soon.";
	}
}
    
    
   $conn = null;
    } catch(PDOException $e) {    
    //echo "Connection failed: " . $e->getMessage();
    echo "Now system in Down . <br/> Submit after Some time ";
    }

?>