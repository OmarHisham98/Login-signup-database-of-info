<!DOCTYPE html>
<html>
<head>
    <title>
        departments
    </title>
    <style>
  table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
</head>
<body style="background-color:cornflowerblue;">
<table>
    <tr>

        <th>ID</th>
        <th>department name</th>
        <th>department description</th>
    </tr>
    <?php
    $conn = mysqli_connect("localhost","root","","university"); 
    if($conn-> connect_error ){
        die("Connection failed:".$conn-> connect_error);
    }

    $sql = "SELECT dept_id, name , description from departments";
    $result = $conn->query($sql);

    if($result-> num_rows > 0){
        while($row = $result-> fetch_assoc()){
            echo"<tr><td>".$row["dept_id"]."</td><td>".$row["name"]."</td><td>".$row["description"]."</td></tr>";
        }
        echo "</table>";
    }
    else{
        echo "0 result";
    }
    $conn-> close();
    ?>
</table>
</body>
</html>