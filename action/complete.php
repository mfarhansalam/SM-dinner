<?php 

require_once 'db_connect.php';

?>
<!DOCTYPE html>
	<head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Accompany </title>
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/11.4.24/sweetalert2.all.js"></script>

        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Varela+Round" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="../css/styles.css" rel="stylesheet" />
        <link href="css/newstyles.css" rel="stylesheet" />

		<style>
			body {
			background-image: url('../assets/img/bg-annualdinner.png');
			background-repeat: no-repeat;
			background-attachment: fixed;
			background-size: cover;
			}
		</style>

    </head>

	<body>
		<?php
			if($_GET) {
				$id=$_GET['id'];
				$accompany=$_GET['accompany'];
			
				
			
				$sql  = "UPDATE users SET accompany = '$accompany' WHERE id = '$id'";
				if($connect->query($sql) === TRUE) {
					echo "
                           <script>
                           Swal.fire({
                            icon: 'success',
                            title: 'Thank You !',
                            text: 'may you have a glarious night'
                        });
                            
                            </script> 
                        "; 
                        echo "<script>
                        setTimeout(function () {
                    window.location.href = '../Finish.php'; }, 1500);
                    </script>";
				   
				} 
				else {
					echo "Erorr while updating record : ". $connect->error;
				}
			
			
			}

		?>

	</body>



</html>