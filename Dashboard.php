<?php   

include "action/db_connect.php";

$sql="SELECT * FROM users ORDER BY name";
$totalusers = mysqli_query($connect, $sql);

$sql2="SELECT * FROM users WHERE attend_status = 'Yes' ORDER BY name";
$totalattend = mysqli_query($connect, $sql2);

$sql3="SELECT * FROM users WHERE attend_status = 'No' ORDER BY name";
$totalabsent = mysqli_query($connect, $sql3);
// echo $tUsername;


?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Company </title>
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Varela+Round" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
        <link href="css/newstyles.css" rel="stylesheet" />

    </head>
    <body >

        <div class="sidenav" style="padding-left: 20px;padding-right: 20px;padding-top: 60px;">
            <a href="index.php"> <img src="assets/img/Logo-dinner.png" alt="silentmode dinner" > </a>
            
            
        </div>
        
        <div class="main">
            
            <div style="padding-top: 1cm; padding-left: 1cm; padding-right: 1cm ">

            <h1>Total Invitation: <b><?php echo $totalusers->num_rows ?></></h1> <br>
            <h3 >Attended: <b style="color: green;"><?php echo $totalattend->num_rows ?></b> </h3>
            <h3>Not Yet Attend: <b style="color: red;"><?php echo $totalabsent->num_rows ?></b> </h3> <br>


<div class="tab">
  <button class="tablinks" onclick="openCity(event, 'all')">All Audiences</button>
  <button class="tablinks" onclick="openCity(event, 'attend')">Attended</button>
  <button class="tablinks" onclick="openCity(event, 'absent')">Not Yet Attend</button>
</div>
<!-- All users goes here -->
<div id="all" class="tabcontent">
  <table id ="dinner">
  <tr>
    <th>No</th>
    <th>Name</th>
    <th>Table</th>
    <th>Action</th>
  </tr>

   
  <?php 
  $no = 1;
     if($totalusers->num_rows > 0) {
        while($row = $totalusers->fetch_assoc()) {
              echo "
              <tr>
              <td> $no </td>
              <td> $row[name] </td>
             
              <td>
              $row[tableNo]
              </td>
              <td>
              <a href='editTable.php?id=".$row['id']."'>Edit</a>
              </td>

              </tr>
              ";
              $no++;
             
        }
      }
  ?>
</table>
</div>




<!-- Attended users goes here -->
<div id="attend" class="tabcontent">
  <table id ="dinner">
  <tr>
    <th>No</th>
    <th>Name</th>
    <th>Table</th>
    <th>Status</th>
  </tr>

   
  <?php 
  $no = 1;
     if($totalattend->num_rows > 0) {
        while($row = $totalattend->fetch_assoc()) {
              echo "
              <tr>
              <td> $no </td>
              <td> $row[name] </td>
              <td> $row[tableNo] </td>
              <td><a href='action/changeStatus.php?id=".$row['id']."' class='btn btn-outline-warning'>Change Status</a></td>

              </tr>
              ";
              $no++;
        }
      }
      else{
        echo "<td colspan='4'>No one is coming yet</td>";
      }
  ?>
</table>
</div>

<!-- Absent users goes here -->
<div id="absent" class="tabcontent">
  <table id ="dinner">
  <tr>
    <th>No</th>
    <th>Name</th>
    <th>Table</th>
    <th>Status</th>
  </tr>

   
  <?php 
  $no = 1;
     if($totalabsent->num_rows > 0) {
        while($row = $totalabsent->fetch_assoc()) {
              echo "
              <tr>
              <td> $no </td>
              <td> $row[name] </td>
              <td> $row[tableNo] </td>
              <td><a href='action/changeStatus.php?id=".$row['id']."' class='btn btn-outline-warning'>Change Status</a></td>

              </tr>
              ";
              $no++;
        }
      }
      else{
        echo "<td colspan='4'>Congrats! All audiences were attended</td>";
      }
  ?>
</table>
</div>




<script>
function openCity(evt, cityName) {
  var i, tabcontent, tablinks;
  tabcontent = document.getElementsByClassName("tabcontent");
  for (i = 0; i < tabcontent.length; i++) {
    tabcontent[i].style.display = "none";
  }
  tablinks = document.getElementsByClassName("tablinks");
  for (i = 0; i < tablinks.length; i++) {
    tablinks[i].className = tablinks[i].className.replace(" active", "");
  }
  document.getElementById(cityName).style.display = "block";
  evt.currentTarget.className += " active";
}
</script>




                <!-- <a href="Department.html" class="btn btn-outline-warning" role="button">Link Button</a>
                
                <button type="button" class="btn btn-outline-warning" style="  margin-bottom: 10px;">Warning</button> -->
                

            </div>
        </div>
    </body>
    
</html>
