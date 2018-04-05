<!-- Carrusel home -->
<div class="container-fluid">
<div id="micarrusel" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators" >
    <li data-target="#micarrusel" data-slide-to="0" class="active"></li>
    <li data-target="#micarrusel" data-slide-to="1"></li>
    <li data-target="#micarrusel" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
      
      <!-- Carrusel Element 1 -->
    <div class="carousel-item active">
        <div class="img-carrusel">
            <img class="d-block w-100" src="<?php echo $root?>images/chica_chico_coche_prueba.jpg" alt="First slide">
        </div>
        <div class="carousel-caption d-none d-md-block">
            <!-- Crear enlace a página conduces.php-->
            <a href="#">
            <h2>Comparte trayectos</h2>
            <p>Disfruta en ellos</p>
            </a>
        </div>
    </div>
      
      <!-- Carrusel Element 1 -->
    <div class="carousel-item">
        <div class="img-carrusel">
            <img class="d-block w-100" src="<?php echo $root?>images/Conducir_carretera_prueba2.jpg" alt="Second slide">
        </div>
        <div class="carousel-caption d-none d-md-block">
            <!-- Crear enlace a página conduces.php-->
            <a href="#">
            <h2>¿Viajas solo?</h2>
            <p>¡Rentabiliza tus viajes!</p>
            </a>
        </div>
    </div>
      
      <!-- Carrusel Element 1 -->
    <div class="carousel-item">
        <div class="img-carrusel">
            <img class="d-block w-100" src="<?php echo $root?>images/mecanico_coche_prueba.jpg" alt="Third slide">
        </div>
        <div class="carousel-caption d-none d-md-block">
            <!-- Crear enlace a página te_llevan.php-->
            <a href="#">
            <h2>Cuando te quedas sin vehículo...</h2>
            <p>Te queda ... ¡Stop&Go!</p>
            </a>
        </div>
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
<div class="container-fluid  intro-viajes text-center" style="background-color: #cccccc">
    <div class="row p-10">
        <div class="col-12 mx-5 text-center titulo-viaje" ><h3 class="mt-4">¿Cual es tu recorrido habitual?</h3></div>
    </div>
    <div class="row p-10 mt-2 d-flex align-items-center justify-content-around">
        <div class="col-2 p-2  my-2 mx-5 text-center" style="background-color: #999999"><p>Málaga Centro<br/>Málaga PTA</p></div>
        <div class="col-2 p-2 my-2 mx-5 text-center" style="background-color: #999999"><p>Málaga Teatinos<br/>Málaga Centro</p></div>
        <div class="col-2 p-2 my-2 mx-5 text-center" style="background-color: #999999"><p>Málaga Centro<br/>Torremolinos Centro</p></div>
    </div>
</div>
</div>