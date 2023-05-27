<?php
    include_once("../class/conexao.php");
    session_start();
    $id = $_GET["id"];
    $dadosUsu = $_SESSION["dadosUsu"];

    $sql = "SELECT * FROM servicos where id = $id";
    $result = $conn->query($sql);
    $row = mysqli_fetch_array($result);

    $sqlFeito = "INSERT INTO feitos (email_fornecedor, especializacao, nome_evento, data_evento, horario, local_evento, nome_dono, email_dono ) VALUES ('$row[email_fornecedor]', $row[especializacao], '$row[nome_evento]', '$row[data_evento]','$row[horario]','$row[local_evento]','$row[nome_dono]','$row[email_dono]')";
    $resultFeito = $conn->query($sqlFeito);

    $sqlRemove = "DELETE FROM servicos WHERE id = $id"; 
    $resultRemove = $conn->query($sqlRemove);



header('Location: ./perfil_fornecedor.php');
?>