<div class="form-content m-5 p-5">
    <form id="registro" method="POST" action="<?php echo $root ?>registro/registrar.php">
        <div class="form-fields">
         <!-- row 1 -->
        <div class="form-group row name-surname">
          <div class="form-group col-md-6">
            <label for="name" class="col-sm-2 col-form-label">Nombre*</label>
            <input type="text" class="form-control" id="name" name="name"  pattern="[A-Za-z]" placeholder="Nombre">
          </div>
           <div class="form-group col-md-6">
            <label for="surname" class="col-sm-2 col-form-label">Apellidos*</label>
            <input type="text" class="form-control" id="surname" name="surname" pattern="[A-Za-z]" placeholder="Apellidos">
          </div>
        </div>
        <!-- row 2 -->
        <div class="form-group row">
            <!--label no influye en vista web. for= xxx  debe coincidir con id del input al que referencia el label. -->
            <div class="form-group col-md-6">
              <label for="email" class="col-sm-2 col-form-label">Email*</label>
              <input type="email" class="form-control" id="email" name="email" placeholder="ejemplo@ejemplo.com">
              <small id="emailHelp" class="form-text text-muted">Tranquil@, no compartiremos tu email con nadie.</small>
            </div>    
            <div class="form-group col-md-6 email-phone">
              <label for="phone" class="col-sm-2 col-form-label">Teléfono*</label>
              <input type="tel" class="form-control" id="phone" name="phone" placeholder="Teléfono">
              <small id="emailHelp" class="form-text text-muted">Tranquil@, no compartiremos tu teléfono con nadie.</small>
            </div>
        </div>
        <!-- row 3 -->
        <div class="form-group row">
            <div class="form-group col-md-6">
                <label for="nie_nif" class="col-sm-2 col-form-label">NIE-NIF*</label>
                <input type="text" class="form-control" id="nie_nif" name="nie_nif" placeholder="NIE-NIF*">
                <small id="emailHelp" class="form-text text-muted">Tranquil@, no compartiremos tu NIE-NIF con nadie.</small>
            </div>
            <!--<div class="form-group col-md-6">
                <label for="datebirth" class="col-sm-2 col-form-label">Fecha nacimiento*</label>
                <input type="text" class="form-control" id="datebirth" name="datebirth" placeholder="Ejemplo DD/MM/YYYY*">
            </div> -->
            <!--Comento el checkbox para probar un select -->
            <!-- <div class="form-group col-md-6">
                <label for="driver" class="col-sm-2 col-form-label">¿Quieres ser conductor?</label>
                <input type="checkbox" class="form-control driver-check" id="driver" name="driver">
            </div> -->
            <div class="form-group col-md-6">
            <label for="driver" class="col-sm-2 col-form-label">¿Conducirás o te llevarán?</label>
            <select class="custom-select driver-select" id="driver" name="driver">
                <option selected>Elige tu rol...</option>
                <option value="0">Conduciré</option>
                <option value="1">Me dejaré llevar</option>
            </select>
            </div>
        </div>
        <!-- row 3 -->
        <div class="form-row">
            <div class="form-group col">
                <label for="address">Dirección</label>
                <input type="text" class="form-control text" id="address" name="address" placeholder="Dirección">
                <small id="emailHelp" class="form-text text">Tranquil@, no compartiremos tu dirección con nadie.</small>
            </div>
        <!-- row 4 -->
       
          <div class="form-group col">
            <label for="town">Municipio</label>
            <input type="text" class="form-control" id="town" name="town" placeholder="Municipio">
          </div>
         <!-- Comento este campo hasta solucionar como incluir menú desplegable que mande id referenciado en tabla nacionalities -->
         <!-- <div class="form-group col-md-4">
            <label for="nationality">Nacionalidad</label>
            <input type="text" class="form-control" id="nationality" name="nationality" placeholder="Nacionalidad">
          </div> -->
         <!-- <div class="form-group col-md-2">
            <label for="cp">Código Postal</label>
            <input type="text" class="form-control" id="cp"  name="cp" placeholder="Código Postal">
          </div> -->
        </div>
        <div class="form-group col">
            <label for="exampleInputFile">File input</label>
            <input type="file" class="form-control-file " id="exampleInputFile" aria-describedby="fileHelp">
            <small id="fileHelp" class="form-text text-muted">Sube una foto de perfil. Esto dará más confianza a otros usuarios a compartir viaje contigo.</small>
        </div>
         <!-- row 5 -->
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
    <script>
            <!-- Customize check box -->
            $(document).ready(function(){
            $('.driver-check').prop('indeterminate', true);
            });
    </script>
</div>