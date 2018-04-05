<?php
session_start();
require '../startApp.php';
$titulo= "Login | Usuario";
//$template_seccion = "../templates/login.php";

$usuario_email = (isset($_POST["email"])) ? $_POST["email"] : "";
$usuario_password = (isset($_POST["password"])) ? $_POST["password"] : "";

if ($usuario_email =='' && $usuario_password=='') {
    die();
}

$sql = "SELECT * FROM Users WHERE Email= '$usuario_email' AND Password='$usuario_password'" ;

$result = sqlsrv_query($conn,$sql);


if ($result) {
    //$_SESSION["usuario"]=sqlsrv_fetch_array($resultado);
    $usuario = sqlsrv_fetch_array( $result, SQLSRV_FETCH_ASSOC);    
    
    if($usuario) {
        echo "he llegado hasta aquí";
        $_SESSION["usuario"] = $usuario;
        
       $template_seccion = "../templates/home.php";
        include '../templates/main.php';
    } else {
        $error = "Error de autentificación";
        $template_seccion = "../templates/login.php";
        
    }
    
} else {
    echo $result;
    echo "Estoy aqui";
    $error = "Error de conexión";
    $template_seccion = "../templates/login.php";
}

//include '../templates/main.php';





