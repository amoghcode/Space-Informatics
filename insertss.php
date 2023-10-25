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

</head>
<body style="background-color:MediumOrchid;">

<?php

$solar_system_id = $_POST['solar_system_id'];
$solar_system_name = $_POST['solar_system_name'];
$galaxy_name = $_POST['galaxy_name'];
$galaxy_id = $_POST['galaxy_id'];
$num_planets = $_POST['num_planets'];
$dist_earth = $_POST['dist_earth'];
$sun_name = $_POST['sun_name'];




$conn = new mysqli('localhost','root','','spaceinfo');
if($conn->connect_error)
{
    echo "$conn->connect_error";
    die("Connection Failed : ". $conn->connect_error);
} 
else 
{
    $stmt = $conn->prepare ("INSERT INTO  solar_system (solar_system_id,solar_system_name,galaxy_name,galaxy_id,num_planets,dist_earth,sun_name) VALUES (?,?,?,?,?,?,?)");
    $stmt->bind_param("issiiss", $solar_system_id,$solar_system_name,$galaxy_name,$galaxy_id,$num_planets,$dist_earth,$sun_name);
    $execval = $stmt->execute();
    echo $execval;
    echo "Registration successfully...";
    $stmt->close();
    $conn->close();
}
?>

<form action="Solar_Systems.html" id="return">
    <button type="submit" id="button">Return</button>
</form>



</body>
</html>