<?php    

include "action/db_connect.php";

$sql="SELECT * FROM department";
$sql2="SELECT * FROM users WHERE company = 2 ";
$sql3="SELECT * FROM users WHERE company = 3";
$sql4= "SELECT * FROM users WHERE attend_status = 'Yes' AND company = 2 ";
$sql5= "SELECT * FROM users WHERE attend_status = 'No' AND company = 2 ";

$sql6= "SELECT * FROM users WHERE attend_status = 'Yes' AND company = 3 ";
$sql7= "SELECT * FROM users WHERE attend_status = 'No' AND company = 3 ";




$result3 = mysqli_query($connect, $sql3);
$result2 = mysqli_query($connect, $sql2);
$result = mysqli_query($connect, $sql);
$attendVIP = mysqli_query($connect, $sql4);
$absentVIP = mysqli_query($connect, $sql5);
$attendTERATO = mysqli_query($connect, $sql6);
$absentTERATO = mysqli_query($connect, $sql7);

$comp_name=$_GET['comp_name'];

// echo $tUsername;

?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Department </title>
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
                <img src="assets/img/Logo-dinner.png" alt="silentmode dinner" >
                <div style="padding-top: 180%; padding-left: 40%;">
            <a onclick="history.back()" class="previous round">&#8249;</a>
        </div>
        </div>
        
        <div class="main">
            
            <div style="padding-top: 5cm; padding-left: 1cm; ">
               
                
                <!-- loop sini -->
                <?php
                if($result->num_rows > 0 ) {
                    if($comp_name == 'Silentmode'){
                ?>
                <h2 style="text-align: center;">Which Department are you from? </h2>
                <?php
                    while($row = $result->fetch_assoc()) {
                          echo "
                            
                          <a href='Staff.php?id=".$row['id']."' class='btn btn-outline-warning' role='button' style=' margin-bottom: 10px;'>".$row['dept_name']."</a>
        
                              ";
                        }
                    }
                }    
                
                ?>


                <?php
                if($comp_name == "VIP"){
                ?>
                  <h2 style="text-align: center;">Who are you? </h2>  
                  <div class="row g-4" style="padding-top: 2cm">
                <?php

                    while($row3 = $result2->fetch_assoc()) {
                        ?>
                        <div class="col-md-4 col-lg-4 ">
                            <div class="box">

                            <?php 
                                        if($row = $attendVIP->fetch_assoc()){
                                            echo '
                                            <a>
                                            <h1 class="title" style="padding-top:10px;  opacity: 0.2;">Table '.$row['tableNo'].'</h1>
                                            <img src="data:image/jpg;base64,'.base64_encode($row['picture']).'"  style="border: 5px solid green; border-radius: 50%; width: 150px; height: 150px; opacity: 0.2;"  > 
                                            
                                            </a>
                                            <h5 class="title" style="padding-top:10px;  opacity: 0.2;">'.$row['name'].'</h5>
                                            <h6 class="title" style="opacity: 0.2;">'.$row['roles'].'</h6>
                                            
                                            '; 
                                        }
                                        else if($row = $absentVIP->fetch_assoc()){
                                            echo '

                                            <a href="  action/Nonaccompany.php?id='.$row['id'].'   " >
                                            <h1>Table '.$row['tableNo'].'</h1>
                                            <img src="data:image/jpg;base64,'.base64_encode($row['picture']).'"  style="border:0.5px solid black; border-radius: 50%; width: 150px; height: 150px;" > 
                                            </a>
                                            <h5 class="title" style="padding-top:10px">'.$row['name'].'</h5>
                                            <h6 class="title">'.$row['roles'].'</h6>
                                            '; 
                                        }
                                        
                                    ?>

                            </div>
                                    

                        </div>
                       
                        <?php
                        
                  }
                  
                }
                
                if($comp_name == "TERATO_SENTINEL"){
                ?>
                  <h2 style="text-align: center;">Who are you? </h2>  
                  <div class="row g-4" style="padding-top: 2cm">
                <?php
                    while($row1 = $result3->fetch_assoc()) {
                        ?>
                        <div class="col-md-4 col-lg-4 ">
                            <div class="box">

                            <?php 
                                        if($row = $attendTERATO->fetch_assoc()){
                                            echo '
                                            <a>
                                            <h1 class="title" style="padding-top:10px;  opacity: 0.2;">Table '.$row['tableNo'].'</h1>
                                            <img src="data:image/jpg;base64,'.base64_encode($row['picture']).'"  style="border: 5px solid green; border-radius: 50%; width: 150px; height: 150px; opacity: 0.2;"  > 
                                            
                                            </a>
                                            <h5 class="title" style="padding-top:10px;  opacity: 0.2;">'.$row['name'].'</h5>
                                            <h6 class="title" style="opacity: 0.2;">'.$row['roles'].'</h6>
                                            
                                            '; 
                                        }
                                        else if($row = $absentTERATO->fetch_assoc()){
                                            echo '

                                            <a href="  action/Nonaccompany.php?id='.$row['id'].'   " >
                                            <h1>Table '.$row['tableNo'].'</h1>
                                            <img src="data:image/jpg;base64,'.base64_encode($row['picture']).'"  style="border:0.5px solid black; border-radius: 50%; width: 150px; height: 150px;" > 
                                            </a>
                                            <h5 class="title" style="padding-top:10px">'.$row['name'].'</h5>
                                            <h6 class="title">'.$row['roles'].'</h6>
                                            '; 
                                        }
                                        
                                        
                                    ?>

                            </div>
                                    

                        </div>
                       
                        <?php
                        
                  }
                }

                ?>



                

            </div>
        </div>
    </body>
</html>
