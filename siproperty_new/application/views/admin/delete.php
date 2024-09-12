<?php 
require ('conn.php');
$sql="DELETE FROM `home_carosel` WHERE id='".$_GET['id']."'";
if(mysqli_query($con,$sql)){
    echo 'Deleted successfully';


}
else{
    echo "error in deleting the row! please try agaain later.Thank you.";
}
?>