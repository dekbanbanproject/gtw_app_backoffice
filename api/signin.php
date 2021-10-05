<?php
    include('conn.php');
    header("Access-Control-Allow-Origin: *");

    if (!$conn) {
        echo "Error: Unable to connect to MySQL." . PHP_EOL;
        echo "Debugging errno: " . mysqli_connect_errno() . PHP_EOL;
        echo "Debugging error: " . mysqli_connect_error() . PHP_EOL;		
        exit;
    }
    if (!$conn->set_charset("utf8")) {
        printf("Error loading character set utf8: %s\n", $conn->error);
        exit();
    }
            $User = $_GET['username'];		
            $Password = $_GET['password'];
					
            $query = "SELECT * FROM users WHERE username = '$User'";
            $result = mysqli_query($conn, $query);
            $num = mysqli_num_rows($result);
            if ($num == 1){
                while ($row = mysqli_fetch_assoc($result)){
                    if (password_verify($Password,$row['password'])) {		
                        $output[] = $row;				
                    }
                    else{
                        echo "error";
                    }	
                }			
                echo json_encode($output);
            }	