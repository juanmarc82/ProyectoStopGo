<div class="container">
    
    <div class="row my-5">
        <div class="col-sm-12">
            <h2>Mi cuenta</h2>
        </div>
    </div>
    
    <div class="row my-5">
        <div class="col-sm-2 text-right">
            <label>Nombre:</label>
        </div>
        <div class="col-sm-10">
            <?php echo $_SESSION["usuario"]["nombre"] ?>
        </div>
        
        <div class="col-sm-2 text-right">
            <label>Email:</label>
        </div>
        <div class="col-sm-10">
            <?php echo $_SESSION["usuario"]["email"] ?>
        </div>
    </div> 
</div>


