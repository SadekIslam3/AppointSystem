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
                    <th>Symptom</th>
                    <th>Medicine Name</th>
                    <th>Update/delete</th>
            
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
                        
                        
                        $get_pro1="select * from appointment_store where doctor_id='$doctor_id'";
                        $res1 = mysqli_query($con,$get_pro1);
                        
                        while($row1=mysqli_fetch_array($res1)){
                                $store_id=$row1['store_id'];
                                $patient_name=$row1['patient_name'];
                                $symptom=$row1['symptom'];
                                $medicine_name=$row1['medicine_name'];
                        }
                            }
                        }

                        ?>

                            <tr>
                                <td style="width: 80px;text-align: center;"><?php echo  $store_id; ?>. </td>
                                <td style="width: 200px;text-align: center;"><?php echo $patient_name; ?></td>
                                <td style="width: 140px;text-align: center;"><?php echo $symptom; ?></td>
                                <td style="width: 260px;text-align: center;"><?php echo $medicine_name; ?></td>

                                <td style="width: 240px; padding-left: 170px; padding-top: 10px;">
                                        <a href="<?php echo SITEURL; ?>doctor/appointment_store_update.php?store_id=<?php echo $store_id; ?>" class="btn-update">Update</a>
                                        <a href="<?php echo SITEURL; ?>doctor/appointment_store_delete.php?store_id=<?php echo $store_id; ?>" class="btn-delete">Delete</a>
                                </td>
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