-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Jeu 19 Janvier 2017 à 13:59
-- Version du serveur :  10.1.16-MariaDB
-- Version de PHP :  5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `vlive`
--

-- --------------------------------------------------------

--
-- Structure de la table `station`
--

CREATE TABLE `station` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `town_id` int(11) NOT NULL,
  `bikes` int(11) NOT NULL,
  `attachs` int(11) NOT NULL,
  `pay` int(11) DEFAULT NULL,
  `date_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `station`
--

INSERT INTO `station` (`id`, `name`, `address`, `town_id`, `bikes`, `attachs`, `pay`, `date_update`) VALUES
(1, '                      Metropole Europeenne de Lill', '                      MEL RUE DU BALLON                    ', 2, 18, 17, 1, '2017-01-19 12:48:11'),
(2, '                      Universite Catholique       ', '                      RUE DU PORT BD VAUBAN                    ', 2, 31, 0, 1, '2017-01-19 12:54:48'),
(3, '                      Jardin Vauban               ', '                      39 BOULEVARD VAUBAN                    ', 2, 9, 9, NULL, '2017-01-19 12:54:48'),
(4, '                      Maison Folie Wazemmes       ', '                      28 RUE DE L''HOPITAL SAINT ROCH                    ', 2, 14, 6, NULL, '2017-01-19 12:40:36'),
(5, '                      Massena                   ', '                      73 RUE MASSENA                    ', 2, 8, 24, 1, '2017-01-19 12:54:48'),
(6, '                      Republique Beaux Arts       ', '                      2 RUE INKERMAN                    ', 2, 12, 12, 1, '2017-01-19 12:55:27'),
(7, '                      Place de Strasbourg         ', '                      7 PLACE DE STRASBOURG                    ', 2, 12, 4, NULL, '2017-01-19 12:52:13'),
(8, '                      Place Richebe               ', '                      3 PLACE RICHEBE                    ', 2, 24, 8, 1, '2017-01-19 12:56:33'),
(9, '                      Rue de Toul                 ', '                      18 RUE DE TOUL                    ', 2, 9, 26, NULL, '2017-01-19 12:54:48'),
(10, '                      Rihour                   ', '                      ANGLE PLACE RIHOUR RUE JEAN ROISIN                    ', 2, 11, 21, 1, '2017-01-19 12:52:13'),
(11, '                      Nouveau siecle              ', '                      10 RUE DE PAS (SUR LA PLACE PIERRE MENDES FRANCE)                    ', 2, 20, 11, 1, '2017-01-19 12:56:33'),
(12, '                      Opera                   ', '                      FACE AU 8 RUE ANATOLE FRANCE                    ', 2, 11, 14, 1, '2017-01-19 12:54:48'),
(13, '                      Quai du Wault               ', '                      17 SQUARE DUTILLEUL                    ', 2, 9, 9, 1, '2017-01-19 12:50:13'),
(14, '                      Champ de Mars               ', '                      AVENUE LEON JOUHAUX (QUAI DE LA CITADELLE)                    ', 2, 20, 20, 1, '2017-01-19 12:56:33'),
(15, '                      Esplanade                   ', '                      PONT DU PETIT PARADIS                    ', 2, 7, 17, 1, '2017-01-19 12:40:37'),
(16, '                      Magasin                   ', '                      3 RUE SAINT ANDRE                    ', 2, 1, 14, NULL, '2017-01-19 12:40:37'),
(17, '                      Halle aux sucres            ', '                      33 AVENUE DU PEUPLE BELGE                    ', 2, 9, 10, 1, '2017-01-19 12:55:27'),
(18, '                      Voltaire                   ', '                      93 RUE ROYALE                    ', 2, 10, 4, NULL, '2017-01-19 12:54:48'),
(19, '                      Rue Royale                  ', '                      40 RUE ROYALE                    ', 2, 9, 15, 1, '2017-01-19 12:54:48'),
(20, '                      N.D. de la Treille          ', '                      PLACE GILLSON                    ', 2, 15, 14, NULL, '2017-01-19 12:56:33'),
(21, '                      Place du Concert            ', '                      RUE ALPHONSE COLAS                    ', 2, 16, 4, 1, '2017-01-19 12:40:37'),
(22, '                      Louise de Bettignies        ', '                      PLACE LOUISE DE BETTIGNIES                    ', 2, 19, 11, 1, '2017-01-19 12:54:48'),
(23, '                      Rue des Arts                ', '                      41 RUE DES ARTS                    ', 2, 14, 4, NULL, '2017-01-19 12:40:38'),
(24, '                      Flandres Euralille          ', '                      PLACE DES BUISSES                    ', 2, 21, 15, 1, '2017-01-19 12:54:48'),
(25, '                      Gare Lille Flandres         ', '                      PLACE DE LA GARE                    ', 2, 9, 11, 1, '2017-01-19 12:54:48'),
(26, '                      Molinel                   ', '                      58 RUE DU MOLINEL                    ', 2, 18, 4, NULL, '2017-01-19 12:54:48'),
(27, '                      Tanneurs                   ', '                      2 - 10 RUE DES TANNEURS                    ', 2, 16, 19, 1, '2017-01-19 12:52:14'),
(28, '                      Palais Rameau               ', '                      17 RUE SOLFERINO                    ', 2, 17, 22, 1, '2017-01-19 12:54:48'),
(29, '                      St Sebastien                ', '                      40 RUE SAINT SEBASTIEN                    ', 2, 14, 6, 1, '2017-01-19 12:56:33'),
(30, '                      Rue de Gand                 ', '                      8 PLACE DE GAND                    ', 2, 1, 19, 1, '2017-01-19 12:54:48'),
(31, '                      Pont Neuf                   ', '                      38 BIS RUE DU PONT NEUF                    ', 2, 4, 14, NULL, '2017-01-19 12:40:38'),
(32, '                      Place aux Bleuets           ', '                      15 RUE DE COURTRAI                    ', 2, 10, 6, NULL, '2017-01-19 12:50:37'),
(33, '                      Port de Lille               ', '                      18 RUE DE TURENNE                    ', 2, 15, 11, NULL, '2017-01-19 12:50:14'),
(34, '                      Place Catinat               ', '                      199 RUE COLBERT                    ', 2, 12, 8, 1, '2017-01-19 12:52:14'),
(35, '                      Leclerc                   ', '                      24 PLACE MARECHAL LECLERC                    ', 2, 4, 14, 1, '2017-01-19 12:52:56'),
(36, '                      Cormontaigne                ', '                      16 - 36 PLACE CORMONTAIGNE                    ', 2, 1, 27, 1, '2017-01-19 12:50:14'),
(37, '                      Fulton                   ', '                      14 RUE DU BAZINGHIEN                    ', 2, 6, 6, NULL, '2017-01-19 12:56:33'),
(38, '                      Place Casquette             ', '                      1 RUE D''HAUBOURDIN                    ', 2, 3, 15, NULL, '2017-01-19 12:56:33'),
(39, '                      Marche de Wazemmes          ', '                      298 RUE LEON GAMBETTA                    ', 2, 15, 8, 1, '2017-01-19 12:52:14'),
(40, '                      Metro Gambetta              ', '                      41 RUE DU MARCHE                    ', 2, 3, 13, 1, '2017-01-19 12:50:14'),
(41, '                      Buisson                   ', '                      681 AVENUE DE LA REPUBLIQUE                    ', 2, 16, 0, 1, '2017-01-19 12:40:38'),
(42, '                      Place Philippe Lebon        ', '                      15 PLACE PHILLIPPE LEBON                    ', 2, 9, 0, 1, '2017-01-19 12:55:27'),
(43, '                      Theatre Sebastopol          ', '                      3 PLACE SEBASTOPOL                    ', 2, 13, 11, 1, '2017-01-19 12:56:33'),
(44, '                      Gambetta Utrecht            ', '                      199 RUE LEON GAMBETTA                    ', 2, 8, 9, NULL, '2017-01-19 12:50:14'),
(45, '                      Brule Maison                ', '                      51 RUE DES POSTES                    ', 2, 4, 14, NULL, '2017-01-19 12:52:14'),
(46, '                      Artois                   ', '                      12 RUE D''ARTOIS                    ', 2, 10, 8, 1, '2017-01-19 12:48:13'),
(47, '                      Boulevard Louis XIV         ', '                      1 BOULEVARD JEAN BAPTISTE LEBAS                    ', 2, 10, 14, 1, '2017-01-19 12:56:33'),
(48, '                      Porte de Douai              ', '                      PLACE FERNIG                    ', 2, 8, 17, 1, '2017-01-19 12:48:13'),
(49, '                      Place Deliot                ', '                      1 PLACE DELIOT                    ', 2, 1, 23, NULL, '2017-01-19 12:52:56'),
(50, '                      Rue d''Arras                 ', '                      4 RUE WAZEMMES                    ', 2, 0, 25, 1, '2017-01-19 12:56:33'),
(51, '                      JB Lebas                   ', '                      2 RUE CAMBRAI                    ', 2, 5, 27, NULL, '2017-01-19 12:56:33'),
(52, '                      Place Colette Besson        ', '                      FACE AU 37 RUE DE WAZEMMES                    ', 2, 0, 21, NULL, '2017-01-19 12:52:56'),
(53, '                      Porte des Postes            ', '                      1 PLACE BARTHELEMY DOREZ                    ', 2, 16, 21, 1, '2017-01-19 12:54:48'),
(54, '                      Metro Wazemmes              ', '                      93 RUE RACINE                    ', 2, 11, 9, 1, '2017-01-19 12:40:39'),
(55, '                      Porte d''Arras               ', '                      3 PLACE JACQUES FEBVRIER                    ', 2, 17, 6, 1, '2017-01-19 12:48:13'),
(56, '                      Bd Victor Hugo              ', '                      214 BOULEVARD VICTOR HUGO                    ', 2, 12, 6, 1, '2017-01-19 12:52:14'),
(57, '                      Barthelemy Delespaul        ', '                      FACE AU 52 RUE BARTHELEMY DELESPAUL                    ', 2, 6, 12, NULL, '2017-01-19 12:54:48'),
(58, '                      Porte de Valenciennes       ', '                      BOULEVARD DE BELFORT                    ', 2, 8, 12, 1, '2017-01-19 12:40:39'),
(59, '                      Belfort                   ', '                      84 RUE DE TREVISE                    ', 2, 3, 27, NULL, '2017-01-19 12:52:14'),
(60, '                      Trevise                   ', '                      114 RUE DE DOUAI                    ', 2, 12, 8, NULL, '2017-01-19 12:54:49'),
(61, '                      Lille Grand Palais          ', '                      30 BOULEVARD DU MARECHAL VAILLANT                    ', 2, 8, 16, NULL, '2017-01-19 12:56:33'),
(62, '                      Zenith                   ', '                      BOULEVARD EMILE DUBUISSON                    ', 2, 12, 18, 1, '2017-01-19 12:40:39'),
(63, '                      Hotel de Region             ', '                      BOULEVARD DU PRESIDENT HOOVER                    ', 2, 9, 22, 1, '2017-01-19 12:52:14'),
(64, '                      Mairie de Lille             ', '                      17 RUE SAINT SAUVEUR                    ', 2, 11, 9, 1, '2017-01-19 12:48:13'),
(65, '                      Place Tacq                  ', '                      70 RUE DE LOOS                    ', 2, 1, 17, 1, '2017-01-19 12:54:49'),
(66, '                      Delesalle Mediatheque       ', '                      35 RUE EDOUARD DELESALLE                    ', 2, 4, 14, NULL, '2017-01-19 12:56:33'),
(67, '                      Montebello                  ', '                      122 BOULEVARD MONTEBELLO                    ', 2, 6, 18, 1, '2017-01-19 12:40:39'),
(68, '                      Nationale Rue du Port       ', '                      244 - 254 RUE NATIONALE                    ', 2, 10, 13, NULL, '2017-01-19 12:54:49'),
(69, '                      Chasseurs de Driant         ', '                      11 AVENUE VERHAEREN                    ', 2, 7, 14, NULL, '2017-01-19 12:40:40'),
(70, '                      Cite Administrative         ', '                      51 RUE DE TOURNAI                    ', 2, 6, 9, NULL, '2017-01-19 12:48:14'),
(71, '                      Bois Blancs                 ', '                      122 AVENUE DE DUNKERQUE                    ', 2, 4, 18, 1, '2017-01-19 12:56:33'),
(72, '                      Canteleu                   ', '                      237 AVENUE DE DUNKERQUE                    ', 2, 14, 4, NULL, '2017-01-19 12:54:49'),
(73, '                      St Maurice Pellevoisin      ', '                      211 RUE DU FAUBOURG DE ROUBAIX                    ', 2, 13, 11, 1, '2017-01-19 12:50:14'),
(74, '                      Faubourg de Roubaix         ', '                      104 RUE DU FAUBOURG DE ROUBAIX                    ', 2, 13, 4, NULL, '2017-01-19 12:56:33'),
(75, '                      Eugene Jacquet              ', '                      59 RUE EUGENE JACQUET                    ', 2, 13, 8, 1, '2017-01-19 12:50:14'),
(76, '                      Fives                   ', '                      123 RUE PIERRE LEGRAND                    ', 2, 2, 22, 1, '2017-01-19 12:55:27'),
(77, '                      Mont de Terre               ', '                      7 RUE MATTEOTI                    ', 2, 7, 11, NULL, '2017-01-19 12:40:40'),
(78, '                      Hotel de Police             ', '                      RUE DU FAUBOURG DES POSTES                    ', 2, 7, 11, NULL, '2017-01-19 12:48:14'),
(79, '                      Cimetiere du Sud            ', '                      65 RUE DU FAUBOURG DES POSTES                    ', 2, 7, 13, 1, '2017-01-19 12:40:40'),
(80, '                      Petit Maroc                 ', '                      RUE DU PROFESSEUR LANGEVIN                    ', 2, 22, 8, 1, '2017-01-19 12:55:27'),
(81, '                      Guinguette                  ', '                      RUE JACQUARD                    ', 3, 0, 10, NULL, '2017-01-19 12:40:40'),
(82, '                      Gare Lille Europe           ', '                      299 BOULEVARD DE LEEDS                    ', 2, 10, 22, 1, '2017-01-19 12:56:33'),
(83, '                      EuraTechnologies            ', '                      AVENUE DE BRETAGNE (DEVANT L''ENTREE D''EURATECHNOLOGIE)                    ', 2, 17, 6, 1, '2017-01-19 12:55:27'),
(84, '                      Hellemmes                   ', '                      165 RUE ROGER SALENGRO                    ', 3, 4, 18, 1, '2017-01-19 12:48:14'),
(85, '                      Chanzy                   ', '                      58 RUE CHANZY                    ', 3, 9, 3, NULL, '2017-01-19 12:55:27'),
(86, '                      Roger Salengro              ', '                      68 RUE ROGER SALENGRO                     ', 3, 9, 3, NULL, '2017-01-19 12:50:14'),
(87, '                      Jules Guesde                ', '                      RUE ST ELOI                    ', 3, 2, 10, 1, '2017-01-19 12:40:40'),
(88, '                      Rue Nationale               ', '                      91 RUE NATIONALE                    ', 2, 15, 12, 1, '2017-01-19 12:56:34'),
(89, '                      Boulevard de Metz           ', '                      40 BOULEVARD DE METZ                    ', 2, 3, 10, NULL, '2017-01-19 12:40:40'),
(90, '                      Louviere                   ', '                      1 RUE DU DIEU DE MARCQ                    ', 2, 7, 13, 1, '2017-01-19 12:54:49'),
(91, '                      Square des Meres            ', '                      95 RUE DE LANNOY                    ', 2, 17, 8, NULL, '2017-01-19 12:40:40'),
(92, '                      Rue de la Gaite             ', '                      9 RUE MARCEAU                    ', 2, 11, 7, NULL, '2017-01-19 12:48:14'),
(93, '                      Stade Ballet                ', '                      85 RUE DU LONG POT                     ', 2, 13, 5, NULL, '2017-01-19 12:40:40'),
(94, '                      Marx Dormoy                 ', '                      RUE DE BORDEAUX                    ', 2, 12, 12, NULL, '2017-01-19 12:50:14'),
(95, '                      Marbrerie                   ', '                      280 BIS RUE PIERRE LEGRAND                    ', 3, 14, 4, 1, '2017-01-19 12:48:14'),
(96, '                      Romarin                   ', '                      ALLEE VICTOR BASCH                    ', 4, 7, 11, 1, '2017-01-19 12:56:34'),
(97, '                      La Madeleine Gare           ', '                      250 RUE GENERAL DE GAULLE                    ', 4, 6, 11, NULL, '2017-01-19 12:56:34'),
(98, '                      Place du Marche             ', '                      ANGLE DE LA RUE GAMBETTA ET LA PLACE FUSILLES ET DEPORTES                    ', 4, 8, 16, 1, '2017-01-19 12:48:14'),
(99, '                      La Madeleine Mairie         ', '                      RUE DU GENERAL DE GAULLE                    ', 4, 11, 13, 1, '2017-01-19 12:48:14'),
(100, '                      Saint Maur                  ', '                      260 AVENUE DE LA REPUBLIQUE                    ', 4, 10, 14, 1, '2017-01-19 12:40:41'),
(101, '                      Mons Sarts                  ', '                      AVENUE DES ACACIAS                    ', 5, 10, 14, 1, '2017-01-19 12:40:41'),
(102, '                      Mairie de Mons              ', '                      AVENUE ROBERT SCHUMAN                    ', 5, 1, 14, 1, '2017-01-19 12:48:14'),
(103, '                      Lacordaire                  ', '                      44 RUE LACORDAIRE (FACE A LA PISCINE)                    ', 5, 9, 7, NULL, '2017-01-19 12:48:14'),
(104, '                      Mendes France               ', '                      BD NAPOLEON 1ER                    ', 5, 9, 9, NULL, '2017-01-19 12:40:41'),
(105, '                      Verdun                   ', '                      69 AVENUE DE VERDUN                    ', 5, 12, 0, NULL, '2017-01-19 12:48:14'),
(106, '                      Concorde                   ', '                      27 BOULEVARD ALPHONSE GAYET                    ', 5, 4, 8, 1, '2017-01-19 12:40:41'),
(107, '                      Lavoisier                   ', '                      5 RUE LAURENT DE LAVOISIER                    ', 5, 9, 3, NULL, '2017-01-19 12:40:41'),
(108, '                      General de Gaulle           ', '                      108 RUE DU GENERAL DE GAULLE                    ', 5, 0, 20, 1, '2017-01-19 12:48:15'),
(109, '                      Square du Portugal          ', '                      FACE AU 204 RUE DE LA BASSEE                    ', 2, 7, 9, NULL, '2017-01-19 12:40:41'),
(110, '                      Rue Bonte-Pollet            ', '                      11 RUE BONTE POLLET                    ', 2, 11, 5, 1, '2017-01-19 12:48:15'),
(111, '                      Hellemmes Cimetieres        ', '                      318, RUE ROGER SALENGRO                    ', 6, 7, 5, NULL, '2017-01-19 12:56:34'),
(112, '                      Square Charles de Gaulle    ', '                      4, RUE FERDINAND BUISSON                    ', 6, 3, 9, NULL, '2017-01-19 12:48:15'),
(113, '                      Avenue de Mormal            ', '                      16, RUE DU BUISSON                    ', 2, 7, 11, NULL, '2017-01-19 12:48:15'),
(114, '                      Bois Habite                 ', '                      BOULEVARD DU PRÉSIDENT HOOVER                    ', 2, 4, 13, NULL, '2017-01-19 12:50:15'),
(115, '                      De Gaulle                   ', '                      85, RUE DU GÉNÉRAL DE GAULLE                    ', 4, 4, 14, NULL, '2017-01-19 12:54:49'),
(116, '                      Botanique                   ', '                      185, AVENUE DE LA RÉPUBLIQUE                    ', 4, 6, 10, NULL, '2017-01-19 12:55:27'),
(117, '                      Hippodrome                  ', '                      9, AVENUE HENRI GRUSON                    ', 7, 7, 14, 1, '2017-01-19 12:52:14'),
(118, '                      College Lavoisier           ', '                      56, RUE PAUL VAILLANT                    ', 7, 17, 0, NULL, '2017-01-19 12:40:41'),
(119, '                      Lomme-Lambersart            ', '                      390, AVENUE DE DUNKERQUE                    ', 7, 14, 4, NULL, '2017-01-19 12:40:42'),
(120, '                      Lomme Mairie                ', '                      HÔTEL DE VILLE                    ', 8, 10, 8, NULL, '2017-01-19 12:40:42'),
(121, '                      Pont superieur              ', '                      ANGLE DE LA RUE AUGUSTE BONTE  ET DU N°520 DE L’AVENUE DE DUNKERQUE           ', 8, 7, 8, 1, '2017-01-19 12:40:42'),
(122, '                      Piscine de Marcq            ', '                      298-300 AVENUE DE LATTRE DE TASSIGNY                    ', 9, 8, 8, NULL, '2017-01-19 12:40:42'),
(123, '                      Rue de l''Eglise             ', '                      71, RUE NATIONALE                    ', 9, 13, 3, 1, '2017-01-19 12:40:42'),
(124, '                      Clemenceau Hippodrome       ', '                      916-920 AVENUE DE LA RÉPUBLIQ                    ', 9, 7, 11, NULL, '2017-01-19 12:40:42'),
(125, '                      Fort de Mons                ', '                      12, RUE DE NORMANDIE                    ', 5, 8, 12, NULL, '2017-01-19 12:40:42'),
(126, '                      Le Polyedre                 ', '                      FACE AU 38, AVENUE RHIN ET DANUBE                    ', 5, 9, 7, NULL, '2017-01-19 12:40:42'),
(127, '                      Flers Mairie                ', '                      16 RUE DU GÉNÉRAL LECLERC                    ', 10, 6, 6, 1, '2017-01-19 12:40:42'),
(128, '                      Rue Louise Michel           ', '                      93 RUE LOUISE MICHEL                    ', 10, 10, 6, NULL, '2017-01-19 12:40:42'),
(129, '                      Flers Chateau               ', '                      RUE DE LA CHEVALERIE                    ', 10, 14, 0, 1, '2017-01-19 12:40:42'),
(130, '                      Pont de Bois                ', '                      RUE BAUDOUIN IX - MÉTRO PONT DE BOIS                    ', 10, 9, 20, 1, '2017-01-19 12:48:15'),
(131, '                      V.Ascq Hotel de Ville       ', '                      RUE VERMEER - PARKING DE L''HÔTEL DE VILLE                    ', 10, 20, 17, 1, '2017-01-19 12:56:34'),
(132, '                      Centre Commercial V2        ', '                      BOULEVARD VALMY                    ', 10, 9, 10, 1, '2017-01-19 12:40:42'),
(133, '                      Boulevard de Valmy          ', '                      FACE AU 233 BOULEVARD DE VALMY                    ', 10, 16, 12, 1, '2017-01-19 12:40:42'),
(134, '                      Rue des Victoires           ', '                      76, BOULEVARD VAN GOGH                    ', 10, 8, 8, NULL, '2017-01-19 12:40:42'),
(135, '                      Flers Masquelier            ', '                      97, RUE JULES GUESDE                    ', 10, 5, 10, NULL, '2017-01-19 12:40:42'),
(136, '                      Rue Chambord                ', '                      RUE CHAMBORD ANGLE AVENUE DE LA CHATELLENIE                    ', 10, 6, 12, NULL, '2017-01-19 12:40:42'),
(137, '                      Heron Parc                  ', '                      40, RUE DE LA VAGUE                    ', 10, 12, 18, 1, '2017-01-19 12:40:42'),
(138, '                      Ladriere                   ', '                      FACE AU 53 RUE DE FIVES                    ', 10, 18, 2, NULL, '2017-01-19 12:40:42'),
(139, '                      Rue de Lille                ', '                      RUE DE LILLE                    ', 10, 11, 5, NULL, '2017-01-19 12:52:14'),
(140, '                      Rue Corneille               ', '                      RUE CORNEILLE (DEVANT ÉCOLE DE MUSIQUE)                    ', 10, 8, 6, NULL, '2017-01-19 12:40:42'),
(141, '                      Metro Triolo                ', '                      2 RUE TRAVERSIÈRE ANGLE ALLÉE TURGOT                    ', 10, 3, 21, 1, '2017-01-19 12:40:42'),
(142, '                      Tremiere                   ', '                      RUE TRÉMIÈRES ANGLE RUE DES FUSILLÉS                    ', 10, 8, 12, NULL, '2017-01-19 12:40:42'),
(143, '                      Rond Point de Tournai       ', '                      55, RUE DES FUSILLÉS                    ', 10, 8, 8, NULL, '2017-01-19 12:40:42'),
(144, '                      Annappes Republique         ', '                      FACE AU 1 BIS RUE DE LA STATION                    ', 10, 14, 10, 1, '2017-01-19 12:50:15'),
(145, '                      Residence                   ', '                      PLACE N. DAME DE LA NATIVITÉ                    ', 10, 2, 17, NULL, '2017-01-19 12:40:42'),
(146, '                      Solferino Nationale         ', '                      FACE 171 RUE NATIONALE                    ', 2, 5, 14, 1, '2017-01-19 12:52:14'),
(148, '                      P.I. de Douai               ', '                      RUE DU FAUBOURG DE DOUAI SOUS LE PONT                    ', 2, 6, 14, NULL, '2017-01-19 12:54:49'),
(149, '                      Jean Jaures                 ', '                      FACE AU 780 AVENUE JEAN JAURES                    ', 11, 2, 15, 1, '2017-01-19 12:40:43'),
(150, '                      Ronchin Mairie              ', '                      SUR LE PARVIS DE LA MAIRIE                    ', 11, 0, 24, 1, '2017-01-19 12:40:43'),
(151, '                      Ch. des Margueritois        ', '                      FACE AU 152 CHEMIN MARGUERITOIS                    ', 11, 5, 8, NULL, '2017-01-19 12:40:43'),
(152, '                      Chemin rouge                ', '                      FACE AU 2 CHEMIN ROUGE                    ', 12, 4, 12, NULL, '2017-01-19 12:40:43'),
(153, '                      Pompidou                   ', '                      FACE AU 102 ALLEE DU RIEZ                    ', 4, 0, 24, NULL, '2017-01-19 12:40:43'),
(154, '                      Chaufferie                  ', '                      FACE AU 125 RUE ROGER SALENGRO                    ', 4, 5, 11, 1, '2017-01-19 12:40:43'),
(155, '                      Bailly                   ', '                      FACE AU 4 RUE GAMBETTA                    ', 13, 4, 11, NULL, '2017-01-19 12:40:43'),
(156, '                      St Andre Mairie             ', '                      FACE AU 92 RUE DU GENERAL LECLERC                    ', 13, 17, 6, 1, '2017-01-19 12:40:43'),
(157, '                      Canon d''Or                  ', '                      FACE AU 255 RUE DE LILLE                    ', 7, 6, 10, 1, '2017-01-19 12:40:43'),
(158, '                      Delecaut                   ', '                      FACE AU 102 AVENUE HENRI DELECAUX                    ', 7, 4, 16, 1, '2017-01-19 12:52:15'),
(200, '                      Croix Mairie                ', '                      FACE AU 232, RUE JEAN JAURÈS                    ', 14, 0, 24, 1, '2017-01-19 12:55:27'),
(201, '                      Edhec                   ', '                      272, RUE VERTE                    ', 14, 23, 7, NULL, '2017-01-19 12:54:49'),
(202, '                      Parc Barbieux               ', '                      AVENUE JEAN JAURES                    ', 15, 11, 12, NULL, '2017-01-19 12:40:43'),
(203, '                      Victor Provo                ', '                      BOULEVARD DU GÉNÉRAL DE GAULLE                    ', 15, 8, 12, 1, '2017-01-19 12:56:34'),
(204, '                      Jean Moulin                 ', '                      FACE AU 49 BIS BD DU GÉNÉRAL DE GAULLE                    ', 15, 9, 6, NULL, '2017-01-19 12:40:43'),
(205, '                      Condition Publique          ', '                      45, RUE LOUIS DUPIRE                    ', 15, 8, 10, 1, '2017-01-19 12:40:43'),
(206, '                      Alfred Mongy                ', '                      15, BOULEVARD DU GÉNÉRAL DE GAULLE                    ', 15, 11, 13, NULL, '2017-01-19 12:40:43'),
(207, '                      Euroteleport                ', '                      78-84, BOULEVARD DU GÉNÉRAL LECLERC                    ', 15, 17, 13, 1, '2017-01-19 12:54:49'),
(208, '                      De Fourmies                 ', '                      107, BOULEVARD DE FOURMIES                    ', 15, 8, 4, NULL, '2017-01-19 12:40:43'),
(209, '                      Usine                   ', '                      AVENUE ALFRED MOTTE                     ', 15, 16, 14, 1, '2017-01-19 12:40:43'),
(210, '                      Linne                   ', '                      192, AVENUE DE LINNÉ                    ', 15, 11, 1, NULL, '2017-01-19 12:40:43'),
(211, '                      Gustave Delory              ', '                      48, AVENUE GUSTAVE DELORY                    ', 15, 11, 7, 1, '2017-01-19 12:40:43'),
(212, '                      Danielle Lesaffre           ', '                      42, RUE DUPUY DE LOMÉ                    ', 15, 4, 14, NULL, '2017-01-19 12:40:43'),
(213, '                      Lannoy                   ', '                      93, RUE DE LANNOY                    ', 15, 10, 8, NULL, '2017-01-19 12:40:43'),
(214, '                      Saint Jean-Baptiste         ', '                      1, RUE LESUEUR                    ', 15, 8, 4, 1, '2017-01-19 12:40:43'),
(215, '                      Trois Ponts                 ', '                      186, AVENUE JULIEN LAGACHE                    ', 15, 0, 0, NULL, '2017-01-19 12:40:43'),
(216, '                      Fraternite                  ', '                      PLACE DE LA FRATERNITÉ                    ', 15, 10, 6, 1, '2017-01-19 12:40:43'),
(217, '                      Hopital Victor Provo        ', '                      BOULEVARD DE LYON                    ', 15, 11, 4, NULL, '2017-01-19 12:48:15'),
(218, '                      Place Spriet                ', '                      PLACE CHARLES SPRIET                    ', 15, 13, 11, 1, '2017-01-19 12:56:34'),
(219, '                      Gare Jean Lebas             ', '                      PLACE DE LA GARE                    ', 15, 6, 11, 1, '2017-01-19 12:40:44'),
(220, '                      Musee Art et Industrie      ', '                      105, AVENUE JEAN-BAPTISTE LEBAS                    ', 15, 5, 9, 1, '2017-01-19 12:40:44'),
(221, '                      Roubaix Mairie              ', '                      FACE AU 1, CONTOUR  SAINT MARTIN                    ', 15, 7, 23, 1, '2017-01-19 12:40:44'),
(222, '                      Les Gobelins                ', '                      32, RUE DE LA COMMUNAUTÉ URBAINE                    ', 15, 6, 6, NULL, '2017-01-19 12:40:44'),
(223, '                      Place Trichon               ', '                      3, PLACE DU TRICHON                    ', 15, 6, 10, NULL, '2017-01-19 12:40:44'),
(224, '                      Centre Nautique             ', '                      26, RUE DE L''EPEULE                    ', 15, 6, 8, 1, '2017-01-19 12:40:44'),
(225, '                      Epeule Montesquieu          ', '                      RUE INKERMAN                    ', 15, 8, 8, NULL, '2017-01-19 12:40:44'),
(226, '                      Charles de Gaulle           ', '                      72, RUE DE LILLE                    ', 15, 6, 10, 1, '2017-01-19 12:40:44'),
(227, '                      Bvrd Armentieres            ', '                      1, BOULEVARD D''ARMENTIÈRES                    ', 15, 4, 14, NULL, '2017-01-19 12:40:44'),
(228, '                      Pellart                   ', '                      15, RUE PELLART                    ', 15, 7, 9, NULL, '2017-01-19 12:40:44'),
(229, '                      Nations Unies               ', '                      158, BOULEVARD GAMBETTA                    ', 15, 12, 6, NULL, '2017-01-19 12:50:15'),
(230, '                      De la Vigne                 ', '                      181, BOULEVARD DE STRASBOURG                    ', 15, 5, 6, NULL, '2017-01-19 12:40:44'),
(231, '                      Motte Bossut                ', '                      ROND POINT DE L''EUROPE                    ', 15, 8, 9, NULL, '2017-01-19 12:40:44'),
(232, '                      Fosse aux Chenes            ', '                      13, PLACE DE LA FOSSE AUX CHÊNES                    ', 15, 8, 6, 1, '2017-01-19 12:40:44'),
(233, '                      Rue de Tourcoing            ', '                      RUE DE TOURCOING (SUR LA PARKING GRDF)                    ', 15, 8, 8, NULL, '2017-01-19 12:40:44'),
(234, '                      Alsace                   ', '                      89, BOULEVARD D''ARMENTIÈRES                    ', 15, 3, 13, 1, '2017-01-19 12:40:44'),
(235, '                      Blanchemaille               ', '                      AVENUE DES NATIONS UNIES ANGLE RUE BLANCHEMAILLE                    ', 15, 3, 13, NULL, '2017-01-19 12:40:44'),
(236, '                      Chaptal                   ', '                      3, RUE D''AVELGHEM                    ', 15, 9, 3, NULL, '2017-01-19 12:40:44'),
(237, '                      Rue des Anges               ', '                      FACE AU 42 RUE DES ANGES                    ', 16, 6, 6, NULL, '2017-01-19 12:40:44'),
(238, '                      Theatre Tourcoing           ', '                      1, RUE DE L''ALMA                    ', 16, 8, 9, 1, '2017-01-19 12:40:44'),
(239, '                      Bvrd de l Egalite           ', '                      SECTEUR BVLD EGALITE                    ', 16, 9, 5, NULL, '2017-01-19 12:40:44'),
(240, '                      Poste                   ', '                      22, RUE LÉON SALEMBIER                    ', 16, 7, 5, 1, '2017-01-19 12:40:44'),
(241, '                      Le Corbusier                ', '                      RUE DES PIATS (SOUS ABRI BUS - PARVIS DE L''ATELIER)                    ', 16, 8, 10, NULL, '2017-01-19 12:40:45'),
(242, '                      Tourcoing gare              ', '                      PLACE PIERRE SEMARD                    ', 16, 8, 10, 1, '2017-01-19 12:40:45'),
(243, '                      Victoire                   ', '                      FACE AU 1 PLACE DE LA VICTOIRE                    ', 16, 6, 6, NULL, '2017-01-19 12:40:45'),
(244, '                      F Roosevelt                 ', '                      2-14 BOULEVARD DE L''ÉGALITÉ                    ', 16, 8, 4, NULL, '2017-01-19 12:40:45'),
(245, '                      Jardin Botanique            ', '                      126, RUE VERTE                    ', 16, 8, 10, 1, '2017-01-19 12:54:49'),
(246, '                      Cavell                   ', '                      FACE AU 49 RUE DE LA CLOCHE                    ', 16, 6, 6, NULL, '2017-01-19 12:40:45'),
(247, '                      Rouget de l Isle            ', '                      SECTEUR BVRD DE L''EGALITÉ                    ', 16, 7, 8, 1, '2017-01-19 12:40:45'),
(248, '                      Rue Saint Blaise            ', '                      85, RUE DE GAND                    ', 16, 10, 2, 1, '2017-01-19 12:40:45'),
(249, '                      Rue de Menin                ', '                      FACE AU 40 RUE JOURDAN                    ', 16, 3, 9, NULL, '2017-01-19 12:40:45'),
(250, '                      Tourcoing Mairie            ', '                      6 BIS, RUE NATIONALE                    ', 16, 12, 10, 1, '2017-01-19 12:40:45'),
(251, '                      Colbert                   ', '                      RUE DE GAND (FACE AU LYCÉE)                    ', 16, 10, 8, NULL, '2017-01-19 12:40:45'),
(252, '                      Rue des Poutrains           ', '                      RUE DE LILLE                    ', 16, 9, 7, NULL, '2017-01-19 12:40:45'),
(253, '                      Avenue Millet               ', '                      SECTEUR RUE CONDORCET                    ', 16, 5, 7, NULL, '2017-01-19 12:40:45'),
(254, '                      Sebastopol                  ', '                      FACE AU 69 RUE CARNOT                    ', 16, 8, 10, NULL, '2017-01-19 12:40:45'),
(255, '                      Rue de Roubaix              ', '                      SECTEUR UNION                    ', 16, 6, 6, NULL, '2017-01-19 12:40:45'),
(256, '                      Pont de Neuville            ', '                      301, RUE DU PONT DE NEUVILLE                    ', 16, 10, 6, 1, '2017-01-19 12:40:45'),
(257, '                      Charles Wattinne            ', '                      PONT HYDRAULIQUE                    ', 16, 8, 8, 1, '2017-01-19 12:40:45'),
(258, '                      Carliers                   ', '                      135, CHAUSSÉE GALILÉE                    ', 16, 6, 6, 1, '2017-01-19 12:40:45'),
(259, '                      Mercure                   ', '                      BOULEVARD GAMBETTA (FACE À LA STATION DE TAXI)                    ', 16, 10, 8, NULL, '2017-01-19 12:40:45'),
(260, '                      Place Roussel               ', '                      45, PLACE CHARLES ET ALBERT ROUSSEL                    ', 16, 9, 11, 1, '2017-01-19 12:40:45'),
(261, '                      Phalempins                  ', '                      PHALEMPINS                    ', 16, 2, 14, 1, '2017-01-19 12:40:45'),
(262, '                      Wattrelos Place             ', '                      2-10, D660                    ', 17, 12, 6, 1, '2017-01-19 12:40:45'),
(263, '                      Stalingrad                  ', '                      38-4 RUE DE STALINGRAD                    ', 17, 7, 5, NULL, '2017-01-19 12:40:45');

-- --------------------------------------------------------

--
-- Structure de la table `town`
--

CREATE TABLE `town` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `date_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `town`
--

INSERT INTO `town` (`id`, `name`, `date_update`) VALUES
(2, '                      LILLE                   ', '2017-01-19 11:22:10'),
(3, '                      LILLE HELLEMMES             ', '2017-01-19 11:22:10'),
(4, '                      LA MADELEINE                ', '2017-01-19 11:22:10'),
(5, '                      MONS EN BAROEUL             ', '2017-01-19 11:22:10'),
(6, '                      HELLEMMES                   ', '2017-01-19 11:22:10'),
(7, '                      LAMBERSART                  ', '2017-01-19 11:22:10'),
(8, '                      LOMME                   ', '2017-01-19 11:22:11'),
(9, '                      MARCQ EN BAROEUL            ', '2017-01-19 11:22:11'),
(10, '                      VILLENEUVE D''ASCQ           ', '2017-01-19 11:22:11'),
(11, '                      RONCHIN                   ', '2017-01-19 11:22:11'),
(12, '                      FACHES-THUMESNIL            ', '2017-01-19 11:22:11'),
(13, '                      SAINT ANDRE LEZ LILLE       ', '2017-01-19 11:22:11'),
(14, '                      CROIX                   ', '2017-01-19 11:22:11'),
(15, '                      ROUBAIX                   ', '2017-01-19 11:22:11'),
(16, '                      TOURCOING                   ', '2017-01-19 11:22:11'),
(17, '                      WATTRELOS                   ', '2017-01-19 11:22:11');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `station`
--
ALTER TABLE `station`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `town`
--
ALTER TABLE `town`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `town`
--
ALTER TABLE `town`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
