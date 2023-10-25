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
<title>Table with Planets database</title>
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
<form action="Planets.html" id="return">
    <button type="submit" id="button">Return</button>
</form>
<h1>List Of Planets</h1>
<table>
<tr>
<th>Planet_ID</th>
<th>Planet_Name</th>
<th>Solar_System_ID</th>
<th>Solar_System_Name</th>
<th>Star_ID</th>
<th>Star_Name</th>
<th>Location_No</th>
<th>Galaxy_ID</th>
<th>Galaxy_Name</th>
<th>Dist_Earth</th>
<th>Size</th>
</tr>
<?php
$conn = mysqli_connect("localhost", "root", "", "spaceinfo");
// Check connection
if ($conn->connect_error) {
die("Connection failed: " . $conn->connect_error);
}
$sql = "SELECT *  FROM  planet";
$result = $conn->query($sql);
if ($result->num_rows > 0) {
// output data of each row
while($row = $result->fetch_assoc()) {
echo "<tr><td>" . $row["planet_id"]. "</td><td>" . $row["planet_name"] . "</td><td>" . $row["solar_system_id"] . "</td><td>"  . $row["solar_system_name"] . "</td><td>" . $row["star_id"] . "</td><td>" . $row["star_name"] . "</td><td>" . $row["location_no"] . "</td><td>" . $row["galaxy_id"]. "</td><td>" . $row["galaxy_name"] . "</td><td>" . $row["dist_earth"] . "</td><td>"  . $row["size"] . "</td></tr>";
}
echo "</table>";
} else { echo "0 results"; }
$conn->close();
?>
</table>
</html>