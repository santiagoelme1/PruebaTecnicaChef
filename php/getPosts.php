<?php
// Conexión a base de datos
include('config.php');

// Consulta MySQL de todos los Heroes
$query="select id,nombre,descripcion,autor,avatar,likes from posts order by id asc";
$result = $mysqli->query($query) or die($mysqli->error.__LINE__);

$arr = array();
if($result->num_rows > 0) {
	while($row = $result->fetch_assoc()) {
		$arr[] = $row;	
	}
}
// Codificando respuesta en JSON
$json_response = json_encode($arr);
// Return respuesta
echo $json_response;
?>