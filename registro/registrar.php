<?php

require '../startApp.php';
$titulo= "Registrar | Usuario";

$usuario_name = $_POST["name"];
$usuario_surname = $_POST["surname"];
$usuario_email = $_POST["email"];
$usuario_phone= $_POST["phone"];
$usuario_nie_nif = $_POST["nie_nif"];
//$usuario_datebirth = $_POST["datebirth"];
$usuario_driver = $_POST["driver"];
$usuario_address = $_POST["address"];
//$usuario_nationality = $_POST["nationality"];
//$usuario_cp = $_POST["cp"];
$usuario_town = $_POST["town"];
//$usuario_photo= $_POST["photo"];
$usuario_password = $_POST["password"];
?>
<!--/* Funcionalidad Query SQL SERVER -- Adaptar a mi app -- */ -->
<!-- ,@Photo = '$usuario_photo'-->
<?php
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
