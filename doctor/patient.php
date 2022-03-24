<?php include('includes/header.php'); ?>
<div class="manage">
    <div class = "wrapper">
        <h1>Doctor Dashboard</h1>
        <br>
        <br> 
        
        <form action="patient_search.php" method="POST">
            <table class="tbl-30">

                <tr>
                    <td>Doctor Name</td>
                    <td>
                        <input type="text" name="search" placeholder="Search here">
                    </td>
                </tr>
                

                <tr>
                    <td colspan="2">
                        <br>
                        <br>
                        <input type="submit" name="submit" value="Search" class="btn-update">
                    </td>
                </tr>
                <br>
                <br>

            </table>
            

        </form>
    </div>
</div>
<?php include('includes/footer.php'); ?>