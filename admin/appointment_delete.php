<?php include('../data_con/database.php'); 
    //get admin id
    $appointment_id = $_GET['appointment_id'];
    //delete data from table
    $sql = "DELETE FROM patient_appointment WHERE appointment_id=$appointment_id";

    $res = mysqli_query($con, $sql);

    if($res==TRUE){
        //echo "Admin deleted";
        $_SESSION['delete'] = "<div class='success'>Deleted successfully.</div>";
        //reirect control page
        //header("location:".SITEURL.'admin/admin-control.php');
        header("location:".SITEURL.'admin/appointment.php');
    }
    else{
        //echo "Failed to delete admin";
        $_SESSION['delete'] = "<div class='error'>Failed to delete.</div>";
        //reirect control page
        //header("location:".SITEURL.'admin/admin-control.php');
        header("location:".SITEURL.'admin/appointment.php');
    }
?>