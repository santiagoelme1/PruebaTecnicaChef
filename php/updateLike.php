<?php
// Conexión a base de datos
include('config.php');

$id = $_GET['id'];
$likes = $_GET['likes'];

// Consulta MySQL para actualizar datos en la base de datos.
$query="update posts set likes='$likes' where id='$id'";
$result = $mysqli->query($query) or die($mysqli->error.__LINE__);
?>