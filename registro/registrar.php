<?php

require '../startApp.php';
$titulo= "Registrar | Usuario";

$usuario_name = $_POST["name"];
$usuario_surname = $_POST["surname"];
$usuario_email = $_POST["email"];
$usuario_phone= $_POST["phone"];
$usuario_nie_nif = $_POST["nie_nif"];
$usuario_datebirth = $_POST["datebirth"];
$usuario_driver = $_POST["driver"];
$usuario_address = $_POST["address"];
//$usuario_nationality = $_POST["nationality"];
$usuario_cp = $_POST["cp"];
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
        . "@DateBirth = '$usuario_datebirth',@Address = '$usuario_address', @CP = '$usuario_cp',@Town = '$usuario_town'";
// COMENTO ESTE CAMPO HASTA SOLUCIONAR INCLUSIÓN VIA ID referenciado. @NationalityID = '$usuario_nationality'
$result = sqlsrv_query($conn,$sql);

//ejemplo registro completo, redireccion a logearse
if($result){
  $template_seccion = "../login/index.php";
 }   
   
//include ("../login/index.php");
/* }   
  else {
    $error = "Error de autentificación";
    $template_seccion = "../templates/auth/error_registro.php";
  }
 */





//$sql = "INSERT INTO usuarios (nombre, email, password) VALUES ('$usuario_name', '$usuario_email', '$usuario_password')";
//Funcion ejecucion Query para MySQL. No me vale.
//$resultado = mysqli_query($conexion, $sql);
//

//ejemplo registro completo, redireccion a bienvenida.php con sesion iniciada.
/*if ($resultado) {
    //podría comprobar id ultimo usuario registrado y reenviarlo al index.php
    $id_usuario= mysqli_insert_id($conexion);
    //con el id consultamos en bd los datos de ese id_usuario
    
    $sql= "SELECT * FROM usuarios WHERE id='$id_usuario' ";
    $resultado= mysqli_query($conexion, $sql);
    if($resultado){
        $_SESSION["usuario"] = mysqli_fetch_assoc($resultado);
            
    $template_seccion = "../templates/auth/bienvenida.php";

    } 
 //ejemplo registro completo, redireccion a logearse
 //if($resultado){
 // $template_seccion = "../login/index.php";
 //}   
   
            
} else {
    $error = "Error de autentificación";
    $template_seccion = "../templates/auth/error_registro.php";

} */
include("../templates/main.php");

require '../endApp.php';

