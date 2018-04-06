<?php
session_start();
require '../startApp.php';
//datos usuario logado
$_SESSION["usuario"]; 
    
    $template_seccion = "../templates/auth/mi-vehiculo.php";
    $titulo = $_SESSION['usuario']['Name']. " | Mi vehiculo";

include("../templates/main.php");



