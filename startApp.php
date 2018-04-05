<?php
$root = "/StopGo/";
$serverName = "localhost"; //serverName\instanceName
$connectionInfo = array( "Database"=>"ProyectoModulo1", "UID"=>"Juanma", "PWD"=>"stopgo");
$conn = sqlsrv_connect( $serverName, $connectionInfo);

if( $conn ) {
   //  echo "Connection established.<br />";
}else{
     echo "Connection could not be established.<br />";
     die( print_r( sqlsrv_errors(), true));
}

?>


 <?php
/*
define("HOST_BBDD","localhost");
define("USER_BBDD","root");
define("PASS_BBDD","");
define("NAME_BBDD","demo_tienda");

$conexion = mysqli_connect(HOST_BBDD, USER_BBDD, PASS_BBDD, NAME_BBDD);
// Comprobar conexión
if($conexion === false){
    die("ERROR: Error de conexión " . mysqli_connect_error());
    
    
}
 
?> */
 
