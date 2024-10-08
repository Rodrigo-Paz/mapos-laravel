-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 08/10/2024 às 18:20
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `painel2`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `activity_log`
--

CREATE TABLE `activity_log` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `log_name` varchar(255) DEFAULT NULL,
  `description` text NOT NULL,
  `subject_type` varchar(255) DEFAULT NULL,
  `event` varchar(255) DEFAULT NULL,
  `subject_id` bigint(20) UNSIGNED DEFAULT NULL,
  `causer_type` varchar(255) DEFAULT NULL,
  `causer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`properties`)),
  `batch_uuid` char(36) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `activity_log`
--

INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `event`, `subject_id`, `causer_type`, `causer_id`, `properties`, `batch_uuid`, `created_at`, `updated_at`) VALUES
(1, 'default', 'created', 'App\\Models\\User', 'created', 1, NULL, NULL, '{\"attributes\":{\"name\":\"Admin\",\"email\":\"admin@admin.com\"}}', NULL, '2023-11-07 22:58:39', '2023-11-07 22:58:39'),
(2, 'default', 'created', 'App\\Models\\User', 'created', 2, NULL, NULL, '{\"attributes\":{\"name\":\"Admin\",\"email\":\"admin@admin.com\"}}', NULL, '2023-11-07 23:17:46', '2023-11-07 23:17:46'),
(3, 'default', 'created', 'App\\Models\\User', 'created', 3, NULL, NULL, '{\"attributes\":{\"name\":\"Admin2\",\"email\":\"admin2@admin2.com\"}}', NULL, '2023-11-07 23:36:58', '2023-11-07 23:36:58'),
(4, 'default', 'created', 'App\\Models\\User', 'created', 4, 'App\\Models\\User', 3, '{\"attributes\":{\"name\":\"Usuario\",\"email\":\"user@user.com\"}}', NULL, '2023-11-08 01:42:31', '2023-11-08 01:42:31'),
(5, 'default', 'created', 'App\\Models\\User', 'created', 5, 'App\\Models\\User', 2, '{\"attributes\":{\"name\":\"Luiz\",\"email\":\"luiz@luiz.com\"}}', NULL, '2023-11-10 15:00:13', '2023-11-10 15:00:13'),
(6, 'default', 'updated', 'App\\Models\\User', 'updated', 2, 'App\\Models\\User', 2, '{\"attributes\":{\"name\":\"SuperAdmin\",\"email\":\"admin@admin.com\"},\"old\":{\"name\":\"SuperAdmin\",\"email\":\"admin@admin.com\"}}', NULL, '2023-11-10 23:57:28', '2023-11-10 23:57:28'),
(7, 'default', 'created', 'App\\Models\\User', 'created', 6, NULL, NULL, '{\"attributes\":{\"name\":\"Marcos\",\"email\":\"marco@marco.com\"}}', NULL, '2023-11-12 17:44:01', '2023-11-12 17:44:01'),
(8, 'default', 'created', 'App\\Models\\User', 'created', 7, NULL, NULL, '{\"attributes\":{\"name\":\"Daniel\",\"email\":\"daniel@daniel.com\"}}', NULL, '2023-11-12 17:51:40', '2023-11-12 17:51:40'),
(9, 'default', 'created', 'App\\Models\\User', 'created', 8, NULL, NULL, '{\"attributes\":{\"name\":\"Jhon\",\"email\":\"jhon@jhon.com\"}}', NULL, '2023-11-12 18:00:47', '2023-11-12 18:00:47'),
(10, 'default', 'created', 'App\\Models\\User', 'created', 9, NULL, NULL, '{\"attributes\":{\"name\":\"Silas\",\"email\":\"silas@silas.com\"}}', NULL, '2023-11-12 22:57:55', '2023-11-12 22:57:55'),
(11, 'default', 'created', 'App\\Models\\User', 'created', 10, NULL, NULL, '{\"attributes\":{\"name\":\"Stephanie\",\"email\":\"stephanie@stephanie.com\"}}', NULL, '2023-11-14 21:19:09', '2023-11-14 21:19:09'),
(12, 'default', 'created', 'App\\Models\\User', 'created', 11, NULL, NULL, '{\"attributes\":{\"name\":\"Bruno\",\"email\":\"bruno@bruno.com\"}}', NULL, '2023-11-14 22:17:06', '2023-11-14 22:17:06'),
(13, 'default', 'created', 'App\\Models\\User', 'created', 12, NULL, NULL, '{\"attributes\":{\"name\":\"Marcelo\",\"email\":\"marcelo@marcelo.com\"}}', NULL, '2023-11-15 14:55:08', '2023-11-15 14:55:08'),
(14, 'default', 'created', 'App\\Models\\User', 'created', 13, NULL, NULL, '{\"attributes\":{\"name\":\"Marco\",\"email\":\"marco@marco.com\"}}', NULL, '2023-11-15 16:10:03', '2023-11-15 16:10:03'),
(15, 'default', 'created', 'App\\Models\\User', 'created', 14, NULL, NULL, '{\"attributes\":{\"name\":\"Daniel\",\"email\":\"daniel@daniel.com\"}}', NULL, '2023-11-17 02:19:26', '2023-11-17 02:19:26'),
(16, 'default', 'created', 'App\\Models\\User', 'created', 15, NULL, NULL, '{\"attributes\":{\"name\":\"Deivison\",\"email\":\"deivison@deivison.com\"}}', NULL, '2023-11-18 02:51:17', '2023-11-18 02:51:17'),
(17, 'default', 'created', 'App\\Models\\User', 'created', 16, NULL, NULL, '{\"attributes\":{\"name\":\"Mateus\",\"email\":\"mateus@mateus.com\"}}', NULL, '2023-11-18 22:50:48', '2023-11-18 22:50:48'),
(18, 'default', 'created', 'App\\Models\\User', 'created', 17, NULL, NULL, '{\"attributes\":{\"name\":\"Jose\",\"email\":\"jose@jose.com\"}}', NULL, '2023-11-19 15:18:24', '2023-11-19 15:18:24'),
(19, 'default', 'created', 'App\\Models\\User', 'created', 18, NULL, NULL, '{\"attributes\":{\"name\":\"Pedro\",\"email\":\"pedro@pedro.com\"}}', NULL, '2023-11-19 15:24:27', '2023-11-19 15:24:27'),
(20, 'default', 'created', 'App\\Models\\User', 'created', 19, NULL, NULL, '{\"attributes\":{\"name\":\"Neto\",\"email\":\"neto@neto.com\"}}', NULL, '2023-11-19 15:35:45', '2023-11-19 15:35:45'),
(21, 'default', 'created', 'App\\Models\\User', 'created', 20, NULL, NULL, '{\"attributes\":{\"name\":\"Bras\",\"email\":\"bras@bras.com\"}}', NULL, '2023-11-19 15:46:40', '2023-11-19 15:46:40'),
(22, 'default', 'created', 'App\\Models\\User', 'created', 21, NULL, NULL, '{\"attributes\":{\"name\":\"Bras\",\"email\":\"bras@bras.com\"}}', NULL, '2023-11-19 15:57:02', '2023-11-19 15:57:02'),
(23, 'default', 'created', 'App\\Models\\User', 'created', 22, NULL, NULL, '{\"attributes\":{\"name\":\"Jonas\",\"email\":\"jonas@jonas.com\"}}', NULL, '2023-11-19 16:07:39', '2023-11-19 16:07:39'),
(24, 'default', 'created', 'App\\Models\\User', 'created', 23, NULL, NULL, '{\"attributes\":{\"name\":\"Jonas\",\"email\":\"jonas@jonas.com\"}}', NULL, '2023-11-19 16:13:30', '2023-11-19 16:13:30'),
(25, 'default', 'created', 'App\\Models\\User', 'created', 24, NULL, NULL, '{\"attributes\":{\"name\":\"Jeni\",\"email\":\"jeni@jeni.com\"}}', NULL, '2023-11-19 16:25:03', '2023-11-19 16:25:03'),
(26, 'default', 'created', 'App\\Models\\User', 'created', 25, NULL, NULL, '{\"attributes\":{\"name\":\"Dandara\",\"email\":\"dandara@dandara.com\"}}', NULL, '2023-11-25 01:54:14', '2023-11-25 01:54:14'),
(27, 'default', 'created', 'App\\Models\\User', 'created', 26, NULL, NULL, '{\"attributes\":{\"name\":\"Raul\",\"email\":\"raul@raul.com\"}}', NULL, '2023-12-02 16:22:31', '2023-12-02 16:22:31'),
(28, 'default', 'created', 'App\\Models\\User', 'created', 27, NULL, NULL, '{\"attributes\":{\"name\":\"Jane\",\"email\":\"jane@jane.com\"}}', NULL, '2023-12-03 00:42:52', '2023-12-03 00:42:52'),
(29, 'default', 'created', 'App\\Models\\User', 'created', 28, NULL, NULL, '{\"attributes\":{\"name\":\"Jane\",\"email\":\"jane@jane.com\"}}', NULL, '2023-12-03 00:57:02', '2023-12-03 00:57:02'),
(30, 'default', 'created', 'App\\Models\\User', 'created', 29, NULL, NULL, '{\"attributes\":{\"name\":\"Gra\\u00e7a\",\"email\":\"graca@graca.com\"}}', NULL, '2023-12-03 01:13:26', '2023-12-03 01:13:26'),
(31, 'default', 'created', 'App\\Models\\User', 'created', 30, NULL, NULL, '{\"attributes\":{\"name\":\"Lucio\",\"email\":\"lucio@lucio.com\"}}', NULL, '2024-10-03 03:32:28', '2024-10-03 03:32:28');

-- --------------------------------------------------------

--
-- Estrutura para tabela `catalogos`
--

CREATE TABLE `catalogos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `produto` varchar(255) NOT NULL,
  `descricao` varchar(255) NOT NULL,
  `preco` varchar(255) NOT NULL,
  `desconto` varchar(255) NOT NULL,
  `obs` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `catalogos`
--

INSERT INTO `catalogos` (`id`, `produto`, `descricao`, `preco`, `desconto`, `obs`, `created_at`, `updated_at`) VALUES
(4, 'Produto teste', 'descrição do produto teste', '1.250,00', '50,00', 'Teste do produto', '2023-11-19 23:33:33', '2023-11-19 23:33:33');

-- --------------------------------------------------------

--
-- Estrutura para tabela `catalogo_team`
--

CREATE TABLE `catalogo_team` (
  `id` int(20) NOT NULL,
  `catalogo_id` bigint(20) UNSIGNED DEFAULT NULL,
  `team_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `catalogo_team`
--

INSERT INTO `catalogo_team` (`id`, `catalogo_id`, `team_id`) VALUES
(3, 4, 29);

-- --------------------------------------------------------

--
-- Estrutura para tabela `categorias`
--

CREATE TABLE `categorias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nomeCategoria` varchar(255) NOT NULL,
  `cadastro` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `tipo` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `clientes`
--

CREATE TABLE `clientes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `assas_id` varchar(255) NOT NULL,
  `nomeCliente` varchar(255) NOT NULL,
  `sexo` varchar(255) NOT NULL,
  `pessoa_fisica` varchar(255) NOT NULL,
  `documento` varchar(255) NOT NULL,
  `telefone` varchar(255) NOT NULL,
  `celular` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `rua` varchar(255) NOT NULL,
  `numero` varchar(255) NOT NULL,
  `bairro` varchar(255) NOT NULL,
  `cidade` varchar(255) NOT NULL,
  `estado` varchar(255) NOT NULL,
  `cep` varchar(255) NOT NULL,
  `contato` varchar(255) NOT NULL,
  `complemento` varchar(255) NOT NULL,
  `fornecedor` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `clientes`
--

INSERT INTO `clientes` (`id`, `team_id`, `assas_id`, `nomeCliente`, `sexo`, `pessoa_fisica`, `documento`, `telefone`, `celular`, `email`, `senha`, `rua`, `numero`, `bairro`, `cidade`, `estado`, `cep`, `contato`, `complemento`, `fornecedor`, `created_at`, `updated_at`) VALUES
(9, NULL, '99999999', 'Maria Aparecida', '00000000', '99999999', '22333345', '3199888888', '3188888888', 'maria@gmail.com', '123456', 'Rua Graça', '544', 'Centro', 'Curvelo', 'MG', '34555554', 'MARIA', 'Casa', '88776665', '2024-10-08 16:18:21', '2024-10-08 16:18:21');

-- --------------------------------------------------------

--
-- Estrutura para tabela `cliente_team`
--

CREATE TABLE `cliente_team` (
  `cliente_id` bigint(50) UNSIGNED DEFAULT NULL,
  `team_id` bigint(50) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cliente_team`
--

INSERT INTO `cliente_team` (`cliente_id`, `team_id`) VALUES
(9, 30);

-- --------------------------------------------------------

--
-- Estrutura para tabela `contas`
--

CREATE TABLE `contas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nomeConta` varchar(255) NOT NULL,
  `banco` varchar(255) NOT NULL,
  `numero` varchar(255) NOT NULL,
  `saldo` varchar(255) NOT NULL,
  `cadastro` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `tipo` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `domains`
--

CREATE TABLE `domains` (
  `id` int(10) UNSIGNED NOT NULL,
  `domain` varchar(255) NOT NULL,
  `tenant_id` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `domains`
--

INSERT INTO `domains` (`id`, `domain`, `tenant_id`, `created_at`, `updated_at`) VALUES
(13, 'superadmin.localhost', 'superadmin', '2023-11-11 01:18:11', '2023-11-11 01:18:11'),
(14, 'maria.localhost', 'maria', '2023-11-11 01:26:35', '2023-11-11 01:26:35'),
(15, 'marco.localhost', 'marco', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `empresas`
--

CREATE TABLE `empresas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tenant_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `equipamentos`
--

CREATE TABLE `equipamentos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `equipamento` varchar(255) NOT NULL,
  `numSerie` varchar(255) NOT NULL,
  `modelo` varchar(255) NOT NULL,
  `cor` varchar(255) NOT NULL,
  `descricao` varchar(255) NOT NULL,
  `tensao` varchar(255) NOT NULL,
  `potencia` varchar(255) NOT NULL,
  `voltagem` varchar(255) NOT NULL,
  `dataFabricacao` varchar(255) NOT NULL,
  `marca_id` bigint(20) UNSIGNED NOT NULL,
  `cliente_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `equipamento_team`
--

CREATE TABLE `equipamento_team` (
  `equipamento_id` bigint(50) UNSIGNED DEFAULT NULL,
  `team_id` bigint(50) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `garantias`
--

CREATE TABLE `garantias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `dataGarantia` varchar(255) NOT NULL,
  `refGarantia` varchar(255) NOT NULL,
  `textoGarantia` varchar(255) NOT NULL,
  `faturado` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `garantia_team`
--

CREATE TABLE `garantia_team` (
  `garantia_id` bigint(50) UNSIGNED DEFAULT NULL,
  `team_id` bigint(50) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `lancamentos`
--

CREATE TABLE `lancamentos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nomeLancamento` varchar(255) NOT NULL,
  `valor` varchar(255) NOT NULL,
  `desconto` varchar(255) NOT NULL,
  `valorDesconto` varchar(255) NOT NULL,
  `tipoDesconto` varchar(255) NOT NULL,
  `dataVencimento` varchar(255) NOT NULL,
  `dataPagamento` varchar(255) NOT NULL,
  `baixado` varchar(255) NOT NULL,
  `clienteFornecedor` varchar(255) NOT NULL,
  `formaPgto` varchar(255) NOT NULL,
  `tipo` varchar(255) NOT NULL,
  `anexo` varchar(255) NOT NULL,
  `observacoes` varchar(255) NOT NULL,
  `cliente_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `categoria_id` bigint(20) UNSIGNED NOT NULL,
  `conta_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `lancamento_team`
--

CREATE TABLE `lancamento_team` (
  `lancamento_id` bigint(50) UNSIGNED DEFAULT NULL,
  `team_id` bigint(50) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `marcas`
--

CREATE TABLE `marcas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `marca` varchar(255) NOT NULL,
  `cadastro` varchar(255) NOT NULL,
  `situação` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `marca_team`
--

CREATE TABLE `marca_team` (
  `marca_id` bigint(50) UNSIGNED DEFAULT NULL,
  `team_id` bigint(50) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_11_02_142009_create_permission_tables', 1),
(6, '2023_11_03_214456_create_clientes_table', 1),
(7, '2023_11_03_214512_create_produtos_table', 1),
(8, '2023_11_03_214537_create_servicos_table', 1),
(9, '2023_11_03_215705_create_marcas_table', 1),
(10, '2023_11_03_215706_create_equipamentos_table', 1),
(11, '2023_11_03_223218_create_garantias_table', 1),
(12, '2023_11_03_225922_create_categorias_table', 1),
(13, '2023_11_03_230333_create_contas_table', 1),
(14, '2023_11_03_230334_create_lancamentos_table', 1),
(15, '2023_11_03_230336create_os_table', 1),
(16, '2023_11_03_230337_create_vendas_table', 1),
(17, '2023_11_05_100416_create_activity_log_table', 1),
(18, '2023_11_05_100417_add_event_column_to_activity_log_table', 1),
(19, '2023_11_05_100418_add_batch_uuid_column_to_activity_log_table', 1),
(20, '2019_09_15_000010_create_tenants_table', 2),
(21, '2019_09_15_000020_create_domains_table', 2),
(22, '2023_11_11_001515_create_teams_table', 3),
(23, '2023_11_11_182027_create_teams_table', 4),
(24, '2023_11_18_204859_create_planos_table', 5),
(25, '2023_11_19_141215_create_catalogos_table', 6);

-- --------------------------------------------------------

--
-- Estrutura para tabela `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL DEFAULT 6,
  `model_type` varchar(255) NOT NULL DEFAULT 'App\\Models\\User',
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(2, 'App\\Models\\User', 2),
(2, 'App\\Models\\User', 3),
(2, 'App\\Models\\User', 25),
(5, 'App\\Models\\User', 26),
(6, 'App\\Models\\User', 23),
(6, 'App\\Models\\User', 24),
(6, 'App\\Models\\User', 28),
(6, 'App\\Models\\User', 29);

-- --------------------------------------------------------

--
-- Estrutura para tabela `os`
--

CREATE TABLE `os` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `dataInicial` varchar(255) NOT NULL,
  `dataFinal` varchar(255) NOT NULL,
  `garantia` varchar(255) NOT NULL,
  `descricaoProduto` varchar(255) NOT NULL,
  `defeito` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `observacoes` varchar(255) NOT NULL,
  `laudoTecnico` varchar(255) NOT NULL,
  `valorTotal` varchar(255) NOT NULL,
  `desconto` varchar(255) NOT NULL,
  `valorDesconto` varchar(255) NOT NULL,
  `tipoDesconto` varchar(255) NOT NULL,
  `faturado` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `os_team`
--

CREATE TABLE `os_team` (
  `os_id` bigint(50) UNSIGNED DEFAULT NULL,
  `team_id` bigint(50) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(9, 'equipamento_read', 'web', '2023-11-07 23:57:53', '2023-11-07 23:57:53'),
(10, 'equipamento_create', 'web', '2023-11-07 23:57:53', '2023-11-07 23:57:53'),
(11, 'equipamento_update', 'web', '2023-11-07 23:57:54', '2023-11-07 23:57:54'),
(12, 'equipamento_delete', 'web', '2023-11-07 23:57:54', '2023-11-07 23:57:54'),
(13, 'cliente_read', 'web', '2023-11-07 23:58:48', '2023-11-07 23:58:48'),
(14, 'cliente_create', 'web', '2023-11-07 23:58:48', '2023-11-07 23:58:48'),
(15, 'cliente_update', 'web', '2023-11-07 23:58:48', '2023-11-07 23:58:48'),
(16, 'cliente_delete', 'web', '2023-11-07 23:58:48', '2023-11-07 23:58:48'),
(17, 'garntia_read', 'web', '2023-11-07 23:59:34', '2023-11-07 23:59:34'),
(18, 'garantia_create', 'web', '2023-11-07 23:59:34', '2023-11-07 23:59:34'),
(19, 'garantia_update', 'web', '2023-11-07 23:59:34', '2023-11-07 23:59:34'),
(20, 'garantia_delete', 'web', '2023-11-07 23:59:34', '2023-11-07 23:59:34'),
(21, 'garantia_read', 'web', '2023-11-08 00:01:03', '2023-11-08 00:01:03'),
(22, 'lancamento_read', 'web', '2023-11-08 00:01:52', '2023-11-08 00:01:52'),
(23, 'lancamento_create', 'web', '2023-11-08 00:01:52', '2023-11-08 00:01:52'),
(24, 'lancamento_update', 'web', '2023-11-08 00:01:52', '2023-11-08 00:01:52'),
(25, 'lancamento_delete', 'web', '2023-11-08 00:01:52', '2023-11-08 00:01:52'),
(26, 'marca_read', 'web', '2023-11-08 00:02:35', '2023-11-08 00:02:35'),
(27, 'marca_create', 'web', '2023-11-08 00:02:35', '2023-11-08 00:02:35'),
(28, 'marca_update', 'web', '2023-11-08 00:02:35', '2023-11-08 00:02:35'),
(29, 'marca_delete', 'web', '2023-11-08 00:02:35', '2023-11-08 00:02:35'),
(30, 'os_read', 'web', '2023-11-08 00:03:11', '2023-11-08 00:03:11'),
(31, 'os_create', 'web', '2023-11-08 00:03:11', '2023-11-08 00:03:11'),
(32, 'os_update', 'web', '2023-11-08 00:03:11', '2023-11-08 00:03:11'),
(33, 'os_delete', 'web', '2023-11-08 00:03:11', '2023-11-08 00:03:11'),
(34, 'permission_read', 'web', '2023-11-08 00:03:56', '2023-11-08 00:03:56'),
(35, 'permission_create', 'web', '2023-11-08 00:03:56', '2023-11-08 00:03:56'),
(36, 'permission_update', 'web', '2023-11-08 00:03:56', '2023-11-08 00:03:56'),
(37, 'permission_delete', 'web', '2023-11-08 00:03:56', '2023-11-08 00:03:56'),
(38, 'produto_read', 'web', '2023-11-08 00:04:36', '2023-11-08 00:04:36'),
(39, 'produto_create', 'web', '2023-11-08 00:04:36', '2023-11-08 00:04:36'),
(40, 'produto_update', 'web', '2023-11-08 00:04:36', '2023-11-08 00:04:36'),
(41, 'produto_delete', 'web', '2023-11-08 00:04:36', '2023-11-08 00:04:36'),
(42, 'role_read', 'web', '2023-11-08 00:05:16', '2023-11-08 00:05:16'),
(43, 'role_create', 'web', '2023-11-08 00:05:16', '2023-11-08 00:05:16'),
(44, 'role_update', 'web', '2023-11-08 00:05:16', '2023-11-08 00:05:16'),
(45, 'role_delete', 'web', '2023-11-08 00:05:16', '2023-11-08 00:05:16'),
(46, 'servico_read', 'web', '2023-11-08 00:05:51', '2023-11-08 00:05:51'),
(47, 'servico_create', 'web', '2023-11-08 00:05:51', '2023-11-08 00:05:51'),
(48, 'servico_update', 'web', '2023-11-08 00:05:51', '2023-11-08 00:05:51'),
(49, 'servico_delete', 'web', '2023-11-08 00:05:51', '2023-11-08 00:05:51'),
(50, 'venda_read', 'web', '2023-11-08 00:06:22', '2023-11-08 00:06:22'),
(51, 'venda_create', 'web', '2023-11-08 00:06:22', '2023-11-08 00:06:22'),
(52, 'venda_update', 'web', '2023-11-08 00:06:22', '2023-11-08 00:06:22'),
(53, 'venda_delete', 'web', '2023-11-08 00:06:22', '2023-11-08 00:06:22'),
(54, 'user_read', 'web', '2023-11-08 00:07:00', '2023-11-08 00:07:00'),
(55, 'user_create', 'web', '2023-11-08 00:07:00', '2023-11-08 00:07:00'),
(56, 'user_update', 'web', '2023-11-08 00:07:00', '2023-11-08 00:07:00'),
(57, 'user_delete', 'web', '2023-11-08 00:07:00', '2023-11-08 00:07:00'),
(58, 'acess_admin', 'web', '2023-11-05 01:38:07', '2023-11-05 01:38:07'),
(59, 'tenant_read', 'web', '2023-11-09 13:10:55', '2023-11-09 13:10:55'),
(60, 'tenant_create', 'web', '2023-11-09 13:11:15', '2023-11-09 13:11:15'),
(61, 'tenant_update', 'web', '2023-11-09 13:11:29', '2023-11-09 13:11:29'),
(62, 'tenant_delete', 'web', '2023-11-09 13:11:42', '2023-11-09 13:11:42'),
(63, 'domain_read', 'web', '2023-11-09 15:02:14', '2023-11-09 15:02:14'),
(64, 'domain_create', 'web', '2023-11-09 15:02:28', '2023-11-09 15:02:28'),
(65, 'domain_update', 'web', '2023-11-09 15:02:46', '2023-11-09 15:02:46'),
(66, 'domain_delete', 'web', '2023-11-09 15:02:59', '2023-11-09 15:02:59'),
(67, 'catalogo_read', 'web', '2023-11-10 14:57:52', '2023-11-10 21:53:11'),
(68, 'catalogo_create', 'web', '2023-11-10 14:58:20', '2023-11-10 21:53:28'),
(69, 'catalogo_update', 'web', '2023-11-10 14:58:38', '2023-11-10 21:53:41'),
(70, 'catalogo_delete', 'web', '2023-11-10 14:58:59', '2023-11-10 21:53:53'),
(71, 'team_read', 'web', '2023-11-11 03:31:59', '2023-11-11 03:31:59'),
(72, 'team_create', 'web', '2023-11-11 03:32:13', '2023-11-11 03:32:13'),
(73, 'team_update', 'web', '2023-11-11 03:32:35', '2023-11-11 03:32:35'),
(74, 'team_delete', 'web', '2023-11-11 03:32:49', '2023-11-11 03:32:49'),
(76, 'auditoria_read', 'web', '2023-11-19 16:34:55', '2023-11-19 16:34:55'),
(77, 'auditoria_create', 'web', '2023-11-19 16:34:55', '2023-11-19 16:34:55'),
(78, 'auditoria_update', 'web', '2023-11-19 16:36:02', '2023-11-19 16:36:02'),
(79, 'auditoria_delete', 'web', '2023-11-19 16:36:02', '2023-11-19 16:36:02');

-- --------------------------------------------------------

--
-- Estrutura para tabela `permission_team`
--

CREATE TABLE `permission_team` (
  `permission_id` bigint(20) UNSIGNED DEFAULT NULL,
  `team_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `planos`
--

CREATE TABLE `planos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `team_id` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `produtos`
--

CREATE TABLE `produtos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `codDeBarra` varchar(255) NOT NULL,
  `nomeProduto` varchar(255) NOT NULL,
  `unidade` varchar(255) NOT NULL,
  `precoCompra` varchar(255) NOT NULL,
  `precoVenda` varchar(255) NOT NULL,
  `estoque` varchar(255) NOT NULL,
  `estoqueMinimo` varchar(255) NOT NULL,
  `saida` varchar(255) NOT NULL,
  `entrada` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `produto_team`
--

CREATE TABLE `produto_team` (
  `produto_id` bigint(20) UNSIGNED DEFAULT NULL,
  `team_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'web', '2023-11-07 23:26:05', '2023-11-08 01:43:02'),
(2, 'SuperAdmin', 'web', '2023-11-08 01:17:14', '2023-11-08 01:17:14'),
(3, 'Maneger', 'web', '2023-11-08 01:35:29', '2023-11-08 01:35:29'),
(4, 'User', 'web', '2023-11-08 01:43:49', '2023-11-08 01:43:49'),
(5, 'Tenant', 'web', '2023-11-09 13:49:31', '2023-11-09 13:49:31'),
(6, 'catalogo', 'web', '2023-11-10 14:57:37', '2023-11-10 21:54:15'),
(8, 'lucio', 'web', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(9, 1),
(9, 2),
(9, 3),
(10, 1),
(10, 2),
(10, 3),
(11, 1),
(11, 2),
(11, 3),
(12, 1),
(12, 2),
(12, 3),
(13, 1),
(13, 2),
(13, 3),
(14, 1),
(14, 2),
(14, 3),
(15, 1),
(15, 2),
(15, 3),
(16, 2),
(16, 3),
(17, 1),
(17, 2),
(17, 3),
(18, 1),
(18, 2),
(18, 3),
(19, 1),
(19, 2),
(19, 3),
(20, 1),
(20, 2),
(20, 3),
(21, 1),
(21, 2),
(21, 3),
(22, 1),
(22, 2),
(22, 3),
(23, 1),
(23, 2),
(23, 3),
(24, 1),
(24, 2),
(24, 3),
(25, 1),
(25, 2),
(25, 3),
(26, 1),
(26, 2),
(26, 3),
(27, 1),
(27, 2),
(27, 3),
(28, 1),
(28, 2),
(28, 3),
(29, 1),
(29, 2),
(29, 3),
(30, 1),
(30, 2),
(30, 3),
(31, 1),
(31, 2),
(31, 3),
(32, 1),
(32, 2),
(32, 3),
(33, 1),
(33, 2),
(33, 3),
(34, 1),
(34, 2),
(34, 3),
(35, 1),
(35, 2),
(35, 3),
(36, 1),
(36, 2),
(36, 3),
(37, 1),
(37, 2),
(37, 3),
(38, 1),
(38, 2),
(38, 3),
(39, 1),
(39, 2),
(39, 3),
(40, 1),
(40, 2),
(40, 3),
(41, 1),
(41, 2),
(41, 3),
(42, 1),
(42, 2),
(42, 3),
(43, 1),
(43, 2),
(43, 3),
(44, 1),
(44, 2),
(44, 3),
(45, 1),
(45, 2),
(45, 3),
(46, 1),
(46, 2),
(46, 3),
(47, 1),
(47, 2),
(47, 3),
(48, 1),
(48, 2),
(48, 3),
(49, 1),
(49, 2),
(49, 3),
(50, 1),
(50, 2),
(50, 3),
(51, 1),
(51, 2),
(51, 3),
(52, 1),
(52, 2),
(52, 3),
(53, 1),
(53, 2),
(53, 3),
(54, 1),
(54, 2),
(54, 3),
(55, 1),
(55, 2),
(55, 3),
(56, 1),
(56, 2),
(56, 3),
(57, 1),
(57, 2),
(57, 3),
(58, 1),
(58, 2),
(58, 3),
(58, 4),
(58, 5),
(58, 6),
(59, 1),
(59, 2),
(59, 5),
(60, 1),
(60, 2),
(60, 5),
(61, 1),
(61, 2),
(61, 5),
(62, 1),
(62, 2),
(62, 5),
(63, 1),
(63, 2),
(64, 1),
(64, 2),
(65, 1),
(65, 2),
(66, 1),
(66, 2),
(71, 1),
(71, 2),
(71, 5),
(71, 6),
(72, 1),
(72, 2),
(72, 5),
(73, 1),
(73, 2),
(73, 5),
(74, 1),
(74, 2),
(74, 5),
(76, 2),
(77, 2),
(78, 2),
(79, 2);

-- --------------------------------------------------------

--
-- Estrutura para tabela `role_team`
--

CREATE TABLE `role_team` (
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `team_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `role_team`
--

INSERT INTO `role_team` (`role_id`, `team_id`, `created_at`, `updated_at`) VALUES
(8, 36, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `servicos`
--

CREATE TABLE `servicos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nomeServico` varchar(255) NOT NULL,
  `descricao` varchar(255) NOT NULL,
  `preco` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `servico_team`
--

CREATE TABLE `servico_team` (
  `servico_id` bigint(50) UNSIGNED DEFAULT NULL,
  `team_id` bigint(50) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `teams`
--

CREATE TABLE `teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `teams`
--

INSERT INTO `teams` (`id`, `name`, `created_at`, `updated_at`) VALUES
(26, 'EquipeJose', '2023-11-19 15:22:17', '2023-11-19 15:22:17'),
(27, 'equipeNeto', '2023-11-19 15:38:35', '2023-11-19 15:38:35'),
(28, 'TesteJonas', '2023-11-19 16:14:47', '2023-11-19 16:14:47'),
(29, 'EmpresaGeni', '2023-11-19 16:26:14', '2023-11-19 16:26:14'),
(30, 'SuperAdmin', '2023-11-20 00:33:00', '2023-11-20 00:33:00'),
(31, 'DandaraTeam', '2023-11-25 02:02:58', '2023-11-25 02:02:58'),
(32, 'admin2', '2023-12-02 16:10:53', '2023-12-02 16:10:53'),
(33, 'tenantRaul', '2023-12-02 16:25:52', '2023-12-02 16:25:52'),
(34, 'jane', '2023-12-03 00:44:47', '2023-12-03 00:44:47'),
(35, 'Jane', '2023-12-03 00:58:09', '2023-12-03 00:58:09'),
(36, 'lucio', '2023-12-03 01:15:03', '2023-12-03 01:15:03');

-- --------------------------------------------------------

--
-- Estrutura para tabela `team_user`
--

CREATE TABLE `team_user` (
  `id` int(20) NOT NULL,
  `team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `team_user`
--

INSERT INTO `team_user` (`id`, `team_id`, `user_id`) VALUES
(10, 26, 17),
(11, 27, 19),
(12, 28, 23),
(13, 29, 24),
(14, 30, 2),
(15, 31, 25),
(16, 32, 3),
(17, 33, 26),
(19, 35, 28),
(20, 36, 29),
(21, 30, 30);

-- --------------------------------------------------------

--
-- Estrutura para tabela `team_venda`
--

CREATE TABLE `team_venda` (
  `venda_id` bigint(50) UNSIGNED DEFAULT NULL,
  `team_id` bigint(50) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tenants`
--

CREATE TABLE `tenants` (
  `id` varchar(255) NOT NULL,
  `team_id` bigint(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`data`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tenants`
--

INSERT INTO `tenants` (`id`, `team_id`, `created_at`, `updated_at`, `data`) VALUES
('marco', NULL, '2023-11-12 18:14:40', '2023-11-12 18:14:40', '{\"updated_at\":\"2023-11-12 15:14:40\",\"created_at\":\"2023-11-12 15:14:40\",\"domain\":\"marco.localhost\",\"tenancy_db_name\":\"tenantmarco\"}'),
('maria', NULL, '2023-11-11 01:09:54', '2023-11-11 01:09:54', '{\"updated_at\":\"2023-11-10 22:09:54\",\"created_at\":\"2023-11-10 22:09:54\",\"domain\":\"maria.localhost\",\"tenancy_db_name\":\"tenantmaria\"}'),
('superadmin', NULL, '2023-11-11 01:17:30', '2023-11-11 01:17:30', '{\"updated_at\":\"2023-11-10 22:17:30\",\"created_at\":\"2023-11-10 22:17:30\",\"domain\":\"superadmin.localhost\",\"tenancy_db_name\":\"tenantsuperadmin\"}');

-- --------------------------------------------------------

--
-- Estrutura para tabela `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tenant_id` varchar(255) DEFAULT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL DEFAULT 6,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `users`
--

INSERT INTO `users` (`id`, `tenant_id`, `role_id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'superadmin', 4, 'SuperAdmin', 'admin@admin.com', NULL, '$2y$12$pHS.RRfKgJfB0H8iKBwuvebWt3QCDOjtzJdVmvvV8wHUhfeF8j0n.', NULL, '2023-11-07 23:17:46', '2023-11-10 23:57:28'),
(3, NULL, 4, 'Admin2', 'admin2@admin2.com', NULL, '$2y$12$kg3ZqialVYaCGwmkXYTstus7nyhBc5TfG6AYDtlsHx.MuCSklMvPa', NULL, '2023-11-07 23:36:58', '2023-11-07 23:36:58'),
(4, NULL, 4, 'Usuario', 'user@user.com', NULL, '$2y$12$LUMvkRBlt3illn/zTHpIfuM3qfXV5tOzwKabqbGK1laEWo/KwbGq6', NULL, '2023-11-08 01:42:31', '2023-11-08 01:42:31'),
(13, 'marco', 4, 'Marco', 'marco@marco.com', NULL, '$2y$12$pHS.RRfKgJfB0H8iKBwuvebWt3QCDOjtzJdVmvvV8wHUhfeF8j0n.', NULL, '2023-11-15 16:10:03', '2023-11-15 16:10:03'),
(14, NULL, 4, 'Daniel', 'daniel@daniel.com', NULL, '$2y$12$k5Qv3r2d3ridLTzNkn6V8OqOOON/sTftVRvHCmFuvVxGbcLUeQHlu', NULL, '2023-11-17 02:19:26', '2023-11-17 02:19:26'),
(15, NULL, 4, 'Deivison', 'deivison@deivison.com', NULL, '$2y$12$i1aJqJgjCVQxuibdnMWSUuAQTq7RbTR7SWj4zKAyfo7TPpMjWjEE2', NULL, '2023-11-18 02:51:16', '2023-11-18 02:51:16'),
(16, NULL, 4, 'Mateus', 'mateus@mateus.com', NULL, '$2y$12$gNx5kMxmWeH.ODDjk90XxONyX0u9F9ifqxzaJLkjmWq0wI/zvoKmu', NULL, '2023-11-18 22:50:48', '2023-11-18 22:50:48'),
(17, NULL, 4, 'Jose', 'jose@jose.com', NULL, '$2y$12$5PZuQliAXD5ELlMU9XEo0uNYzVrs.8ummQ7FkHaibL1/s//EViKg.', NULL, '2023-11-19 15:18:22', '2023-11-19 15:18:22'),
(19, NULL, 4, 'Neto', 'neto@neto.com', NULL, '$2y$12$O.GkRByXB9aZA6DugoZ2uuQ/zFAjeg2dv1ln4acXEh19N/83M8cCi', NULL, '2023-11-19 15:35:45', '2023-11-19 15:35:45'),
(23, NULL, 6, 'Jonas', 'jonas@jonas.com', NULL, '$2y$12$E351QRVmtQAChRszFuGuVe.SJDRnP7uyXr/gQpvnfA4gQrSe0TGM2', NULL, '2023-11-19 16:13:30', '2023-11-19 16:13:30'),
(24, NULL, 1, 'Jeni', 'jeni@jeni.com', NULL, '$2y$12$NW7nwIZO.g5UD9HaSfYmnebmOZQWSgLJN2tp4/G4k6.oCUFg5UCVy', NULL, '2023-11-19 16:25:03', '2023-11-19 16:25:03'),
(25, NULL, 6, 'Dandara', 'dandara@dandara.com', NULL, '$2y$12$Zg5HQRaKQj6j9dawewBT3ujIca3TahPbVRzjGW5kLmNPeY.yLfUYe', NULL, '2023-11-25 01:54:14', '2023-11-25 01:54:14'),
(26, NULL, 6, 'Raul', 'raul@raul.com', NULL, '$2y$12$pgN0LMhKugkh6/y13QSOlu0u2kFH5lq0k4xM37I/4cM1.ZMgUdbm2', NULL, '2023-12-02 16:22:31', '2023-12-02 16:22:31'),
(28, NULL, 6, 'Jane', 'jane@jane.com', NULL, '$2y$12$pzBeqopNm9YSgBK0I90a/OMSYk/iGsYQlP/.8nbtOR3M.vHu.WRlq', NULL, '2023-12-03 00:57:02', '2023-12-03 00:57:02'),
(29, NULL, 6, 'Graça', 'graca@graca.com', NULL, '$2y$12$SRFOJykhxkFRp44aVIsD.ONJewJEeqmD03eCAZAGNViK/UwiXZ8OG', NULL, '2023-12-03 01:13:26', '2023-12-03 01:13:26'),
(30, NULL, 6, 'Lucio', 'lucio@lucio.com', NULL, '$2y$12$j/O14w5izRE4n.7Msdin5ORpfVLbrHetFA4BBGnIyw7r2W/sZxp9K', NULL, '2024-10-03 03:32:28', '2024-10-03 03:32:28');

-- --------------------------------------------------------

--
-- Estrutura para tabela `vendas`
--

CREATE TABLE `vendas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `dataVenda` varchar(255) NOT NULL,
  `valorTotal` varchar(255) NOT NULL,
  `desconto` varchar(255) NOT NULL,
  `valorDesconto` varchar(255) NOT NULL,
  `tipoDesconto` varchar(255) NOT NULL,
  `faturado` varchar(255) NOT NULL,
  `observacoes` varchar(255) NOT NULL,
  `observacoesCliente` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject` (`subject_type`,`subject_id`),
  ADD KEY `causer` (`causer_type`,`causer_id`),
  ADD KEY `activity_log_log_name_index` (`log_name`);

--
-- Índices de tabela `catalogos`
--
ALTER TABLE `catalogos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `catalogo_team`
--
ALTER TABLE `catalogo_team`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catalogo_id` (`catalogo_id`),
  ADD KEY `team_id` (`team_id`);

--
-- Índices de tabela `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `team_id` (`team_id`);

--
-- Índices de tabela `cliente_team`
--
ALTER TABLE `cliente_team`
  ADD KEY `cliente_id` (`cliente_id`),
  ADD KEY `team_id` (`team_id`);

--
-- Índices de tabela `contas`
--
ALTER TABLE `contas`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `domains`
--
ALTER TABLE `domains`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `domains_domain_unique` (`domain`),
  ADD KEY `domains_tenant_id_foreign` (`tenant_id`);

--
-- Índices de tabela `empresas`
--
ALTER TABLE `empresas`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `equipamentos`
--
ALTER TABLE `equipamentos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `equipamentos_marca_id_foreign` (`marca_id`),
  ADD KEY `equipamentos_cliente_id_foreign` (`cliente_id`);

--
-- Índices de tabela `equipamento_team`
--
ALTER TABLE `equipamento_team`
  ADD KEY `equipamento_id` (`equipamento_id`),
  ADD KEY `team_id` (`team_id`);

--
-- Índices de tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Índices de tabela `garantias`
--
ALTER TABLE `garantias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `garantias_user_id_foreign` (`user_id`);

--
-- Índices de tabela `garantia_team`
--
ALTER TABLE `garantia_team`
  ADD KEY `garantia_id` (`garantia_id`),
  ADD KEY `team_id` (`team_id`);

--
-- Índices de tabela `lancamentos`
--
ALTER TABLE `lancamentos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lancamentos_cliente_id_foreign` (`cliente_id`),
  ADD KEY `lancamentos_user_id_foreign` (`user_id`),
  ADD KEY `lancamentos_categoria_id_foreign` (`categoria_id`),
  ADD KEY `lancamentos_conta_id_foreign` (`conta_id`);

--
-- Índices de tabela `marcas`
--
ALTER TABLE `marcas`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `marca_team`
--
ALTER TABLE `marca_team`
  ADD KEY `marca_id` (`marca_id`),
  ADD KEY `team_id` (`team_id`);

--
-- Índices de tabela `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Índices de tabela `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Índices de tabela `os`
--
ALTER TABLE `os`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `os_team`
--
ALTER TABLE `os_team`
  ADD KEY `os_id` (`os_id`),
  ADD KEY `tema_id` (`team_id`);

--
-- Índices de tabela `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Índices de tabela `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Índices de tabela `permission_team`
--
ALTER TABLE `permission_team`
  ADD PRIMARY KEY (`team_id`),
  ADD KEY `permission_id` (`permission_id`);

--
-- Índices de tabela `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Índices de tabela `planos`
--
ALTER TABLE `planos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `produto_team`
--
ALTER TABLE `produto_team`
  ADD KEY `produto_id` (`produto_id`),
  ADD KEY `team_id` (`team_id`);

--
-- Índices de tabela `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Índices de tabela `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Índices de tabela `role_team`
--
ALTER TABLE `role_team`
  ADD PRIMARY KEY (`team_id`),
  ADD KEY `role_id` (`role_id`);

--
-- Índices de tabela `servicos`
--
ALTER TABLE `servicos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `servico_team`
--
ALTER TABLE `servico_team`
  ADD KEY `servico_id` (`servico_id`),
  ADD KEY `team_id` (`team_id`);

--
-- Índices de tabela `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `team_user`
--
ALTER TABLE `team_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `team_id` (`team_id`);

--
-- Índices de tabela `team_venda`
--
ALTER TABLE `team_venda`
  ADD KEY `venda_id` (`venda_id`),
  ADD KEY `team_id` (`team_id`);

--
-- Índices de tabela `tenants`
--
ALTER TABLE `tenants`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `tenant_id` (`tenant_id`) USING BTREE,
  ADD KEY `role_id` (`role_id`);

--
-- Índices de tabela `vendas`
--
ALTER TABLE `vendas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de tabela `catalogos`
--
ALTER TABLE `catalogos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `catalogo_team`
--
ALTER TABLE `catalogo_team`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `contas`
--
ALTER TABLE `contas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `domains`
--
ALTER TABLE `domains`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de tabela `empresas`
--
ALTER TABLE `empresas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `equipamentos`
--
ALTER TABLE `equipamentos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `garantias`
--
ALTER TABLE `garantias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `lancamentos`
--
ALTER TABLE `lancamentos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `marcas`
--
ALTER TABLE `marcas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de tabela `os`
--
ALTER TABLE `os`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT de tabela `permission_team`
--
ALTER TABLE `permission_team`
  MODIFY `team_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `planos`
--
ALTER TABLE `planos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `role_team`
--
ALTER TABLE `role_team`
  MODIFY `team_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de tabela `servicos`
--
ALTER TABLE `servicos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de tabela `team_user`
--
ALTER TABLE `team_user`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de tabela `vendas`
--
ALTER TABLE `vendas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `catalogo_team`
--
ALTER TABLE `catalogo_team`
  ADD CONSTRAINT `catalogo_team_ibfk_1` FOREIGN KEY (`catalogo_id`) REFERENCES `catalogos` (`id`),
  ADD CONSTRAINT `catalogo_team_ibfk_2` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`);

--
-- Restrições para tabelas `clientes`
--
ALTER TABLE `clientes`
  ADD CONSTRAINT `clientes_ibfk_1` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`);

--
-- Restrições para tabelas `cliente_team`
--
ALTER TABLE `cliente_team`
  ADD CONSTRAINT `cliente_team_ibfk_1` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`),
  ADD CONSTRAINT `cliente_team_ibfk_2` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`);

--
-- Restrições para tabelas `domains`
--
ALTER TABLE `domains`
  ADD CONSTRAINT `domains_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Restrições para tabelas `equipamentos`
--
ALTER TABLE `equipamentos`
  ADD CONSTRAINT `equipamentos_cliente_id_foreign` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `equipamentos_marca_id_foreign` FOREIGN KEY (`marca_id`) REFERENCES `marcas` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `equipamento_team`
--
ALTER TABLE `equipamento_team`
  ADD CONSTRAINT `equipamento_team_ibfk_1` FOREIGN KEY (`equipamento_id`) REFERENCES `equipamentos` (`id`),
  ADD CONSTRAINT `equipamento_team_ibfk_2` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`);

--
-- Restrições para tabelas `garantias`
--
ALTER TABLE `garantias`
  ADD CONSTRAINT `garantias_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `garantia_team`
--
ALTER TABLE `garantia_team`
  ADD CONSTRAINT `garantia_team_ibfk_1` FOREIGN KEY (`garantia_id`) REFERENCES `garantias` (`id`),
  ADD CONSTRAINT `garantia_team_ibfk_2` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`);

--
-- Restrições para tabelas `lancamentos`
--
ALTER TABLE `lancamentos`
  ADD CONSTRAINT `lancamentos_categoria_id_foreign` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `lancamentos_cliente_id_foreign` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `lancamentos_conta_id_foreign` FOREIGN KEY (`conta_id`) REFERENCES `contas` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `lancamentos_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `marca_team`
--
ALTER TABLE `marca_team`
  ADD CONSTRAINT `marca_team_ibfk_1` FOREIGN KEY (`marca_id`) REFERENCES `marcas` (`id`),
  ADD CONSTRAINT `marca_team_ibfk_2` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`);

--
-- Restrições para tabelas `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_ibfk_3` FOREIGN KEY (`model_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `model_has_roles_ibfk_4` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Restrições para tabelas `os_team`
--
ALTER TABLE `os_team`
  ADD CONSTRAINT `os_team_ibfk_1` FOREIGN KEY (`os_id`) REFERENCES `os` (`id`),
  ADD CONSTRAINT `os_team_ibfk_2` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`);

--
-- Restrições para tabelas `permission_team`
--
ALTER TABLE `permission_team`
  ADD CONSTRAINT `permission_team_ibfk_1` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`),
  ADD CONSTRAINT `permission_team_ibfk_2` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`);

--
-- Restrições para tabelas `produto_team`
--
ALTER TABLE `produto_team`
  ADD CONSTRAINT `produto_team_ibfk_1` FOREIGN KEY (`produto_id`) REFERENCES `produtos` (`id`),
  ADD CONSTRAINT `produto_team_ibfk_2` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`);

--
-- Restrições para tabelas `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `role_team`
--
ALTER TABLE `role_team`
  ADD CONSTRAINT `role_team_ibfk_1` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`),
  ADD CONSTRAINT `role_team_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Restrições para tabelas `servico_team`
--
ALTER TABLE `servico_team`
  ADD CONSTRAINT `servico_team_ibfk_1` FOREIGN KEY (`servico_id`) REFERENCES `servicos` (`id`),
  ADD CONSTRAINT `servico_team_ibfk_2` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`);

--
-- Restrições para tabelas `team_user`
--
ALTER TABLE `team_user`
  ADD CONSTRAINT `team_user_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `team_user_ibfk_2` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`);

--
-- Restrições para tabelas `team_venda`
--
ALTER TABLE `team_venda`
  ADD CONSTRAINT `team_venda_ibfk_1` FOREIGN KEY (`venda_id`) REFERENCES `vendas` (`id`),
  ADD CONSTRAINT `team_venda_ibfk_2` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
