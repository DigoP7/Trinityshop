<?php
session_start(); 
include 'conexao.php'; 

$nome_loja = "TrinityShop";
$rota = $_GET['p'] ?? 'home'; 
$busca = isset($_GET['q']) ? strtolower($_GET['q']) : '';
?>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title><?php echo $nome_loja; ?></title>
    <link rel="stylesheet" href="style.css">
</head>
<body>

<header class="main-header">
    <div class="header-container">
        <a href="?p=home" class="logo"><?php echo $nome_loja; ?></a>
        
        <form method="GET">
            <input type="hidden" name="p" value="home">
            <input type="text" name="q" placeholder="Buscar..." value="<?php echo $busca; ?>" class="search-input">
        </form>

    <nav class="main-menu">
        <a href="?p=home">Início</a>
        <a href="?p=rastreio">Rastreio</a>
        <a href="?p=suporte">Suporte</a>

        <?php if(isset($_SESSION['usuario_nome'])): ?>
            <a href="#" class="user-name"><?php echo $_SESSION['usuario_nome']; ?></a>
            <a href="logout.php" class="btn-logout">Sair</a>
        <?php else: ?>
            <a href="?p=login" class="btn-login-link">Login</a>
        <?php endif; ?>
    </nav>
    </div>

    <nav class="categorias">
        <a href="?p=esporte">Esportes</a>
        <div class="dropdown-item">
            <a href="#">Moda ▼</a>
            <ul class="dropdown-menu">
                <li><a href="?p=feminina">Feminina</a></li>
                <li><a href="?p=masculina">Masculina</a></li>
            </ul>
        </div>
        <a href="?p=tecnologia">Tecnologia</a>
        <a href="?p=cosmeticos">Cosméticos</a>
        <a href="?p=casaferramentas">Casa & Ferramentas</a>
    </nav>
</header>

<div class="container">
<?php
switch ($rota) {

    case 'home':
        $sql = "SELECT * FROM produtos";
        $resultado = $conn->query($sql);
        if ($resultado && $resultado->num_rows > 0) {
            while($item = $resultado->fetch_assoc()) {
                if ($busca == '' || strpos(strtolower($item['nome']), $busca) !== false) {
                    ?>
                    <div class="catalog-card">
                        <div class="catalog-image"><img src="<?php echo $item['img_url']; ?>"></div>
                        <div class="catalog-info">
                            <h3><?php echo $item['nome']; ?></h3>
                            <div class="catalog-price">
                                <span class="current">R$ <?php echo number_format($item['preco'], 2, ',', '.'); ?></span>
                            </div>
                            <a href="?p=detalhe&id=<?php echo $item['id']; ?>" class="catalog-buy">Ver detalhes</a>
                        </div>
                    </div>
                    <?php
                }
            }
        } else { echo "<p>Nenhum produto encontrado.</p>"; }
        break;

    case 'tecnologia':
    case 'cosmeticos':
    case 'esporte':
    case 'casaferramentas':
    case 'feminina':
    case 'masculina':
        $sql = "SELECT * FROM produtos WHERE categoria = '$rota'";
        $resultado = $conn->query($sql);
        if ($resultado && $resultado->num_rows > 0) {
            while($item = $resultado->fetch_assoc()) {
                ?>
                <div class="catalog-card">
                    <div class="catalog-image"><img src="<?php echo $item['img_url']; ?>"></div>
                    <div class="catalog-info">
                        <h3><?php echo $item['nome']; ?></h3>
                        <div class="catalog-price">
                            <span class="current">R$ <?php echo number_format($item['preco'], 2, ',', '.'); ?></span>
                        </div>
                        <a href="?p=detalhe&id=<?php echo $item['id']; ?>" class="catalog-buy">Ver detalhes</a>
                    </div>
                </div>
                <?php
            }
        } else { echo "<p>Nenhum produto encontrado.</p>"; }
        break;

        case 'detalhe':
            $id = $_GET['id'] ?? 0;
            $sql = "SELECT * FROM produtos WHERE id = " . intval($id);
            $res = $conn->query($sql);
            
            if ($res && $res->num_rows > 0) {
                $p = $res->fetch_assoc(); 
                ?>
                <div class="pagina-produto">
                    <div class="cartao-principal">
                        
                        <div class="coluna-fotos">
                            <div class="visualizador-principal">
                                <img src="<?php echo $p['img_url']; ?>" id="img-foco">
                            </div>
                            <div class="lista-miniaturas">
                                <img src="<?php echo $p['img_url']; ?>" onclick="document.getElementById('img-foco').src=this.src">
                                <?php for($i=2; $i<=6; $i++): if(!empty($p['img'.$i])): ?>
                                    <img src="<?php echo $p['img'.$i]; ?>" onclick="document.getElementById('img-foco').src=this.src">
                                <?php endif; endfor; ?>
                            </div>
                        </div>

                        <div class="coluna-compra">
                            <h1 class="titulo-produto"><?php echo $p['nome']; ?></h1>
                            
                            <div class="bloco-preco">
                                <span class="simbolo-moeda">R$</span>
                                <span class="valor-produto"><?php echo number_format($p['preco'], 2, ',', '.'); ?></span>
                            </div>

                            <div class="linha-frete">
                                <span class="icone-caminhao">🚚</span>
                                <div class="texto-frete">
                                    <p><strong>Frete Grátis</strong></p>
                                    <p>Para todo o Brasil em compras selecionadas</p>
                                </div>
                            </div>

                            <div class="botoes-acao">
                                <button class="btn-add-carrinho">Adicionar ao Carrinho</button>
                                <button class="btn-comprar-agora">Comprar Agora</button>
                            </div>
                        </div>
                    </div>

                    <div class="cartao-descricao">
                        <div class="titulo-secao">DESCRIÇÃO DO PRODUTO</div>
                        <div class="conteudo-descricao">
                            <?php echo nl2br($p['descricao']); ?>
                        </div>
                    </div>
                </div>
                <?php
            }
            break;

        case 'rastreio':
        ?>
        </div> <main class="support-page">
            <h2>Rastreio de Pedidos</h2>
            <p class="support-text">
                Acompanhe o status do seu pedido em tempo real. Digite o código de rastreio abaixo.
            </p>

            <div class="support-box">
                <h3>Insira o Código de Rastreio</h3>
                <p>Receba atualizações sobre o andamento da entrega.</p>

                <form method="GET">
                    <input type="hidden" name="p" value="rastreio">
                    <input type="text" name="codigo" placeholder="Ex: TR123456789" required class="rastreio-input">
                    <button type="submit" class="rastreio-botao">Rastrear Pedido</button>
                </form>
            </div>

            <?php
            if (isset($_GET['codigo'])) {
                $codigo = htmlspecialchars($_GET['codigo']);
                echo "<div class='support-box'>
                    <h3>Status do Pedido: $codigo</h3>
                    <div class='rastreio-status'>
                        <div class='rastreio-etapa'>
                            <div class='rastreio-circulo concluido'>✓</div>
                            <p>Pedido Confirmado</p>
                            <p class='data'>15/04/2023</p>
                        </div>
                        <div class='rastreio-linha concluida'></div>
                        <div class='rastreio-etapa'>
                            <div class='rastreio-circulo concluido'>✓</div>
                            <p>Em Trânsito</p>
                            <p class='data'>18/04/2023</p>
                        </div>
                        <div class='rastreio-linha pendente'></div>
                        <div class='rastreio-etapa'>
                            <div class='rastreio-circulo pendente'>○</div>
                            <p>Entregue</p>
                            <p class='data'>Previsto: 22/04/2023</p>
                        </div>
                    </div>
                </div>";
            }
            ?>
        </main>

        <div class="container"> <?php
        break;

        case 'suporte':
        ?>
        </div> <main class="support-page">
            <h2>Central de Suporte</h2>
            <p class="support-text">
                Estamos à disposição para ajudar com dúvidas sobre pedidos, prazos de entrega,
                garantia ou funcionamento dos produtos.
            </p>

            <div class="support-box">
                <h3>Contato por e-mail</h3>
                <p>Responderemos em até <strong>24 horas úteis</strong>.</p>

                <a href="mailto:suporte.trinityvibe@gmail.com?subject=Suporte%20TrinityVibe" class="support-email">
                    suporte.trinityvibe@gmail.com
                </a>
            </div>

            <div class="support-info">
                <p><strong>Horário de atendimento:</strong> Segunda a Sexta, das 9h às 18h<br>Sábado e Domingo, das 11h às 14h</p>
                <p><strong>Empresa:</strong> TrinityVibe</p>
                <p><strong>CNPJ:</strong> 59.414.061/0001-48 </p>
            </div>
        </main>

        <div class="container"> <?php
        break;

        case 'login':
            ?>
            <div class="auth-wrapper">
                <div class="auth-card">
                    <h2>Entrar</h2>
                    <form action="logar.php" method="POST">
                        <input type="email" name="email" placeholder="Seu e-mail" required>
                        <input type="password" name="senha" placeholder="Sua senha" required>
                        <button type="submit" class="btn-auth">Entrar</button>
                    </form>
                    <p style="margin-top:15px">Não tem conta? <a href="?p=registro" style="color:#ff0050; text-decoration:none;">Cadastre-se</a></p>
                </div>
            </div>
            <?php
            break;

        case 'registro':
            ?>
            <div class="auth-wrapper">
                <div class="auth-card">
                    <h2>Criar Conta</h2>
                    <form action="cadastrar.php" method="POST">
                        <input type="text" name="nome" placeholder="Nome Completo" required>
                        <input type="email" name="email" placeholder="E-mail" required>
                        <input type="password" name="senha" placeholder="Crie uma senha" required>
                        <button type="submit" class="btn-auth">Finalizar Cadastro</button>
                    </form>
                    <p style="margin-top:15px"><a href="?p=login" style="color:#777; text-decoration:none;">Já tenho conta</a></p>
                </div>
            </div>
            <?php
            break;
    }
    ?>
</div>

<footer>
    <p>© 2026 TrinityVibe</p>
</footer>

</body>
</html>