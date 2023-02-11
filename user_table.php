<?php include 'controller/get_all_user.php' ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<style>
table, th, td {
  border: 1px solid;
}
body{
    margin: auto;
    padding: auto;
}

</style>
<body>
    <div>
        <table>
            <thead>
            <tr>
                <th>Name</th>
                <th>Department</th>
                <th>Rfid</th>
                <th>Student ID</th>
            </tr>
            </thead>
            <tbody>
    
    
    
    
            <?php while ($row = mysqli_fetch_assoc($results)) { ?>
            <tr>
                <td>
                    <?php echo $row['fname']; ?> <?php echo $row['mname']; ?> <?php echo $row['lname']; ?>
                </td>
                <td >
                    <?php echo $row['department']; ?>
                </td>
                <td >
                    <?php echo $row['rfid']; ?>
                </td>
                <td >
                    <?php echo $row['lrn']; ?>
                </td>
            </tr>
            <?php } ?>
    
    
    
    
    
    
            </tbody>
        </table>
    </div>
</body>
</html>
