-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 26/04/2026 às 04:43
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `loja_db`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `produtos`
--

CREATE TABLE `produtos` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `img_url` text NOT NULL,
  `descricao` text NOT NULL,
  `preco` decimal(10,2) NOT NULL,
  `categoria` varchar(50) NOT NULL,
  `img2` varchar(255) DEFAULT NULL,
  `img3` varchar(255) DEFAULT NULL,
  `img4` varchar(255) DEFAULT NULL,
  `img5` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `produtos`
--

INSERT INTO `produtos` (`id`, `nome`, `img_url`, `descricao`, `preco`, `categoria`, `img2`, `img3`, `img4`, `img5`) VALUES
(1, 'Câmera de vigilância A9 HD Sem Fio Wi-Fi Imagem Nítida Segurança Noturna Monitoramento', 'https://down-br.img.susercontent.com/file/sg-11134201-824ik-me6534giiv4209@resize_w450_nl.webp', 'Quando se fala em segurança prática e moderna, a Câmera A9 se destaca como uma das melhores opções do mercado. Seu tamanho  permitem instalação em qualquer ambiente sem comprometer a decoração. Equipada com lente de 150°, oferece uma visão ampla, enquanto sua resolução HD 720p proporciona imagens de boa qualidade, suficientes para identificar movimentos e detalhes importantes.\r\n\r\nAlém da transmissão em tempo real via aplicativo, a câmera também permite gravação local em cartão microSD. O formato AVI com compressão H.264 garante que os arquivos sejam leves, economizando espaço de armazenamento. Para quem busca confiabilidade, a recomendação é manter o dispositivo conectado ao USB, evitando quedas de energia e garantindo gravações ininterruptas.\r\n\r\nRecursos:\r\n\r\nResolução HD 720p.\r\n\r\n\r\n\r\nLente com ângulo de 150°.\r\n\r\n\r\n\r\nConexão Wi-Fi 2.4GHz.\r\n\r\n\r\n\r\nGravação em microSD até 128GB.\r\n\r\n\r\n\r\nBase adesiva de fácil fixação.\r\n\r\n\r\n\r\nMelhor uso conectado direto no USB.\r\n\r\n\r\n\r\nEspecificações Técnicas:\r\n\r\nResolução: 720p\r\n\r\n\r\n\r\nFormato: AVI\r\n\r\n\r\n\r\nCompressão: H.264\r\n\r\n\r\n\r\nÂngulo: 150°\r\n\r\n\r\n\r\nConexão: Wi-Fi 2.4GHz\r\n\r\n\r\n\r\nAplicativo: HD IOT Câmera\r\n\r\n\r\n\r\nCompatibilidade: Android/iOS\r\n\r\n\r\n\r\nCor: Preto\r\n\r\n\r\n\r\nItens Inclusos:\r\n\r\n Câmera A9\r\n\r\n\r\n\r\nBase adesiva\r\n\r\n\r\n\r\nCabo USB\r\n\r\n\r\n\r\nManual\r\n\r\n\r\n\r\nAplicações:\r\n\r\nMonitoramento residencial\r\n\r\n\r\n\r\nSegurança em escritórios\r\n\r\n\r\n\r\nVigilância discreta em veículos\r\n\r\n\r\n\r\nFAQ:\r\n\r\n ❓ É possível usar em locais sem internet?\r\n\r\n ✅ Sim, gravando diretamente no cartão microSD.\r\n\r\n❓ A qualidade de imagem é suficiente em ambientes com pouca luz?\r\n\r\n ✅ Sim, em condições normais oferece nitidez satisfatória, mas não substitui câmeras noturnas profissionais.\r\n\r\n❓ Posso usar em viagens conectada a Power Bank?\r\n\r\n ✅ Sim, desde que esteja ligada no USB, funciona em fontes externas.', 66.00, 'tecnologia', 'https://down-br.img.susercontent.com/file/sg-11134201-824jh-me65360ggmx0a6@resize_w450_nl.webp', 'https://down-br.img.susercontent.com/file/sg-11134201-824iz-me653hib2hhd37@resize_w450_nl.webp', 'https://down-br.img.susercontent.com/file/sg-11134201-824hg-me653ppxgs9192@resize_w450_nl.webp', 'https://down-br.img.susercontent.com/file/sg-11134201-824gj-me653qtmedxfb0@resize_w450_nl.webp'),
(2, 'Kit Progressiva Selagem - Blindagem dos Fios Profissional + Shampoo 1L + Btx 1Kilo', 'https://down-br.img.susercontent.com/file/br-11134207-81ztt-mklncum3sbgj3b@resize_w450_nl.webp', 'Quer cabelos lisos, sedosos e livres do frizz sem sair de casa? O Kit Blindagem Dos Fios da  Cosmetics com Btx é o segredo dos profissionais da beleza e agora pode ser seu!\r\n\r\n** Benefícios que você sente desde a primeira aplicação:\r\n\r\nFios disciplinados, macios e sem frizz\r\n\r\nBrilho intenso e toque sedoso\r\n\r\nProteção térmica e contra agressões externas\r\n\r\nHidratação profunda e reparação da fibra capilar\r\n\r\nRedução de volume e tratamento completo para fios danificados\r\n\r\n• Perfeito para todos os tipos de cabelo:\r\n\r\nRebeldes, crespos, volumosos, com luzes ou quimicamente tratados', 29.70, 'cosmeticos', 'https://down-br.img.susercontent.com/file/br-11134207-81ztd-mklncum167ep37@resize_w450_nl.webp', 'https://down-br.img.susercontent.com/file/br-11134207-81ztl-mklncum3qww398@resize_w450_nl.webp', 'https://down-br.img.susercontent.com/file/br-11134207-81zu5-mklncumkn4sg38@resize_w450_nl.webp', 'https://down-br.img.susercontent.com/file/br-11134207-81zub-mklncumajbpc7b@resize_w450_nl.webp'),
(3, 'Projetor 4K HD 150 Polegadas Celular, Tv B0x, Xbox, PS, Pc, Wifi e Bluetooth HY300 Magcubic 110/220', 'https://down-br.img.susercontent.com/file/sg-11134201-82604-ml8366rn0idd21@resize_w450_nl.webp', 'Leia com atenção:\r\n\r\n- Envio Imediato em menos de 24 Horas\r\n\r\n- Produto testado com Garantia\r\n\r\n- Produtos Pronta Entrega No Brasil\r\n\r\n- Suporte pós compra\r\n\r\n( Qualquer dúvida estamos a disposição no chat )\r\n\r\n\r\n\r\nCaracterísticas:\r\n\r\n- Tamanho da projeção: 40-150 polegadas\r\n\r\n- Resolução óptica: 1280x720dpi\r\n\r\n- Zoom: 1,35x\r\n\r\n- Entrada/saída: Hdmi E Usb\r\n\r\n- Correção de Imagem Automática\r\n\r\n- Sistema Compatível: Android e iPhone\r\n\r\n- Possui Bluetooth\r\n\r\n- Alto-falante embutido\r\n\r\n- Ansi Lumens:200\r\n\r\n- Sistema: ANDROID\r\n\r\n- Portátil\r\n\r\n- Exibição de projeção de tela de 130\"\r\n\r\n- Distância de projeção 1.2 metros a 4 metros\r\n\r\n\r\n\r\nCompatibilidade:\r\n\r\n- Tv B0x\r\n\r\n- Pendrive\r\n\r\n- Computador\r\n\r\n- Celular (  iPhone e Android )\r\n\r\n- Xb0x ( Todos )\r\n\r\n- PlayStation ( Todos )\r\n\r\n- Caixa De Som ( Todos )\r\n\r\n\r\n\r\nEspecificações:\r\n\r\n- Marca: Magcubic\r\n\r\n- Peso: 900g\r\n\r\n- Entrada DC 19 v 3A & OTG\r\n\r\n- Contraste: 3001:1-4000:1\r\n\r\n- Tecnologia de projeção: Led\r\n\r\n- F0nte de luz: Led\r\n\r\n- Modo projetivo: T4\r\n\r\n- Escala da tela: 4:3/16:9\r\n\r\n- Projetor de Home Theater: Sim\r\n\r\n- Brilho: 8000 lúmens\r\n\r\n- Vida útil da l4mpada: 50000 Horas\r\n\r\n\r\n\r\nItens Inclusos:\r\n\r\n1 - Projetor\r\n\r\n1 - Controle Remoto\r\n\r\n1 - Cabo De Alimentaçã0\r\n\r\n1 - Manual', 180.40, 'tecnologia', 'https://down-br.img.susercontent.com/file/sg-11134201-82635-ml83686ttfcx04@resize_w450_nl.webp', 'https://down-br.img.susercontent.com/file/sg-11134201-8261b-ml836a7yuww826@resize_w450_nl.webp', 'https://down-br.img.susercontent.com/file/sg-11134201-82616-ml836c6h1r0k7f@resize_w450_nl.webp', 'https://down-br.img.susercontent.com/file/sg-11134201-8261w-ml836f493abk1b@resize_w450_nl.webp'),
(5, 'Lavadora de Alta Pressão Potente Compacta 1200W Porta Detergente Lav1300 Vonder', 'https://down-br.img.susercontent.com/file/sg-11134201-7reou-m83egtsfqg7rd7@resize_w450_nl.webp', 'Você estará Comprando:\r\n\r\n01 Lavadora de Alta Pressão Lav 1300\r\n\r\n01 Recipiente para detergente\r\n\r\n01 Mangueira de alta pressão com 3 metros\r\n\r\n01 Lança com bico ajustável\r\n\r\n01 Pistola com gatilho \r\n\r\n01 Conector engate rápido de 1/2\" com filtro interno lavável\r\n\r\n\r\n\r\nInformações da Lavadora:\r\n\r\nConta com sistema que gera mais pressão e libera menos água, tornando-a mais eficiente e diminuindo desperdícios. Em média, uma torneira aberta consome 1.800 litros de água por hora. Com o uso da Lavadora de Alta Pressão LAV 1300 esse consumo cai para 300 litros por hora, promovendo grande economia de água. Possui alça, suportes para armazenar a pistola e o cabo elétrico, promovendo maior organização. Bico da lança ajustável, com jato leque ou concentrado e acompanha ainda acessório para detergente. Conta também com sistema stop total que proporciona maior praticidade e economia de água e energia, desligando o motor toda vez que o gatilho é liberado. Pistões da bomba em aço inox, garantindo maior resistência e durabilidade.\r\n\r\nUso doméstico. Indicada para limpezas em geral, com maior remoção de sujeira, devido a alta pressão de saída da água. Ideal para os mais diversos usos, como na limpeza de pisos, carros, motos, bicicletas, muros e muito mais! Basta regular a saída de água no bico, alternando entre jato leque e concentrado para obter a máxima eficiência na limpeza.\r\n\r\n\r\n\r\nInformações Técnicas:\r\n\r\nModelo: Lav 1300\r\n\r\nMarca: Vonder\r\n\r\nPotência: 1200W (1,3cv/hp)\r\n\r\nTensão: 127v ou 220v (Escolher, conforme disponibilidade)\r\n\r\nFrequência: 60Hz\r\n\r\nTipo de Motor: Universal\r\n\r\nMaterial dos Pistões da Bomba: Aço inox\r\n\r\nAplicação: Uso Leve\r\n\r\nTemperatura Máxima Entrada de Água: 40 graus\r\n\r\nPressão Máxima de saída de água: 1.300 lbf/pol² - 90 bar - 9 MPa\r\n\r\nPressão nominal de saída de água: 870 lbf/pol² - 60 bar - 6 MPa\r\n\r\nVazão Máxima: 390 litros/hora - 6,5 litros/min\r\n\r\nVazão nominal: 300 litros/hora - 5 litros/min\r\n\r\nSegue norma: IEC 60335-1 e IEC 60335-2-79\r\n\r\nComprimento do Cabo Elétrico: 5 Metros\r\n\r\nComprimento da Mangueira: 3 Metros\r\n\r\nNível de ruído: 75 dB(A)\r\n\r\nCor: Amarela e Preta\r\n\r\nDimensões Aproximadas CxLxA: 180x300x370mm\r\n\r\nPeso Aproximado: 4,2kg\r\n\r\nGarantia legal: 90 dias + Garantia contratual: 9 meses', 363.00, 'casaferramentas', 'https://down-br.img.susercontent.com/file/sg-11134201-7reoh-m8yvml7nh93t01@resize_w450_nl.webp', 'https://down-br.img.susercontent.com/file/sg-11134201-7reqn-m8yvmngo83ahc0@resize_w450_nl.webp', 'https://down-br.img.susercontent.com/file/sg-11134201-7reof-m8yvmpf5ed9ebe@resize_w450_nl.webp', 'https://down-br.img.susercontent.com/file/sg-11134201-7reoj-m8yvmsuwbv6x47@resize_w450_nl.webp'),
(6, 'Sandália Slide Plataforma Tratorada 2 Tiras Feminina', 'https://down-br.img.susercontent.com/file/br-11134207-81ztc-mk9tzv9hupz612@resize_w450_nl.webp', '🌿 Sandália Papete Plataforma Confort \r\n\r\n\r\n\r\nA sandália papete perfeita para quem busca conforto, estilo e praticidade no dia a dia. Com design moderno e robusto, ela é ideal para compor looks casuais e urbanos, garantindo leveza e segurança em cada passo.\r\n\r\n\r\n\r\nFabricada em material emborrachado de alta qualidade, oferece excelente durabilidade, além de ser fácil de limpar. Sua plataforma tratorada proporciona mais estabilidade, enquanto a palmilha anatômica garante conforto prolongado, mesmo após horas de uso.\r\n\r\n\r\n\r\nAs tiras largas cruzadas dão firmeza aos pés e um visual atual, tornando essa sandália uma ótima escolha para uso diário, passeios, viagens e momentos de lazer.\r\n\r\n\r\n\r\n⸻\r\n\r\n\r\n\r\n✅ Características:\r\n\r\n	•	Modelo: Papete Plataforma\r\n\r\n	•	Material: Emborrachado\r\n\r\n	•	Palmilha: Anatômica e confortável\r\n\r\n	•	Solado: Alto, tratorado e antiderrapante\r\n\r\n	•	Estilo: Casual / Urbano\r\n\r\n	•	Fácil de calçar\r\n\r\n\r\n\r\n⸻\r\n\r\n\r\n\r\n📦 Ideal para:\r\n\r\n\r\n\r\n✔ Uso diário\r\n\r\n✔ Passeios e lazer\r\n\r\n✔ Looks modernos e confortáveis\r\n\r\n       \r\n\r\n       FOTO REAL DO PRODUTO \r\n\r\n\r\n\r\n\r\n\r\n    Tabela de medidas Aproximadas\r\n\r\n   \r\n\r\n      36/37 - - - - - - - - - 26 cm\r\n\r\n👉 Garanta já a sua e sinta o conforto desde o primeiro passo!', 88.00, 'feminina', 'https://down-br.img.susercontent.com/file/br-11134207-81ztc-mk9tzv9i1qte9e@resize_w450_nl.webp', 'https://down-br.img.susercontent.com/file/br-11134207-81ztc-mk9tzv9i4jya58@resize_w450_nl.webp', 'https://down-br.img.susercontent.com/file/br-11134207-81ztc-mk9tzv9hyxoi32@resize_w450_nl.webp', 'https://down-br.img.susercontent.com/file/br-11134207-81ztc-mk9tzv9hxj42a7@resize_w450_nl.webp');

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `data_cadastro` timestamp NOT NULL DEFAULT current_timestamp(),
  `nivel` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
