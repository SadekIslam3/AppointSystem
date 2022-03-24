<?php include('includes/header.php'); ?>
<div class="manage">
    <div class = "wrapper">
        <h1>Doctor Dashboard</h1>
        <br>
        
        <br> 
        <table class="tbl-full">
            <tr>
                <th>ID</th>
                <th>Patient Name</th>
                <th>Patient Address</th>
                <th>Phone No</th>
                <th>Gender</th>
                <th>Symptom</th>
                <th>Date</th>
            
            </tr>
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
                        
                        while($row1=mysqli_fetch_array($res1)){
                                $appointment_id=$row1['appointment_id'];
                                $patient_name=$row1['patient_name'];
                                $patient_address=$row1['patient_address'];
                                $phone_no=$row1['phone_no'];
                                $gender=$row1['gender'];
                                $symptom=$row1['symptom'];
                                $date=$row1['date'];
                        }
                            }
                        }

                        ?>

                        <tr>
                            <td style="width: 80px;text-align: center;"><?php echo  $appointment_id; ?>. </td>
                            <td style="width: 200px;text-align: center;"><?php echo $patient_name; ?></td>
                            <td style="width: 220px;text-align: center;"><?php echo $patient_address; ?></td>
                            <td style="width: 240px;text-align: center;"><?php echo $phone_no; ?></td>
                            <td style="width: 120px;text-align: center;"><?php echo $gender; ?></td>
                            <td style="width: 140px;text-align: center;"><?php echo $symptom; ?></td>
                            <td style="width: 260px;text-align: center;"><?php echo $date; ?></td>

                        </tr>

                        <?php
                    
                }
                else{
                    echo "No patient";
                }
            ?>
        </table>

       
    </div>
</div>
<?php include('includes/footer.php'); ?>