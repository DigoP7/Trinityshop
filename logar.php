<?php
session_start();
include 'conexao.php';

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $email = $_POST['email'];
    $senha = $_POST['senha'];

    $sql = "SELECT * FROM usuarios WHERE email = '$email'";
    $result = $conn->query($sql);

    if ($result && $result->num_rows > 0) {
        $user = $result->fetch_assoc();

        if (password_verify($senha, $user['senha'])) {
            $_SESSION['usuario_id'] = $user['id'];
            $_SESSION['usuario_nome'] = $user['nome'];
            $_SESSION['usuario_nivel'] = $user['nivel']; 

            header("Location: projeto.php?p=home");
            exit;
        } else {
            // Senha incorreta
            header("Location: projeto.php?p=login&erro=senha");
            exit;
        }
    } else {
        header("Location: projeto.php?p=login&erro=usuario");
        exit;
    }
}