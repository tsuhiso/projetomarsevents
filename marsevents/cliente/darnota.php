<?php
    include_once("../class/conexao.php"); 
    session_start(); 
    $id = $_GET['id'];
    //echo $id ; 

    $sql = "SELECT * from notificacao_cliente WHERE id = '$id'";
    $result = $conn->query($sql);
    $row = mysqli_fetch_array($result);

    $sql2 = "SELECT * FROM feitos where nome_evento = '$row[nome_evento]' AND email_dono = '$row[email]' ";
    $result2 = $conn->query($sql2);
    $row2 = mysqli_fetch_array($result2);

    $sql3 = "SELECT * FROM  fornecedor where email = '$row2[email_fornecedor]' and id_especializacao =$row2[especializacao]";
    $result3= $conn->query($sql3);
    $row3 = mysqli_fetch_array($result3); 

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Avaliar Profissional</title>
    
</head>
<body>

</body>
</html>