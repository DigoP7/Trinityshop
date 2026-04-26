# TrinityShop 🛒

O **TrinityShop** é um sistema de e-commerce Full Stack desenvolvido para gerenciar vendas, produtos e usuários. O projeto foi construído para demonstrar competências em lógica de backend, modelagem de banco de dados relacional e criação de interfaces responsivas.

## 🚀 Tecnologias Utilizadas

* **Backend:** PHP
* **Banco de Dados:** MySQL
* **Frontend:** HTML5 e CSS3

## 🛠️ Funcionalidades

* **Sistema de Autenticação:** Login e cadastro de usuários com validação.
* **Níveis de Acesso:** Diferenciação entre usuários comuns e administradores (ADM).
* **Gestão de Dados:** Persistência de informações de produtos e registros de conta.
* **Conexão Segura:** Estrutura preparada para ambientes de desenvolvimento local.

## 📋 Como rodar o projeto

Para testar o projeto na sua máquina, siga os passos abaixo:

### 1. Requisitos
Certifique-se de ter um servidor local instalado (como **XAMPP**, WampServer ou Laragon) com PHP e MySQL habilitados.

### 2. Configuração do Banco de Dados
1. Acesse o seu gerenciador de banco de dados (ex: phpMyAdmin).
2. Crie um banco de dados chamado `loja_db`.
3. Importe o arquivo SQL que está na pasta `/database` (ou na raiz do projeto) para criar as tabelas necessárias.

### 3. Configuração do PHP
O arquivo `conexao.php` já vem configurado com os padrões do XAMPP:
* **Host:** localhost
* **Usuário:** root
* **Senha:** (vazio)
* **Banco:** loja_db

Se o seu ambiente usar credenciais diferentes, basta editar as variáveis no arquivo `conexao.php`.

### 4. Acesso ao Painel de ADM
Após criar uma conta pelo formulário do site, você pode se tornar administrador acessando a tabela de usuários no banco de dados e alterando o campo de nível de acesso do seu registro.

---
Desenvolvido por [Rodrigo Massimino].

## 🚧 Status do Projeto: Em Desenvolvimento

O **TrinityShop** é um projeto contínuo. Atualmente, o foco está na estruturação do core do sistema. 

**Próximos passos e melhorias planejadas:**
* [ ] Finalização do painel administrativo completo.
* [ ] Implementação de carrinho de compras dinâmico.
* [ ] Melhorias na estilização e responsividade (CSS).
* [ ] Integração de filtros de busca para produtos.
* [ ] Melhorias no cadastro de usuários.
