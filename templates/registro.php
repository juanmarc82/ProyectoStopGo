<div class="form-content m-5">
    <form id="registro" method="POST" action="<?php echo $root ?>registro/registrar.php">
        <div class="form-fields">
         <!-- row 1 -->
        <div class="form-group row name-surname">
          <div class="form-group col-md-6">
            <label for="nombre" class="col-sm-2 col-form-label">Nombre*</label>
            <input type="text" class="form-control" id="nombre" name="name" placeholder="Nombre">
          </div>
           <div class="form-group col-md-6">
            <label for="surname" class="col-sm-2 col-form-label">Apellidos*</label>
            <input type="text" class="form-control" id="surname" name="surname" placeholder="Apellidos">
          </div>
        </div>
        <!-- row 2 -->
        <div class="form-group row">
            <!--label no influye en vista web. for= xxx  debe coincidir con id del input al que referencia el label. -->
            <div class="form-group col-md-6">
              <label for="email" class="col-sm-2 col-form-label">Email*</label>
              <input type="text" class="form-control" id="email" name="email" placeholder="Email">
            </div>
            <div class="form-group col-md-6 email-phone">
              <label for="phone" class="col-sm-2 col-form-label">Teléfono*</label>
              <input type="text" class="form-control" id="phone" name="phone" placeholder="Teléfono">
            </div>
        </div>
        <!-- row 3 -->
        <div class="form-group row">
            <div class="form-group col-md-6">
                <label for="nie_nif" class="col-sm-2 col-form-label">NIE-NIF*</label>
                <input type="text" class="form-control" id="nie_nif" name="nie_nif" placeholder="NIE-NIF*">
            </div>
            <div class="form-group col-md-6">
                <label for="datebirth" class="col-sm-2 col-form-label">Fecha nacimiento*</label>
                <input type="text" class="form-control" id="datebirth" name="datebirth" placeholder="Ejemplo DD/MM/YYYY*">
            </div>
            <div class="form-group col-md-6">
                <label for="driver" class="col-sm-2 col-form-label">¿Quieres ser conductor?</label>
                <input type="checkbox" class="form-control" id="driver" name="driver">
            </div>
        </div>
        <!-- row 3 -->
        <div class="form-row">
            <label for="address">Dirección</label>
            <input type="text" class="form-control" id="address" placeholder="Dirección">
        </div>
        <!-- row 4 -->
        <div class="form-row">
          <div class="form-group col-md-6">
            <label for="town">Municipio</label>
            <input type="text" class="form-control" id="town" placeholder="Municipio">
          </div>
          <div class="form-group col-md-4">
            <label for="nationality">Nacionalidad</label>
            <input type="text" class="form-control" id="nationality" placeholder="Nacionalidad">
          </div>
          <div class="form-group col-md-2">
            <label for="cp">Código Postal</label>
            <input type="text" class="form-control" id="cp" placeholder="Código Postal">
          </div>
        </div>
         <!-- row ¿? -->
        <div class="form-group row  password">
            <div class="form-group col-md-6">
                <label for="password" class="col-sm-2 col-form-label">Contraseña*</label>
                <input type="password" class="form-control" id="password" name="password" placeholder="Contraseña">
            </div>
            <div class="form-group col-md-6">
                <label for="repassword" class="col-sm-2 col-form-label">Repite contraseña*</label>
                <input type="password" class="form-control" id="repassword" name="repassword" placeholder="Repite la contraseña">
            </div>
        </div>
        <div class="form-group row">
            <div class="form-group col-md-6">
                <button type="submit" class="btn btn-primary">Regístrate</button>
            </div>
        </div>
        </div>  
  </form>
    
    <script>
            $(document).ready(function()
            {
               $("#registro").validate
               (
                    {
                        rules: 
                        {
                            nombre: {
                                required: true,
                                minlength: 2

                             },
                             email: {
                                 required: true,
                                 minlength: 10
                             },
                             password:{
                                 required: true,
                                 minlength: 6,
                                 maxlength: 20
                             },
                             repassword:{
                                 equalTo: "#password",
                                 //no especifico requisitos porque debe ser igual que el campo password y ese ya incluye requisitos.
                             },
                             messages: {
                                 nombre: "Debes introducir un nombre" ,
                                 email: "Debes introducir un email",
                                 password: "Debes introducir una contraseña",
                                 repassword: "Las contraseñas no son iguales"
                              }

                         }
                     }
                
                );
               
            });
            
            
            
            
            
    </script>
</div>