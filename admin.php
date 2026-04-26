<?php
session_start();

if (!isset($_SESSION['usuario_nivel']) || $_SESSION['usuario_nivel'] != 1) {
    header("Location: projeto.php?p=home");
    exit;
}

include 'conexao.php';

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $nome      = $_POST['nome'];
    $img_url   = $_POST['img_url'];
    $img2      = $_POST['img2'];
    $img3      = $_POST['img3'];
    $img4      = $_POST['img4'];
    $img5      = $_POST['img5'];
    $categoria = $_POST['categoria'];
    $descricao = $_POST['desc'];
    $custo     = $_POST['custo'];
    $margem    = $_POST['margem'];

    $preco_venda = $custo + ($custo * ($margem / 100));

    $sql = "INSERT INTO produtos (nome, img_url, img2, img3, img4, img5, descricao, preco, categoria) 
            VALUES ('$nome', '$img_url', '$img2', '$img3', '$img4', '$img5', '$descricao', '$preco_venda', '$categoria')";

    if ($conn->query($sql) === TRUE) {
        echo "<script>alert('Produto cadastrado com as 6 fotos!');</script>";
    } else {
        echo "Erro: " . $conn->error;
    }
}
?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="UTF-8">
<title>Painel Admin - TrinityVibe</title>
<style>
.box-admin { max-width:550px; margin:auto; background:#fff; padding:30px; border-radius:12px; box-shadow:0 4px 15px rgba(0,0,0,0.1); overflow:hidden; margin-top: 40px; }
.voltar-loja { text-decoration:none; color:#999; font-size:13px; display:block; margin-bottom:10px }
.titulo-admin { margin-top:10px; border-bottom:2px solid #ff0050; padding-bottom:10px; margin-bottom:20px; color: #333; }
.admin-label { display:block; margin-top:15px; font-weight:bold; font-size:14px; color: #444; }
.admin-input, .admin-textarea, .admin-select { width:100%; padding:12px; margin-top:5px; border:1px solid #ddd; border-radius:6px; font-size:15px; display:block; box-sizing: border-box; }
.col-50 { width:48%; float:left; }
.col-50-right { width:48%; float:right; }
.btn-gerar { width:100%; padding:15px; background:#ff0050; color:#fff; border:none; border-radius:6px; margin-top:25px; cursor:pointer; font-weight:bold; font-size:16px; display:block; }
.clearfix::after { content:""; clear:both; display:table; }
</style>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Painel Admin - TrinityVibe</title>
    <link rel="stylesheet" href="style.css"> </head>
<body class="admin-body">
    <div class="box-admin">
        <a href="projeto.php?p=home" class="voltar-loja">&larr; Voltar para a Loja</a>
        <h2 class="titulo-admin">Cadastrar Novo Anúncio</h2>

        <form method="POST">
            <label class="admin-label">Nome do Produto:</label>
            <input type="text" name="nome" class="admin-input" placeholder="Ex: Fone Bluetooth XYZ" required>

            <label class="admin-label">Imagem Principal (Capa):</label>
            <input type="text" name="img_url" class="admin-input" placeholder="URL da foto principal" required>
            <label class="admin-label">Imagens Adicionais (Galeria):</label>
            <input type="text" name="img2" class="admin-input" placeholder="URL da foto 2">
            <input type="text" name="img3" class="admin-input" placeholder="URL da foto 3">
            <input type="text" name="img4" class="admin-input" placeholder="URL da foto 4">
            <input type="text" name="img5" class="admin-input" placeholder="URL da foto 5">

            <label class="admin-label">Descrição Detalhada:</label>
            <textarea name="desc" class="admin-textarea" rows="4" placeholder="Detalhes do produto..." required></textarea>

            <div class="clearfix">
                <div class="col-50">
                    <label class="admin-label">Custo (R$):</label>
                    <input type="number" step="0.01" name="custo" class="admin-input" placeholder="0.00" required>
                </div>
                <div class="col-50-right">
                    <label class="admin-label">Margem (%):</label>
                    <input type="number" name="margem" class="admin-input" value="30">
                </div>
            </div>

            <label class="admin-label">Categoria:</label>
            <select name="categoria" class="admin-select" required>
                <option value="">Selecione</option>
                <option value="tecnologia">Tecnologia</option>
                <option value="cosmeticos">Cosméticos</option>
                <option value="esporte">Esportes</option>
                <option value="casaferramentas">Casa & Ferramentas</option>
                <option value="feminina">Moda Feminina</option>
                <option value="masculina">Moda Masculina</option>
            </select>   

            <button type="submit" class="btn-gerar">Gerar Anúncio de Venda</button>
        </form>
    </div>
</body>
</html>