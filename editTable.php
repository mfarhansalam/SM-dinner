<?php
include "action/db_connect.php";

// $sql="SELECT * FROM users ORDER BY name";
// $totalusers = mysqli_query($connect, $sql);

if($_GET) {
    $id=$_GET['id'];

    $sql="SELECT * FROM users WHERE id = '$id'";
    $result = $connect->query($sql);
    $data = $result-> fetch_assoc();
}
?>

<!DOCTYPE html>
<html lang="en">
<?php

?>
<form action="action/changeTable.php" method="get">
<input type = "hidden" name="id" value="<?php echo $data['id'] ?>">
<input  type="text" name="name" value="<?php echo $data['name'] ?>"/> 
<input  type="number" name="tableNo" value="<?php echo $data['tableNo'] ?>"/> 

<button type="submit" value="submit">Edit</button>
<form>
</html>