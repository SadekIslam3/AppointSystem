<?php include('includes/header.php'); ?>

    <div class="manage">
        <div class = "wrapper">
            <h1>Doctor Dashboard</h1>
            <br>
            <br>
            <?php 
                    if(isset($_SESSION['login']))
                    {
                        echo $_SESSION['login'];
                        unset($_SESSION['login']);
                    }
                ?>


                <div class="colo-4 text-center">

                <?php
                        if(isset($_SESSION['email_name']))
                        {
                            $email_name=$_SESSION['email_name'];
                            $get_pro="select * from doctors where email_name='$email_name'";
                            $res = mysqli_query($con,$get_pro);
                            $count= mysqli_num_rows($res);
                            if($count>0){
                                while($row=mysqli_fetch_assoc($res)){
                                    $doctor_id=$row['doctor_id'];
                                
                                
                                $get_pro1="select * from patient_appointment where doctor_id='$doctor_id'";
                                $res1 = mysqli_query($con,$get_pro1);
                                $count1= mysqli_num_rows($res);
                                
                                 }
                            }
                        }

                ?>

                <h1><?php echo $count1; ?></h1>
                <br/>
                <h2>Number of All Appointment</h2>
                </div>

                <div class="colo-4 text-center">

                <?php
                        if(isset($_SESSION['email_name']))
                        {
                            $email_name=$_SESSION['email_name'];
                            $get_pro2="select * from doctors where email_name='$email_name'";
                            $res3 = mysqli_query($con,$get_pro2);
                            $count3= mysqli_num_rows($res3);
                            if($count3>0){
                                while($row=mysqli_fetch_assoc($res)){
                                    $doctor_id=$row['doctor_id'];
                                
                                
                                $get_pro3="select * from appointment_store where doctor_id='$doctor_id'";
                                $res4 = mysqli_query($con,$get_pro3);
                                $count4= mysqli_num_rows($res4);
                                
                                 }
                            }
                        }

                ?>

                <h1><?php echo $count3; ?></h1>
                <br/>
                <h2>All Store Appointments</h2>
                </div>

                <div class="clearfix"></div>

                
        </div>
    </div>


<?php include('includes/footer.php'); ?>