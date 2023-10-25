<!DOCTYPE html>
<html>
<head>
<style>
        #return{
            text-align:center;
        }
        #return button{
        display:block;
        width:20%;
        height: 30%;
        padding:5px;
        margin: 2px 20px;
        border:goldenrod;
        border-radius: 15px;
        background-color:greenyellow;
        color:blueviolet;
        font-size: 20px;
        text-shadow: 20px;
        border-color: black;
        }
        #return button:hover{
            display:block;
        width:20%;
        height: 30%;
        padding:5px;
        margin: 2px 20px;
        border:goldenrod;
        border-radius: 15px;
        background-color:blueviolet;
        color:greenyellow;
        font-size: 20px;
        text-shadow: 20px;
        border-color: black;
        }
    </style>
<title>Table with Solar System database</title>
<style>

table {
border-collapse: collapse;
width: 100%;
color: #FFFFFF;
font-family: monospace;
font-size: 25px;
text-align: left;
}
th {
background-color:#4B0082;
color: white;
}
</style>
</head>
<body style="background-color:MediumOrchid;">
<form action="Solar_Systems.html" id="return">
    <button type="submit" id="button">Return</button>
</form>
<h1>List Of Solar Systems</h1>
<table>
<tr>
<th>Solar_System_ID</th>
<th>Solar_System_Name</th>
<th>Galaxy_Name</th>
<th>Galaxy_ID</th>
<th>No_of_Planets</th>
<th>Dist_Earth</th>
<th>Sun_Name</th>
</tr>
<?php
$conn = mysqli_connect("localhost", "root", "", "spaceinfo");
// Check connection
if ($conn->connect_error) {
die("Connection failed: " . $conn->connect_error);
}
$sql = "SELECT *  FROM  solar_system";
$result = $conn->query($sql);
if ($result->num_rows > 0) {
// output data of each row
while($row = $result->fetch_assoc()) {
echo "<tr><td>" . $row["solar_system_id"]. "</td><td>" . $row["solar_system_name"] . "</td><td>" . $row["galaxy_name"] . "</td><td>"  . $row["galaxy_id"] . "</td><td>" . $row["num_planets"] . "</td><td>" . $row["dist_earth"] ."</td><td>".$row["sun_name"]."</td></tr>";
}
echo "</table>";
} else { echo "0 results"; }
$conn->close();
?>
</table>
</body>
</html>