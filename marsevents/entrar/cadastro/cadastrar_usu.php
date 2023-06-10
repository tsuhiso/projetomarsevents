<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="log/vendor/bootstrap/css/bootstrap.min.css">
	  <link rel="stylesheet" type="text/css" href="log/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
	  <link rel="stylesheet" type="text/css" href="log/fonts/iconic/css/material-design-iconic-font.min.css">
	  <link rel="stylesheet" type="text/css" href="log/vendor/animate/animate.css">	
	  <link rel="stylesheet" type="text/css" href="log/vendor/css-hamburgers/hamburgers.min.css">
    <link rel="stylesheet" type="text/css" href="log/vendor/animsition/css/animsition.min.css">
	  <link rel="stylesheet" type="text/css" href="log/vendor/select2/select2.min.css">	
	  <link rel="stylesheet" type="text/css" href="log/vendor/daterangepicker/daterangepicker.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@700&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="css/style.css">
    <title>Cadastre-se</title>
</head>
<body>

  <div class="container-fluid teste">
  <!-- <div class="limiter"></div> -->
    <div class="col-12">
      <div class="row">
    <div class="bloco">
  <form action="./savecad_usu.php" method="post" encytpe="multipart/form-data">
    <h1>Selecione o tipo de usuário</h1>
    <select name="tipo" id="tipo" class="opcao">
        <option selected>Tipo de usuário</option>
        <option value="provedor">Provedor de serviço de eventos</option>
        <option value="cliente">Cliente comum</option>
</select>
<button type="submit" name="cad_tipo_usu" class="btn btn-gradient display-4">Próximo</button>
</form>
</div>
</div>
</div>
</div>
</div>
        
<script src="log/vendor/jquery/jquery-3.2.1.min.js"></script>
	<script src="log/vendor/animsition/js/animsition.min.js"></script>
	<script src="log/vendor/bootstrap/js/popper.js"></script>
	<script src="log/vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="log/vendor/select2/select2.min.js"></script>
	<script src="log/vendor/daterangepicker/moment.min.js"></script>
	<script src="log/vendor/daterangepicker/daterangepicker.js"></script>
	<script src="log/vendor/countdowntime/countdowntime.js"></script>
	<script src="log/js/main.js"></script>

</body>
</html>