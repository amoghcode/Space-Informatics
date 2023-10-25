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
<title>Table with Blackholes database</title>

</head>
<body  style="background-color:MediumOrchid;">

<?php

$black_hole_id = $_POST['black_hole_id'];
$black_hole_name = $_POST['black_hole_name'];
$galaxy_id = $_POST['galaxy_id'];
$galaxy_name = $_POST['galaxy_name'];
$dist_earth = $_POST['dist_earth'];
$size = $_POST['size'];
$age = $_POST['age'];
$type = $_POST['type'];


$conn = new mysqli('localhost','root','','spaceinfo');
if($conn->connect_error)
{
    echo "$conn->connect_error";
    die("Connection Failed : ". $conn->connect_error);
} 
else 
{
    $stmt = $conn->prepare ("INSERT INTO  black_hole (black_hole_id,black_hole_name,galaxy_id,galaxy_name,dist_earth,size,age,type) VALUES (?,?,?,?,?,?,?,?)");
    $stmt->bind_param("isisssss", $black_hole_id,$black_hole_name,$galaxy_id,$galaxy_name,$dist_earth,$size,$age,$type);
    $execval = $stmt->execute();
    echo $execval;
    echo  "Registration successfully... ";

    $stmt->close();
    $conn->close();
}
?>
<br>
<br>
<br>
<br>
<form action="Blackhole.html" id="return">
    <button type="submit" id="button">Return</button>
</form>



</body>
</html>