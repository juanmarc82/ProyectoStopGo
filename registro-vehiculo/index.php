<?php
session_start();
require '../startApp.php';
//datos usuario logado
$_SESSION["usuario"]; 
    
    $template_seccion = "../templates/registro-vehiculo.php";
    $titulo = $_SESSION['usuario']['Name']. " | Registro vehiculo";

include("../templates/main.php");
