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

</head>
<body style="background-color:MediumOrchid;">

<?php

$moon_id = $_POST['moon_id'];
$moon_name = $_POST['moon_name'];
$galaxy_id = $_POST['galaxy_id'];
$galaxy_name = $_POST['galaxy_name'];
$star_id = $_POST['star_id'];
$star_name = $_POST['star_name'];
$planet_id = $_POST['planet_id'];
$planet_name = $_POST['planet_name'];


$conn = new mysqli('localhost','root','','spaceinfo');
if($conn->connect_error)
{
    echo "$conn->connect_error";
    die("Connection Failed : ". $conn->connect_error);
} 
else 
{
    $stmt = $conn->prepare ("INSERT INTO  moon (moon_id,moon_name,galaxy_id,galaxy_name,star_id,star_name,planet_id,planet_name) VALUES (?,?,?,?,?,?,?,?)");
    $stmt->bind_param("isisisis", $moon_id,$moon_name,$galaxy_id,$galaxy_name,$star_id,$star_name,$planet_id,$planet_name);
    $execval = $stmt->execute();
    echo $execval;
    echo "Registration successfully...";
    $stmt->close();
    $conn->close();
}
?>

<form action="Moons.html" id="return">
    <button type="submit" id="button">Return</button>
</form>

</body>
</html>