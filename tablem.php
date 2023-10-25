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
<title>Table with Moons database</title>
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
<form action="Moons.html" id="return">
    <button type="submit" id="button">Return</button>
</form>
<h1>List Of Moons</h1>
<table>
<tr>
<th>Moon_ID</th>
<th>Moon_Name</th>
<th>Galaxy_ID</th>
<th>Galaxy_Name</th>
<th>Star_ID</th>
<th>Star_Name</th>
<th>Planet_ID</th>
<th>Planet_Name</th>
</tr>
<?php
$conn = mysqli_connect("localhost", "root", "", "spaceinfo");
// Check connection
if ($conn->connect_error) {
die("Connection failed: " . $conn->connect_error);
}
$sql = "SELECT *  FROM  moon";
$result = $conn->query($sql);
if ($result->num_rows > 0) {
// output data of each row
while($row = $result->fetch_assoc()) {
echo "<tr><td>" . $row["moon_id"]. "</td><td>" .  $row["moon_name"] . "</td><td>" .  $row["galaxy_id"] . "</td><td>" . $row["galaxy_name"] . "</td><td>" . $row["star_id"] . "</td><td>"  . $row["star_name"] . "</td><td>" . $row["planet_id"] . "</td><td>" . $row["planet_name"] .  "</td></tr>";
}
echo "</table>";
} else { echo "0 results"; }
$conn->close();
?>
</table>
</body>
</html>