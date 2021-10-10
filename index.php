<?php
$server = "localhost";
$username = "root";
$password = "";
$database = "movie_1";

$conn = mysqli_connect($server, $username, $password, $database);
if(!$conn){

    die("Error".mysqli_connect_error());
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Movies</title>
</head>
<body>

    <h1 align="center">Movie Table</h1>
    <table border="2px" align="center">
        <thead>
            <tr>
                <th>Movie Name</th>
                <th>Actor</th>
                <th>Actress</th>
                <th>Year of release</th>
                <th>Director Name</th>
            </tr>
        </thead>
        <tbody>
            <?php 
              $sql = "SELECT * FROM `movies_1`";
              $result = mysqli_query($conn, $sql);
              while($row = mysqli_fetch_assoc($result)){
                echo "<tr>
                <td>". $row['movie_name'] . "</td>
                <td>". $row['actor'] . "</td>
                <td>". $row['actress'] . "</td>
                <td>". $row['year_of_release'] . "</td>
                <td>". $row['director_name'] . "</td>
              </tr>";
            } 
         ?>
           </tbody>
        </table>
</body>
</html>