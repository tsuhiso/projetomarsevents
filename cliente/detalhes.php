<?php
    include_once("../class/conexao.php");
    session_start();
    $id = $_GET["id"];
    $dadosUsu = $_SESSION["dadosUsu"];

    $sql = "SELECT * from notificacao_cliente WHERE id = '$id'";
    $result = $conn->query($sql);
    $row = mysqli_fetch_array($result);
    $msg = $row["msg"];

    
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/detalhes.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@700&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet">
    <title>Detalhes</title>
</head>
<body>
<div class="limiter">
  <div class="container">
    <div class="bloco">
    <?php if ($msg == "Sua solicitação foi recusada!") { ?>

        <h1>Seu evento não foi aprovado pela equipe administradora da plataforma.</h1>
        <h2>Nome do evento: <?php echo "$row[nome_evento]";?></h2>

        <a class="botao" href="./perfil_cliente.php">Voltar</a>
        

    <?php } else if ($msg == "Sua solicitação foi aceita!"){ ?>

        <h1>Seu evento foi aprovado pela equipe administradora da plataforma.</h1>
        <h2>Nome do evento: <?php echo "$row[nome_evento]";?></h2>
<br><br>
        <a class="botao" href="./perfil_cliente.php">Voltar</a>

    <?php } else {
        $sql2 = "SELECT * from especializacao where id = '$row[servico]'";
        $result2 = $conn->query($sql2);
        $row2 = mysqli_fetch_assoc($result2);
        $servico = $row2["desc"];
        ?>
        
        <p>O provedor de serviços de <?php echo "$servico";?> cancelou o compromisso de trabalhar no seu evento <?php echo "$row[nome_evento]";?></p>

    <?php }?>
    </div>
    </div>
    </div>
</body>
</html>