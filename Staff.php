<?php    

include "action/db_connect.php";
$id=$_GET['id'];
$sql="SELECT * FROM users WHERE company = 1 AND dept = $id";
$sql2= "SELECT * FROM users WHERE company = 1 AND dept = $id AND attend_status = 'Yes' ";
$sql3= "SELECT * FROM users WHERE company = 1 AND dept = $id AND attend_status = 'No' ";

$result = mysqli_query($connect, $sql);
$attend = mysqli_query($connect, $sql2);
$absent = mysqli_query($connect, $sql3);




?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Staff </title>
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
            
            <div style="padding-top: 3cm; padding-left: 1cm; ">
                <h2 style="text-align: center;">Who are you? <h2>

                    <div class="row g-4" style="padding-top: 2cm">

                        <!-- start loop disini -->
                        <?php
                              if($result->num_rows > 0 ) {
                                if($id == $id){
                                  while($row = $result->fetch_assoc()) { 
                        ?> 
                            <div class="col-md-4 col-lg-4 " >
                                <div class="box">

                                    <?php 
                                        if($row1 = $attend->fetch_assoc()){
                                            echo '
                                            <a>
                                            <h1 class="title" style="padding-top:10px;  opacity: 0.2;">Table '.$row1['tableNo'].'</h1>
                                            <img src="data:image/jpg;base64,'.base64_encode($row1['picture']).'"  style="border: 5px solid green; border-radius: 50%; width: 150px; height: 150px; opacity: 0.2;"  > 
                                            
                                            </a>
                                            <h5 class="title" style="padding-top:10px;  opacity: 0.2;">'.$row1['name'].'</h5>
                                            <h6 class="title" style="opacity: 0.2;">'.$row1['roles'].'</h6>
                                            
                                            '; 
                                        }
                                        else if($row2 = $absent->fetch_assoc()){
                                            echo '

                                            <a href="  action/Accompany.php?id='.$row2['id'].'   " >
                                            <h1>Table '.$row2['tableNo'].'</h1>
                                            <img src="data:image/jpg;base64,'.base64_encode($row2['picture']).'"  style="border:0.5px solid black; border-radius: 50%; width: 150px; height: 150px;" > 
                                            </a>
                                            <h5 class="title" style="padding-top:10px">'.$row2['name'].'</h5>
                                            <h6 class="title">'.$row2['roles'].'</h6>
                                            '; 
                                        }
                                        
                                    ?>
                                  
          
                                </div>
                            </div>  
                        <?php                           
                                    } 
                                } 
                            } 
                        ?>                          
                          

                    </div>
                    
            </div>
        </div>
    </body>
</html>
