-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tempo de Geração: 
-- Versão do Servidor: 5.5.27
-- Versão do PHP: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Banco de Dados: `trocaki`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `adm_faq`
--

CREATE TABLE IF NOT EXISTS `adm_faq` (
  `id_faq` int(11) NOT NULL AUTO_INCREMENT,
  `pergunta` varchar(255) NOT NULL,
  `resposta` text NOT NULL,
  PRIMARY KEY (`id_faq`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `adm_historico`
--

CREATE TABLE IF NOT EXISTS `adm_historico` (
  `id_historico` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL,
  `id_acao` int(11) NOT NULL,
  `id_ref` int(11) NOT NULL,
  `data` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_historico`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=497 ;

--
-- Extraindo dados da tabela `adm_historico`
--

INSERT INTO `adm_historico` (`id_historico`, `id_usuario`, `id_menu`, `id_acao`, `id_ref`, `data`) VALUES
(252, 1, 0, 1, 38, '2013-10-28 17:59:31'),
(253, 1, 0, 1, 20, '2013-10-29 17:47:44'),
(254, 1, 0, 1, 21, '2013-10-30 18:21:56'),
(255, 1, 0, 1, 22, '2013-10-30 18:24:26'),
(256, 1, 0, 1, 23, '2013-10-30 18:25:18'),
(257, 1, 0, 1, 24, '2013-10-31 19:37:57'),
(258, 1, 0, 1, 25, '2013-10-31 19:39:31'),
(259, 1, 0, 1, 26, '2013-10-31 19:40:21'),
(260, 1, 0, 4, 21, '2013-11-01 16:03:59'),
(261, 1, 0, 4, 22, '2013-11-01 16:03:59'),
(262, 1, 0, 4, 23, '2013-11-01 16:03:59'),
(263, 1, 0, 4, 24, '2013-11-01 16:03:59'),
(264, 1, 0, 4, 25, '2013-11-01 16:03:59'),
(265, 1, 0, 4, 26, '2013-11-01 16:03:59'),
(266, 1, 0, 1, 38, '2013-11-01 18:08:21'),
(267, 1, 0, 1, 39, '2013-11-01 18:41:10'),
(268, 1, 0, 1, 27, '2013-11-06 18:53:12'),
(269, 1, 0, 4, 39, '2013-11-13 17:43:02'),
(270, 1, 0, 1, 39, '2013-11-14 16:25:03'),
(271, 1, 0, 1, 28, '2013-11-14 16:25:47'),
(272, 1, 0, 1, 29, '2013-11-14 16:26:23'),
(273, 1, 0, 1, 30, '2013-11-14 16:27:20'),
(274, 1, 0, 1, 41, '2013-11-14 16:35:37'),
(275, 1, 0, 1, 31, '2013-11-14 16:36:09'),
(276, 1, 0, 1, 32, '2013-11-18 13:40:12'),
(277, 1, 0, 1, 33, '2013-11-18 13:57:16'),
(278, 1, 0, 4, 32, '2013-11-18 13:57:29'),
(279, 1, 0, 4, 33, '2013-11-18 13:57:29'),
(280, 1, 0, 1, 34, '2013-11-18 14:14:15'),
(281, 1, 0, 1, 35, '2013-11-18 14:15:05'),
(282, 1, 0, 1, 36, '2013-11-18 14:16:26'),
(283, 1, 0, 1, 37, '2013-11-18 14:30:04'),
(284, 1, 0, 3, 11, '2013-11-20 16:20:44'),
(285, 1, 0, 3, 11, '2013-11-20 16:20:54'),
(286, 1, 0, 3, 11, '2013-11-20 16:29:27'),
(287, 1, 0, 4, 17, '2013-11-20 16:30:53'),
(288, 1, 0, 4, 18, '2013-11-20 16:31:01'),
(289, 1, 0, 4, 19, '2013-11-20 16:31:05'),
(290, 1, 0, 4, 20, '2013-11-20 16:31:07'),
(291, 1, 0, 4, 21, '2013-11-20 16:31:10'),
(292, 1, 0, 4, 22, '2013-11-20 16:31:13'),
(293, 1, 0, 3, 10, '2013-11-20 18:13:59'),
(294, 1, 0, 3, 12, '2013-11-20 18:15:03'),
(295, 1, 0, 4, 35, '2013-11-21 18:51:41'),
(296, 1, 0, 4, 16, '2013-11-21 18:51:45'),
(297, 1, 0, 4, 15, '2013-11-21 18:51:47'),
(298, 1, 0, 4, 14, '2013-11-21 18:51:49'),
(299, 1, 0, 4, 13, '2013-11-21 18:51:51'),
(300, 1, 0, 4, 12, '2013-11-21 18:51:54'),
(301, 1, 0, 4, 28, '2013-11-21 18:57:23'),
(302, 1, 0, 4, 6, '2013-11-21 19:14:41'),
(303, 1, 0, 4, 10, '2013-11-21 19:38:07'),
(304, 1, 0, 4, 12, '2013-11-21 19:38:13'),
(305, 1, 0, 4, 7, '2013-11-21 19:38:27'),
(306, 1, 0, 4, 3, '2013-11-25 16:24:12'),
(307, 1, 0, 4, 112, '2013-11-27 10:44:18'),
(308, 1, 0, 1, 38, '2013-11-27 17:32:47'),
(309, 1, 0, 1, 39, '2013-11-27 17:35:00'),
(310, 1, 0, 1, 40, '2013-11-27 17:41:18'),
(311, 1, 0, 1, 41, '2013-11-27 18:48:09'),
(312, 1, 0, 4, 40, '2013-11-27 18:57:27'),
(313, 1, 0, 4, 38, '2013-11-27 18:57:27'),
(314, 1, 0, 4, 39, '2013-11-27 18:57:27'),
(315, 1, 0, 4, 117, '2013-11-27 19:49:09'),
(316, 1, 0, 4, 20, '2013-11-27 19:49:29'),
(317, 1, 0, 4, 21, '2013-11-27 19:57:01'),
(318, 1, 0, 4, 22, '2013-11-27 20:00:47'),
(319, 1, 0, 4, 23, '2013-11-27 20:05:01'),
(320, 1, 0, 4, 41, '2013-11-28 17:05:22'),
(321, 1, 0, 1, 42, '2013-11-28 17:06:49'),
(322, 1, 0, 4, 42, '2013-11-28 17:17:47'),
(323, 1, 0, 1, 43, '2013-11-28 17:18:48'),
(324, 1, 0, 4, 43, '2013-11-28 17:22:51'),
(325, 1, 0, 1, 44, '2013-11-28 17:23:59'),
(326, 1, 0, 4, 44, '2013-11-28 17:29:30'),
(327, 1, 0, 1, 45, '2013-11-28 17:36:57'),
(328, 1, 0, 4, 25, '2013-11-28 19:03:10'),
(329, 1, 0, 4, 26, '2013-11-28 19:03:20'),
(330, 1, 0, 4, 24, '2013-11-28 19:16:15'),
(331, 1, 0, 4, 28, '2013-11-28 19:53:58'),
(332, 1, 0, 1, 43, '2013-11-29 16:26:27'),
(333, 1, 0, 1, 46, '2013-11-29 16:27:04'),
(334, 1, 0, 4, 127, '2013-12-02 15:49:58'),
(335, 1, 0, 4, 124, '2013-12-02 15:50:03'),
(336, 1, 0, 4, 126, '2013-12-02 15:50:06'),
(337, 1, 0, 4, 125, '2013-12-02 15:50:10'),
(338, 1, 0, 4, 46, '2013-12-02 16:33:01'),
(339, 1, 0, 4, 139, '2013-12-02 17:41:58'),
(340, 1, 0, 4, 20, '2013-12-02 19:15:18'),
(341, 1, 0, 4, 27, '2013-12-02 19:15:18'),
(342, 1, 0, 4, 29, '2013-12-02 19:15:18'),
(343, 1, 0, 4, 28, '2013-12-02 19:15:18'),
(344, 1, 0, 4, 30, '2013-12-02 19:15:18'),
(345, 1, 0, 4, 45, '2013-12-02 19:15:18'),
(346, 1, 0, 4, 31, '2013-12-02 19:15:18'),
(347, 1, 0, 4, 19, '2013-12-02 19:15:28'),
(348, 1, 0, 4, 16, '2013-12-02 19:15:28'),
(349, 1, 0, 4, 17, '2013-12-02 19:15:28'),
(350, 1, 0, 1, 44, '2013-12-02 19:19:26'),
(351, 1, 0, 1, 45, '2013-12-02 19:19:40'),
(352, 1, 0, 1, 46, '2013-12-02 19:19:58'),
(353, 1, 0, 1, 47, '2013-12-02 19:20:19'),
(354, 1, 0, 1, 48, '2013-12-02 19:21:04'),
(355, 1, 0, 1, 49, '2013-12-02 19:21:17'),
(356, 1, 0, 1, 50, '2013-12-02 19:22:46'),
(357, 1, 0, 1, 47, '2013-12-02 19:34:12'),
(358, 1, 0, 4, 47, '2013-12-02 19:35:41'),
(359, 1, 0, 1, 48, '2013-12-02 19:47:39'),
(360, 1, 0, 4, 140, '2013-12-02 19:58:43'),
(361, 1, 0, 4, 138, '2013-12-02 19:58:50'),
(362, 1, 0, 4, 137, '2013-12-02 19:58:55'),
(363, 1, 0, 4, 136, '2013-12-02 19:58:58'),
(364, 1, 0, 4, 135, '2013-12-02 19:59:01'),
(365, 1, 0, 4, 135, '2013-12-02 19:59:03'),
(366, 1, 0, 4, 134, '2013-12-02 19:59:06'),
(367, 1, 0, 4, 133, '2013-12-02 19:59:10'),
(368, 1, 0, 4, 132, '2013-12-02 19:59:13'),
(369, 1, 0, 4, 131, '2013-12-02 19:59:16'),
(370, 1, 0, 4, 130, '2013-12-02 19:59:26'),
(371, 1, 0, 4, 130, '2013-12-02 19:59:27'),
(372, 1, 0, 4, 129, '2013-12-02 19:59:30'),
(373, 1, 0, 4, 128, '2013-12-02 19:59:33'),
(374, 1, 0, 1, 49, '2013-12-03 13:46:34'),
(375, 1, 0, 4, 49, '2013-12-03 14:10:03'),
(376, 1, 0, 1, 50, '2013-12-03 14:11:32'),
(377, 1, 0, 1, 51, '2013-12-03 14:18:52'),
(378, 1, 0, 1, 52, '2013-12-03 15:38:48'),
(379, 1, 0, 4, 52, '2013-12-03 16:12:44'),
(380, 1, 0, 1, 53, '2013-12-03 18:10:32'),
(381, 1, 0, 4, 53, '2013-12-03 18:12:49'),
(382, 1, 0, 4, 51, '2013-12-10 17:09:44'),
(383, 1, 0, 4, 47, '2013-12-10 17:10:20'),
(384, 1, 0, 4, 48, '2013-12-10 17:10:20'),
(385, 1, 0, 4, 50, '2013-12-10 17:10:20'),
(386, 1, 0, 1, 54, '2013-12-10 17:20:34'),
(387, 1, 0, 1, 55, '2013-12-10 17:29:07'),
(388, 1, 0, 1, 56, '2013-12-10 18:23:53'),
(389, 1, 0, 1, 57, '2013-12-10 18:35:03'),
(390, 1, 0, 1, 58, '2013-12-10 18:42:26'),
(391, 1, 0, 1, 59, '2013-12-10 18:52:25'),
(392, 1, 0, 1, 60, '2013-12-10 19:09:14'),
(393, 1, 0, 1, 61, '2013-12-10 19:37:06'),
(394, 1, 0, 1, 62, '2013-12-10 19:44:09'),
(395, 1, 0, 1, 63, '2013-12-10 19:53:46'),
(396, 1, 0, 1, 64, '2013-12-10 19:59:48'),
(397, 1, 0, 1, 65, '2013-12-11 14:24:28'),
(398, 1, 0, 1, 66, '2013-12-11 14:41:51'),
(399, 1, 0, 1, 67, '2013-12-11 15:09:19'),
(400, 1, 0, 1, 68, '2013-12-11 17:34:41'),
(401, 1, 0, 1, 69, '2013-12-11 17:57:25'),
(402, 1, 0, 1, 70, '2013-12-11 18:05:54'),
(403, 1, 0, 1, 71, '2013-12-12 18:30:15'),
(404, 1, 0, 1, 72, '2013-12-12 18:46:23'),
(405, 1, 0, 1, 73, '2013-12-12 19:11:33'),
(406, 1, 0, 1, 74, '2013-12-12 19:23:15'),
(407, 1, 0, 1, 75, '2013-12-12 19:31:27'),
(408, 1, 0, 1, 76, '2013-12-13 12:29:27'),
(409, 1, 0, 1, 77, '2013-12-13 13:42:45'),
(410, 1, 0, 1, 78, '2013-12-13 18:02:46'),
(411, 1, 0, 1, 79, '2013-12-13 18:42:20'),
(412, 1, 0, 1, 80, '2013-12-13 19:42:26'),
(413, 1, 0, 1, 81, '2013-12-13 19:54:57'),
(414, 1, 0, 1, 82, '2013-12-16 14:29:29'),
(415, 1, 0, 4, 22, '2013-12-23 18:54:02'),
(416, 1, 0, 1, 51, '2013-12-23 18:55:40'),
(417, 1, 0, 1, 83, '2013-12-23 19:11:33'),
(418, 1, 0, 1, 84, '2013-12-23 19:25:40'),
(419, 1, 0, 4, 50, '2013-12-23 19:28:59'),
(420, 1, 0, 4, 49, '2013-12-23 19:29:47'),
(421, 1, 0, 4, 46, '2013-12-23 19:29:47'),
(422, 1, 0, 4, 48, '2013-12-23 19:29:47'),
(423, 1, 0, 4, 45, '2013-12-23 19:29:47'),
(424, 1, 0, 1, 85, '2013-12-23 19:34:11'),
(425, 1, 0, 4, 84, '2013-12-23 19:36:52'),
(426, 1, 0, 1, 86, '2013-12-23 19:42:18'),
(427, 1, 0, 1, 87, '2013-12-23 19:46:29'),
(428, 1, 0, 1, 52, '2013-12-23 19:48:03'),
(429, 1, 0, 1, 88, '2013-12-23 19:50:56'),
(430, 1, 0, 4, 52, '2013-12-23 19:53:25'),
(431, 1, 0, 1, 53, '2013-12-23 19:54:14'),
(432, 1, 0, 4, 51, '2013-12-27 12:32:22'),
(433, 1, 0, 4, 23, '2013-12-27 12:35:18'),
(434, 1, 0, 1, 54, '2013-12-27 12:55:29'),
(435, 1, 0, 4, 54, '2013-12-27 12:57:56'),
(436, 1, 0, 1, 55, '2013-12-27 13:22:47'),
(437, 1, 0, 1, 89, '2013-12-27 13:24:45'),
(438, 1, 0, 1, 90, '2013-12-27 13:28:46'),
(439, 1, 0, 1, 91, '2013-12-27 13:37:33'),
(440, 1, 0, 1, 92, '2013-12-27 13:42:51'),
(441, 1, 0, 1, 56, '2013-12-27 13:46:00'),
(442, 1, 0, 1, 57, '2013-12-30 15:14:39'),
(443, 1, 0, 1, 93, '2014-01-03 12:16:41'),
(444, 1, 0, 1, 94, '2014-01-03 12:25:53'),
(445, 1, 0, 1, 95, '2014-01-03 12:52:28'),
(446, 1, 0, 1, 96, '2014-01-03 13:00:30'),
(447, 1, 0, 1, 97, '2014-01-03 13:28:06'),
(448, 1, 0, 1, 98, '2014-01-03 13:44:09'),
(449, 1, 0, 1, 99, '2014-01-03 14:26:50'),
(450, 1, 0, 1, 100, '2014-01-03 14:39:08'),
(451, 1, 0, 1, 101, '2014-01-06 14:37:57'),
(452, 1, 0, 1, 102, '2014-01-06 14:53:35'),
(453, 1, 0, 1, 103, '2014-01-06 15:10:36'),
(454, 1, 0, 1, 104, '2014-01-07 13:34:04'),
(455, 1, 0, 1, 105, '2014-01-07 13:51:44'),
(456, 1, 0, 1, 106, '2014-01-07 13:59:38'),
(457, 1, 0, 1, 107, '2014-01-07 14:09:24'),
(458, 1, 0, 1, 108, '2014-01-07 14:15:09'),
(459, 1, 0, 1, 109, '2014-01-07 14:20:20'),
(460, 1, 0, 1, 110, '2014-01-07 14:24:48'),
(461, 1, 0, 1, 111, '2014-01-07 14:30:25'),
(462, 1, 0, 1, 112, '2014-01-07 14:34:33'),
(463, 1, 0, 1, 113, '2014-01-07 14:36:44'),
(464, 1, 0, 1, 114, '2014-01-11 12:06:10'),
(465, 1, 0, 1, 115, '2014-01-11 12:10:27'),
(466, 1, 0, 1, 116, '2014-01-11 12:24:59'),
(467, 1, 0, 1, 117, '2014-01-11 12:31:23'),
(468, 1, 0, 1, 118, '2014-01-11 12:35:58'),
(469, 1, 0, 1, 119, '2014-01-11 12:46:37'),
(470, 1, 0, 1, 120, '2014-01-11 12:54:26'),
(471, 1, 0, 1, 58, '2014-01-11 12:59:42'),
(472, 1, 0, 1, 121, '2014-01-11 13:06:26'),
(473, 1, 0, 1, 122, '2014-01-11 13:06:36'),
(474, 1, 0, 4, 122, '2014-01-11 13:10:38'),
(475, 1, 0, 1, 59, '2014-01-11 13:24:11'),
(476, 1, 0, 1, 123, '2014-01-11 13:39:55'),
(477, 1, 0, 1, 124, '2014-01-11 14:01:06'),
(478, 1, 0, 1, 125, '2014-01-11 14:21:35'),
(479, 1, 0, 1, 126, '2014-01-11 16:57:14'),
(480, 1, 0, 1, 127, '2014-01-11 17:12:57'),
(481, 1, 0, 1, 128, '2014-01-15 17:22:54'),
(482, 1, 0, 1, 129, '2014-01-15 17:32:00'),
(483, 1, 0, 1, 130, '2014-01-16 18:19:32'),
(484, 1, 0, 1, 131, '2014-01-16 18:40:01'),
(485, 1, 0, 1, 132, '2014-01-16 19:11:58'),
(486, 1, 0, 1, 133, '2014-01-17 19:13:59'),
(487, 1, 0, 1, 134, '2014-01-17 19:20:48'),
(488, 1, 0, 1, 40, '2014-01-20 12:09:28'),
(489, 1, 0, 4, 38, '2014-01-20 12:14:14'),
(490, 1, 0, 4, 40, '2014-01-20 12:14:19'),
(491, 1, 0, 1, 41, '2014-01-20 12:14:57'),
(492, 1, 0, 4, 41, '2014-01-20 12:21:58'),
(493, 1, 0, 1, 42, '2014-01-20 12:22:20'),
(494, 1, 0, 4, 42, '2014-01-20 12:24:16'),
(495, 1, 0, 1, 43, '2014-01-20 12:24:28'),
(496, 1, 0, 1, 44, '2014-01-20 12:43:23');

-- --------------------------------------------------------

--
-- Estrutura da tabela `adm_historico_acoes`
--

CREATE TABLE IF NOT EXISTS `adm_historico_acoes` (
  `id_acao` int(11) NOT NULL AUTO_INCREMENT,
  `acao` varchar(255) NOT NULL,
  PRIMARY KEY (`id_acao`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `adm_menu`
--

CREATE TABLE IF NOT EXISTS `adm_menu` (
  `id_menu` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) NOT NULL,
  `destino` varchar(255) NOT NULL,
  `icone` varchar(100) NOT NULL,
  `dentro_id` int(11) NOT NULL,
  PRIMARY KEY (`id_menu`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=109 ;

--
-- Extraindo dados da tabela `adm_menu`
--

INSERT INTO `adm_menu` (`id_menu`, `titulo`, `destino`, `icone`, `dentro_id`) VALUES
(100, 'Editar Texto', 'sobre_dados.php?ID=1', '', 99),
(102, 'Gerenciar Subcategorias', 'produtos_subcategorias.php', '', 86),
(83, 'Banners', '', '', 0),
(84, 'Adicionar banner', 'banner_dados.php', '', 83),
(85, 'Gerenciar banners', 'banner.php', '', 83),
(86, 'Produtos', '', '', 0),
(87, 'Adicionar Produtos', 'produtos_dados.php', '', 86),
(94, 'Gerenciar Categorias', 'produtos_categorias.php', '', 86),
(93, 'Gerenciar Produtos', 'produtos.php', '', 86),
(101, 'Visualizar Texto', 'sobre.php', '', 99),
(103, 'Gerenciar Varia&ccedil;&otilde;es', 'produtos_variacoes.php', '', 86),
(99, 'Sobre a empresa', '', '', 0),
(105, 'Or&ccedil;amentos', '', '', 0),
(106, 'Visualizar Or&ccedil;amentos', 'orcamento.php', '', 105),
(107, 'Clientes', '', '', 0),
(108, 'Visualizar Clientes Cadastrados', 'clientes.php', '', 107);

-- --------------------------------------------------------

--
-- Estrutura da tabela `adm_permissoes`
--

CREATE TABLE IF NOT EXISTS `adm_permissoes` (
  `id_usuario` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `adm_usuarios`
--

CREATE TABLE IF NOT EXISTS `adm_usuarios` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `login` varchar(20) NOT NULL,
  `senha` varchar(32) NOT NULL,
  `email` varchar(100) NOT NULL,
  `data_login` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `flag_status` int(11) NOT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Extraindo dados da tabela `adm_usuarios`
--

INSERT INTO `adm_usuarios` (`id_usuario`, `nome`, `login`, `senha`, `email`, `data_login`, `flag_status`) VALUES
(1, 'admin', 'admin', '948649a3bb04b9c984fc3bb721ead166', 'contato@rfcasaecia.com.br', '2014-01-17 18:56:02', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `historico`
--

CREATE TABLE IF NOT EXISTS `historico` (
  `id` int(11) NOT NULL,
  `texto` mediumtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `historico`
--

INSERT INTO `historico` (`id`, `texto`) VALUES
(1, '<div><font size="2">Texto teste RFCASECIA<br><br>Compre seus produtos aqui!!!&nbsp;<br><br><br></font></div><div style="font-size: 13px; font-family: Arial, Helvetica, sans-serif !important; line-height: 1.5em !important;"><br></div>');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbclientes`
--

CREATE TABLE IF NOT EXISTS `tbclientes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `primeironome` varchar(255) NOT NULL,
  `ultimonome` varchar(255) NOT NULL,
  `celular` varchar(20) DEFAULT NULL,
  `telefone` varchar(15) DEFAULT NULL,
  `cep` varchar(11) NOT NULL,
  `logradouro` varchar(500) NOT NULL,
  `numero` varchar(100) NOT NULL,
  `bairro` varchar(100) NOT NULL,
  `cidade` varchar(200) NOT NULL,
  `estado` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=38 ;

--
-- Extraindo dados da tabela `tbclientes`
--

INSERT INTO `tbclientes` (`id`, `email`, `primeironome`, `ultimonome`, `celular`, `telefone`, `cep`, `logradouro`, `numero`, `bairro`, `cidade`, `estado`) VALUES
(31, 'wesleyferreira1710@gmail.com', 'Wesley', 'Santos', '(11) 11111-1111', '(11) 1111-1111', '15.970-000', ' Rua Dos Dalóia', '120', 'Jd Bela Vista', 'Santa Ernestina', 'SP'),
(32, 'rfcasaecia@hotmail.com', 'Adolfo ', 'de Oliveira', '(16) 98166-6908', '(16) 3202-4698', '14.883-255', 'Rua Adelino Ramalho Matta', '255', 'Vila Simoni', 'Jaboticabal', 'SP'),
(33, 'wesley.santos@manaweb.com.br', 'Wesley', 'Santos', '(16) 98855-8855', '(16) 3202-2222', '14.210-000', ' Rua Dos Dalóia', '20', 'Centro', 'Luís Antônio', 'SP'),
(34, 'adolfo@manaweb.com.br', 'Cleo', 'de Oliveira', '(16) 98166-6908', '(16) 3202-4569', '14.883-255', 'Rua Adelino Ramalho Matta', '225', 'Vila Simoni', 'Jaboticabal', 'SP'),
(35, 'moises@manaweb.com.br', 'moises', 'lopes ferreira', '', '(11) 9363-6360', '14.887-040', 'Rua dos Trabalhadores', '644444444444444444444464', 'Nova Jaboticabal', 'Jaboticabal', 'SP'),
(36, 'suportemanaweb@hotmail.com', 'Mana ', 'Web TI', '(16) 98558-8789', '(16) 3202-2222', '14.210-000', ' Rua: Barbosa', '13', 'Centro', 'Luís Antônio', 'SP'),
(37, 'jesuinomn@hotmail.com', 'Jesuino', 'Marques ', '(19) 32565-5552', '(16) 3202-4399', '14.870-080', 'Avenida Major Novaes', '225', 'Centro', 'Jaboticabal', 'SP');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbconfiguracoes`
--

CREATE TABLE IF NOT EXISTS `tbconfiguracoes` (
  `nomesite` varchar(255) CHARACTER SET latin1 NOT NULL,
  `slogansite` varchar(255) CHARACTER SET latin1 NOT NULL,
  `emailsite` varchar(255) CHARACTER SET latin1 NOT NULL,
  `telefone1` varchar(255) CHARACTER SET latin1 NOT NULL,
  `telefone2` varchar(255) CHARACTER SET latin1 NOT NULL,
  `telefone3` varchar(255) CHARACTER SET latin1 NOT NULL,
  `produtoservico` varchar(255) CHARACTER SET latin1 NOT NULL,
  `pagseguro` varchar(255) CHARACTER SET latin1 NOT NULL,
  `token` varchar(255) CHARACTER SET latin1 NOT NULL,
  `twitter` varchar(255) CHARACTER SET latin1 NOT NULL,
  `facebook` varchar(255) CHARACTER SET latin1 NOT NULL,
  `youtube` varchar(255) CHARACTER SET latin1 NOT NULL,
  `imagem` varchar(255) CHARACTER SET latin1 NOT NULL,
  `endereco` longtext CHARACTER SET latin1 NOT NULL,
  `id_config` int(11) NOT NULL AUTO_INCREMENT,
  `corsite` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(255) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_config`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbcontador`
--

CREATE TABLE IF NOT EXISTS `tbcontador` (
  `id_pagina` int(11) NOT NULL AUTO_INCREMENT,
  `acessos` varchar(255) NOT NULL,
  PRIMARY KEY (`id_pagina`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Extraindo dados da tabela `tbcontador`
--

INSERT INTO `tbcontador` (`id_pagina`, `acessos`) VALUES
(1, '44');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbitensorcamento`
--

CREATE TABLE IF NOT EXISTS `tbitensorcamento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_produto` int(11) NOT NULL,
  `id_orcamento` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `variacao` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=129 ;

--
-- Extraindo dados da tabela `tbitensorcamento`
--

INSERT INTO `tbitensorcamento` (`id`, `id_produto`, `id_orcamento`, `quantidade`, `variacao`) VALUES
(128, 120, 143, 1, 'Queen'),
(127, 121, 143, 1, 'Queen'),
(126, 100, 143, 1, 'Queen'),
(125, 56, 142, 1, 'Queen'),
(124, 47, 141, 1, 'Queen'),
(123, 47, 140, 1, 'King'),
(122, 31, 139, 1, '?nico'),
(121, 29, 139, 1, 'Casal'),
(120, 27, 138, 1, 'Solteiro'),
(119, 29, 137, 2, 'Casal'),
(118, 28, 136, 1, 'Casal'),
(116, 31, 135, 1, 'Único'),
(115, 45, 134, 1, 'Casal'),
(114, 30, 133, 1, 'King'),
(113, 45, 132, 1, 'Casal'),
(112, 31, 131, 1, 'Único'),
(111, 30, 130, 1, 'Solteiro'),
(110, 31, 129, 1, 'Único'),
(109, 45, 128, 1, 'Solteiro'),
(108, 46, 127, 1, 'Super King'),
(107, 31, 127, 1, 'Único'),
(106, 27, 126, 1, 'Solteiro'),
(105, 31, 125, 2, 'Único'),
(104, 20, 125, 1, 'Casal'),
(103, 27, 124, 2, 'Casal'),
(102, 31, 124, 1, 'Único'),
(101, 30, 124, 1, 'Casal'),
(100, 31, 123, 1, 'Único');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tborcamento`
--

CREATE TABLE IF NOT EXISTS `tborcamento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_cliente` int(11) NOT NULL,
  `flag_status` int(11) NOT NULL,
  `data` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=144 ;

--
-- Extraindo dados da tabela `tborcamento`
--

INSERT INTO `tborcamento` (`id`, `id_cliente`, `flag_status`, `data`) VALUES
(142, 36, 0, '2013-12-17 15:31:48'),
(141, 35, 0, '2013-12-09 14:31:56'),
(143, 37, 0, '2014-01-15 16:15:40');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbprodutos`
--

CREATE TABLE IF NOT EXISTS `tbprodutos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `preco` decimal(10,2) NOT NULL,
  `descricao` mediumtext NOT NULL,
  `foto1` varchar(255) NOT NULL,
  `id_subcategoria` int(11) NOT NULL,
  `variacoes` varchar(500) NOT NULL,
  `foto2` varchar(255) DEFAULT NULL,
  `foto3` varchar(255) DEFAULT NULL,
  `foto4` varchar(255) DEFAULT NULL,
  `foto5` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=135 ;

--
-- Extraindo dados da tabela `tbprodutos`
--

INSERT INTO `tbprodutos` (`id`, `nome`, `preco`, `descricao`, `foto1`, `id_subcategoria`, `variacoes`, `foto2`, `foto3`, `foto4`, `foto5`) VALUES
(64, 'Coleção Amaretto - Percal 400 Fios - Fio Egípcio', 0.00, '<div>Percal 100% Algodão 400 fios - Fio Egípcio</div><div>Cores | 138 Prata | 48 Cáqui | 32 Branco</div><div><div>Cobre Leito Bordado Trapuntado 3 pçs.</div><div>Edredom 3 peças liso .......................................</div><div>Roupa de Cama 4 peças .................................</div><div>Jogo de Banho Gigante 5 peças....................</div><div>Rosto 1 peça ...........................................................</div><div>Lavabo 2 peças ......................................................</div><div>Rolinho Avulso .....................................................</div><div>Almofada Avulsa ..................................................</div><div>Fronha 1 peça 70cm x 50cm .........................</div><div>Fronha 1 peça 90cm x 50cm .........................</div></div>', '6b26e6fd64455093d7fdb3e518cef42bamaretto.JPG', 44, ' 1; 2; 3; 4; 5', '5b21ac04d91570b6853853d703338258amaretto2.JPG', 'd1cf93516f61a25321a7cb41dd1aa434amaretto3.JPG', '3bab94aa94c7a8067aedd5dae29a5bb3amaretto4.JPG', NULL),
(65, 'Coleção Galles - Percal 400 Fios - Fio Egípcio', 0.00, '<div>Percal 100% Algodão 400 fios - fio egípcio</div><div>Cores | 26 Pérola | 32 Branco | 44 Rosa | 48 Cáqui | 50 Verde | 112 Chocolate | 138 Prata</div><div><div>Cobre Leito Matelassado 3 pçs. ..................</div><div>Edredom 3 peças Liso ......................................</div><div>Roupa de Cama 4 peças ..................................</div><div>Saia 1 peça ..............................................................</div><div>Lençol Slip 1 peça ..............................................</div><div>Fronha 1 peça 70cm x 50cm ...........................</div><div>Fronha 1 peça 90cm x 50cm .............................</div><div>Jogo de Banho Gigante 5 peças....................</div><div>Rolinho Avulso .....................................................</div><div>Almofada Avulsa ................................................</div></div>', '0a745090416c331509b421c02dcb002cgalles.JPG', 44, ' 1; 2; 3; 4; 5', '3e34d7cbb75609e25eee4a87ecb26ea6galles2.JPG', 'c34603458c653a50e9790e56802c41bcgalles3.JPG', '066650a488f1f5ec6903d9a7b6f3bfedgalles4.JPG', '021517b68554afefdcd62f53adc6928fgalles5.JPG'),
(66, 'Coleção Tritone - Percal 400 Fios - Fio Egípcio', 0.00, '<div>Percal 100% Algodão 400 fios - Fio Egípcio</div><div>Cores | 32 Branco | 44 Rosa | 48 Cáqui</div><div><div>Cobre Leito Bordado Trapuntado 3 pçs.</div><div>Duvet Dolce Vitta 400 Fios 3 peças ........</div><div>Duvet Dolce Vitta Adamascado 3 peças</div><div>Roupa de Cama 4 peças .................................</div><div>Jogo de Banho Gigante 5 peças....................</div><div>Rosto 1 peça ...........................................................</div><div>Lavabo 2 peças ......................................................</div><div>Rolinho Avulso ......................................................</div><div>Almofada Avulsa ..................................................</div><div>Fronha 1 peça 70cm x 50cm .........................</div><div>Fronha 1 peça 90cm x 50cm .........................</div></div>', '422e599b692bd21bd80bb2bbb9471d07tritone.JPG', 44, ' 1; 2; 3; 4; 5', 'cb31ea7992fdde235d528e64530eed70tritone2.JPG', '41c9e41e7bd26ec6d8ad94c33183feb8tritone3.JPG', '04ae0c978fe43818ebc10326ab90119ctritone4.JPG', NULL),
(62, 'Coleção Accanto - Percal 400 Fios - Fio Egípcio', 0.00, '<div>Percal 100% Algodão 400 fios - Fio Egípcio</div><div>Cores | 28 Azul | 44 Rosa | 112 Chocolate</div><div><div>Cobre Leito Bordado Trapuntado 3 pçs.</div><div>Duvet Dolce Vitta 400 Fios 3 peças ...........</div><div>Duvet Dolce Vitta Adamascado 3 peças</div><div>Roupa de Cama 4 peças .................................</div><div>Jogo de Banho Gigante 5 peças....................</div><div>Rosto 1 peça ...........................................................</div><div>Lavabo 2 peças ......................................................</div><div>Rolinho Avulso ......................................................</div><div>Almofada Avulsa .................................................</div><div>Fronha 1 peça 70cm x 50cm .........................</div><div>Fronha 1 peça 90cm x 50cm .........................</div></div>', '891bcbc72748780c79b974ac76fea333acanto.JPG', 44, ' 1; 2; 3; 4; 5', '6946c6f308652454d908c278b5b20390acanto2.JPG', '349a52c2391a9cd5d29b26a5da7055d0acanto3.JPG', '5f18fce106fd2ca5b8801590da6c03ceacanto4.JPG', NULL),
(63, 'Coleção Savona - Percal 400 Fios - Fio Egípcio', 0.00, '<div>Percal 100% Algodão 400 fios - fio egípcio</div><div>Cores Roupa de Cama e Banho</div><div>| 32 Branco | 8 Branco/Dourado</div><div>Cores Cobre Leito, Edredom e Acessórios</div><div>| 32 Branco | 48 Cáqui | 8 Branco/Dourado</div><div><div>Cobre Leito Bordado</div><div>Trapunatdo 3 pçs. ..........................</div><div>Edredom 3 peças Liso ................</div><div>Roupa de Cama 4 peças ..........</div><div>Jogo de Banho Gigante 5 peças....................</div><div>Rosto 1 peça ...........................................................</div><div>Lavabo 2 peças ......................................................</div><div>Rolinho Avulso ......................................................</div><div>Almofada Avulsa .................................................</div><div>Fronha 1 peça 70cm x 50cm .........................</div><div>Fronha 1 peça 90cm x 50cm .........................</div></div>', '5bd29eca84c823454bb21bba9eef1a22savona.JPG', 44, ' 1; 2; 3; 4; 5', '16974f4383cb426d955ed97fd4552f55savona2.JPG', '2daad0a70e23b0a53563782342f44069savona3.JPG', '8b64be75ae5356cdff0d6b3b16261673savona4.JPG', NULL),
(54, 'Coleção Capri - Percal 400 Fios - Fio Egípcio', 0.00, '<div>Percal 100% Algodão 400 fios - Fio Egípcio</div><div>Cores | 32 Branco | 26 Palha | 48 Cáqui | 69 Palha Cáqui</div><div><div>Cobre Leito Bordado Trapuntado 3 pçs.</div><div>Edredom 3 peças liso .......................................</div><div>Roupa de Cama 4 peças .................................</div><div>Jogo de Banho Gigante 5 peças....................</div><div>Rosto 1 peça ...........................................................</div><div>Lavabo 2 peças ......................................................</div><div>Rolinho Avulso .....................................................</div><div>Almofada Avulsa ..................................................</div><div>Fronha 1 peça 70cm x 50cm .........................</div><div>Fronha 1 peça 90cm x 50cm .........................</div><div><br></div><div><br></div></div>', '6da701874436e20c071ceaa072f9b832capri.JPG', 44, ' 1; 2; 3; 4; 5', 'a7f82c4344da13bd26488370ddf631e5capri2.JPG', '2902ad0d3c15117112e76ad9ff5c155ccapri3.JPG', 'e6851c6cffb15bd5a457459ba923d777capri4.JPG', 'b9f2d5a752436e8e0f594c3df104bef9capri5.JPG'),
(55, 'Coleção Prímula - Percal 400 Fios - Fio Egípcio', 0.00, '<div>Percal 100% Algodão 400 fios - fio egípcio</div><div>Cores | 32 Branco</div><div><div>Cobre Leito Bordado Trapuntado 3 pçs.</div><div>Edredom 3 peças Bordado ............................</div><div>Roupa de Cama 4 peças ..................................</div><div>Jogo de Banho Gigante 5 peças....................</div><div>Rosto 1 peça ...........................................................</div><div>Lavabo 2 peças ......................................................</div><div>Rolinho Avulso .....................................................</div><div>Almofada Avulsa .................................................</div><div>Fronha 1 peça 70cm x 50cm .........................</div><div>Fronha 1 peça 90cm x 50cm .........................</div></div>', '2f1cc6b6f86c153ede56ae7378ab77aeprimula.JPG', 56, ' 1; 2; 3; 4; 5', '34cadfcfdf3a9e7ba63ad9add57113bcprimula2.JPG', 'ad745a3185a298161f248815974f7bbbprimula3.JPG', '07f90b2e253450cdf9a513ebe42dbbcfprimula4.JPG', NULL),
(56, 'Coleção Mabelle - Percal 400 Fios - Fio Egípcio', 0.00, '<div>Percal 100% Algodão 400 fios - Fio Egípcio</div><div>Cores | 32 Branco | 44 Rosa</div><div><div>Cobre Leito Bordado Trapuntado 3 pçs.</div><div>Duvet Dolce Vitta Adamascado 3 peças</div><div>Roupa de Cama 4 peças .................................</div><div>Jogo de Banho Gigante 5 peças....................</div><div>Rosto 1 peça ...........................................................</div><div>Lavabo 2 peças ......................................................</div><div>Rolinho Avulso ................... .....................................</div><div>Almofada Avulsa .................................................</div><div>Fronha 1 peça 70cm x 50cm .........................</div><div>Fronha 1 peça 90cm x 50cm .........................</div><div><br></div><div><br></div><div><br></div><div><br></div></div>', '8c2434365c02126e1a39259ae875c3a8mabelle.JPG', 44, ' 1; 2; 3; 4; 5', '4206abe543e739ff85c24fde28ffe2ffmabelle2.JPG', '881b940055ad5e5a4e127b5e64ee0378mabelle3.JPG', NULL, NULL),
(57, 'Coleção Vietri - Percal 400 Fios - Fio Egípcio', 0.00, '<div>Percal 100% Algodão 400 fios - fio egípcio</div><div>Cores | 32 Branco | 138 Prata</div><div><div>Cobre Leito Bordado 3 pçs. ....</div><div>Edredom 3 peças Liso ................</div><div>Duvet 3 pçs Bordada ..................</div><div>Roupa de Cama 4 peças ..........</div><div>Jogo de Banho Gigante 5 peças....................</div><div>Rosto 1 peça ...........................................................</div><div>Lavabo 2 peças ......................................................</div><div>Rolinho Avulso .....................................................</div><div>Almofada Avulsa ..................................................</div><div>Fronha 1 peça 70cm x 50cm .........................</div><div>Fronha 1 peça 90cm x 50cm .........................</div><div><br></div></div>', '6b613bf395510e8539bd545c24cd0289vietri.JPG', 44, ' 1; 2; 3; 4; 5', 'c97bc8246e5a572da59e8489ceba198avietri2.JPG', '4a2b9a49c878c6a1ffe9cc7900be9104vietri3.JPG', '91e759d0ee9f6876acd9022924bffec5vietri4.JPG', NULL),
(58, 'Coleção Essenziale - Percal 400 Fios - Fio Egípcio', 0.00, '<div>Percal 100% Algodão 400 fios - Fio Egípcio</div><div>Cores | 32 Branco | 112 Chocolate</div><div><div>Cobre Leito Bordado Trapuntado 3 pçs.</div><div>Edredom 3 peças liso .......................................</div><div>Roupa de Cama 4 peças .................................</div><div>Jogo de Banho Gigante 5 peças....................</div><div>Lavabo 2 peças ......................................................</div><div>Rolinho Avulso ......................................................</div><div>Almofada Avulsa .................................................</div><div>Fronha 1 peça 70cm x 50cm .........................</div><div>Fronha 1 peça 90cm x 50cm .........................</div></div>', 'bc42cee7616a5fcf9cdc77ffa4a66f18essenziale.JPG', 44, ' 1; 2; 3; 4; 5', 'd09332e2d705347e9eb656e49c17e280essenziale2.JPG', 'c2c391cc43a661a052e3370bd6c8e9c7essenziale3.JPG', NULL, NULL),
(59, 'Coleção Cashemere - Percal 400 Fios - Fio Egípcio', 0.00, '<div>Percal 100% Algodão 400 fios - fio egípcio</div><div>Cores | 26 Pérola | 32 Branco | 48 Cáqui</div><div><div>Cobre Leito Bordado Trapuntado 3 pçs.</div><div>Edredom 3 peças liso .......................................</div><div>Roupa de Cama 4 peças .................................</div><div>Jogo de Banho Gigante 5 peças....................</div><div>Rosto 1 peça ...........................................................</div><div>Lavabo 2 peças ......................................................</div><div>Rolinho Avulso .....................................................</div><div>Almofada Avulsa ...................................................</div><div>Fronha 1 peça 70cm x 50cm .........................</div><div>Fronha 1 peça 90cm x 50cm .........................</div></div>', 'f0e8d575be23087f01b7fc95df709dabcashemere.JPG', 44, ' 1; 2; 3; 4; 5', '6f94afff0be9723a7716b1be5fa1af3ecashemere2.JPG', '73217a750d3e09074deec7e3c8984736cashemere3.JPG', '63309be1acd44b16c24b82e12e258452cashemere4.JPG', NULL),
(60, 'Coleção Savini - Percal 400 Fios - Fio Egípcio', 0.00, '<div>Percal 100% Algodão 400 fios - Fio Egípcio</div><div>Cores | 50 Verde | 32 Branco | 26 Palha</div><div><div>Cobre Leito Bordado Trapuntado 3 pçs.</div><div>Duvet Dolce Vitta 400 Fios 3 peças ...........</div><div>Roupa de Cama 4 peças .................................</div><div>Jogo de Banho Gigante 5 peças....................</div><div>Rosto 1 peça ...........................................................</div><div>Lavabo 2 peças ......................................................</div><div>Rolinho Avulso ....................................................</div><div>Almofada Avulsa Trevo ...... .................................</div><div>Almofada Avulsa Ajour ...................................</div><div>Fronha 1 peça 70cm x 50cm .........................</div><div>Fronha 1 peça 90cm x 50cm .........................</div></div>', '965cb1da4bed26aec0a4ace7b73faa68savini.JPG', 44, ' 1; 2; 3; 4; 5', '4b9a3e2d7758c65bd693f4fd3fb97724savini2.JPG', 'efb0ebfe4628b1f428b150f1567b0802savini3.JPG', '96a465779da10717eb443e14534b0c30savini4.JPG', NULL),
(61, 'Coleção Eglantine - Percal 400 Fios - Fio Egípcio', 0.00, '<div>Edredom | Cobre Leito</div><div>Roupa de Cama e Acessórios Percal 100% Algodão 400 fios - fio egípcio</div><div>Cores | 26 Pérola | 32 Branco</div><div><div>Cobre Leito Bordado Trapuntado 3 pçs.</div><div>Edredom 3 peças Bordado ............................</div><div>Roupa de Cama 4 peças ..................................</div><div>Jogo de Banho Gigante 5 peças....................</div><div>Rosto 1 peça ...........................................................</div><div>Lavabo 2 peças ......................................................</div><div>Rolinho Avulso ......................................................</div><div>Almofada Avulsa ..................................................</div><div>Fronha 1 peça 70cm x 50cm .........................</div><div>Fronha 1 peça 90cm x 50cm .........................</div></div>', 'bcf5c9eda4f09142e8ff5195a135a56eeglantine.JPG', 44, ' 1; 2; 3; 4; 5', '120cdc7ab60716fcf5c6fd93fd74b36beglantine2.JPG', '9e59652848e356b209751a56fc6c999beglantine3.JPG', NULL, NULL),
(67, 'Duvets Dolce Vitta - Percal 400 Fios - Fio Egípcio / Adamascado', 0.00, '<div>Percal 100% Algodão 400 fios - Fio Egípcio</div><div>Cores do Duvet | 26 Palha | 127 Branco Flores | 220 Listrado</div><div>Adamascado | 32 Branco | 28 Azul | 41 Vermelho</div><div>Cores da Roupa de Cama | 32 Branco | 44 Rosa</div><div><div>Duvet 3 peças 400 Fios....................................</div><div>Duvet 3 peças Adamascado .........................</div><div>Roupa de Cama 4 peças .................................</div><div>Fronha 1 peça 70cm x 50cm...........................</div><div>Fronha 1 peça 90cm x 50cm .................</div></div>', '8e093d8511a1d19384bc942a59231e24dolce.JPG', 44, ' 1; 4; 5', '5347f7fb20af00c0c0600ad00ad6e218dolce2.JPG', '9014c9a0d6c2579bbd20d459b9b68062dolce3.JPG', 'e8063039f82efc7f77f84c593718b0fbdolce4.JPG', '1941c6046d9565df5f120b8ddf2d31e5dolce5.JPG'),
(68, 'Coleção Maggiori - Percal 600 Fios - Fio Egípcio', 0.00, '<div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;">Percal 100% Algodão 600 Fios - Fio Egípcio</div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;">Cores | 32 Branco | 99 Branco Areia</div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;"><div>Duvet 3 peças 600 Fios....................................</div><div>Roupa de Cama 4 peças 600 Fios..................</div><div>Fronha 1 peça 70cm x 50cm 600 Fios ..........</div><div>Fronha 1 peça 90cm x 50cm 600 Fios ............</div><div><br></div></div><div><font face="Arial, Helvetica, sans-serif" size="2"><span style="line-height: 19.5px;">Acessórios</span></font><br></div><div><font face="Arial, Helvetica, sans-serif" size="2"><span style="line-height: 19.5px;"><div>Percal 100% Algodão Cambraia de Linho&nbsp;</div><div>Cores | 32 Branco</div><div><div>Almofada Quadrada c/ Debrun Avulsa ........</div><div>Almofada Quadrada c/ Babado Avulsa ........</div><div>Almofada Retangular Avulsa ...............................</div><div>Rolinho Avulso..............................................................</div></div><div><br></div></span></font></div><div><font face="Arial, Helvetica, sans-serif" size="2"><span style="line-height: 19.5px;"><br></span></font></div>', '2b0dd639dcc6dc29198033c8a32f22ddmagiori.JPG', 44, ' 1; 2; 3; 4; 5', NULL, NULL, NULL, NULL),
(69, 'Coleção Giornata - Percal 230 Fios - Acetinado', 0.00, '<div>Percal 100% Algodão 230 fios - acetinado</div><div>Cores | 08 Dourado/Branco | 32 Branco</div><div><div>Cobre Leito Bordado...................</div><div>Edredom 3 peças Liso ................</div><div>Roupa de Cama 4 peças ..........</div><div>Jogo de Banho Gigante 5 peças....................</div><div>Rosto 1 peça ...........................................................</div><div>Lavabo 2 peças ......................................................</div><div>Rolinho Avulso ......................................................</div><div>Almofada Avulsa .................................................</div><div>Fronha 1 peça 70cm x 50cm .........................</div><div>Fronha 1 peça 90cm x 50cm .........................</div></div>', 'c5dbaca569282da718a1b1816a1ad739giornata.JPG', 56, ' 1; 2; 3; 4; 5', '0a0776bc43c3acfe13428f057064b9d5giornata2.JPG', 'a4f63d5b1771c40a4d2ebcadd3e70d06giornata3.JPG', 'f44ec5036cbd9868d75f408b40be953cgiornata4.JPG', 'd92c600ad5cc42b7d5021bd1212d3884giornata5.JPG'),
(70, 'Coleção Cannes - Percal 230 Fios - Acetinado', 0.00, '<div>Percal 100% Algodão 230 fios - acetinado</div><div>Cores | 26 Pérola | 50 Verde</div><div><div>Cobre Leito Bordado</div><div>Trapunatdo 3 pçs. ..........................</div><div>Edredom 3 peças Liso ................</div><div>Roupa de Cama 4 peças ..........</div><div>Jogo de Banho Gigante 5 peças....................</div><div>Rosto 1 peça ...........................................................</div><div>Lavabo 2 peças ......................................................</div><div>Rolinho Avulso ......................................................</div><div>Almofada Avulsa .................................................</div><div>Fronha 1 peça 70cm x 50cm .........................</div><div>Fronha 1 peça 90cm x 50cm .........................</div></div>', 'e19cb2dab6fbfd4f48a33d1844898e17canes.JPG', 56, ' 1; 2; 3; 4; 5', '8f7e14f4f3bd5fe1fef57c14c452dacbcanes2.JPG', '4a8b0cd6f211d46d03d99deaac7c545dcanes3.JPG', '041198538964674b9bd1074b2f2b4c6dcanes4.JPG', NULL),
(71, 'Coleção Liatris - Percal 230 Fios - Acetinado', 0.00, '<div>Percal 100% Algodão 230 fios - acetinado</div><div>Cores | 32 Branco</div><div><div>Cobre Leito Bordado 3 pçs...........................</div><div>Cobre Leito Estampado 3 pçs. ....................</div><div>Edredom 3 peças ................................................</div><div>Roupa de Cama 4 peças ..................................</div><div>Jogo de Banho Gigante 5 peças....................</div><div>Rosto 1 peça ...........................................................</div><div>Lavabo 2 peças ......................................................</div><div>Rolinho Avulso ......................................................</div><div>Almofada Avulsa .................................................</div><div>Fronha 1 peça 70cm x 50cm .........................</div><div>Fronha 1 peça 90cm x 50cm ........................</div></div>', '30479e59230ca0fb75061f0f5640e1a5liatris.JPG', 56, ' 1; 3; 4; 5', '826d8c0c1fb3d1b772e1c1704bfbb76bliatris2.JPG', NULL, NULL, NULL),
(72, 'Coleção Manhattan - Percal 230 Fios', 0.00, '<div>Percal 230 fios - 35% Fibra de Bambú / 65% Algodão</div><div>Cores Edredom e Cobre Leito</div><div>| 48 Cáqui</div><div>Cores Roupa de Cama e Acessórios</div><div>| 14 Listra Cáqui</div><div>| 20 Festonê Caqui</div><div><div>Cobre Leito Dupla Face</div><div>Matelassado 3 pçs. ..............................</div><div>Edredom Dupla Face 3 peças</div><div>Roupa de Cama 4 peças ............</div><div>Rolinho Avulso .......................................</div><div>Almofada Avulsa ..................................</div></div>', 'eea42cc813bd3e3d13a280559404e5ddmanhatan.JPG', 56, ' 1; 2; 3; 4; 5', NULL, NULL, NULL, NULL),
(73, 'Coleção Távola - Percal 230 Fios - Acetinado', 0.00, '<div>Percal 100% Algodão 230 fios - acetinado</div><div>Cores | 32 Branco | 48 Cáqui | 50 Verde</div><div><div>Cobre Leito Bordado Trapuntado 3 pçs.</div><div>Edredom 3 peças liso .......................................</div><div>Roupa de Cama 4 peças .................................</div><div>Jogo de Banho Gigante 5 peças....................</div><div>Rosto 1 peça ...........................................................</div><div>Lavabo 2 peças ......................................................</div><div>Rolinho Avulso .....................................................</div><div>Almofada Avulsa .................................................</div><div>Fronha 1 peça 70cm x 50cm .........................</div><div>Fronha 1 peça 90cm x 50cm .........................</div></div>', '6f617f64b13e47339bbb71ba2b2176c4tavola.JPG', 56, ' 1; 2; 3; 4; 5', 'c7a77b02517541324d3f6ea9de49acfctavola2.JPG', '374b25b4fcccea0974632a0522dd4a6atavola3.JPG', '8721711ba96c23139af03a85b9c3c6f7tavola4.JPG', NULL),
(74, 'Coleção Frágola - Percal 230 Fios - Acetinado', 0.00, '<div>Percal 100% Algodão 230 fios - acetinado</div><div>Cores | 135 Rosê | 32 Branco</div><div><div>Cobre Leito Bordado 3 pçs...........................</div><div>Edredom 3 peças ................................................</div><div>Roupa de Cama 4 peças ..................................</div><div>Jogo de Banho Gigante 5 peças....................</div><div>Rosto 1 peça ...........................................................</div><div>Lavabo 2 peças ......................................................</div><div>Rolinho Avulso ......................................................</div><div>Almofada Avulsa ..................................................</div><div>Fronha 1 peça 70cm x 50cm .........................</div><div>Fronha 1 peça 90cm x 50cm .........................</div></div>', '37faf8d478bb80f5452712b3811e952dfragola.JPG', 56, ' 1; 2; 3; 4; 5', '87e96beb2b623a4fb66c85c4d45993b3fragola2.JPG', '2047f36f9d769fc236579fa8958f1ed5fragola3.JPG', 'd0dbfa88f6de762a31e797c541e4b1e4fragola4.JPG', NULL),
(75, 'Coleção Poeme - Percal 230 Fios - Acetinado', 0.00, '<div>Percal 100% Algodão 230 fios - acetinado</div><div>Cores | 26 Palha | 116 Flores</div><div><div>Cobre Leito Estampado 3 pçs</div><div>Edredom 3 peças Estampado..</div><div>Roupa de Cama 4 peças ..........</div><div>Jogo de Banho Gigante 5 peças....................</div><div>Rosto 1 peça ...........................................................</div><div>Lavabo 2 peças ......................................................</div><div>Rolinho Avulso ......................................................</div><div>Almofada Avulsa ..................................................</div><div>Fronha 1 peça 70cm x 50cm .........................</div><div>Fronha 1 peça 90cm x 50cm .........................</div><div>Porta Travesseiro Estampado 01 peça .....</div></div>', '886ae4130c77cb05f145a7b2a90eb013poeme.JPG', 56, ' 1; 2; 3; 4; 5', '2744f31bf533a866ba8949d46fbffb5fpoeme2.JPG', 'c26ed39539382d8311d470cda41b3134poeme3.JPG', NULL, NULL),
(76, 'Coleção Essenza - Percal 230 Fios - Acetinado', 0.00, '<div>Percal 100% Algodão 230 fios - acetinado</div><div>Cores | 26 Palha</div><div><div>Cobre Leito Bordado Trapuntado 3 pçs.</div><div>Edredom 3 peças liso .......................................</div><div>Roupa de Cama 4 peças .................................</div><div>Jogo de Banho Gigante 5 peças....................</div><div>Rosto 1 peça ...........................................................</div><div>Lavabo 2 peças ......................................................</div><div>Rolinho Avulso ....................................................</div><div>Almofada Avulsa .................................................</div><div>Fronha 1 peça 70cm x 50cm .........................</div><div>Fronha 1 peça 90cm x 50cm .........................</div><div>PortaT ravesseiro Estampado 1 peça ..............</div></div>', '19662f1c9830b740b632f370029ceacaessenza.JPG', 56, ' 1; 2; 3; 4; 5', '598583f2cc73640e9fc71ab161a82612essenza2.JPG', '575694e8a9b7615619368f30500756adessenza3.JPG', NULL, NULL),
(77, 'Coleção Gardênia - Percal 230 Fios - Acetinado', 0.00, '<div>Percal 100% Algodão 230 fios - acetinado</div><div>Cores | 26 Palha | 116 Flores</div><div><div>Cobre Leito Bordado 3 pçs.....</div><div>Cobre Leito Estampado 3 pçs</div><div>Edredom 3 peças Estampado..</div><div>Roupa de Cama 4 peças ..........</div><div>Jogo de Banho Gigante 5 peças....................</div><div>Rosto 1 peça ...........................................................</div><div>Lavabo 2 peças ......................................................</div><div>Rolinho Avulso ......................................................</div><div>Almofada Avulsa .................................................</div><div>Fronha 1 peça 70cm x 50cm .........................</div><div>Fronha 1 peça 90cm x 50cm .........................</div><div>Porta Travesseiro Estampado 01 peça</div></div>', '8a5d8bac46b5bbc43ef82db9ad9ebd14gardenia.JPG', 56, ' 1; 2; 3; 4; 5', '264057c602f9bbab16a516b7ae1326f1gardenia2.JPG', 'ecaec3eb38c466122236f20019df4b20gardenia3.JPG', NULL, NULL),
(78, 'Coleção Bellágio - Percal 230 Fios - Acetinado', 0.00, '<div>Percal 100% Algodão 230 fios - acetinado</div><div>Cores | 32 Branco | 135 Rosê | 50 Verde</div><div>Cores Duvet: 94 Listra Azul | 116 Flores</div><div><div>Cobre Leito Bordado Trapuntado 3 pçs.</div><div>Duvet 230 Fios 3 peças....................................</div><div>Roupa de Cama 4 peças .................................</div><div>Jogo de Banho Gigante 5 peças....................</div><div>Rosto 1 peça ...........................................................</div><div>Lavabo 2 peças ......................................................</div><div>Rolinho Avulso .....................................................</div><div>Almofada Avulsa ..................................................</div><div>Fronha 1 peça 70cm x 50cm .........................</div><div>Fronha 1 peça 90cm x 50cm ......................</div></div>', 'e84ab99329704c13ecc843e533457df4bellagio.JPG', 56, ' 1; 2; 3; 4; 5', 'fe0981163a0097eecb179721afb9702bbellagio2.JPG', '9fe95d8cb74067212999bf24a8dac6cdbellagio3.JPG', '8e4c9a0558d19f7fee2953607fe787e9bellagio4.JPG', NULL),
(79, 'Coleção Andria - Percal 230 Fios - Acetinado', 0.00, '<div>Percal 100% Algodão 230 fios - acetinado</div><div>Cores | 135 Rosê | 26 Pérola | 32 Branco</div><div>| 50 Verde</div><div><div>Cobre Leito Bordado</div><div>Trapuntado 3 pçs. ................</div><div>Edredom 3 peças Liso .....</div><div>Roupa de Cama 4 peças</div><div>Jogo de Banho Gigante 5 peças</div><div>Rosto 1 peça .......................................</div><div>Lavabo 2 peças ..................................</div><div>Rolinho Avulso ...................................</div><div>Almofada Avulsa ...............................</div></div>', '2d4d85ebe3fd8a33c1d22e4407a892dbandria.JPG', 56, ' 1; 2; 3; 4; 5', 'e7aba27304827f8e1f3be343c0b68d59andria2.JPG', 'a5deadc9ae7c817b2822499ecc1ebcd2andria3.JPG', 'a8c36cf40c0f697fd2598d9625f88dfcandria4.JPG', '77583905eacdb51bd3bd16dcc57e8fb5andria5.JPG'),
(80, 'Coleção Giovanni - Percal 230 Fios - Acetinado', 0.00, '<div>Percal 100% Algodão 230 fios - acetinados</div><div>Cores | 32 Branco</div><div><div>Cobre Leito Bordado 3 pçs...........................</div><div>Cobre Leito Estampado 3 pçs .....................</div><div>Edredom Estampado 3 peças .......................</div><div>Roupa de Cama 4 peças ..................................</div><div>Jogo de Banho Gigante 5 peças....................</div><div>Rosto 1 peça ...........................................................</div><div>Lavabo 2 peças ......................................................</div><div>Rolinho Avulso ....................................................</div><div>Almofada Avulsa .................................................</div><div>Fronha 1 peça 70cm x 50cm .........................</div><div>Fronha 1 peça 90cm x 50cm .........................</div><div>PortaT ravesseiro Xadrez 1 peça ......................</div></div>', '1480a48b39009cc85aea57d8c42d9312giovanni.JPG', 56, ' 1; 3; 4; 5', '1ca49fc56571d6d932fcc2de7b85d883giovanni2.JPG', '4c3ed392e13554193187f7448e92f92egiovanni3.JPG', '6cf46e1cabd799ce9e42b90aac1a811cgiovanni4.JPG', NULL),
(81, 'Coleção Vivere - Percal 230 Fios - Acetinado', 0.00, '<div>Percal 100% Algodão 230 fios - acetinado</div><div>Cores | 26 Palha | 32 Branco | 50 Verde | 135 Rosê</div><div>Cores Roupa de Cama: 32 Branco | 08 Branco Cáqui</div><div>26 Palha | 69 Palha Cáqui</div><div><div>Cobre Leito Bordado Trapuntado 3 pçs.</div><div>Edredom 3 peças liso .......................................</div><div>Roupa de Cama 4 peças .................................</div><div>Jogo de Banho Gigante 5 peças....................</div><div>Rosto 1 peça ...........................................................</div><div>Lavabo 2 peças ......................................................</div><div>Rolinho Avulso ......................................................</div><div>Almofada Avulsa .................................................</div><div>Fronha 1 peça 70cm x 50cm .........................</div><div>Fronha 1 peça 90cm x 50cm .........................</div></div>', '0f4ba7c332917b190f1bbf63fc2e9d6fvivere.JPG', 56, ' 1; 2; 3; 4; 5', 'fcecc82cca3637a38f0580ff1c478808vivere2.JPG', NULL, NULL, NULL),
(82, 'Duvet Mirabello - Percal 230 Fios - Acetinado', 0.00, '<div>Percal 100% Algodão 230 fios - Acetinado</div><div>Cores | 94 Listra Azul | 128 Palha Flores</div><div><div>Duvet 3 peças 230 Fios....................................</div><div>Roupa de Cama 4 peças .................................</div><div>Fronha 1 peça 70cm x 50cm...........................</div><div>Fronha 1 peça 90cm x 50cm ................. ............</div></div>', '50be38303a7a1312f5de2bd91872f55cmirabello.JPG', 56, ' 1; 2; 3; 4; 5', '7a5901681eb49666852c8f0ce4d62842mirabello2.JPG', NULL, NULL, NULL),
(92, 'Coleção Pietro - Percal 230 Fios - Xadrez Fio Tinto', 0.00, '<div>Percal 100% Algodão 230 fios - xadrez fio tinto</div><div>Cores | 106 Bege | 903 Xadrez Verde Cáqui</div><div><div>Cobre Leito Xadrez 2 pçs</div><div>Matelassado ...........................................................</div><div>Edredom Xadrez 2 peças ..............................</div><div>Roupa de Cama 2 peças ..................................</div><div>Rolinho Avulso .....................................................</div><div>Almofada Avulsa ..................................................</div></div>', '1e43695164658f22b8ce66f73ddc809apietro.JPG', 55, ' 2; 6', '2d470558dcd7188c6530e9f924bd7e7bpietro2.JPG', NULL, NULL, NULL),
(91, 'Coleção Liatris - Percal 230 Fios - Acetinado', 0.00, '<div>Percal 100% Algodão 230 fios - acetinado</div><div>Cores | 32 Branco</div><div><div>Cobre Leito Bordado 2 pçs...........................</div><div>Cobre Leito Estampado 2 pçs .....................</div><div>Edredom Estampado 2 peças .......................</div><div>Roupa de Cama 3 peças ..................................</div><div>Rolinho Avulso ....................................................</div><div>Almofada Avulsa .................................................</div><div>Fronha 1 peça 70cm x 50cm .........................</div><div>Fronha 1 peça 90cm x 50cm .........................</div></div>', '4ae16a9556b7e976eff650fe2e763fb8liatris.JPG', 55, ' 2; 6', NULL, NULL, NULL, NULL),
(89, 'Coleção Amalf - Percal 230 Fios - Acetinado', 0.00, '<div>Percal 100% Algodão 230 fios - acetinado</div><div>Cores | 53 Foto</div><div><div>Cobre Leito Bordado Trapuntado 2 pçs.</div><div>Edredom 2 peças xadrez.................................</div><div>Roupa de Cama 3 peças .................................</div><div>Jogo de Banho Gigante 2 peças....................</div><div>Rolinho Avulso .....................................................</div><div>Almofada Avulsa .................................................</div></div>', '05f332525df2f8680617c468ad2816c9amalf.JPG', 55, ' 2; 6', '26fcd6f3e802679da9eeeb2945d4dc42amalf2.JPG', NULL, NULL, NULL),
(90, 'Coleção Giovanni - Percal 230 Fios - Acetinado', 0.00, '<div>Percal 100% Algodão 230 fios - acetinado</div><div>Cores | 32 Branco</div><div><div>Cobre Leito Bordado 2 pçs...........................</div><div>Cobre Leito Estampado 2 pçs .....................</div><div>Edredom Estampado 2 peças .......................</div><div>Roupa de Cama 3 peças ..................................</div><div>Rolinho Avulso .....................................................</div><div>Almofada Avulsa .................................................</div><div>Fronha 1 peça 70cm x 50cm .........................</div><div>Fronha 1 peça 90cm x 50cm .........................</div><div>Porta Travesseiro Xadrez 1 peça ..............</div></div>', '94f5eaabdc421a3754d126eb418b857cgiovanni.JPG', 55, ' 2; 6', NULL, NULL, NULL, NULL),
(88, 'Fronhas Blumarine - 100% Algodão', 0.00, '<div>Percal 100% Algodão 230 fios / 400 Fios</div><div>Cores Fronhas 230 Fios | 65 Xadrez Verde | 94 Listra Azul | 116 Flores</div><div>| 128 Palha Flores | 656 Xadrez Verde e Branco</div><div>| 903 Xadrez Verde e Cáqui</div><div>Cores Fronhas 400 Fios | 127 Branco Flores | 220 Listrado</div><div><br></div><div><div>Fronha 230 Fios 70cm x 50cm .......................</div><div>Fronha 230 Fios 90cm x 50cm .......................</div><div>Fronha 400 Fios 70cm x 50cm .......................</div><div>Fronha 400 Fios 90cm x 50cm .......................</div></div>', 'f517be2ec456901cdb73924500a75d5bfronhas.JPG', 53, ' 7', '35edd1a7a056f16c99b60960538f1fd8fronhas2.JPG', NULL, NULL, NULL),
(93, 'Coleção BEAUTY - 100% ALGODÃO PERCAL 200 FIOS', 0.00, '<div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;">Cobre Leito Casal 3 Peças</div><div><font face="Arial, Helvetica, sans-serif"><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">Roupa de Cama 4 Peças</span></font><br></div><div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;">Jogo de Banho 05 Peças - Gigante</div><div><font face="Arial, Helvetica, sans-serif"><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">Almofada Avulsa</span></font><br></div><div><font face="Arial, Helvetica, sans-serif"><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">Rolinho Avulso</span><br></font></div><div><font face="Arial, Helvetica, sans-serif"><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;"><br></span></font></div><div><font face="Arial, Helvetica, sans-serif"><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">Tapete New Classic</span><br></font></div><div><font face="Arial, Helvetica, sans-serif"><div style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">80cm x 50cm / 1,20m x 70cm</div><div style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;"><br></div><div><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">Cores Tapetes</span><br></div><div><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;"><div>32-Branco / 26-Palha</div><div>106-Bege / 48-Cáqui / 322-Violeta</div></span></div></font></div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;"><br></div></div>', '6e6a1fa8b9bbacd586c4314003f4e214beauty.JPG', 57, ' 1; 3; 4; 5', '95a2337363032c28ed4c131f8b0b923ebeauty2.JPG', '3f293243ddefa7b3ee3679cec110a46abeauty3.JPG', 'ff925614b1f084135c683554d187ab33beauty4.JPG', NULL),
(94, 'Coleção LUMIÉRE - 100% ALGODÃO PERCAL 200 FIOS', 0.00, '<div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;">Kit Casal 7 Peças</div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;">1 Colcha | 2 Porta Travesseiros</div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;">2 Almofadas | 2 Refis Almofadas</div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;"><br></div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;"><div>Cobre Leito Casal 3 Peças</div><div>1 Cobre Leito | 2 Porta Travesseiros</div></div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;"><br></div><div><font face="Arial, Helvetica, sans-serif"><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">Roupa de Cama 4 Peças</span></font><br></div><div><font face="Arial, Helvetica, sans-serif"><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;"><br></span></font></div><div><font face="Arial, Helvetica, sans-serif"><div style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">Jogo de Banho 05 Peças - Gigante</div><div style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">02 Toalhas de Banho | 02 Toalhas de Rosto / 01 Piso</div><div style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;"><br></div><div><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">Rolinho Avulso</span><br></div><div><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;"><br></span></div><div><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">Babado</span><br></div></font></div>', '7d8610c564beb0f0ea8033ce7c62c9f8lumiere.JPG', 57, ' 1; 3; 4; 5', '09fdb75afe55458d87effebb351639f3lumiere2.JPG', 'ab1f1bcd71c7a10d29b02c2dddee76b8lumiere3.JPG', '33959c3d73134c76299fb7a64b6ad55alumiere4.JPG', NULL),
(95, 'Kit BOUQUET - 100% ALGODÃO PERCAL 200 FIOS', 0.00, '<div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;">Kit Casal 20 Peças</div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;">1 Colcha | 2 Porta Travesseiros</div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;">2 Travesseiros | 1 Almofada</div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;">1 Refil Almofada | 1 Rolo</div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;">1 Refil Rolo | 1 Lençol de Cima</div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;">1 Lençol de Baixo | 2 Fronhas</div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;">2 Toalhas Banho | 2 Toalhas Rosto</div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;">1 Toalha Piso | 2 Toalhas Lavabo</div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;"><br></div><div><font face="Arial, Helvetica, sans-serif"><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">Tapete New Classic &nbsp;80cm x 50cm / 1,20m x 70cm</span></font></div><div><font face="Arial, Helvetica, sans-serif"><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;"><br></span></font></div><div><font face="Arial, Helvetica, sans-serif"><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">Cores Tapetes</span><br></font></div><div><font face="Arial, Helvetica, sans-serif"><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;"><div>32-Branco / 26-Palha</div><div>106-Bege / 48-Cáqui / 322-Violeta</div></span></font></div>', 'd60d8c63f153a76162c6e5e1fb4016dcbouquet.JPG', 57, ' 1; 3; 4; 5', '30c5f0e592c0e2dbd902c2909f7e87d9bouquet2.JPG', NULL, NULL, NULL),
(96, 'Coleção SERENITÁ - 100% ALGODÃO PERCAL 200 FIOS', 0.00, '<div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;">Kit Casal 7 Peças</div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;">1 Colcha | 2 Porta Travesseiros</div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;">2 Almofadas | 2 Refis Almofadas</div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;"><br></div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;"><div>Cobre Leito Bordado Casal 3 Peças</div><div>1 Cobre Leito</div><div>2 Porta Travesseiros</div></div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;"><br></div><div><font face="Arial, Helvetica, sans-serif"><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">Roupa de Cama 4 Peças</span></font><br></div><div><font face="Arial, Helvetica, sans-serif"><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;"><br></span></font></div><div><font face="Arial, Helvetica, sans-serif"><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">Rolinho Avulso</span><br></font></div><div><font face="Arial, Helvetica, sans-serif"><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;"><br></span></font></div><div><font face="Arial, Helvetica, sans-serif"><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;"><div>Jogo de Banho 05 Peças - Gigante</div><div>02 Toalhas de Banho | 02 Toalhas de Rosto / 01 Piso</div></span></font></div>', '899bd9e3e51f44396e7102b5bfded7beserenita.JPG', 57, ' 1; 3; 4; 5', '557e68cb0c44d485a93cccc948f154dcserenita2.JPG', 'dc15363ff17f593ecee4159d607447f2serenita3.JPG', '80d53f7e5249be27850dfcd6397a7090serenita4.JPG', NULL),
(97, 'Coleção LACCA - 100% ALGODÃO PERCAL 200 FIOS', 0.00, '<div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;">Cobre Leito Casal 3 Peças</div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;">1 Cobre Leito | 2 Porta Travesseiros</div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;"><br></div><div><font face="Arial, Helvetica, sans-serif"><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">Roupa de Cama 4 Peças</span></font><br></div><div><font face="Arial, Helvetica, sans-serif"><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;"><br></span></font></div><div><font face="Arial, Helvetica, sans-serif"><div style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">Jogo de Banho 05 Peças - Gigante</div><div style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">02 Toalhas de Banho | 02 Toalhas de Rosto / 01 Piso</div><div style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;"><br></div><div><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">Rolinho Avulso</span><br></div><div><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;"><br></span></div><div><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">Almofada Festonê Avulsa</span><br></div><div><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;"><br></span></div><div><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">Almofada Bordada Avulsa</span><br></div><div><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;"><br></span></div><div><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">Tapete Elegance &nbsp; 95cm x 63cm</span><br></div><div><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;"><br></span></div><div><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;"><div>Cores Tapetes</div><div>32-Branco</div><div>26-Palha</div></span></div></font></div>', 'aac87108dc390fc50dddb16457467c17lacca.JPG', 57, ' 1; 3; 4; 5', '5a69c1a6f2afc4d36f66d8a5acc70cd7lacca2.JPG', NULL, NULL, NULL),
(98, 'Coleção ANÍS - 100% ALGODÃO PERCAL 200 FIOS', 0.00, '<div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;">Kit Casal 5 Peças</div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;">1 Colcha | 4 Porta Travesseiros</div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;"><br></div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;"><div>Cobre Leito Casal 3 Peças</div><div>1 Cobre Leito | 2 Porta Travesseiros</div></div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;"><br></div><div><font face="Arial, Helvetica, sans-serif"><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">Roupa de Cama 4 Peças</span></font><br></div><div><font face="Arial, Helvetica, sans-serif"><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;"><br></span></font></div><div><font face="Arial, Helvetica, sans-serif"><div style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">Jogo de Banho 05 Peças - Gigante</div><div style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">02 Toalhas de Banho | 02 Toalhas de Rosto / 01 Piso</div><div style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;"><br></div><div><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">Almofada Avulsa</span><br></div><div><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;"><br></span></div><div><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">Rolinho Avulso</span><br></div></font></div>', 'f28e0b94a70abf4e87ab11a37a661de9anis.JPG', 57, ' 1; 3; 4; 5', 'ed7b542b5a62f104e6b954b6b93dc2cfanis2.JPG', '42b2dd66890b0e4b8fadc772438b0a6aanis3.JPG', NULL, NULL);
INSERT INTO `tbprodutos` (`id`, `nome`, `preco`, `descricao`, `foto1`, `id_subcategoria`, `variacoes`, `foto2`, `foto3`, `foto4`, `foto5`) VALUES
(99, 'Coleção PRÁTIC - 100% ALGODÃO PERCAL 200 FIOS', 0.00, '<font face="Arial, Helvetica, sans-serif"><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">Edredom 1 Peça</span></font><div><font face="Arial, Helvetica, sans-serif"><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;"><br></span></font></div><div><font face="Arial, Helvetica, sans-serif"><div style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">Cobre Leito Casal 3 Peças</div><div style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">1 Cobre Leito | 2 Porta Travesseiros</div><div style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;"><br></div><div style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;"><div>Cobre Leito Solteiro 2 Peças</div><div>1 Cobre Leito | 1 Porta Travesseiro</div></div><div style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;"><br></div><div><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">Roupa de Cama 4 Peças</span><br></div><div><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;"><br></span></div><div><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">Roupa de Cama Solteiro 3 Peças</span><br></div><div><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;"><br></span></div><div><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">Lençol Sleep Avulso:</span><br></div><div><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">Casal</span><br></div><div><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">Queen</span><br></div><div><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">King</span><br></div><div><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">Solteiro</span><br></div><div><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">Cores Disponíveis:</span></div><div><div style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">&nbsp;Palha</div><div style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">&nbsp;Branco</div><div style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">&nbsp;Cáqui</div><div style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">&nbsp;Bege</div><div style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;"><br></div><div><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">Fronha Avulsa:</span><br></div><div><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">70cm x 50cm + Abas</span><br></div><div><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">90cm x 50cm + Abas</span><br></div><div><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">1,50m x 50cm + Abas</span><br></div><div><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;"><br></span></div><div><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">Porta Travesseiro Matelassado Avulso:</span><br></div><div><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">70cm x 50cm + Abas</span><br></div><div><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;"><br></span></div><div style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;"><br></div><div style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;"><br></div></div><div><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;"><br></span></div><div><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;"><br></span></div></font></div>', 'd04c49e597813fa9266ef9894b47926epratic.JPG', 57, ' 1; 2; 3; 4; 5; 7', 'c72e550637ae8b4127e790ef1abbe940pratic2.JPG', NULL, NULL, NULL),
(100, 'Coleção NOBRE - 100% ALGODÃO PERCAL 200 FIOS', 0.00, '<div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;">Edredom Casal 3 Peças</div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;">1 Edredom | 2 Porta Travesseiros</div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;"><br></div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;"><div>Edredom Solteiro 2 Peças</div><div>1 Edredom | 1 Porta Travesseiro</div></div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;"><br></div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;"><div>Cobre Leito Casal 3 Peças</div><div>1 Cobre Leito | 2 Porta Travesseiros</div></div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;"><br></div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;"><div>Cobre Leito Solteiro 2 Peças</div><div>1 Cobre Leito | 1 Porta Travesseiro</div></div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;"><br></div><div><font face="Arial, Helvetica, sans-serif"><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">Roupa de Cama 4 Peças</span></font><br></div><div><font face="Arial, Helvetica, sans-serif"><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;"><br></span></font></div><div><font face="Arial, Helvetica, sans-serif"><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">Roupa de Cama Solteiro 3 Peças</span><br></font></div><div><font face="Arial, Helvetica, sans-serif"><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;"><br></span></font></div>', 'd3e8aad05528c657aea11f6180753e19nobre.JPG', 57, ' 1; 2; 3; 4; 5', 'a59204a1b39f5de9db9b34957ee78e7enobre2.JPG', '3b2f3672b7fdbf0c0e7c696b09a99baanobre3.JPG', NULL, NULL),
(101, 'Coleção CACAU - 100% ALGODÃO PERCAL 200 FIOS', 0.00, '<div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;">Cobre Leito Bordado Casal 3 Peças</div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;">1 Cobre Leito</div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;">2 Porta Travesseiros</div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;"><br></div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;"><div>Cobre Leito Prátic Casal 3 Peças</div><div>1 Cobre Leito</div><div>2 Porta Travesseiros</div></div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;"><br></div><div><font face="Arial, Helvetica, sans-serif"><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">Roupa de Cama 4 Peças</span></font><br></div><div><font face="Arial, Helvetica, sans-serif"><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;"><br></span></font></div><div><font face="Arial, Helvetica, sans-serif"><div style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">Jogo de Banho 05 Peças - Gigante</div><div style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">02 Toalhas de Banho | 02 Toalhas de Rosto</div><div style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">01 Piso</div><div style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;"><br></div><div><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">Rolinho Avulso</span><br></div></font></div>', '863bc84abd908ebc16fba3562a06d734cacau.JPG', 57, ' 1; 3; 4; 5', '4d4f1263e182b4211785e3a8b143eacacacau2.JPG', 'd5c650bbc97646a71381fca33810a760cacau3.JPG', NULL, NULL),
(102, 'Coleção LYRIC - 100% ALGODÃO PERCAL 200 FIOS', 0.00, '<div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;">Cobre Leito Casal 3 Peças</div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;">1 Cobre Leito</div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;">2 Porta Travesseiros</div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;"><br></div><div><font face="Arial, Helvetica, sans-serif"><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">Roupa de Cama 4 Peças</span></font><br></div><div><font face="Arial, Helvetica, sans-serif"><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;"><br></span></font></div><div><font face="Arial, Helvetica, sans-serif"><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">Almofada Avulsa</span><br></font></div><div><font face="Arial, Helvetica, sans-serif"><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;"><br></span></font></div><div><font face="Arial, Helvetica, sans-serif"><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">Rolinho Avulso</span><br></font></div><div><font face="Arial, Helvetica, sans-serif"><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;"><br></span></font></div><div><font face="Arial, Helvetica, sans-serif"><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;"><div>Jogo de Banho 05 Peças - Gigante</div><div>02 Toalhas de Banho | 02 Toalhas de Rosto</div><div>01 Piso</div><div><br></div></span></font></div>', 'df451f7053cb84d115156638124c1ffdlyric.JPG', 57, ' 1; 3; 4; 5', '851731285fb8b0e9e95afb158d903b90lyric2.JPG', NULL, NULL, NULL),
(103, 'Coleção ADORNARE - 100% ALGODÃO PERCAL 200 FIOS', 0.00, '<div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;">Kit Casal 3 Peças</div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;">1 Colcha | 2 Porta Travesseiros</div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;"><br></div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;"><div>Cobre Leito Bordado Casal 3 Peças</div><div>1 Cobre Leito | 2 Porta Travesseiros</div></div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;"><br></div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;"><div>Cobre Leito Matelassado</div><div>Casal 3 Peças</div><div>1 Cobre Leito | 2 Porta Travesseiros</div></div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;"><br></div><div><font face="Arial, Helvetica, sans-serif"><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">Roupa de Cama 4 Peças</span></font><br></div><div><font face="Arial, Helvetica, sans-serif"><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;"><br></span></font></div><div><font face="Arial, Helvetica, sans-serif"><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">Almofada Avulsa</span><br></font></div><div><font face="Arial, Helvetica, sans-serif"><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;"><br></span></font></div><div><font face="Arial, Helvetica, sans-serif"><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">Rolinho Avulso</span><br></font></div><div><font face="Arial, Helvetica, sans-serif"><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;"><br></span></font></div><div><font face="Arial, Helvetica, sans-serif"><div style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">Jogo de Banho 05 Peças - Gigante</div><div style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">02 Toalhas de Banho | 02 Toalhas de Rosto</div><div style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">01 Piso</div><div style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;"><br></div><div><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">Tapete New Classic&nbsp;80cm x 50cm /&nbsp;1,20m x 70cm</span><br></div><div><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">Cores Tapetes</span><br></div><div><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;"><div>Branco / Palha</div><div>Bege / Cáqui / Violeta</div></span></div></font></div>', 'c255128d957b29e01f684e3e19d930bbadornare.JPG', 57, ' 1; 3; 4; 5', '3299477ab753be516a08563c5e235633adornare2.JPG', '9df9ec032810376eec153b5782a97db6adornare3.JPG', '7936fbc2a3c50b8721ae3bc5fe8f8fcbadornare.JPG', NULL),
(104, 'Coleção MICENAS - 100% ALGODÃO PERCAL 200 FIOS', 0.00, '<div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;">Cobre Leito Casal 3 Peças</div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;">1 Cobre Leito | 2 Porta Travesseiros</div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;"><br></div><div><font face="Arial, Helvetica, sans-serif"><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">Roupa de Cama 4 Peças</span></font><br></div><div><font face="Arial, Helvetica, sans-serif"><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;"><br></span></font></div><div><font face="Arial, Helvetica, sans-serif"><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">Tapete Stilo &nbsp;80cm x 50cm /&nbsp;1,20m x 70cm</span><br></font></div><div><font face="Arial, Helvetica, sans-serif"><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">Cores Tapetes</span><br></font></div><div><font face="Arial, Helvetica, sans-serif"><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;"><div>Palha / Vermelho</div><div>Verde / Cáqui / Tabaco</div></span></font></div>', 'c65db311accc3d98fe5e8b53d79f5d4amicenas.JPG', 57, ' 1; 3; 4; 5', 'ca05f1590450eb0ab052137d6d528115micenas2.JPG', '371e029bac703b5ba27ea938a63898f4micenas3.JPG', NULL, NULL),
(105, 'Kit MAHINA - 100% ALGODÃO PERCAL 200 FIOS', 0.00, '<div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;">Kit Casal 7 Peças</div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;">1 Colcha | 2 Porta Travesseiros</div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;">2 Almofadas | 2 Refis Almofadas</div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;"><br></div><div><font face="Arial, Helvetica, sans-serif"><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">Roupa de Cama 4 Peças</span></font><br></div><div><font face="Arial, Helvetica, sans-serif"><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;"><br></span></font></div><div><font face="Arial, Helvetica, sans-serif"><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;"><br></span></font></div>', 'b8354afb66d54c97ca46b1d484d41212mahina.JPG', 57, ' 1; 3; 4; 5', '55e244f7d52eea9a9d1f5f3d45ca7beemahina2.JPG', NULL, NULL, NULL),
(106, 'Coleção ESPLENDORE - 100% ALGODÃO PERCAL 200 FIOS', 0.00, '<div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;">Kit Casal 3 Peças</div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;">1 Edredom | 2 Porta Travesseiros</div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;"><br></div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;"><div>Cobre Leito Casal 3 Peças</div><div>1 Cobre Leito | 2 Porta Travesseiros</div></div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;"><br></div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;"><div>Jogo de Banho 05 Peças - Gigante</div><div>02 Toalhas de Banho | 02 Toalhas de Rosto</div><div>01 Piso</div></div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;"><br></div><div><font face="Arial, Helvetica, sans-serif"><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">Rolinho Avulso</span></font><br></div><div><font face="Arial, Helvetica, sans-serif"><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;"><br></span></font></div><div><font face="Arial, Helvetica, sans-serif"><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">Roupa de Cama 4 Peças</span><br></font></div><div><font face="Arial, Helvetica, sans-serif"><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;"><br></span></font></div><div><font face="Arial, Helvetica, sans-serif"><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;"><br></span></font></div>', 'aea81cb0e8b2062cdc6b2e687449fa3dsplendore.JPG', 57, ' 1; 3; 4; 5', '267319867a04f7ea268dc6ca9571c5ebsplendore2.JPG', NULL, NULL, NULL),
(107, 'Kit ISADORA - 100% ALGODÃO PERCAL 200 FIOS', 0.00, '<div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;">Kit Casal 9 Peças</div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;">1 Colcha | 2 Porta Travesseiros</div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;">3 Almofadas | 3 Refis Almofadas</div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;"><br></div><div><font face="Arial, Helvetica, sans-serif"><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">Roupa de Cama 4 Peças</span></font><br></div>', '5a4e9ca0864310310e026b370dfa89f4isadora.JPG', 57, ' 1; 3; 4; 5', NULL, NULL, NULL, NULL),
(108, 'Kit AMOY - 100% ALGODÃO PERCAL 200 FIOS', 0.00, '<div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;">Kit Casal 11 Peças</div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;">1 Colcha | 2 Porta Travesseiros</div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;">2 Almofadas | 2 Refis Almofadas</div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;">2 Rolinhos | 2 Refis Rolinhos</div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;"><br></div><div><font face="Arial, Helvetica, sans-serif"><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">Roupa de Cama 4 Peças</span></font><br></div>', '8f80d6bd22828d59cf56cd023a629339amoy.JPG', 57, ' 1; 3; 4; 5', NULL, NULL, NULL, NULL),
(109, 'Kit AIELLI - 100% ALGODÃO PERCAL 200 FIOS', 0.00, '<div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;">Kit Casal 9 Peças</div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;">1 Colcha | 2 Porta Travesseiros</div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;">1 Almofada | 1 Refil Almofada</div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;">2 Rolos | 2 Refis Rolo</div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;"><br></div><div><font face="Arial, Helvetica, sans-serif"><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">Roupa de Cama 4 Peças</span></font><br></div>', '460fc7bbdf66856c049cd7da5c36eccaaielli.JPG', 57, ' 1; 3; 4; 5', NULL, NULL, NULL, NULL),
(110, 'Kit SUPREME - 100% ALGODÃO PERCAL 200 FIOS', 0.00, '<div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;">Kit Casal 7 Peças</div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;">1 Colcha | 2 Porta Travesseiros</div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;">2 Almofadas | 2 Refis Almofadas</div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;"><br></div><div><font face="Arial, Helvetica, sans-serif"><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">Roupa de Cama 4 Peças</span></font><br></div><div><font face="Arial, Helvetica, sans-serif"><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;"><br></span></font></div><div><font face="Arial, Helvetica, sans-serif"><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;"><div>Jogo de Banho 05 Peças - Gigante</div><div>02 Toalhas de Banho | 02 Toalhas de Rosto</div><div>01 Piso</div></span></font></div>', '1127781fa9717e435125ab28540f2160supreme.JPG', 57, ' 1; 3; 4; 5', '93c2c2c2ac24675814ca691fbf335e43supreme2.JPG', NULL, NULL, NULL),
(111, 'Kit GOLDEN - 100% ALGODÃO PERCAL 200 FIOS', 0.00, '<div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;">Kit Casal 9 Peças</div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;">1 Colcha | 2 Porta Travesseiros</div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;">1 Almofada | 1 Refil Almofada</div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;">2 Balas | 2 Refis Balas</div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;"><br></div><div><font face="Arial, Helvetica, sans-serif"><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">Roupa de Cama 4 Peças</span></font><br></div>', '79378252af9612e9f7c1ef81b015ab49golden.JPG', 57, ' 1; 3; 4; 5', NULL, NULL, NULL, NULL),
(112, 'Kit LYN - 100% ALGODÃO PERCAL 200 FIOS', 0.00, '<div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;">Kit Casal 7 Peças</div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;">1 Colcha | 2 Porta Travesseiros</div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;">2 Almofadas | 2 Refis Almofadas</div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;"><br></div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;"><div>Cobre Leito Casal 3 Peças</div><div>1 Cobre Leito</div><div>2 Porta Travesseiros</div></div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;"><br></div><div><font face="Arial, Helvetica, sans-serif"><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">Roupa de Cama 4 Peças</span></font><br></div>', '286db9b4610fb4cd5b0aff51185029a6lyn.JPG', 57, ' 1; 3; 4; 5', '1047ec83019eeb368bbde76fddd3f91blyn2.JPG', NULL, NULL, NULL),
(113, 'Kit DUET - 100% ALGODÃO PERCAL 200 FIOS', 0.00, '<div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;">Kit Casal 11 Peças</div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;">1 Colcha | 2 Porta Travesseiros</div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;">2 Almofadas | 2 Refil Almofadas</div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;">2 Rolinhos | 2 Refis Rolos</div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;"><br></div><div><font face="Arial, Helvetica, sans-serif"><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">Roupa de Cama 4 Peças</span></font><br></div>', 'd56e2414befe21cdd9d46b66e35ec018duet.JPG', 57, ' 1; 3; 4; 5', NULL, NULL, NULL, NULL),
(114, 'Kit LASTIS - 100% ALGODÃO PERCAL 200 FIOS', 0.00, '<div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;">Kit Casal 11 Peças</div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;">1 Colcha | 2 Porta Travesseiros</div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;">2 Almofadas | 2 Refis Almofadas</div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;">2 Balas | 2 Refis Balas</div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;"><br></div><div><font face="Arial, Helvetica, sans-serif"><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">Roupa de Cama 4 Peças</span></font><br></div>', '5a1f61703ea3e4a58109b77c70527f47lastis.JPG', 57, ' 1; 3; 4; 5', '756b57c4c2b87d5646873db30213454dlastis2.JPG', NULL, NULL, NULL),
(115, 'Kit HORTELÃ - 100% ALGODÃO PERCAL 200 FIOS', 0.00, '<div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;">Kit Casal 11 Peças</div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;">1 Colcha | 2 Porta Travesseiros</div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;">2 Almofadas | 2 Refis Almofadas</div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;">2 Rolinhos | 2 Refis Rolos</div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;"><br></div><div><font face="Arial, Helvetica, sans-serif"><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">Roupa de Cama 4 Peças</span></font><br></div>', 'f363509ff959b5443a7f8156118a901fhortel.JPG', 57, ' 1; 3; 4; 5', NULL, NULL, NULL, NULL),
(116, 'Kit ALLES - ALGODÃO | VISCOSE | LINHO', 0.00, '<div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;">Kit Casal 7 Peças</div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;">1 Colcha | 2 Porta Travesseiros</div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;">2 Almofadas | 2 Refis Almofadas</div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;"><br></div><div><font face="Arial, Helvetica, sans-serif"><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">Roupa de Cama 4 Peças</span></font><br></div>', '828cd4fc9f959f337464157409fa5545alles.JPG', 57, ' 1; 3; 4; 5', 'a4b4c608afde4e96479aa58814222497alles2.JPG', NULL, NULL, NULL),
(117, 'Kit LANCASTER - ALGODÃO | POLIÉSTER | JACQUARD', 0.00, '<div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;">Kit Casal 7 Peças</div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;">1 Colcha | 2 Porta Travesseiros</div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;">2 Almofadas | 2 Refis Almofadas</div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;"><br></div><div><font face="Arial, Helvetica, sans-serif"><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">Roupa de Cama 4 Peças</span></font><br></div><div><font face="Arial, Helvetica, sans-serif"><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;"><br></span></font></div><div><font face="Arial, Helvetica, sans-serif"><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;"><div>Jogo de Banho 05 Peças - Gigante</div><div>02 Toalhas de Banho | 02 Toalhas de Rosto</div><div>01 Piso</div></span></font></div>', '7f65d9eb95c9907bbc3ee82510c90cd5lancaster.JPG', 57, ' 1; 3; 4; 5', '6b24869debcf37a4506840d8d35997dblancaster2.JPG', NULL, NULL, NULL),
(118, 'Kit MANCHESTER - ALGODÃO | POLIÉSTER', 0.00, '<div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;">Kit Casal 7 Peças</div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;">1 Colcha | 2 Porta Travesseiros</div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;">2 Almofadas | 2 Refis Almofadas</div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;"><br></div><div><font face="Arial, Helvetica, sans-serif"><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">Roupa de Cama 4 Peças</span></font><br></div><div><font face="Arial, Helvetica, sans-serif"><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;"><br></span></font></div><div><font face="Arial, Helvetica, sans-serif"><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">Porta Travesseiro Avulso Estampado &nbsp;70cm x 50cm</span><br></font></div>', 'e4d5e457c296217155b1b424693afe18manchester.JPG', 57, ' 1; 3; 4; 5', NULL, NULL, NULL, NULL),
(119, 'Coleção MICENAS - 100% ALGODÃO PERCAL 200 FIOS', 0.00, '<font face="Arial, Helvetica, sans-serif"><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">Roupa de Cama 4 Peças</span></font><div><font face="Arial, Helvetica, sans-serif"><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;"><br></span></font></div><div><font face="Arial, Helvetica, sans-serif"><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">Almofada Avulsa</span><br></font></div><div><font face="Arial, Helvetica, sans-serif"><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;"><br></span></font></div><div><font face="Arial, Helvetica, sans-serif"><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">Rolinho Avulso</span><br></font></div>', '05ec7ea9df3060847ebf831dce3bc5ffmicenas.JPG', 57, ' 1; 3; 4; 5', 'd073adb11958af49f3739a4a6f93edccmicenas2.JPG', NULL, NULL, NULL),
(120, 'Roupa de Cama PÉTRA - 100% ALGODÃO PERCAL 200 FIOS', 0.00, '<font face="Arial, Helvetica, sans-serif"><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">Roupa de Cama 4 Peças</span></font><div><font face="Arial, Helvetica, sans-serif"><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;"><br></span></font></div><div><font face="Arial, Helvetica, sans-serif"><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">Roupa de Cama Solteiro 3 Peças</span><br></font></div><div><font face="Arial, Helvetica, sans-serif"><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;"><br></span></font></div><div><font face="Arial, Helvetica, sans-serif"><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;"><div>Cores Disponíveis:</div><div><br></div><div>&nbsp;26 - Palha | Palha</div><div>31 - Branco | Preto</div><div>32 - Branco | Branco</div><div>33 - Branco | Goiaba</div><div>34 - Branco | Lilás</div><div>35 - Branco | Vermelho</div><div>62 - Branco | Verde</div><div>68 - Branco | Azul</div><div>69 - Palha | Cáqui</div><div>70 - Palha | Verde</div><div>74 - Palha | Preto</div></span></font></div>', '3b8133ecabb191bec6d54dd1d734f234petra.JPG', 57, ' 1; 2; 3; 4; 5', NULL, NULL, NULL, NULL),
(121, 'Coleção VERSÁTIL - 100% ALGODÃO PERCAL 150 FIOS', 0.00, '<div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;">Cobre Leito Casal 3 Peças</div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;">1 Cobre Leito</div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;">2 Porta Travesseiros</div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;"><br></div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;"><div>Cobre Leito Solteiro 2 Peças</div><div>1 Cobre Leito</div><div>1 Porta Travesseiro</div></div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;"><br></div><div><font face="Arial, Helvetica, sans-serif"><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">Roupa de Cama 4 Peças</span></font><br></div><div><font face="Arial, Helvetica, sans-serif"><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;"><br></span></font></div><div><font face="Arial, Helvetica, sans-serif"><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">Roupa de Cama Solteiro 3 Peças</span><br></font></div>', 'c965a46aea9ee224706f310a42aeb3a8versatil.JPG', 58, ' 1; 2; 3; 4; 5', '08ebe9e636f2a6a6711d2924aaadfcf8versatil2.JPG', '724b6261bf869be325691d0038e02698versatil3.JPG', '9c88285b2eaf1f3faa5071b039349dd2versatil4.JPG', NULL),
(123, 'Coleção SOFT - ALGODÃO | POLIÉSTER | MALHA FIO PENTEADO', 0.00, '<div>Edredom 1 Peça</div><div>1 Edredom</div><div><br></div><div><div>Cobertor Soft 1 Peça</div><div>1 Cobertor</div></div><div><br></div><div><div>Cores Disponíveis:</div><div>111 - Lilás</div><div>106 - Bege</div><div>028 - Azul</div><div>322 - Violeta</div><div>041 - Vermelho</div><div>151 - Tabaco</div></div>', '477e74829333001f807854e906376fadsoft.JPG', 59, ' 2; 5', '246c5d508efaa3ab4cb3696b2107e742soft2.JPG', NULL, NULL, NULL),
(124, 'Coleção SAFARI - 100% ALGODÃO MALHA PENTEADA 30/1- MANTA 180gr. SILICONADA', 0.00, '<font face="Arial, Helvetica, sans-serif"><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">Edredom 1 Peça</span></font><div><font face="Arial, Helvetica, sans-serif"><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;"><br></span></font></div><div><font face="Arial, Helvetica, sans-serif"><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">Roupa de Cama 4 Peças</span><br></font></div><div><font face="Arial, Helvetica, sans-serif"><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;"><br></span></font></div><div><font face="Arial, Helvetica, sans-serif"><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">Roupa de Cama Solteiro 3 Peças</span><br></font></div><div><font face="Arial, Helvetica, sans-serif"><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;"><br></span></font></div><div><font face="Arial, Helvetica, sans-serif"><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">Porta Travesseiro Avulso:</span><br></font></div><div><font face="Arial, Helvetica, sans-serif"><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">Liso 70 cm x 50cm + Abas</span><br></font></div><div><font face="Arial, Helvetica, sans-serif"><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">Estampado 70cm x 50cm + Abas</span><br></font></div><div><font face="Arial, Helvetica, sans-serif"><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;"><br></span></font></div>', '97631f7bbd182c94f995d98611039988safari.JPG', 59, ' 1; 2; 3; 4; 5', 'd31cd556fd65186fca12ac63ce5487a9safari2.JPG', '2b5ef657c9a7a332e80b46f30fbbd4cfsafari3.JPG', '5f9b245be7fbe4d4088c1b4a350fcf07safari4.JPG', NULL),
(125, 'Coleção NATURA - 100% ALGODÃO MALHA PENTEADA 30/1', 0.00, '<div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;">Lençol Avulso c/ elástico<br></div><div><font face="Arial, Helvetica, sans-serif"><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">Cores Disponíveis:</span></font><br></div><div><font face="Arial, Helvetica, sans-serif"><div style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">26 - Palha</div><div style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">27 - Pink</div><div style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">32 - Branco</div><div style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">37 - Pistache</div><div style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">40 - Azul</div><div style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;"><div>41 - Vermelho</div><div>48 - Cáqui</div><div>111 - Lilás</div><div>112 - Chocolate</div></div><div style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;"><div>138 - Prata</div><div>322 - Violeta</div><div>352 - Mescla</div><div>588 - Grafite</div></div><div style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;"><br></div><div><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">CAPA P/ COLCHÃO C/ ZÍPER NATURA</span><br></div><div><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">Cores Disponíveis:</span><br></div><div><div style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">26 - Palha</div><div style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">32 - Branco</div><div style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">48 - Cáqui</div><div style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;"><br></div><div><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">FRONHA AVULSA NATURA</span><br></div></div><div><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">70cm x 50cm + Abas</span><br></div><div><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">90cm x 50cm + Abas</span><br></div><div><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">1,50m x 50cm + Abas</span><br></div><div><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">Cores Disponíveis:</span></div><div><div style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">26 - Palha</div><div style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">27 - Pink</div><div style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">32 - Branco</div><div style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">37 - Pistache</div><div style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">40 - Azul</div><div style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;"><div>41 - Vermelho</div><div>48 - Cáqui</div><div>111 - Lilás</div><div>112 - Chocolate</div></div><div style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;"><div>138 - Prata</div><div>322 - Violeta</div><div>352 - Mescla</div><div>588 - Grafite</div></div><div style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;"><br></div><div><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">PORTA TRAVESSEIRO AVULSO NATURA</span><br></div></div><div><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">70cm x 50cm + Abas</span><br></div><div><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">Cores Disponíveis:</span></div><div><div style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">26 - Palha</div><div style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">27 - Pink</div><div style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">32 - Branco</div><div style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">37 - Pistache</div><div style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">40 - Azul</div><div style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;"><div>41 - Vermelho</div><div>48 - Cáqui</div><div>111 - Lilás</div><div>112 - Chocolate</div></div><div style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;"><div>138 - Prata</div><div>322 - Violeta</div><div>352 - Mescla</div><div>588 - Grafite</div></div></div><div><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;"><br></span></div><div><br></div></font></div>', 'c53412acfff7cc0648b461a44697ede3natura.JPG', 59, ' 1; 2; 3; 5; 7', 'e70a2c3c643b581feca43d06ce274f7bnatura2.JPG', 'bfca57dc46f2aeece7b9f15b09645a05natura3.JPG', 'bafca3c3dc20de79e6fe6d4c9560ed79natura4.JPG', '05ff09853eed012403e8eff9aa19e8c0natura5.JPG'),
(126, 'Coleção NATURA - 100% ALGODÃO MALHA PENTEADA 30/1 MANTA 180gr. SILICONADA', 0.00, '<font face="Arial, Helvetica, sans-serif"><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">Edredom 1 Peça</span></font><div><font face="Arial, Helvetica, sans-serif"><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;"><br></span></font></div><div><font face="Arial, Helvetica, sans-serif"><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">Roupa de Cama 4 Peças</span><br></font></div><div><font face="Arial, Helvetica, sans-serif"><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;"><br></span></font></div><div><font face="Arial, Helvetica, sans-serif"><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">Roupa de Cama Solteiro 3 Peças</span><br></font></div><div><font face="Arial, Helvetica, sans-serif"><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;"><br></span></font></div><div><font face="Arial, Helvetica, sans-serif"><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">Porta Travesseiro Avulso &nbsp;&nbsp;70cm x 50cm + Abas</span><br></font></div><div><font face="Arial, Helvetica, sans-serif"><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">Cores Disponíveis:</span><br></font></div><div><font face="Arial, Helvetica, sans-serif"><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;"><div>26 - Palha</div><div>27 - Pink</div><div>32 - Branco</div><div>37 - Pistache</div><div>40 - Azul</div><div>41 - Vermelho</div><div>48 - Cáqui</div><div><div>111 - Lilás</div><div>112 - Chocolate</div><div>138 - Prata</div><div>322 - Violeta</div><div>352 - Mescla</div><div>588 - Grafite</div></div></span></font></div><div><font face="Arial, Helvetica, sans-serif"><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;"><br></span></font></div>', '57d63c1d9c61a53a83f3627c1b51d432natura.JPG', 44, ' 1; 2; 3; 4; 5; 7', NULL, NULL, NULL, NULL),
(127, 'Kit PRINCESS - 100% ALGODÃO PERCAL 200 FIOS', 0.00, '<div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;">Kit Solteiro 6 Peças</div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;">1 Colcha | 1 Porta Travesseiro</div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;">2 Almofadas | 2 Refis Almofadas</div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;"><br></div><div><font face="Arial, Helvetica, sans-serif"><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">Roupa de Cama Solteiro 3 Peças</span></font><br></div>', '48040d6ee3a1b85345737b1e9f5c2b99princess.JPG', 55, ' 2; 6', 'c0451b230aec15ba18da68820c680fffprincess2.JPG', NULL, NULL, NULL),
(128, 'Kit DRICA - 100% ALGODÃO PERCAL 200 FIOS', 0.00, '<div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;">Kit Solteiro 6 Peças</div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;">1 Colcha | 1 Porta Travesseiro</div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;">2 Almofadas | 2 Refis Almofadas</div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;"><br></div><div><font face="Arial, Helvetica, sans-serif"><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">Roupa de Cama Solteiro 3 Peças</span></font><br></div><div><font face="Arial, Helvetica, sans-serif"><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;"><br></span></font></div><div><font face="Arial, Helvetica, sans-serif"><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">Tapete New Classic</span><br></font></div><div><font face="Arial, Helvetica, sans-serif"><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">80cm x 50cm &nbsp;/ &nbsp;1,20m x 70cm</span><br></font></div><div><font face="Arial, Helvetica, sans-serif"><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;"><br></span></font></div><div><font face="Arial, Helvetica, sans-serif"><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">Cores Tapetes:</span><br></font></div><div><font face="Arial, Helvetica, sans-serif"><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">32- Branco / 26- Palha / 106- Bege / 48- Cáqui / 322- Violeta</span></font></div><div><font face="Arial, Helvetica, sans-serif"><br></font></div><div><font face="Arial, Helvetica, sans-serif"><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;"><br></span></font></div><div><font face="Arial, Helvetica, sans-serif"><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;"><br></span></font></div>', 'd31fee087c198accb1ea288da79ac4ffdrica.JPG', 55, ' 2; 6', NULL, NULL, NULL, NULL);
INSERT INTO `tbprodutos` (`id`, `nome`, `preco`, `descricao`, `foto1`, `id_subcategoria`, `variacoes`, `foto2`, `foto3`, `foto4`, `foto5`) VALUES
(129, 'Kit GLEN - 100% ALGODÃO PERCAL 200 FIOS', 0.00, '<div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;">Kit Solteiro 6 Peças</div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;">1 Colcha | 1 Porta Travesseiro</div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;">1 Almofada | 1 Refil Almofada</div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;">1 Rolo | 1 Refil Rolo</div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;"><br></div><div><font face="Arial, Helvetica, sans-serif"><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">Roupa de Cama Solteiro 3 Peças</span></font><br></div>', '11bc8fe8a6b7ee0737bb939a722e58bfglen.JPG', 55, ' 2; 6', NULL, NULL, NULL, NULL),
(130, 'Kit AISHA - 100% ALGODÃO PERCAL 200 FIOS', 0.00, '<div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;">Kit Solteiro 6 Peças</div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;">1 Colcha | 1 Porta Travesseiro</div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;">1 Almofada | 1 Refil Almofada</div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;">1 Bala | 1 Refil Bala</div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;"><br></div><div><font face="Arial, Helvetica, sans-serif"><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">Roupa de Cama Solteiro 3 Peças</span></font><br></div><div><font face="Arial, Helvetica, sans-serif"><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;"><br></span></font></div><div><font face="Arial, Helvetica, sans-serif"><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">Tapete Elegance &nbsp;95cm x 63cm</span><br></font></div><div><font face="Arial, Helvetica, sans-serif"><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">Cores Tapetes:</span><br></font></div><div><font face="Arial, Helvetica, sans-serif"><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;"><div>32-Branco</div><div>26-Palha</div><div><br></div><div><div>Quadro Grande (Casinha)</div><div>50cm x 50cm</div></div><div><br></div><div><div>Quadro Pequeno (Árvore)</div><div>50cm x 20cm</div></div><div><br></div><div><div>Quadro Pequeno (Boneca)</div><div>50cm x 20cm</div></div></span></font></div>', 'c8a7581e59036ab8693c2cfdc7494ac3aisha.JPG', 55, ' 2; 6', NULL, NULL, NULL, NULL),
(131, 'Kit LOREN - 100% ALGODÃO PERCAL 200 FIOS', 0.00, '<div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;">Kit Solteiro 6 Peças</div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;">1 Colcha | 1 Porta Travesseiro</div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;">1 Almofada | 1 Refil Almofada</div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;">1 Rolo | 1 Refil Rolo</div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;"><br></div><div><font face="Arial, Helvetica, sans-serif"><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">Roupa de Cama Solteiro 3 Peças</span></font><br></div><div><font face="Arial, Helvetica, sans-serif"><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;"><br></span></font></div><div><font face="Arial, Helvetica, sans-serif"><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">Boneca Avulsa</span><br></font></div>', '27efa7f595c74e2b989c7d1c530ae370loren.JPG', 44, ' 2; 6', 'c881ab5fbd09dfe3d0ba54cefb1e93b0loren2.JPG', NULL, NULL, NULL),
(132, 'Kit HORTELÃ - 100% ALGODÃO PERCAL 200 FIOS', 0.00, '<div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;">Kit Solteiro 6 Peças</div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;">1 Colcha | 1 Porta Travesseiro</div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;">1 Almofada | 1 Refil Almofada</div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;">1 Rolo | 1 Refil Rolo</div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;"><br></div><div><font face="Arial, Helvetica, sans-serif"><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">Roupa de Cama Solteiro 3 Peças</span></font><br></div>', '729f20f993503661ca21b731218efd6dhortel.JPG', 55, ' 2; 6', '533b57385928f67387a00c621f949d30hortel2.JPG', NULL, NULL, NULL),
(133, 'Kit LEJARDAN - 100% ALGODÃO PERCAL 200 FIOS', 0.00, '<div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;">Kit Solteiro 6 Peças</div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;">1 Colcha | 1 Porta Travesseiro</div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;">1 Bala | 1 Refil Bala</div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;">1 Almofada | 1 Refil Almofada</div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;"><br></div><div><font face="Arial, Helvetica, sans-serif"><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">Roupa de Cama Solteiro 3 Peças</span></font><br></div>', '9eff1d611182e88774777606f231ca63lejardan.JPG', 55, ' 2; 6', '68609b8f21d6d8fae89f490a21860cf2lejardan2.JPG', NULL, NULL, NULL),
(134, 'Kit ISABELY - 100% ALGODÃO PERCAL 200 FIOS', 0.00, '<div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;">Kit Solteiro 4 Peças</div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;">1 Colcha | 1 Porta Travesseiro</div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;">1 Almofada | 1 Refil Almofada</div><div style="font-family: Arial, Helvetica, sans-serif !important; font-size: 13px; line-height: 1.5em !important;"><br></div><div><font face="Arial, Helvetica, sans-serif"><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">Roupa de Cama Solteiro 3 Peças</span></font><br></div><div><font face="Arial, Helvetica, sans-serif"><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;"><br></span></font></div><div><font face="Arial, Helvetica, sans-serif"><span style="font-size: 12.727272033691406px; line-height: 19.488636016845703px;">Boneca Avulsa</span><br></font></div>', '36b096e0151742be3e449f4b8e16bca7isabely.JPG', 55, ' 2; 6', '6433e3b61ba851ebb13563e56c579af8isabely2.JPG', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbprodutos_categorias`
--

CREATE TABLE IF NOT EXISTS `tbprodutos_categorias` (
  `id_categoria` int(11) NOT NULL AUTO_INCREMENT,
  `categoria` varchar(255) NOT NULL,
  PRIMARY KEY (`id_categoria`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=27 ;

--
-- Extraindo dados da tabela `tbprodutos_categorias`
--

INSERT INTO `tbprodutos_categorias` (`id_categoria`, `categoria`) VALUES
(20, 'Cama'),
(26, 'Coleção Teen');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbprodutos_subcategorias`
--

CREATE TABLE IF NOT EXISTS `tbprodutos_subcategorias` (
  `id_subcategoria` int(11) NOT NULL AUTO_INCREMENT,
  `subcategoria` varchar(255) NOT NULL,
  `categoria` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_subcategoria`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=60 ;

--
-- Extraindo dados da tabela `tbprodutos_subcategorias`
--

INSERT INTO `tbprodutos_subcategorias` (`id_subcategoria`, `subcategoria`, `categoria`) VALUES
(38, 'Colchas', 16),
(39, 'Edredom', 16),
(43, 'teste da subcategoria', 19),
(41, 'Toalhas', 17),
(44, 'Coleção 400 Fios Egípcios', 20),
(53, 'Fronhas Avulsas', 20),
(55, 'Coleção ', 26),
(57, 'Percal 200 Fios', 20),
(56, '230 Fios - Acetinado', 20),
(58, 'Percal 150 Fios', 20),
(59, 'Malha Fio Penteado', 20);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbprodutos_variacoes`
--

CREATE TABLE IF NOT EXISTS `tbprodutos_variacoes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `variacao` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Extraindo dados da tabela `tbprodutos_variacoes`
--

INSERT INTO `tbprodutos_variacoes` (`id`, `variacao`) VALUES
(1, 'King'),
(2, 'Solteiro'),
(3, 'Casal'),
(4, 'Super King'),
(5, 'Queen'),
(6, 'Solteiro King'),
(7, 'Fronha');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbproduto_com_variacao`
--

CREATE TABLE IF NOT EXISTS `tbproduto_com_variacao` (
  `idproduto` int(11) NOT NULL,
  `id_variacao` int(11) NOT NULL,
  PRIMARY KEY (`idproduto`,`id_variacao`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbpublicidade`
--

CREATE TABLE IF NOT EXISTS `tbpublicidade` (
  `id_publicidade` int(11) NOT NULL AUTO_INCREMENT,
  `id_area` int(11) NOT NULL,
  `titulo` varchar(100) NOT NULL DEFAULT '',
  `arquivo` varchar(500) NOT NULL DEFAULT '',
  `dimx` int(11) DEFAULT '0',
  `dimy` int(11) DEFAULT '0',
  `destino` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_publicidade`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=45 ;

--
-- Extraindo dados da tabela `tbpublicidade`
--

INSERT INTO `tbpublicidade` (`id_publicidade`, `id_area`, `titulo`, `arquivo`, `dimx`, `dimy`, `destino`) VALUES
(44, 1, 'banner2', '70580366d0a9e3c5e92b2534f0077ec5carro.png', 0, 0, 'http://www.google.com'),
(43, 1, 'Testando', '78c0513fce65f6b24fa02e1a1cf116e7carro.png', 0, 0, 'http://www.google.com');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbpublicidade_areas`
--

CREATE TABLE IF NOT EXISTS `tbpublicidade_areas` (
  `id_area` int(11) NOT NULL AUTO_INCREMENT,
  `area` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_area`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Extraindo dados da tabela `tbpublicidade_areas`
--

INSERT INTO `tbpublicidade_areas` (`id_area`, `area`) VALUES
(1, 'Banner Topo');

-- --------------------------------------------------------

--
-- Estrutura da tabela `visitantes`
--

CREATE TABLE IF NOT EXISTS `visitantes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `contador` varchar(10) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=199 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
