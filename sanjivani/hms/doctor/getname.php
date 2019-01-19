<?php
include('include/config.php');

if(!empty($_POST["patid"])) 
{

 $sql=mysqli_query($con,"select fullname from users where id='".$_POST['patid']."'");
 $row2 = mysqli_fetch_array($sql);


    $value= $row2['fullname'];;
    

 
 	?>
 <option value="<?php echo htmlentities($value); ?>"><?php echo htmlentities($value); ?></option>
  <?php
}

else
{?>
<option value="nodata">no data</option>
 
    <?php
    
}

?>

