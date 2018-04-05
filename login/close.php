<?php
session_start();
require '../startApp.php';
//cerrar sesión del usuario
session_unset();
session_destroy();
$titulo = "Home";
//redirigir a la página que corresponda
header("Location: ../index.php");
require '../endApp.php';
die();
/*
$template_seccion = "../templates/home.php";
include '../templates/main.php';*/


