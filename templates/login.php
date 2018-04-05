<div class="container my-5">    
    
    <form method="POST" action="<?php echo $root?>login/auth.php" id="login">
        <div class="form-group">
          <label for="exampleInputEmail1">Email</label>
          <input type="email" name="email" class="form-control" id="email" aria-describedby="emailHelp" placeholder="Introduce tu email">
        </div>
        <div class="form-group">
          <label for="exampleInputPassword1">Contraseña</label>
          <input type="password" name="password" class="form-control" id="password" placeholder="Introduce tu contraseña">
        </div>
        <button type="submit" class="btn btn-primary">Enviar</button>
    </form>
</div>
<script>

$(document).ready(function(){
   
   $("#login").validate({
         rules: {
            email:
                {
                    required: true,
                    minlength: 10
                }
            ,
            
            password:
                    {
                        required: true,
                        minlength: 6,
                        maxlength: 20
                    },
            repassword:
                    {
                        equalTo: "#password",
                        //no especifico requisitos porque debe ser igual que el campo password y ese ya incluye requisitos.
                    },
            messages: 
                    {
                        email: "Debes introducir un email",
                        password: "Debes introducir una contraseña"
                    }
         
    
                }});
   
    
});

</script>
    


