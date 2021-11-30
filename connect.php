<?php
    $dbhost = "localhost";
    $dbuser = "root";
    $dbpass = "";
    $dbname = "ass";
    $conn=mysqli_connect($dbhost, $dbuser, $dbpass, $dbname);
    if($conn){
        mysqli_query($conn,"SET NAME 'utf8'");
        //echo "Ban da ket noi thanh cong!";
    }
    else{
        echo "Ban da ket noi that bai!";
    }

    if(isset($_GET['delete'])){
        $ID = $_GET['delete'];
        $conn->query("DELETE FROM nhanvienbanhang WHERE ID=$ID");
        header("Location: index.php");
    }
?>

