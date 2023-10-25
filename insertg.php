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
<title>Table with Galaxy database</title>

</head>
<body style="background-color:MediumOrchid;">

<?php

$galaxy_id = $_POST['galaxy_id'];
$galaxy_name = $_POST['galaxy_name'];
$no_of_stars = $_POST['no_of_stars'];
$dist_earth = $_POST['no_of_stars'];
$pattern = $_POST['pattern'];
$founder = $_POST['founder'];


$conn = new mysqli('localhost','root','','spaceinfo');
if($conn->connect_error)
{
    echo "$conn->connect_error";
    die("Connection Failed : ". $conn->connect_error);
} 
else 
{
    $stmt = $conn->prepare ("INSERT INTO  galaxy (galaxy_id,galaxy_name,no_of_stars,dist_earth,pattern,founder) VALUES (?,?,?,?,?,?)");
    $stmt->bind_param("isssss", $galaxy_id,$galaxy_name,$no_of_stars,$dist_earth,$pattern,$founder);
    $execval = $stmt->execute();
    echo $execval;
    echo "Registration successfully...";
    $stmt->close();
    $conn->close();
}
?>

<form action="Galaxies.html" id="return">
    <button type="submit" id="button">Return</button>
</form>


</body>
</html>