<?php 
 include "db_connect.php";
if($_GET){
               
                    $id=$_GET['id'];
                    $name=$_GET['name'];
                    $tableNo=$_GET['tableNo'];
                
                    $updateTable  = "UPDATE users SET name = '$name', tableNo = '$tableNo' WHERE id = '$id'" ;
                    // $result = mysqli_query($connect, $updateTable);
                 
                    if($connect->query($updateTable) === TRUE) {
                       
                        
                        echo"
                        <script>
                       
                    window.location.href = '../Dashboard.php';
                    </script>";
                     }
                    

                   
                    
                
        
                    }
                ?>
                