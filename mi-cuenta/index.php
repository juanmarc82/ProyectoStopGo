<?php
session_start();
require '../startApp.php';

if(isset($_SESSION["usuario"])) {
    
    //usuario logado
    $template_seccion = "../templates/auth/mi-cuenta.php";
    $titulo = "Mi Cuenta";
    
} else {
    
    //usuario no logado
    $titulo = "Login";
    $error = "Debes iniciar sesión";
    $template_seccion = "../templates/login.php";
    
}

include("../templates/main.php");

require '../endApp.php';






