<?php
include 'conexao.php';

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $nome = $_POST['nome'];
    $email = $_POST['email'];
    $senha = password_hash($_POST['senha'], PASSWORD_DEFAULT);

    $sql = "INSERT INTO usuarios (nome, email, senha) VALUES (?, ?, ?)";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("sss", $nome, $email, $senha);

    if ($stmt->execute()) {
        echo "<script>alert('Cadastro realizado! Agora faça login.'); window.location.href='projeto.php?p=login';</script>";
    } else {
        echo "<script>alert('Erro ao cadastrar. E-mail já pode estar em uso.'); window.location.href='projeto.php?p=registro';</script>";
    }
}
?>