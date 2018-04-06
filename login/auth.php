<?php
session_start();
require '../startApp.php';
$titulo= "Login | Usuario";

/*Comprobar si traemos datos form login*/
$usuario_email = (isset($_POST["email"])) ? $_POST["email"] : "";
$usuario_password = (isset($_POST["password"])) ? $_POST["password"] : "";
/*Si variables vacías terminamos ejecución*/
if ($usuario_email =='' && $usuario_password=='') {
    /*Incluir mensaje advertencia error introducción datos login*/
    die();
}
/*Query seleccionar info usuario*/
$sql = "SELECT * FROM Users WHERE Email= '$usuario_email' AND Password='$usuario_password'" ;
$result = sqlsrv_query($conn,$sql);


if ($result) {
    /*Introduzco datos como array en variable $usuario*/
    $usuario = sqlsrv_fetch_array( $result, SQLSRV_FETCH_ASSOC);    
    
    if($usuario) {
        /*Si usuario tiene datos inicio sesion usuario*/
        $_SESSION["usuario"] = $usuario;
        /*cargo página home*/
        $template_seccion = "../templates/home.php";
        include '../templates/main.php';
    } else {
        
        /*Sino pantalla login y error autentificación*/
        $error = "Error de autentificación";
        echo $error;
        $template_seccion = "../templates/login.php";
        include '../templates/main.php';
        
    }
} else {
    echo "Estoy aqui";
    /*Si no Error conexion, cargo página login*/
    $error = "Error de conexión";
    $template_seccion = "../templates/login.php";
}
