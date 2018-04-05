<div class="container-fluid">
<nav class="navbar navbar-expand-md navbar-dark bg-danger">
    <a class="navbar-brand logo" href="<?php echo $root?>index.php"><img src="<?php echo $root?>images/Stop&Go.png"></a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#mimenu" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="mimenu">
      <ul class="navbar-nav ml-auto">
        <li class="nav-item active">
          <a class="nav-link" href="<?php echo $root?>index.php">Inicio <span class="sr-only">(current)</span></a>
        </li>
        <li class="nav-item"> <!-- crear php quienes_somos.php a la que referencia este enlace-->
          <a class="nav-link" href="<?php echo $root?>quienes_somos.php">Quienes somos</a>
        </li>
        
        
        <?php if(isset($_SESSION["usuario"])) { ?>
        <<!-- Si usuario conectado muestro... -->
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          <?php echo $_SESSION["usuario"]["nombre"] ?>
          </a>
          <div class="dropdown-menu" aria-labelledby="navbarDropdown">
            <a class="dropdown-item" href="<?php echo $root?>mi-cuenta/">Mi cuenta</a>
            <!-- Crear php vehículo.php-->
            <a class="dropdown-item" href="#">Vehículo</a>
            <!-- Crear php saldo.php-->
            <a class="dropdown-item" href="#">Saldo</a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="<?php echo $root?>login/close.php">Cerrar sesión</a>
          </div>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="<?php echo $root?>mi-cuenta/"></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="<?php echo $root?>login/close.php">Cerrar sesión</a>
        </li>
        <?php } else { ?>
        <!-- Si usuario no conectado muestro... -->
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            ¿Como usarlo?
          </a>
          <div class="dropdown-menu" aria-labelledby="navbarDropdown">
            <a class="dropdown-item" href="#">¿Conduces?</a>
            <a class="dropdown-item" href="#">¿Te llevan?</a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#">Cómo funciona</a>
          </div>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="<?php echo $root?>registro/">Regístrate</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="<?php echo $root?>login/"><i class="fas fa-user-circle"></i></a>
        </li>
        <?php } ?>
        
      </ul>
        
    </div>
</nav>
</div>