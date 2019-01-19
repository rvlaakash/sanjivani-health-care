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
    
    
    if ((isset($_POST['name']) && !empty($_POST['name']))
&& (isset($_POST['email']) && !empty($_POST['email']))
&& (isset($_POST['subject']) && !empty($_POST['subject']))){
	$name = $_POST['name'];
	$email = $_POST['email'];
	$no=$_POST["mo"];
	$subject = $_POST['subject'];
	$message = $_POST['message'];
	
	$message ="Contact Me On ".$no."\n".$email."\n".$message ;
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