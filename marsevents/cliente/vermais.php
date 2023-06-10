<?php
include_once("../class/conexao.php");
session_start();
$id = $_GET['id'];

$sql =  "SELECT * from fornecedor where id = $id";
$result = $conn->query($sql);
$row = mysqli_fetch_array($result);


?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Perfil do fornecedor</title>
</head>
<a href="./notificacoes.php">Voltar</a>
<br><br><br>

<body>
    <div class="container-fluid">
        <div class="col-6">
            <div class="row">
                <?php
                if ($row['foto'] == "") {

                    echo "<img class='img-fluid w-100 rounded-circle shadow-sm' src='../fornecedor/imagens_fornecedor/img_perfil.jpg' style=>";
                } else {
                    echo "<img class='img-fluid w-100 rounded-circle shadow-sm' src='../fornecedor/imagens_fornecedor/$row[foto]' style='width: 200px; height: 200 px; border-radius: 100px;'>";
                }

                $sql2 = "SELECT * FROM especializacao where id= $row[id_especializacao]";
                $result2 = $conn->query($sql2); 
                $row2 = mysqli_fetch_array($result2);
                $desc = $row2['desc'];
                ?>
            </div>
        </div>
        <div class="col-6">
            <div class="row">
                <h3><?php echo $row['nome'];?></h3>
                <p><?php echo $row['tel'];?></p>
                <p><?php echo $row['email'];?></p>
                <p><?php echo 'Especialização do Profissional: '.$desc;?></p>
                <p>Nota: </p>
            </div>
        </div>
    </div>
</body>

</html>