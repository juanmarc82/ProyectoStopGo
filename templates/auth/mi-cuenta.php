<div class="container">
    
    <div class="row my-5">
        <div class="col-sm-12">
            <h2>Mi cuenta</h2>
        </div>
    </div>
    
    <div class="row my-5 datos-usuario-texto" >
        <div class="col-sm-2 text-right">
            <label>Nombre completo:</label>
        </div>
        <div class="col-sm-10">
            <?php echo $_SESSION["usuario"]["Name"] . " " . $_SESSION["usuario"]["Surname"]?>
        </div>
        
        <div class="col-sm-2 text-right">
            <label>Email:</label>
        </div>
        <div class="col-sm-10">
            <?php echo $_SESSION["usuario"]["Email"] ?>
        </div>
        <div class="col-sm-2 text-right">
            <label>Teléfono:</label>
        </div>
        <div class="col-sm-10">
            <?php echo $_SESSION["usuario"]["Phone"] ?>
        </div>
        <div class="col-sm-2 text-right">
            <label>Dirección:</label>
        </div>
        <div class="col-sm-10">
            <?php echo $_SESSION["usuario"]["Address"] ?>
        </div>
        <!--    <label>Mi Vehículo:</label>
        </div>
        <div class="col-sm-10">
            <?php //echo $_SESSION["usuario"]["VehicleID"] ?>
        </div> -->
        <div class="col-sm-2 text-right">
            <label>Dirección:</label>
        </div>
        <div class="col-sm-10">
            <?php echo $_SESSION["usuario"]["Address"] ?>
        </div>
    </div>
    <!-- descomentar al agregar foto a usuario
    <div class="row my-5 datos-usuario-foto">
        <div class="col-sm-2 text-right">
            <label>Fotografía:</label>
        </div>
        <div class="col-sm-10">
            <?php// echo $_SESSION["usuario"]["Photo"] ?>
        </div> -->
    </div>
</div>


