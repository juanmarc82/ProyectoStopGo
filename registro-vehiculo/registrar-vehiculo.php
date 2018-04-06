<?php
session_start();
require '../startApp.php';
$_SESSION["usuario"]; 
$titulo= "Registrar vehiculo | " .  $_SESSION['usuario']['Name'] . " ";

$vehiculo_brand = $_POST["brand"];
$usuario_model = $_POST["model"]; 
$usuario_color = $_POST["color"];
$usuario_licensePlate = $_POST["licensePlate"];
?>
<!--/* Funcionalidad Query SQL SERVER -- Adaptar a mi app -- */ -->
<!-- ,@Photo = '$usuario_photo'-->
<?php
/*Cambiar Query para insertar vehiculo */ 
$sql = "EXEC usp_Users_InsertNewUser" 
        . " @Name = '$usuario_name',@Surname = '$usuario_surname',@NIFNIE = '$usuario_nie_nif',@Email = '$usuario_email', " 
        . "@Phone = '$usuario_phone',@Password = '$usuario_password', " 
        . "@Address = '$usuario_address',@Town = '$usuario_town'";
// COMENTO ESTE CAMPO HASTA SOLUCIONAR INCLUSIÓN VIA ID referenciado. @NationalityID = '$usuario_nationality'
$result = sqlsrv_query($conn,$sql);
//registro completo, redireccion a logearse
if($result){
        $usuario = sqlsrv_fetch_array( $result, SQLSRV_FETCH_ASSOC);
        $template_seccion = "../templates/login.php"; // aqui no meto la template si no cargo la pagina desde el index de login y dentro de el cargo el template de login.
//registro incompleto, redireccion a logearse
  } else {
        echo 'Estoy aqui';
        $error = "Error de autentificación";
        $template_seccion = "../templates/auth/error_registro.php";
  }
 
include("../templates/main.php");
