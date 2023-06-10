<?php
include_once("../class/conexao.php");
session_start();
$id = $_GET["id"];


$sql = "SELECT * from solicitacoes where id = '$id'";
$result = $conn->query($sql);

?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ver mais</title>
</head>

<body>
    <div class="container-fluid">
        <div class="col-12">
            <div class="row">
                <h1>Ver mais sobre solicitação</h1>
            </div>
            <div class="row">
                <p>Dados:</p>
            </div>
            <div class="row">
                <?php if (mysqli_num_rows($result)) { 
                    $row = mysqli_fetch_array($result);
                    $sql2 = "SELECT * from categoria_evento where id = $row[id_categoria]";
                    $result2 = $conn->query($sql2);
                    $row2 = mysqli_fetch_assoc($result2);
                    $categoria = $row2['desc'];
                    ?>
                    
                    <p>Nome do evento: <?php echo $row['nome_evento'] ;?></p>
                    <p>Data do evento: <?php echo $row['data_evento'] ;?></p>
                    <p>Categoria do evento: <?php echo $row2['desc'] ;?></p>
                    <p>Horario do evento: <?php echo $row['horario_evento'] ;?></p>
                    <p>Local do evento: <?php echo $row['local_evento'] ;?></p>
                    <p>Restrição de idade do evento: <?php echo $row['rest_idade'] ;?> anos</p>
                    <p>Quantidade de ingressos do evento: <?php echo $row['qtd_ingressos'] ;?></p>
                    <p>Valor do ingresso: <?php echo $row['valor_ingresso'] ;?></p>
                    <p>Quantidade de pessoas suportadas no evento: <?php echo $row['qtd_pessoas'] ;?></p>
                    <p>Dono do evento: <?php echo $row['nome_dono'] ;?></p>
                    <p>Email do dono do evento: <?php echo $row['email_dono'] ;?></p>
                <?php } ?>

            </div>
        </div>
    </div>
</body>

</html>