<?php 
                include "db_connect.php";
                    $id=$_GET['id'];
                
                    $sql = "SELECT * FROM users WHERE id = '$id'";
                    $result = mysqli_query($connect, $sql);
                 

                    

                     if ($result->num_rows > 0){
                        
                        while($row = $result->fetch_assoc()) {
                            if($row['attend_status'] == 'Yes'){
                             $updateToNo  = "UPDATE users SET attend_status = 'No', accompany = NULL WHERE id = ${id}" ;
                             if($connect->query($updateToNo) === TRUE) {
                                echo "<script>
                               
                            window.location.href = '../Dashboard.php';
                            </script>";
                             }
                            }
                            else{
                                $updateToYes  = "UPDATE users SET attend_status = 'Yes' WHERE id = ${id}" ;
                                if($connect->query($updateToYes) === TRUE) {
                                   echo "<script>
                                  
                               window.location.href = '../Dashboard.php';
                               </script>";
                                }
                            }
                        }
                        
    
                    }
                   
                    
                
        
                 
                ?>