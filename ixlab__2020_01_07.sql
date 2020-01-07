-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 07, 2020 at 11:02 PM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ixlab`
--

-- --------------------------------------------------------

--
-- Table structure for table `assetindexdata`
--

DROP TABLE IF EXISTS `assetindexdata`;
CREATE TABLE IF NOT EXISTS `assetindexdata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sessionId` varchar(36) NOT NULL DEFAULT '',
  `volumeId` int(11) NOT NULL,
  `uri` text,
  `size` bigint(20) UNSIGNED DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  `recordId` int(11) DEFAULT NULL,
  `inProgress` tinyint(1) DEFAULT '0',
  `completed` tinyint(1) DEFAULT '0',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `assetindexdata_sessionId_volumeId_idx` (`sessionId`,`volumeId`),
  KEY `assetindexdata_volumeId_idx` (`volumeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `assets`
--

DROP TABLE IF EXISTS `assets`;
CREATE TABLE IF NOT EXISTS `assets` (
  `id` int(11) NOT NULL,
  `volumeId` int(11) DEFAULT NULL,
  `folderId` int(11) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `kind` varchar(50) NOT NULL DEFAULT 'unknown',
  `width` int(11) UNSIGNED DEFAULT NULL,
  `height` int(11) UNSIGNED DEFAULT NULL,
  `size` bigint(20) UNSIGNED DEFAULT NULL,
  `focalPoint` varchar(13) DEFAULT NULL,
  `deletedWithVolume` tinyint(1) DEFAULT NULL,
  `keptFile` tinyint(1) DEFAULT NULL,
  `dateModified` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `assets_filename_folderId_idx` (`filename`,`folderId`),
  KEY `assets_folderId_idx` (`folderId`),
  KEY `assets_volumeId_idx` (`volumeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `assets`
--

INSERT INTO `assets` (`id`, `volumeId`, `folderId`, `filename`, `kind`, `width`, `height`, `size`, `focalPoint`, `deletedWithVolume`, `keptFile`, `dateModified`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(9, 1, 1, 'ixlab.svg', 'image', 856, 205, 34077, NULL, 1, 1, '2019-12-17 21:02:29', '2019-12-17 21:02:29', '2019-12-17 21:02:29', 'c922c70f-ed22-48e1-ae8c-8e007c71e550'),
(10, 2, 4, 'ixlab.svg', 'image', 856, 205, 34077, NULL, NULL, NULL, '2019-12-17 21:08:18', '2019-12-17 21:08:18', '2019-12-17 21:08:18', 'cb44a896-f3b8-4729-a14d-12ac0eb878c2'),
(17, 2, 5, 'toast.gif', 'image', 360, 360, 22501, NULL, NULL, NULL, '2019-12-17 23:47:33', '2019-12-17 23:47:21', '2019-12-17 23:47:33', 'd109874d-44c8-44d8-bc76-9c57f4656725'),
(23, 2, 5, 'Oryctolagus_cuniculus_Tasmania_2.jpg', 'image', 1367, 1709, 1287197, NULL, 0, 0, '2019-12-18 01:46:01', '2019-12-18 01:46:02', '2019-12-18 01:46:02', '2e4d0820-7262-483a-8deb-1e705d0684e7'),
(24, 2, 5, 'woop.png', 'image', 124, 128, 12115, NULL, NULL, NULL, '2019-12-18 01:46:08', '2019-12-18 01:46:08', '2019-12-18 01:46:08', '4f991454-d987-4c40-b877-8487013518b3'),
(43, 2, 4, 'bird-s-eye-view-photography-of-high-rise-buildings-2382868.jpg', 'image', 5999, 3360, 4777230, NULL, 0, 0, '2019-12-19 00:05:08', '2019-12-19 00:05:09', '2019-12-19 00:05:09', 'ebb5ba5f-5c0f-4cfe-9692-e305a5aaa2d5'),
(50, 2, 4, 'bird.jpg', 'image', 5999, 3360, 4777230, NULL, NULL, NULL, '2019-12-19 00:19:15', '2019-12-19 00:19:16', '2019-12-19 00:19:16', '6e3f116f-1f25-4991-a904-7ffd0f4562cd'),
(51, 2, 13, 'bird.jpg', 'image', 1680, 941, 336641, NULL, NULL, NULL, '2019-12-19 00:22:07', '2019-12-19 00:21:13', '2020-01-03 20:22:10', 'ffe21bfc-f20a-460b-aa2a-5d2363f6c4e1'),
(52, 2, 13, 'fireflies.jpg', 'image', 500, 333, 87922, NULL, NULL, NULL, '2019-12-19 00:22:08', '2019-12-19 00:22:02', '2020-01-03 20:22:10', '2ac87dfc-bd19-4e84-9240-5bedaedc8ae8'),
(70, 2, 8, 'timevis-encodings.png', 'image', 2367, 1701, 603148, NULL, NULL, NULL, '2020-01-03 20:13:18', '2020-01-03 20:12:54', '2020-01-03 20:13:19', '175eacb1-0435-4ff4-a855-555411dfa9c8'),
(74, 2, 11, 'avis-teaser.jpg', 'image', 499, 330, 110301, NULL, NULL, NULL, '2020-01-03 20:14:53', '2020-01-03 20:14:48', '2020-01-03 20:20:50', '819c5638-ac63-444c-8d03-ad196b38396a');

-- --------------------------------------------------------

--
-- Table structure for table `assettransformindex`
--

DROP TABLE IF EXISTS `assettransformindex`;
CREATE TABLE IF NOT EXISTS `assettransformindex` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `assetId` int(11) NOT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `format` varchar(255) DEFAULT NULL,
  `location` varchar(255) NOT NULL,
  `volumeId` int(11) DEFAULT NULL,
  `fileExists` tinyint(1) NOT NULL DEFAULT '0',
  `inProgress` tinyint(1) NOT NULL DEFAULT '0',
  `dateIndexed` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `assettransformindex_volumeId_assetId_location_idx` (`volumeId`,`assetId`,`location`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `assettransforms`
--

DROP TABLE IF EXISTS `assettransforms`;
CREATE TABLE IF NOT EXISTS `assettransforms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `mode` enum('stretch','fit','crop') NOT NULL DEFAULT 'crop',
  `position` enum('top-left','top-center','top-right','center-left','center-center','center-right','bottom-left','bottom-center','bottom-right') NOT NULL DEFAULT 'center-center',
  `width` int(11) UNSIGNED DEFAULT NULL,
  `height` int(11) UNSIGNED DEFAULT NULL,
  `format` varchar(255) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `interlace` enum('none','line','plane','partition') NOT NULL DEFAULT 'none',
  `dimensionChangeTime` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `assettransforms_name_unq_idx` (`name`),
  UNIQUE KEY `assettransforms_handle_unq_idx` (`handle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `parentId` int(11) DEFAULT NULL,
  `deletedWithGroup` tinyint(1) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `categories_groupId_idx` (`groupId`),
  KEY `categories_parentId_fk` (`parentId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `groupId`, `parentId`, `deletedWithGroup`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(63, 1, NULL, NULL, '2019-12-20 22:38:39', '2019-12-20 22:38:39', '85504a73-d441-4029-86e0-34b8ca0ada4a'),
(64, 1, NULL, NULL, '2019-12-20 22:38:46', '2019-12-20 22:38:46', '8c6749a3-ffd2-48e3-972b-ebd1b7963902');

-- --------------------------------------------------------

--
-- Table structure for table `categorygroups`
--

DROP TABLE IF EXISTS `categorygroups`;
CREATE TABLE IF NOT EXISTS `categorygroups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `structureId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `categorygroups_name_idx` (`name`),
  KEY `categorygroups_handle_idx` (`handle`),
  KEY `categorygroups_structureId_idx` (`structureId`),
  KEY `categorygroups_fieldLayoutId_idx` (`fieldLayoutId`),
  KEY `categorygroups_dateDeleted_idx` (`dateDeleted`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categorygroups`
--

INSERT INTO `categorygroups` (`id`, `structureId`, `fieldLayoutId`, `name`, `handle`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 1, NULL, 'Research Lab', 'researchLab', '2019-12-20 22:38:24', '2019-12-20 22:38:24', NULL, '6be471a8-ca3b-429f-a5e1-eb10a4213bb5');

-- --------------------------------------------------------

--
-- Table structure for table `categorygroups_sites`
--

DROP TABLE IF EXISTS `categorygroups_sites`;
CREATE TABLE IF NOT EXISTS `categorygroups_sites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `hasUrls` tinyint(1) NOT NULL DEFAULT '1',
  `uriFormat` text,
  `template` varchar(500) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `categorygroups_sites_groupId_siteId_unq_idx` (`groupId`,`siteId`),
  KEY `categorygroups_sites_siteId_idx` (`siteId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categorygroups_sites`
--

INSERT INTO `categorygroups_sites` (`id`, `groupId`, `siteId`, `hasUrls`, `uriFormat`, `template`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 1, 1, 'research-lab/{slug}', '', '2019-12-20 22:38:24', '2019-12-20 22:38:24', 'e6995d9c-4244-49f4-b769-0bee7e8954cd');

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

DROP TABLE IF EXISTS `content`;
CREATE TABLE IF NOT EXISTS `content` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `elementId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  `field_bio` text,
  `field_website` varchar(255) DEFAULT NULL,
  `field_date` datetime DEFAULT NULL,
  `field_body` text,
  `field_abstract` text,
  `field_publication` text,
  `field_description` text,
  `field_courseCode` text,
  `field_authors` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_elementId_siteId_unq_idx` (`elementId`,`siteId`),
  KEY `content_siteId_idx` (`siteId`),
  KEY `content_title_idx` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`id`, `elementId`, `siteId`, `title`, `dateCreated`, `dateUpdated`, `uid`, `field_bio`, `field_website`, `field_date`, `field_body`, `field_abstract`, `field_publication`, `field_description`, `field_courseCode`, `field_authors`) VALUES
(1, 1, 1, NULL, '2019-12-17 19:39:09', '2019-12-17 20:07:37', '6c3357cd-a08d-47f4-b5d0-60182d09e6dd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 2, 1, 'about', '2019-12-17 20:21:57', '2019-12-18 23:59:12', '1a5a1e06-7228-47eb-a8b2-48d6b200370e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 3, 1, 'about', '2019-12-17 20:21:57', '2019-12-17 20:21:57', '04d2e13b-b0d8-45da-81a8-459391481b46', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 4, 1, 'Homepage', '2019-12-17 20:22:20', '2019-12-19 20:33:58', '8dd3b0a0-1c5f-47ce-8012-598474a4c26f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 5, 1, 'home', '2019-12-17 20:22:20', '2019-12-17 20:22:20', 'c0583a8d-6bdf-44e8-8107-b6b609c0e0c2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 6, 1, 'about', '2019-12-17 20:23:41', '2019-12-17 20:23:41', 'ec4527b3-f13b-4e7f-b581-6e6afd9a91a1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 7, 1, 'about', '2019-12-17 20:24:43', '2019-12-17 20:24:43', '9f0d5b1f-0c32-443b-90f1-99243d4ac2c5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 8, 1, 'about', '2019-12-17 20:28:58', '2019-12-17 20:28:58', '11358f57-2d33-4c33-8559-ab5701333abe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 9, 1, 'Ixlab', '2019-12-17 21:02:29', '2019-12-17 21:02:29', '41d361b8-ea7e-498b-b950-6c6e896bbcbf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 10, 1, 'Ixlab', '2019-12-17 21:08:18', '2019-12-17 21:08:18', '7a2263d0-de28-4ae7-b017-b55526a5bc47', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 12, 1, 'Welcome to the new ixlab website!', '2019-12-17 23:36:37', '2019-12-17 23:36:37', '1de0fb21-30fb-4304-8dd4-a8aedc1100b5', NULL, NULL, '2019-12-17 08:00:00', '<p>What you are witnessing here is the new website for the Interactive Experiences Lab!<br /><br />Some parts are still under construction, but take a look around.</p><p>Stay tuned for more <strong>updates</strong>.</p>', NULL, NULL, NULL, NULL, NULL),
(13, 13, 1, 'Welcome to the new ixlab website!', '2019-12-17 23:36:37', '2019-12-17 23:36:37', 'bd3bdc74-dffd-4038-9f16-2750b1031981', NULL, NULL, '2019-12-17 08:00:00', '<p>What you are witnessing here is the new website for the Interactive Experiences Lab!<br /><br />Some parts are still under construction, but take a look around.</p><p>Stay tuned for more <strong>updates</strong>.</p>', NULL, NULL, NULL, NULL, NULL),
(14, 14, 1, NULL, '2019-12-17 23:46:04', '2019-12-17 23:46:04', 'bbdd32d8-d558-4001-bbbd-e6c21eb57de8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 15, 1, NULL, '2019-12-17 23:46:25', '2019-12-17 23:46:25', 'a79cba66-4658-46a3-807a-3a01fadb47c3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 17, 1, 'Toast', '2019-12-17 23:47:21', '2019-12-17 23:47:33', '9762d50d-bb2c-4c20-86dd-1072b20550e2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 18, 1, 'Peter Buk', '2019-12-17 23:47:32', '2019-12-17 23:47:32', '3d26dd01-b3cd-4f29-ade0-d872bf33c6c3', 'Peter Buk is the designer for this website!', 'https://peterbuk.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 19, 1, 'Peter Buk', '2019-12-17 23:47:33', '2019-12-17 23:47:33', '023e76d4-ad1d-4185-88af-6d1955135ef7', 'Peter Buk is the designer for this website!', 'https://peterbuk.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 20, 1, 'People Index', '2019-12-18 00:01:54', '2019-12-19 20:47:12', '6857bb1a-f2ef-4032-bebb-38ee07cb2243', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 21, 1, 'People Index', '2019-12-18 00:01:54', '2019-12-18 00:01:54', '00cd5505-8541-42ac-b6de-b6152db06169', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 23, 1, 'Oryctolagus cuniculus Tasmania 2', '2019-12-18 01:46:01', '2019-12-18 01:46:01', 'b1d38e4c-baa7-48b5-9d74-8ed3c97912c1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 24, 1, 'Woop', '2019-12-18 01:46:08', '2019-12-18 01:46:08', '7cb9d291-4009-46e0-9a48-11def2d2f110', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 25, 1, 'Lien Quach', '2019-12-18 01:46:16', '2019-12-18 01:48:41', '6af75698-be56-4ce6-8de3-5de07c8bce60', 'Lien Quach is a designer for this web page. Woop', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 26, 1, 'Lien Quach', '2019-12-18 01:46:16', '2019-12-18 01:46:16', '8e944360-aa8e-4489-af69-dd292f80ade1', 'Lien Quach is also the designer for this web page. She likes buns.', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 27, 1, 'Lien Quach', '2019-12-18 01:48:41', '2019-12-18 01:48:41', '39a7a786-b9d5-4c0f-8fc2-e50bc91b2bf4', 'Lien Quach is a designer for this web page. Woop', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 28, 1, 'Research Index', '2019-12-18 22:29:08', '2019-12-19 20:34:10', '7851b227-ece0-4ee7-8074-c89ebf067bc3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 29, 1, 'Research Index', '2019-12-18 22:29:08', '2019-12-18 22:29:08', 'ca3edb2a-6973-4872-956e-bce2ec523eb8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, 30, 1, 'Affiliations', '2019-12-18 22:39:54', '2019-12-19 20:33:53', 'b63a06fe-de6c-4196-aa9a-a108d26b927f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, 31, 1, 'Affiliations', '2019-12-18 22:39:54', '2019-12-18 22:39:54', '063f1dce-6032-4d99-92f7-b4c8d4a345b2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, 33, 1, 'Testing which rich text editor is more powerful.', '2019-12-18 23:45:03', '2019-12-18 23:45:03', '7a1f37d0-dba9-438a-8cca-852a0b7fd96f', NULL, NULL, '2019-12-18 08:00:00', '<h1>This is my header.</h1><p>Now I am typing regular text.<br /></p><ol><li>This is indented<ol><li>A list of which</li></ol></li><li>There is like no other.</li></ol>', NULL, NULL, NULL, NULL, NULL),
(34, 34, 1, 'Testing which rich text editor is more powerful.', '2019-12-18 23:45:03', '2019-12-18 23:45:03', '65799944-2dfe-4d2e-8c99-6998cf6e1792', NULL, NULL, '2019-12-18 08:00:00', '<h1>This is my header.</h1><p>Now I am typing regular text.<br /></p><ol><li>This is indented<ol><li>A list of which</li></ol></li><li>There is like no other.</li></ol>', NULL, NULL, NULL, NULL, NULL),
(35, 35, 1, 'Affiliations', '2019-12-18 23:48:57', '2019-12-18 23:48:57', 'cfa386a1-3669-4190-a7c1-77160dfdb800', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, 36, 1, 'Homepage', '2019-12-18 23:49:10', '2019-12-18 23:49:10', '7ccd19d6-cd2f-485e-a00e-c1649d70aab7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(37, 37, 1, 'News Index', '2019-12-18 23:49:46', '2019-12-19 20:34:03', '38983580-24f5-4746-bed4-195b54a8f707', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(38, 38, 1, 'News Index', '2019-12-18 23:49:46', '2019-12-18 23:49:46', '70380b12-1d04-4fc5-81af-cca42dc7de01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(39, 39, 1, 'News Index', '2019-12-18 23:55:23', '2019-12-18 23:55:23', 'a5bf6e40-6dbe-4b67-9623-46c89c1c72d4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40, 40, 1, 'about', '2019-12-18 23:59:12', '2019-12-18 23:59:12', '8236bc4e-e668-4821-ace2-de20a36ec2d2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(41, 41, 1, NULL, '2019-12-19 00:02:18', '2019-12-19 00:02:18', 'f043b910-68a2-433c-83e2-1e2c274d9340', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(43, 43, 1, 'Bird s eye view photography of high rise buildings 2382868', '2019-12-19 00:04:57', '2019-12-19 00:04:57', '045e520a-54ef-4785-9eac-d430f1d7fe71', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(44, 44, 1, 'Sample Research Project', '2019-12-19 00:05:17', '2019-12-20 22:41:23', 'bb84f6cf-03d1-484e-a067-b742b78dc3d8', NULL, NULL, NULL, NULL, '<p>Phasellus tristique sed magna eget dictum. Ut eget nibh sed augue scelerisque aliquam sed eu ligula. Sed blandit elit ipsum, vitae dignissim urna fermentum at. Curabitur congue arcu vitae tincidunt sagittis. Duis ut odio a magna eleifend venenatis. Sed sed luctus nisl, commodo scelerisque velit. Curabitur sagittis placerat rutrum. </p>', '<p>Ut Ipsum, Non Leo Convallis, et al. Sed semper turpis quis lorem blandit pharetra. Nullam fringilla elementum sollicitudin. 2019.</p>', NULL, NULL, '<p>Bob Smith<br />Andy Waslow</p>'),
(45, 45, 1, 'Sample Research Project', '2019-12-19 00:05:17', '2019-12-19 00:05:17', 'ee7022ef-57b9-44eb-a847-33d876099f79', NULL, NULL, NULL, NULL, '<p>Phasellus tristique sed magna eget dictum. Ut eget nibh sed augue scelerisque aliquam sed eu ligula. Sed blandit elit ipsum, vitae dignissim urna fermentum at. Curabitur congue arcu vitae tincidunt sagittis. Duis ut odio a magna eleifend venenatis. Sed sed luctus nisl, commodo scelerisque velit. Curabitur sagittis placerat rutrum. </p>', '<p>Ut Ipsum, Non Leo Convallis, et al. Sed semper turpis quis lorem blandit pharetra. Nullam fringilla elementum sollicitudin. 2019.</p>', NULL, NULL, NULL),
(46, 46, 1, 'Sample Research Project', '2019-12-19 00:07:28', '2019-12-19 00:07:28', '090ecabf-16ca-46e1-a870-942803de7ae3', NULL, NULL, NULL, NULL, '<p>Phasellus tristique sed magna eget dictum. Ut eget nibh sed augue scelerisque aliquam sed eu ligula. Sed blandit elit ipsum, vitae dignissim urna fermentum at. Curabitur congue arcu vitae tincidunt sagittis. Duis ut odio a magna eleifend venenatis. Sed sed luctus nisl, commodo scelerisque velit. Curabitur sagittis placerat rutrum. </p>', '<p>Ut Ipsum, Non Leo Convallis, et al. Sed semper turpis quis lorem blandit pharetra. Nullam fringilla elementum sollicitudin. 2019.</p>', NULL, NULL, NULL),
(47, 47, 1, 'Sample Research Project', '2019-12-19 00:08:09', '2019-12-19 00:08:09', 'd8d98225-c33a-488c-9b95-a3a8c4175879', NULL, NULL, NULL, NULL, '<p>Phasellus tristique sed magna eget dictum. Ut eget nibh sed augue scelerisque aliquam sed eu ligula. Sed blandit elit ipsum, vitae dignissim urna fermentum at. Curabitur congue arcu vitae tincidunt sagittis. Duis ut odio a magna eleifend venenatis. Sed sed luctus nisl, commodo scelerisque velit. Curabitur sagittis placerat rutrum. </p>', '<p>Ut Ipsum, Non Leo Convallis, et al. Sed semper turpis quis lorem blandit pharetra. Nullam fringilla elementum sollicitudin. 2019.</p>', NULL, NULL, NULL),
(48, 48, 1, 'Sample Research Project', '2019-12-19 00:11:14', '2019-12-19 00:11:14', '644b6d3d-e378-4853-9d84-55d0954fa203', NULL, NULL, NULL, NULL, '<p>Phasellus tristique sed magna eget dictum. Ut eget nibh sed augue scelerisque aliquam sed eu ligula. Sed blandit elit ipsum, vitae dignissim urna fermentum at. Curabitur congue arcu vitae tincidunt sagittis. Duis ut odio a magna eleifend venenatis. Sed sed luctus nisl, commodo scelerisque velit. Curabitur sagittis placerat rutrum. </p>', '<p>Ut Ipsum, Non Leo Convallis, et al. Sed semper turpis quis lorem blandit pharetra. Nullam fringilla elementum sollicitudin. 2019.</p>', NULL, NULL, NULL),
(49, 49, 1, 'Sample Research Project', '2019-12-19 00:13:31', '2019-12-19 00:13:31', 'eb16d033-94a3-4237-a788-687e43f4fb51', NULL, NULL, NULL, NULL, '<p>Phasellus tristique sed magna eget dictum. Ut eget nibh sed augue scelerisque aliquam sed eu ligula. Sed blandit elit ipsum, vitae dignissim urna fermentum at. Curabitur congue arcu vitae tincidunt sagittis. Duis ut odio a magna eleifend venenatis. Sed sed luctus nisl, commodo scelerisque velit. Curabitur sagittis placerat rutrum. </p>', '<p>Ut Ipsum, Non Leo Convallis, et al. Sed semper turpis quis lorem blandit pharetra. Nullam fringilla elementum sollicitudin. 2019.</p>', NULL, NULL, '<p>Bob Smith<br />Andy Waslow</p>'),
(50, 50, 1, 'Bird', '2019-12-19 00:19:02', '2019-12-19 00:19:02', '51632bd3-4f42-4e0b-9ff3-76954eadf8e8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(51, 51, 1, 'Bird', '2019-12-19 00:21:13', '2020-01-03 20:22:10', 'dd344319-0852-4157-9793-9ecda49f5f7f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(52, 52, 1, 'Fireflies', '2019-12-19 00:22:02', '2020-01-03 20:22:10', '9a83b5a3-992f-4356-8e86-570a441c4829', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(53, 53, 1, 'Sample Research Project', '2019-12-19 00:22:08', '2019-12-19 00:22:08', '7caf6541-5a96-4d76-9068-d948ab6cf3b0', NULL, NULL, NULL, NULL, '<p>Phasellus tristique sed magna eget dictum. Ut eget nibh sed augue scelerisque aliquam sed eu ligula. Sed blandit elit ipsum, vitae dignissim urna fermentum at. Curabitur congue arcu vitae tincidunt sagittis. Duis ut odio a magna eleifend venenatis. Sed sed luctus nisl, commodo scelerisque velit. Curabitur sagittis placerat rutrum. </p>', '<p>Ut Ipsum, Non Leo Convallis, et al. Sed semper turpis quis lorem blandit pharetra. Nullam fringilla elementum sollicitudin. 2019.</p>', NULL, NULL, '<p>Bob Smith<br />Andy Waslow</p>'),
(54, 54, 1, 'Affiliations', '2019-12-19 20:33:53', '2019-12-19 20:33:53', 'f2778759-7767-4877-84f3-34385ec75847', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(55, 55, 1, 'Homepage', '2019-12-19 20:33:58', '2019-12-19 20:33:58', 'a8707b9b-83ed-46a3-9521-f5640186104e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(56, 56, 1, 'News Index', '2019-12-19 20:34:03', '2019-12-19 20:34:03', 'a04dd507-beea-49e7-a68a-0d776f83dcc0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(57, 57, 1, 'People Index', '2019-12-19 20:34:07', '2019-12-19 20:34:07', '441b9ab9-aea3-46b0-bee0-93c46e808e08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(58, 58, 1, 'Research Index', '2019-12-19 20:34:10', '2019-12-19 20:34:10', '3f023344-260f-4ec7-91a8-0c5e431bf70c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(59, 59, 1, 'Course Index', '2019-12-19 20:34:58', '2019-12-19 20:35:00', '118fa5cb-2ad3-414b-bd1d-b43dd63eab52', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(60, 60, 1, 'Course Index', '2019-12-19 20:34:58', '2019-12-19 20:34:58', 'a481e17d-6acd-40d8-b6ce-c5557485932b', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(61, 61, 1, 'People Index', '2019-12-19 20:47:12', '2019-12-19 20:47:12', '702062e8-b17f-4828-8e98-bd63e35483d7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(62, 62, 1, 'Sample Research Project', '2019-12-19 22:53:27', '2019-12-19 22:53:27', '8817c7f1-9c7f-4797-8db6-64dccf9ac2d3', NULL, NULL, NULL, NULL, '<p>Phasellus tristique sed magna eget dictum. Ut eget nibh sed augue scelerisque aliquam sed eu ligula. Sed blandit elit ipsum, vitae dignissim urna fermentum at. Curabitur congue arcu vitae tincidunt sagittis. Duis ut odio a magna eleifend venenatis. Sed sed luctus nisl, commodo scelerisque velit. Curabitur sagittis placerat rutrum. </p>', '<p>Ut Ipsum, Non Leo Convallis, et al. Sed semper turpis quis lorem blandit pharetra. Nullam fringilla elementum sollicitudin. 2019.</p>', NULL, NULL, '<p>Bob Smith<br />Andy Waslow</p>'),
(63, 63, 1, 'Parmit\'s Lab', '2019-12-20 22:38:39', '2019-12-20 22:38:39', '5fb443e6-04b7-45a8-a8e9-b9d163c1a244', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(64, 64, 1, 'InnoVis', '2019-12-20 22:38:46', '2019-12-20 22:38:46', 'ac9bc751-cc67-4ccd-8232-2df19d92e18e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(65, 65, 1, 'Sample Research Project', '2019-12-20 22:41:23', '2019-12-20 22:41:23', 'ee0fdca9-5cbf-4585-9472-5f33bd2137fe', NULL, NULL, NULL, NULL, '<p>Phasellus tristique sed magna eget dictum. Ut eget nibh sed augue scelerisque aliquam sed eu ligula. Sed blandit elit ipsum, vitae dignissim urna fermentum at. Curabitur congue arcu vitae tincidunt sagittis. Duis ut odio a magna eleifend venenatis. Sed sed luctus nisl, commodo scelerisque velit. Curabitur sagittis placerat rutrum. </p>', '<p>Ut Ipsum, Non Leo Convallis, et al. Sed semper turpis quis lorem blandit pharetra. Nullam fringilla elementum sollicitudin. 2019.</p>', NULL, NULL, '<p>Bob Smith<br />Andy Waslow</p>'),
(67, 67, 1, 'Modern Software Product Support Processes and the Usage of Multimedia Formats', '2019-12-20 22:43:49', '2019-12-20 22:43:49', '4fef8d24-8298-46ba-aac3-f416c789e72a', NULL, NULL, NULL, NULL, '<p>Despite being an important channel for end-user assistance, few studies have directly investigated the interactions that occur in modern-day practice of software product support. We present results from a multi-dimensional analysis of product support activities at a leading design software company.</p>', '<p>2011. <em>Proceedings of the SIGCHI Conference on Human Factors in Computing Systems</em>. ACM, New York, NY, USA.<br /></p>', NULL, NULL, '<p>Parmit K. Chilana</p>'),
(68, 68, 1, 'Modern Software Product Support Processes and the Usage of Multimedia Formats', '2019-12-20 22:43:49', '2019-12-20 22:43:49', '82f95912-00db-483f-a899-45273fa2f981', NULL, NULL, NULL, NULL, '<p>Despite being an important channel for end-user assistance, few studies have directly investigated the interactions that occur in modern-day practice of software product support. We present results from a multi-dimensional analysis of product support activities at a leading design software company.</p>', '<p>2011. <em>Proceedings of the SIGCHI Conference on Human Factors in Computing Systems</em>. ACM, New York, NY, USA.<br /></p>', NULL, NULL, '<p>Parmit K. Chilana</p>'),
(70, 70, 1, 'Timevis encodings', '2020-01-03 20:12:52', '2020-01-03 20:13:18', '25dfed52-c4e5-4c8a-8827-5772bbfb4fac', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(71, 71, 1, '2D+Time Trajectories', '2020-01-03 20:13:18', '2020-01-03 20:13:18', '37285d62-8fed-4455-89c7-dc21657e2eec', NULL, NULL, NULL, NULL, '<p>We empirically evaluate the extent to which people perceive non-constant time and speed encoded on 2D paths. In our graphical perception study, we evaluate nine encodings from the literature for both straight and curved paths. Visualizing time and speed information is a challenge when the x and y axes already encode other data dimensions, for example when plotting a trip on a map. This is particularly true in disciplines such as time-geography and movement analytics that often require visualizing spatio-temporal trajectories. A common approach is to use 2D+time trajectories, which are 2D paths for which time is an additional dimension. However, there are currently no guidelines regarding how to represent time and speed on such paths. Our study results provide InfoVis designers with clear guidance regarding which encodings to use and which ones to avoid; in particular, we suggest using color value to encode speed and segment length to encode time whenever possible.</p>', '<div class=\"u_fNK\"><div><div><div></div></div></div></div><div class=\"u_fNK\"><div><div><div><div><div class=\"_5WizN _1QzSN\"><div class=\"_3YmQx\"><div title=\"Protected by Grammarly\" class=\"_3QdKe\"> </div></div></div></div></div></div></div></div><table><tbody><tr><td colspan=\"2\" valign=\"top\">Perin, Charles, Wun, Tiffany, Pusch, Richard and Carpendale, Sheelagh. <strong><a href=\"http://sheelaghcarpendale.ca/Publications/Publications?action=bibentry&amp;bibfile=BibTex.BibTex&amp;bibref=perin2018assessing\">Assessing the Graphical Perception of Time and Speed on 2D+ Time Trajectories</a></strong>. <em>IEEE transactions on visualization and computer graphics</em>, 24(1):698-708. IEEE, 2018.</td></tr></tbody></table>', NULL, NULL, '<p><a href=\"http://charles.perin.free.fr/\">Charles Perin</a><br /><a href=\"http://sheelaghcarpendale.ca/People/TiffanyWun\">Tiffany Wun</a><br /><a href=\"http://sheelaghcarpendale.ca/People/RichardPusch\">Richard Pusch</a><br /><a href=\"http://sheelaghcarpendale.ca/People/SheelaghCarpendale\">Sheelagh Carpendale</a></p>'),
(72, 72, 1, '2D+Time Trajectories', '2020-01-03 20:13:19', '2020-01-03 20:13:19', 'fd509ca0-89a9-48b2-aab5-ccfbe0673395', NULL, NULL, NULL, NULL, '<p>We empirically evaluate the extent to which people perceive non-constant time and speed encoded on 2D paths. In our graphical perception study, we evaluate nine encodings from the literature for both straight and curved paths. Visualizing time and speed information is a challenge when the x and y axes already encode other data dimensions, for example when plotting a trip on a map. This is particularly true in disciplines such as time-geography and movement analytics that often require visualizing spatio-temporal trajectories. A common approach is to use 2D+time trajectories, which are 2D paths for which time is an additional dimension. However, there are currently no guidelines regarding how to represent time and speed on such paths. Our study results provide InfoVis designers with clear guidance regarding which encodings to use and which ones to avoid; in particular, we suggest using color value to encode speed and segment length to encode time whenever possible.</p>', '<div class=\"u_fNK\"><div><div><div></div></div></div></div><div class=\"u_fNK\"><div><div><div><div><div class=\"_5WizN _1QzSN\"><div class=\"_3YmQx\"><div title=\"Protected by Grammarly\" class=\"_3QdKe\"> </div></div></div></div></div></div></div></div><table><tbody><tr><td colspan=\"2\" valign=\"top\">Perin, Charles, Wun, Tiffany, Pusch, Richard and Carpendale, Sheelagh. <strong><a href=\"http://sheelaghcarpendale.ca/Publications/Publications?action=bibentry&amp;bibfile=BibTex.BibTex&amp;bibref=perin2018assessing\">Assessing the Graphical Perception of Time and Speed on 2D+ Time Trajectories</a></strong>. <em>IEEE transactions on visualization and computer graphics</em>, 24(1):698-708. IEEE, 2018.</td></tr></tbody></table>', NULL, NULL, '<p><a href=\"http://charles.perin.free.fr/\">Charles Perin</a><br /><a href=\"http://sheelaghcarpendale.ca/People/TiffanyWun\">Tiffany Wun</a><br /><a href=\"http://sheelaghcarpendale.ca/People/RichardPusch\">Richard Pusch</a><br /><a href=\"http://sheelaghcarpendale.ca/People/SheelaghCarpendale\">Sheelagh Carpendale</a></p>'),
(74, 74, 1, 'Avis teaser', '2020-01-03 20:14:47', '2020-01-03 20:20:50', '9912d98c-5369-4a7c-ba81-f73b8238b19f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(75, 75, 1, 'Active Reading of Visualizations', '2020-01-03 20:14:53', '2020-01-03 20:14:53', 'f6f8834e-0f05-4713-8963-16c09fb1ec12', NULL, NULL, NULL, NULL, '<p>We investigate whether the notion of active reading for text might be usefully applied to visualizations. Through a qualitative study we explored whether people apply observable active reading techniques when reading paper-based node-link visualizations. Participants used a range of physical actions while reading, and from these we synthesized an initial set of active reading techniques for visualizations. To learn more about the potential impact such techniques may have on visualization reading, we implemented support for one type of physical action from our observations (making freeform marks) in an interactive node-link visualization. Results from our quantitative study of this implementation show that interactive support for active reading techniques can improve the accuracy of performing low-level visualization tasks. Together, our studies suggest that the active reading space is ripe for research exploration within visualization and can lead to new interactions that make for a more flexible and effective visualization reading experience.</p>', NULL, NULL, NULL, '<p><a href=\"http://sheelaghcarpendale.ca/People/JagodaWalny\">Jagoda Walny</a><br /><a href=\"http://sheelaghcarpendale.ca/People/SamuelHuron\">Samuel Huron</a><br /><a href=\"http://sheelaghcarpendale.ca/Dr/CharlesPerin\">Charles Perin</a><br /><a href=\"http://sheelaghcarpendale.ca/People/TiffanyWun\">Tiffany Wun</a><br /><a href=\"http://sheelaghcarpendale.ca/People/RichardPusch\">Richard Pusch</a><br /><a href=\"http://sheelaghcarpendale.ca/People/SheelaghCarpendale\">Sheelagh Carpendale</a></p>'),
(76, 76, 1, 'Active Reading of Visualizations', '2020-01-03 20:14:53', '2020-01-03 20:14:53', '4bf7b5df-4c54-46ae-9221-8127a4091edd', NULL, NULL, NULL, NULL, '<p>We investigate whether the notion of active reading for text might be usefully applied to visualizations. Through a qualitative study we explored whether people apply observable active reading techniques when reading paper-based node-link visualizations. Participants used a range of physical actions while reading, and from these we synthesized an initial set of active reading techniques for visualizations. To learn more about the potential impact such techniques may have on visualization reading, we implemented support for one type of physical action from our observations (making freeform marks) in an interactive node-link visualization. Results from our quantitative study of this implementation show that interactive support for active reading techniques can improve the accuracy of performing low-level visualization tasks. Together, our studies suggest that the active reading space is ripe for research exploration within visualization and can lead to new interactions that make for a more flexible and effective visualization reading experience.</p>', NULL, NULL, NULL, '<p><a href=\"http://sheelaghcarpendale.ca/People/JagodaWalny\">Jagoda Walny</a><br /><a href=\"http://sheelaghcarpendale.ca/People/SamuelHuron\">Samuel Huron</a><br /><a href=\"http://sheelaghcarpendale.ca/Dr/CharlesPerin\">Charles Perin</a><br /><a href=\"http://sheelaghcarpendale.ca/People/TiffanyWun\">Tiffany Wun</a><br /><a href=\"http://sheelaghcarpendale.ca/People/RichardPusch\">Richard Pusch</a><br /><a href=\"http://sheelaghcarpendale.ca/People/SheelaghCarpendale\">Sheelagh Carpendale</a></p>'),
(77, 77, 1, 'Another Project', '2020-01-03 20:20:18', '2020-01-03 20:20:53', 'a4dd2f04-4e16-4643-812e-099788fbd217', NULL, NULL, NULL, NULL, '<p>We investigate whether the notion of active reading for text might be usefully applied to visualizations. Through a qualitative study we explored whether people apply observable active reading techniques when reading paper-based node-link visualizations. Participants used a range of physical actions while reading, and from these we synthesized an initial set of active reading techniques for visualizations. </p>', NULL, NULL, NULL, '<p><a href=\"http://sheelaghcarpendale.ca/People/JagodaWalny\">Jagoda Walny</a><br /><a href=\"http://sheelaghcarpendale.ca/People/SamuelHuron\">Samuel Huron</a><br /><a href=\"http://sheelaghcarpendale.ca/Dr/CharlesPerin\">Charles Perin</a><br /><a href=\"http://sheelaghcarpendale.ca/People/TiffanyWun\">Tiffany Wun</a><br /><a href=\"http://sheelaghcarpendale.ca/People/RichardPusch\">Richard Pusch</a><br /><a href=\"http://sheelaghcarpendale.ca/People/SheelaghCarpendale\">Sheelagh Carpendale</a></p>'),
(78, 78, 1, 'Active Reading of Visualizations', '2020-01-03 20:20:18', '2020-01-03 20:20:18', '0e68a7d2-de61-41f4-a617-a6b2b0e3e5cd', NULL, NULL, NULL, NULL, '<p>We investigate whether the notion of active reading for text might be usefully applied to visualizations. Through a qualitative study we explored whether people apply observable active reading techniques when reading paper-based node-link visualizations. Participants used a range of physical actions while reading, and from these we synthesized an initial set of active reading techniques for visualizations. To learn more about the potential impact such techniques may have on visualization reading, we implemented support for one type of physical action from our observations (making freeform marks) in an interactive node-link visualization. Results from our quantitative study of this implementation show that interactive support for active reading techniques can improve the accuracy of performing low-level visualization tasks. Together, our studies suggest that the active reading space is ripe for research exploration within visualization and can lead to new interactions that make for a more flexible and effective visualization reading experience.</p>', NULL, NULL, NULL, '<p><a href=\"http://sheelaghcarpendale.ca/People/JagodaWalny\">Jagoda Walny</a><br /><a href=\"http://sheelaghcarpendale.ca/People/SamuelHuron\">Samuel Huron</a><br /><a href=\"http://sheelaghcarpendale.ca/Dr/CharlesPerin\">Charles Perin</a><br /><a href=\"http://sheelaghcarpendale.ca/People/TiffanyWun\">Tiffany Wun</a><br /><a href=\"http://sheelaghcarpendale.ca/People/RichardPusch\">Richard Pusch</a><br /><a href=\"http://sheelaghcarpendale.ca/People/SheelaghCarpendale\">Sheelagh Carpendale</a></p>'),
(79, 79, 1, 'Active Reading of Visualizations', '2020-01-03 20:20:19', '2020-01-03 20:20:19', '16089b6f-bb23-48f0-b2f6-71b13a5ca844', NULL, NULL, NULL, NULL, '<p>We investigate whether the notion of active reading for text might be usefully applied to visualizations. Through a qualitative study we explored whether people apply observable active reading techniques when reading paper-based node-link visualizations. Participants used a range of physical actions while reading, and from these we synthesized an initial set of active reading techniques for visualizations. To learn more about the potential impact such techniques may have on visualization reading, we implemented support for one type of physical action from our observations (making freeform marks) in an interactive node-link visualization. Results from our quantitative study of this implementation show that interactive support for active reading techniques can improve the accuracy of performing low-level visualization tasks. Together, our studies suggest that the active reading space is ripe for research exploration within visualization and can lead to new interactions that make for a more flexible and effective visualization reading experience.</p>', NULL, NULL, NULL, '<p><a href=\"http://sheelaghcarpendale.ca/People/JagodaWalny\">Jagoda Walny</a><br /><a href=\"http://sheelaghcarpendale.ca/People/SamuelHuron\">Samuel Huron</a><br /><a href=\"http://sheelaghcarpendale.ca/Dr/CharlesPerin\">Charles Perin</a><br /><a href=\"http://sheelaghcarpendale.ca/People/TiffanyWun\">Tiffany Wun</a><br /><a href=\"http://sheelaghcarpendale.ca/People/RichardPusch\">Richard Pusch</a><br /><a href=\"http://sheelaghcarpendale.ca/People/SheelaghCarpendale\">Sheelagh Carpendale</a></p>'),
(80, 80, 1, 'Another Project', '2020-01-03 20:20:51', '2020-01-03 20:20:51', 'b03b9f93-e82c-4267-8192-f09db7e34e6a', NULL, NULL, NULL, NULL, '<p>We investigate whether the notion of active reading for text might be usefully applied to visualizations. Through a qualitative study we explored whether people apply observable active reading techniques when reading paper-based node-link visualizations. Participants used a range of physical actions while reading, and from these we synthesized an initial set of active reading techniques for visualizations. </p>', NULL, NULL, NULL, '<p><a href=\"http://sheelaghcarpendale.ca/People/JagodaWalny\">Jagoda Walny</a><br /><a href=\"http://sheelaghcarpendale.ca/People/SamuelHuron\">Samuel Huron</a><br /><a href=\"http://sheelaghcarpendale.ca/Dr/CharlesPerin\">Charles Perin</a><br /><a href=\"http://sheelaghcarpendale.ca/People/TiffanyWun\">Tiffany Wun</a><br /><a href=\"http://sheelaghcarpendale.ca/People/RichardPusch\">Richard Pusch</a><br /><a href=\"http://sheelaghcarpendale.ca/People/SheelaghCarpendale\">Sheelagh Carpendale</a></p>'),
(81, 81, 1, 'Another Project', '2020-01-03 20:20:53', '2020-01-03 20:20:53', '1965b8be-ff91-451f-ae75-ba7da6be8afc', NULL, NULL, NULL, NULL, '<p>We investigate whether the notion of active reading for text might be usefully applied to visualizations. Through a qualitative study we explored whether people apply observable active reading techniques when reading paper-based node-link visualizations. Participants used a range of physical actions while reading, and from these we synthesized an initial set of active reading techniques for visualizations. </p>', NULL, NULL, NULL, '<p><a href=\"http://sheelaghcarpendale.ca/People/JagodaWalny\">Jagoda Walny</a><br /><a href=\"http://sheelaghcarpendale.ca/People/SamuelHuron\">Samuel Huron</a><br /><a href=\"http://sheelaghcarpendale.ca/Dr/CharlesPerin\">Charles Perin</a><br /><a href=\"http://sheelaghcarpendale.ca/People/TiffanyWun\">Tiffany Wun</a><br /><a href=\"http://sheelaghcarpendale.ca/People/RichardPusch\">Richard Pusch</a><br /><a href=\"http://sheelaghcarpendale.ca/People/SheelaghCarpendale\">Sheelagh Carpendale</a></p>'),
(82, 82, 1, 'Research in YVR', '2020-01-03 20:22:00', '2020-01-03 20:22:10', '7d1c7bc8-c6f1-4539-95b8-bd71edb58d81', NULL, NULL, NULL, NULL, '<p>Phasellus tristique sed magna eget dictum. Ut eget nibh sed augue scelerisque aliquam sed eu ligula. Sed blandit elit ipsum, vitae dignissim urna fermentum at. Curabitur congue arcu vitae tincidunt sagittis. Duis ut odio a magna eleifend venenatis. Sed sed luctus nisl, commodo scelerisque velit. Curabitur sagittis placerat rutrum. </p>', '<p>Ut Ipsum, Non Leo Convallis, et al. Sed semper turpis quis lorem blandit pharetra. Nullam fringilla elementum sollicitudin. 2019.</p>', NULL, NULL, '<p>Bob Smith<br />Andy Waslow</p>'),
(83, 83, 1, 'Sample Research Project', '2020-01-03 20:22:00', '2020-01-03 20:22:00', '3871bd88-da28-49bc-8853-e2772a34a39d', NULL, NULL, NULL, NULL, '<p>Phasellus tristique sed magna eget dictum. Ut eget nibh sed augue scelerisque aliquam sed eu ligula. Sed blandit elit ipsum, vitae dignissim urna fermentum at. Curabitur congue arcu vitae tincidunt sagittis. Duis ut odio a magna eleifend venenatis. Sed sed luctus nisl, commodo scelerisque velit. Curabitur sagittis placerat rutrum. </p>', '<p>Ut Ipsum, Non Leo Convallis, et al. Sed semper turpis quis lorem blandit pharetra. Nullam fringilla elementum sollicitudin. 2019.</p>', NULL, NULL, '<p>Bob Smith<br />Andy Waslow</p>'),
(84, 84, 1, 'Research in YVR', '2020-01-03 20:22:01', '2020-01-03 20:22:01', '31c9a401-a83d-4062-abfd-d203f49fee45', NULL, NULL, NULL, NULL, '<p>Phasellus tristique sed magna eget dictum. Ut eget nibh sed augue scelerisque aliquam sed eu ligula. Sed blandit elit ipsum, vitae dignissim urna fermentum at. Curabitur congue arcu vitae tincidunt sagittis. Duis ut odio a magna eleifend venenatis. Sed sed luctus nisl, commodo scelerisque velit. Curabitur sagittis placerat rutrum. </p>', '<p>Ut Ipsum, Non Leo Convallis, et al. Sed semper turpis quis lorem blandit pharetra. Nullam fringilla elementum sollicitudin. 2019.</p>', NULL, NULL, '<p>Bob Smith<br />Andy Waslow</p>'),
(85, 85, 1, 'Research in YVR', '2020-01-03 20:22:11', '2020-01-03 20:22:11', 'f5e004ec-0a89-4330-a21b-0251749f8744', NULL, NULL, NULL, NULL, '<p>Phasellus tristique sed magna eget dictum. Ut eget nibh sed augue scelerisque aliquam sed eu ligula. Sed blandit elit ipsum, vitae dignissim urna fermentum at. Curabitur congue arcu vitae tincidunt sagittis. Duis ut odio a magna eleifend venenatis. Sed sed luctus nisl, commodo scelerisque velit. Curabitur sagittis placerat rutrum. </p>', '<p>Ut Ipsum, Non Leo Convallis, et al. Sed semper turpis quis lorem blandit pharetra. Nullam fringilla elementum sollicitudin. 2019.</p>', NULL, NULL, '<p>Bob Smith<br />Andy Waslow</p>');

-- --------------------------------------------------------

--
-- Table structure for table `craftidtokens`
--

DROP TABLE IF EXISTS `craftidtokens`;
CREATE TABLE IF NOT EXISTS `craftidtokens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `accessToken` text NOT NULL,
  `expiryDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craftidtokens_userId_fk` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `deprecationerrors`
--

DROP TABLE IF EXISTS `deprecationerrors`;
CREATE TABLE IF NOT EXISTS `deprecationerrors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(255) NOT NULL,
  `fingerprint` varchar(255) NOT NULL,
  `lastOccurrence` datetime NOT NULL,
  `file` varchar(255) NOT NULL,
  `line` smallint(6) UNSIGNED DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `traces` text,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `deprecationerrors_key_fingerprint_unq_idx` (`key`,`fingerprint`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `deprecationerrors`
--

INSERT INTO `deprecationerrors` (`id`, `key`, `fingerprint`, `lastOccurrence`, `file`, `line`, `message`, `traces`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'ElementQuery::first()', 'C:\\wamp64\\www\\ixlab-craft\\templates\\_pages\\research\\research.twig:25', '2020-01-03 19:37:35', 'C:\\wamp64\\www\\ixlab-craft\\templates\\_pages\\research\\research.twig', 25, 'The first() function used to query for elements is now deprecated. Use one() instead.', '[{\"objectClass\":\"craft\\\\services\\\\Deprecator\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\elements\\\\db\\\\ElementQuery.php\",\"line\":1859,\"class\":\"craft\\\\services\\\\Deprecator\",\"method\":\"log\",\"args\":\"\\\"ElementQuery::first()\\\", \\\"The first() function used to query for elements is now deprecate...\\\"\"},{\"objectClass\":\"craft\\\\elements\\\\db\\\\CategoryQuery\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Extension\\\\CoreExtension.php\",\"line\":1495,\"class\":\"craft\\\\elements\\\\db\\\\ElementQuery\",\"method\":\"first\",\"args\":null},{\"objectClass\":null,\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\helpers\\\\Template.php\",\"line\":105,\"class\":null,\"method\":\"twig_get_attribute\",\"args\":\"craft\\\\web\\\\twig\\\\Environment, Twig\\\\Source, craft\\\\elements\\\\db\\\\CategoryQuery, \\\"first\\\", ...\"},{\"objectClass\":null,\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\storage\\\\runtime\\\\compiled_templates\\\\2e\\\\2ea55451098ca6d7418ffd603f7d05bb11953d687ff02e4fecdea5222e43e954.php\",\"line\":78,\"class\":\"craft\\\\helpers\\\\Template\",\"method\":\"attribute\",\"args\":\"craft\\\\web\\\\twig\\\\Environment, Twig\\\\Source, craft\\\\elements\\\\db\\\\CategoryQuery, \\\"first\\\", ...\"},{\"objectClass\":\"__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":184,\"class\":\"__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71\",\"method\":\"block_content\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"head\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_head\\\"], \\\"layout\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_layout\\\"], \\\"endBody\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_endBody\\\"], \\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"], ...]\"},{\"objectClass\":\"__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\storage\\\\runtime\\\\compiled_templates\\\\c8\\\\c8eaa48f1bd44edfaf45ea6edf82b81a7a33de14ccaa17efcebb8ddae257a4f8.php\",\"line\":102,\"class\":\"Twig\\\\Template\",\"method\":\"displayBlock\",\"args\":\"\\\"content\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"head\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_head\\\"], \\\"layout\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_layout\\\"], \\\"endBody\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_endBody\\\"], \\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"], ...]\"},{\"objectClass\":\"__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":184,\"class\":\"__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e\",\"method\":\"block_layout\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"head\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_head\\\"], \\\"layout\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_layout\\\"], \\\"endBody\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_endBody\\\"], \\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"], ...]\"},{\"objectClass\":\"__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\storage\\\\runtime\\\\compiled_templates\\\\e3\\\\e34b38bdf339ee4fdc52971ed0ddd2715e509abc4fe22364ee07903ecedadf6c.php\",\"line\":98,\"class\":\"Twig\\\\Template\",\"method\":\"displayBlock\",\"args\":\"\\\"layout\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"head\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_head\\\"], \\\"layout\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_layout\\\"], \\\"endBody\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_endBody\\\"], \\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"], ...]\"},{\"objectClass\":\"__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":407,\"class\":\"__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"head\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_head\\\"], \\\"layout\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_layout\\\"], \\\"endBody\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_endBody\\\"], \\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"], ...]\"},{\"objectClass\":\"__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"head\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_head\\\"], \\\"layout\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_layout\\\"], \\\"endBody\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_endBody\\\"], \\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"], ...]\"},{\"objectClass\":\"__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\storage\\\\runtime\\\\compiled_templates\\\\c8\\\\c8eaa48f1bd44edfaf45ea6edf82b81a7a33de14ccaa17efcebb8ddae257a4f8.php\",\"line\":47,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"layout\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_layout\\\"], \\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"], \\\"footer\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_footer\\\"]]\"},{\"objectClass\":\"__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":407,\"class\":\"__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"layout\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_layout\\\"], \\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"], \\\"footer\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_footer\\\"]]\"},{\"objectClass\":\"__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"layout\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_layout\\\"], \\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"], \\\"footer\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_footer\\\"]]\"},{\"objectClass\":\"__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\storage\\\\runtime\\\\compiled_templates\\\\2e\\\\2ea55451098ca6d7418ffd603f7d05bb11953d687ff02e4fecdea5222e43e954.php\",\"line\":49,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":407,\"class\":\"__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":392,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\TemplateWrapper.php\",\"line\":45,\"class\":\"Twig\\\\Template\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], []\"},{\"objectClass\":\"Twig\\\\TemplateWrapper\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Environment.php\",\"line\":318,\"class\":\"Twig\\\\TemplateWrapper\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\Environment\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\View.php\",\"line\":344,\"class\":\"Twig\\\\Environment\",\"method\":\"render\",\"args\":\"\\\"_pages/research/research.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\View.php\",\"line\":393,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderTemplate\",\"args\":\"\\\"_pages/research/research.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Controller.php\",\"line\":243,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderPageTemplate\",\"args\":\"\\\"_pages/research/research.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\controllers\\\\TemplatesController.php\",\"line\":101,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"renderTemplate\",\"args\":\"\\\"_pages/research/research.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":null,\"line\":null,\"class\":\"craft\\\\controllers\\\\TemplatesController\",\"method\":\"actionRender\",\"args\":\"\\\"_pages/research/research.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":null,\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\InlineAction.php\",\"line\":57,\"class\":null,\"method\":\"call_user_func_array\",\"args\":\"[craft\\\\controllers\\\\TemplatesController, \\\"actionRender\\\"], [\\\"_pages/research/research.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"yii\\\\base\\\\InlineAction\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Controller.php\",\"line\":157,\"class\":\"yii\\\\base\\\\InlineAction\",\"method\":\"runWithParams\",\"args\":\"[\\\"template\\\" => \\\"_pages/research/research.twig\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"research\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Controller.php\",\"line\":187,\"class\":\"yii\\\\base\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"_pages/research/research.twig\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"research\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Module.php\",\"line\":528,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"_pages/research/research.twig\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"research\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Application.php\",\"line\":299,\"class\":\"yii\\\\base\\\\Module\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"_pages/research/research.twig\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"research\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\yiisoft\\\\yii2\\\\web\\\\Application.php\",\"line\":103,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"_pages/research/research.twig\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"research\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Application.php\",\"line\":284,\"class\":\"yii\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Application.php\",\"line\":386,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\web\\\\index.php\",\"line\":21,\"class\":\"yii\\\\base\\\\Application\",\"method\":\"run\",\"args\":null}]', '2020-01-03 19:37:35', '2020-01-03 19:37:35', 'a330e6ca-a553-4bb0-8014-ef86cb3b36c2'),
(7, 'ElementQuery::getIterator()', 'C:\\wamp64\\www\\ixlab-craft\\templates\\_pages\\research\\research.twig:27', '2020-01-03 19:37:35', 'C:\\wamp64\\www\\ixlab-craft\\templates\\_pages\\research\\research.twig', 27, 'Looping through element queries directly has been deprecated. Use the all() function to fetch the query results before looping over them.', '[{\"objectClass\":\"craft\\\\services\\\\Deprecator\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\elements\\\\db\\\\ElementQuery.php\",\"line\":584,\"class\":\"craft\\\\services\\\\Deprecator\",\"method\":\"log\",\"args\":\"\\\"ElementQuery::getIterator()\\\", \\\"Looping through element queries directly has been deprecated. Us...\\\"\"},{\"objectClass\":\"craft\\\\elements\\\\db\\\\EntryQuery\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\storage\\\\runtime\\\\compiled_templates\\\\2e\\\\2ea55451098ca6d7418ffd603f7d05bb11953d687ff02e4fecdea5222e43e954.php\",\"line\":87,\"class\":\"craft\\\\elements\\\\db\\\\ElementQuery\",\"method\":\"getIterator\",\"args\":null},{\"objectClass\":\"__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":184,\"class\":\"__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71\",\"method\":\"block_content\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"head\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_head\\\"], \\\"layout\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_layout\\\"], \\\"endBody\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_endBody\\\"], \\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"], ...]\"},{\"objectClass\":\"__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\storage\\\\runtime\\\\compiled_templates\\\\c8\\\\c8eaa48f1bd44edfaf45ea6edf82b81a7a33de14ccaa17efcebb8ddae257a4f8.php\",\"line\":102,\"class\":\"Twig\\\\Template\",\"method\":\"displayBlock\",\"args\":\"\\\"content\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"head\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_head\\\"], \\\"layout\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_layout\\\"], \\\"endBody\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_endBody\\\"], \\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"], ...]\"},{\"objectClass\":\"__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":184,\"class\":\"__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e\",\"method\":\"block_layout\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"head\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_head\\\"], \\\"layout\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_layout\\\"], \\\"endBody\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_endBody\\\"], \\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"], ...]\"},{\"objectClass\":\"__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\storage\\\\runtime\\\\compiled_templates\\\\e3\\\\e34b38bdf339ee4fdc52971ed0ddd2715e509abc4fe22364ee07903ecedadf6c.php\",\"line\":98,\"class\":\"Twig\\\\Template\",\"method\":\"displayBlock\",\"args\":\"\\\"layout\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"head\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_head\\\"], \\\"layout\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_layout\\\"], \\\"endBody\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_endBody\\\"], \\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"], ...]\"},{\"objectClass\":\"__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":407,\"class\":\"__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"head\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_head\\\"], \\\"layout\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_layout\\\"], \\\"endBody\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_endBody\\\"], \\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"], ...]\"},{\"objectClass\":\"__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"head\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_head\\\"], \\\"layout\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_layout\\\"], \\\"endBody\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_endBody\\\"], \\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"], ...]\"},{\"objectClass\":\"__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\storage\\\\runtime\\\\compiled_templates\\\\c8\\\\c8eaa48f1bd44edfaf45ea6edf82b81a7a33de14ccaa17efcebb8ddae257a4f8.php\",\"line\":47,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"layout\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_layout\\\"], \\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"], \\\"footer\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_footer\\\"]]\"},{\"objectClass\":\"__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":407,\"class\":\"__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"layout\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_layout\\\"], \\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"], \\\"footer\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_footer\\\"]]\"},{\"objectClass\":\"__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"layout\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_layout\\\"], \\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"], \\\"footer\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_footer\\\"]]\"},{\"objectClass\":\"__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\storage\\\\runtime\\\\compiled_templates\\\\2e\\\\2ea55451098ca6d7418ffd603f7d05bb11953d687ff02e4fecdea5222e43e954.php\",\"line\":49,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":407,\"class\":\"__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":392,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\TemplateWrapper.php\",\"line\":45,\"class\":\"Twig\\\\Template\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], []\"},{\"objectClass\":\"Twig\\\\TemplateWrapper\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Environment.php\",\"line\":318,\"class\":\"Twig\\\\TemplateWrapper\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\Environment\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\View.php\",\"line\":344,\"class\":\"Twig\\\\Environment\",\"method\":\"render\",\"args\":\"\\\"_pages/research/research.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\View.php\",\"line\":393,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderTemplate\",\"args\":\"\\\"_pages/research/research.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Controller.php\",\"line\":243,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderPageTemplate\",\"args\":\"\\\"_pages/research/research.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\controllers\\\\TemplatesController.php\",\"line\":101,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"renderTemplate\",\"args\":\"\\\"_pages/research/research.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":null,\"line\":null,\"class\":\"craft\\\\controllers\\\\TemplatesController\",\"method\":\"actionRender\",\"args\":\"\\\"_pages/research/research.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":null,\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\InlineAction.php\",\"line\":57,\"class\":null,\"method\":\"call_user_func_array\",\"args\":\"[craft\\\\controllers\\\\TemplatesController, \\\"actionRender\\\"], [\\\"_pages/research/research.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"yii\\\\base\\\\InlineAction\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Controller.php\",\"line\":157,\"class\":\"yii\\\\base\\\\InlineAction\",\"method\":\"runWithParams\",\"args\":\"[\\\"template\\\" => \\\"_pages/research/research.twig\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"research\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Controller.php\",\"line\":187,\"class\":\"yii\\\\base\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"_pages/research/research.twig\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"research\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Module.php\",\"line\":528,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"_pages/research/research.twig\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"research\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Application.php\",\"line\":299,\"class\":\"yii\\\\base\\\\Module\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"_pages/research/research.twig\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"research\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\yiisoft\\\\yii2\\\\web\\\\Application.php\",\"line\":103,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"_pages/research/research.twig\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"research\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Application.php\",\"line\":284,\"class\":\"yii\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Application.php\",\"line\":386,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\web\\\\index.php\",\"line\":21,\"class\":\"yii\\\\base\\\\Application\",\"method\":\"run\",\"args\":null}]', '2020-01-03 19:37:35', '2020-01-03 19:37:35', 'b5a51276-ff58-446e-bbeb-e7e0ef7f2bba');
INSERT INTO `deprecationerrors` (`id`, `key`, `fingerprint`, `lastOccurrence`, `file`, `line`, `message`, `traces`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(16, 'ElementQuery::first()', 'C:\\wamp64\\www\\ixlab-craft\\templates\\_pages\\research\\research.twig:43', '2020-01-03 19:37:35', 'C:\\wamp64\\www\\ixlab-craft\\templates\\_pages\\research\\research.twig', 43, 'The first() function used to query for elements is now deprecated. Use one() instead.', '[{\"objectClass\":\"craft\\\\services\\\\Deprecator\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\elements\\\\db\\\\ElementQuery.php\",\"line\":1859,\"class\":\"craft\\\\services\\\\Deprecator\",\"method\":\"log\",\"args\":\"\\\"ElementQuery::first()\\\", \\\"The first() function used to query for elements is now deprecate...\\\"\"},{\"objectClass\":\"craft\\\\elements\\\\db\\\\CategoryQuery\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Extension\\\\CoreExtension.php\",\"line\":1495,\"class\":\"craft\\\\elements\\\\db\\\\ElementQuery\",\"method\":\"first\",\"args\":null},{\"objectClass\":null,\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\helpers\\\\Template.php\",\"line\":105,\"class\":null,\"method\":\"twig_get_attribute\",\"args\":\"craft\\\\web\\\\twig\\\\Environment, Twig\\\\Source, craft\\\\elements\\\\db\\\\CategoryQuery, \\\"first\\\", ...\"},{\"objectClass\":null,\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\storage\\\\runtime\\\\compiled_templates\\\\2e\\\\2ea55451098ca6d7418ffd603f7d05bb11953d687ff02e4fecdea5222e43e954.php\",\"line\":121,\"class\":\"craft\\\\helpers\\\\Template\",\"method\":\"attribute\",\"args\":\"craft\\\\web\\\\twig\\\\Environment, Twig\\\\Source, craft\\\\elements\\\\db\\\\CategoryQuery, \\\"first\\\", ...\"},{\"objectClass\":\"__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":184,\"class\":\"__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71\",\"method\":\"block_content\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"head\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_head\\\"], \\\"layout\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_layout\\\"], \\\"endBody\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_endBody\\\"], \\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"], ...]\"},{\"objectClass\":\"__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\storage\\\\runtime\\\\compiled_templates\\\\c8\\\\c8eaa48f1bd44edfaf45ea6edf82b81a7a33de14ccaa17efcebb8ddae257a4f8.php\",\"line\":102,\"class\":\"Twig\\\\Template\",\"method\":\"displayBlock\",\"args\":\"\\\"content\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"head\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_head\\\"], \\\"layout\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_layout\\\"], \\\"endBody\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_endBody\\\"], \\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"], ...]\"},{\"objectClass\":\"__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":184,\"class\":\"__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e\",\"method\":\"block_layout\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"head\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_head\\\"], \\\"layout\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_layout\\\"], \\\"endBody\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_endBody\\\"], \\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"], ...]\"},{\"objectClass\":\"__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\storage\\\\runtime\\\\compiled_templates\\\\e3\\\\e34b38bdf339ee4fdc52971ed0ddd2715e509abc4fe22364ee07903ecedadf6c.php\",\"line\":98,\"class\":\"Twig\\\\Template\",\"method\":\"displayBlock\",\"args\":\"\\\"layout\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"head\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_head\\\"], \\\"layout\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_layout\\\"], \\\"endBody\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_endBody\\\"], \\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"], ...]\"},{\"objectClass\":\"__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":407,\"class\":\"__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"head\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_head\\\"], \\\"layout\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_layout\\\"], \\\"endBody\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_endBody\\\"], \\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"], ...]\"},{\"objectClass\":\"__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"head\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_head\\\"], \\\"layout\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_layout\\\"], \\\"endBody\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_endBody\\\"], \\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"], ...]\"},{\"objectClass\":\"__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\storage\\\\runtime\\\\compiled_templates\\\\c8\\\\c8eaa48f1bd44edfaf45ea6edf82b81a7a33de14ccaa17efcebb8ddae257a4f8.php\",\"line\":47,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"layout\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_layout\\\"], \\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"], \\\"footer\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_footer\\\"]]\"},{\"objectClass\":\"__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":407,\"class\":\"__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"layout\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_layout\\\"], \\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"], \\\"footer\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_footer\\\"]]\"},{\"objectClass\":\"__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"layout\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_layout\\\"], \\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"], \\\"footer\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_footer\\\"]]\"},{\"objectClass\":\"__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\storage\\\\runtime\\\\compiled_templates\\\\2e\\\\2ea55451098ca6d7418ffd603f7d05bb11953d687ff02e4fecdea5222e43e954.php\",\"line\":49,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":407,\"class\":\"__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":392,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\TemplateWrapper.php\",\"line\":45,\"class\":\"Twig\\\\Template\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], []\"},{\"objectClass\":\"Twig\\\\TemplateWrapper\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Environment.php\",\"line\":318,\"class\":\"Twig\\\\TemplateWrapper\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\Environment\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\View.php\",\"line\":344,\"class\":\"Twig\\\\Environment\",\"method\":\"render\",\"args\":\"\\\"_pages/research/research.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\View.php\",\"line\":393,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderTemplate\",\"args\":\"\\\"_pages/research/research.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Controller.php\",\"line\":243,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderPageTemplate\",\"args\":\"\\\"_pages/research/research.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\controllers\\\\TemplatesController.php\",\"line\":101,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"renderTemplate\",\"args\":\"\\\"_pages/research/research.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":null,\"line\":null,\"class\":\"craft\\\\controllers\\\\TemplatesController\",\"method\":\"actionRender\",\"args\":\"\\\"_pages/research/research.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":null,\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\InlineAction.php\",\"line\":57,\"class\":null,\"method\":\"call_user_func_array\",\"args\":\"[craft\\\\controllers\\\\TemplatesController, \\\"actionRender\\\"], [\\\"_pages/research/research.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"yii\\\\base\\\\InlineAction\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Controller.php\",\"line\":157,\"class\":\"yii\\\\base\\\\InlineAction\",\"method\":\"runWithParams\",\"args\":\"[\\\"template\\\" => \\\"_pages/research/research.twig\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"research\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Controller.php\",\"line\":187,\"class\":\"yii\\\\base\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"_pages/research/research.twig\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"research\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Module.php\",\"line\":528,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"_pages/research/research.twig\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"research\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Application.php\",\"line\":299,\"class\":\"yii\\\\base\\\\Module\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"_pages/research/research.twig\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"research\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\yiisoft\\\\yii2\\\\web\\\\Application.php\",\"line\":103,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"_pages/research/research.twig\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"research\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Application.php\",\"line\":284,\"class\":\"yii\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Application.php\",\"line\":386,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\web\\\\index.php\",\"line\":21,\"class\":\"yii\\\\base\\\\Application\",\"method\":\"run\",\"args\":null}]', '2020-01-03 19:37:35', '2020-01-03 19:37:35', 'a4dd4c8b-0745-4251-9fe8-fe5bec25ec5c'),
(21, 'ElementQuery::first()', 'C:\\wamp64\\www\\ixlab-craft\\templates\\_pages\\research\\research.twig:24', '2020-01-07 23:00:51', 'C:\\wamp64\\www\\ixlab-craft\\templates\\_pages\\research\\research.twig', 24, 'The first() function used to query for elements is now deprecated. Use one() instead.', '[{\"objectClass\":\"craft\\\\services\\\\Deprecator\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\elements\\\\db\\\\ElementQuery.php\",\"line\":1859,\"class\":\"craft\\\\services\\\\Deprecator\",\"method\":\"log\",\"args\":\"\\\"ElementQuery::first()\\\", \\\"The first() function used to query for elements is now deprecate...\\\"\"},{\"objectClass\":\"craft\\\\elements\\\\db\\\\CategoryQuery\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Extension\\\\CoreExtension.php\",\"line\":1495,\"class\":\"craft\\\\elements\\\\db\\\\ElementQuery\",\"method\":\"first\",\"args\":null},{\"objectClass\":null,\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\helpers\\\\Template.php\",\"line\":105,\"class\":null,\"method\":\"twig_get_attribute\",\"args\":\"craft\\\\web\\\\twig\\\\Environment, Twig\\\\Source, craft\\\\elements\\\\db\\\\CategoryQuery, \\\"first\\\", ...\"},{\"objectClass\":null,\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\storage\\\\runtime\\\\compiled_templates\\\\c0\\\\c0ef69691797e300c2b715b057ccc0ccbdf6a45de1175bcad35ae64f4a462b04.php\",\"line\":79,\"class\":\"craft\\\\helpers\\\\Template\",\"method\":\"attribute\",\"args\":\"craft\\\\web\\\\twig\\\\Environment, Twig\\\\Source, craft\\\\elements\\\\db\\\\CategoryQuery, \\\"first\\\", ...\"},{\"objectClass\":\"__TwigTemplate_f4b3ef1b6bdfdbe0a5d6d7e91ff758f898ae23a8dc2b29e16e16bb053f51e1bb\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":184,\"class\":\"__TwigTemplate_f4b3ef1b6bdfdbe0a5d6d7e91ff758f898ae23a8dc2b29e16e16bb053f51e1bb\",\"method\":\"block_content\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"head\\\" => [__TwigTemplate_32d26abe0884e0208e1c7f259122177bdd6dfc2bc4ebcfe5ed54a5e4f57dbfa5, \\\"block_head\\\"], \\\"layout\\\" => [__TwigTemplate_3d4ac0307fd017002f079ba377852933a22bcad8dc7dcedda259766a8224434e, \\\"block_layout\\\"], \\\"endBody\\\" => [__TwigTemplate_32d26abe0884e0208e1c7f259122177bdd6dfc2bc4ebcfe5ed54a5e4f57dbfa5, \\\"block_endBody\\\"], \\\"content\\\" => [__TwigTemplate_f4b3ef1b6bdfdbe0a5d6d7e91ff758f898ae23a8dc2b29e16e16bb053f51e1bb, \\\"block_content\\\"], ...]\"},{\"objectClass\":\"__TwigTemplate_3d4ac0307fd017002f079ba377852933a22bcad8dc7dcedda259766a8224434e\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\storage\\\\runtime\\\\compiled_templates\\\\4e\\\\4e17c1f3465c2762bf8ac0c5be595ee75a27cececc50580b8aa64757c4d2df2e.php\",\"line\":105,\"class\":\"Twig\\\\Template\",\"method\":\"displayBlock\",\"args\":\"\\\"content\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"head\\\" => [__TwigTemplate_32d26abe0884e0208e1c7f259122177bdd6dfc2bc4ebcfe5ed54a5e4f57dbfa5, \\\"block_head\\\"], \\\"layout\\\" => [__TwigTemplate_3d4ac0307fd017002f079ba377852933a22bcad8dc7dcedda259766a8224434e, \\\"block_layout\\\"], \\\"endBody\\\" => [__TwigTemplate_32d26abe0884e0208e1c7f259122177bdd6dfc2bc4ebcfe5ed54a5e4f57dbfa5, \\\"block_endBody\\\"], \\\"content\\\" => [__TwigTemplate_f4b3ef1b6bdfdbe0a5d6d7e91ff758f898ae23a8dc2b29e16e16bb053f51e1bb, \\\"block_content\\\"], ...]\"},{\"objectClass\":\"__TwigTemplate_3d4ac0307fd017002f079ba377852933a22bcad8dc7dcedda259766a8224434e\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":184,\"class\":\"__TwigTemplate_3d4ac0307fd017002f079ba377852933a22bcad8dc7dcedda259766a8224434e\",\"method\":\"block_layout\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"head\\\" => [__TwigTemplate_32d26abe0884e0208e1c7f259122177bdd6dfc2bc4ebcfe5ed54a5e4f57dbfa5, \\\"block_head\\\"], \\\"layout\\\" => [__TwigTemplate_3d4ac0307fd017002f079ba377852933a22bcad8dc7dcedda259766a8224434e, \\\"block_layout\\\"], \\\"endBody\\\" => [__TwigTemplate_32d26abe0884e0208e1c7f259122177bdd6dfc2bc4ebcfe5ed54a5e4f57dbfa5, \\\"block_endBody\\\"], \\\"content\\\" => [__TwigTemplate_f4b3ef1b6bdfdbe0a5d6d7e91ff758f898ae23a8dc2b29e16e16bb053f51e1bb, \\\"block_content\\\"], ...]\"},{\"objectClass\":\"__TwigTemplate_32d26abe0884e0208e1c7f259122177bdd6dfc2bc4ebcfe5ed54a5e4f57dbfa5\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\storage\\\\runtime\\\\compiled_templates\\\\f8\\\\f8e984799beca29a9ba7942df27ac50beb5bbc50db0074959fa7d5f48574f39a.php\",\"line\":98,\"class\":\"Twig\\\\Template\",\"method\":\"displayBlock\",\"args\":\"\\\"layout\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"head\\\" => [__TwigTemplate_32d26abe0884e0208e1c7f259122177bdd6dfc2bc4ebcfe5ed54a5e4f57dbfa5, \\\"block_head\\\"], \\\"layout\\\" => [__TwigTemplate_3d4ac0307fd017002f079ba377852933a22bcad8dc7dcedda259766a8224434e, \\\"block_layout\\\"], \\\"endBody\\\" => [__TwigTemplate_32d26abe0884e0208e1c7f259122177bdd6dfc2bc4ebcfe5ed54a5e4f57dbfa5, \\\"block_endBody\\\"], \\\"content\\\" => [__TwigTemplate_f4b3ef1b6bdfdbe0a5d6d7e91ff758f898ae23a8dc2b29e16e16bb053f51e1bb, \\\"block_content\\\"], ...]\"},{\"objectClass\":\"__TwigTemplate_32d26abe0884e0208e1c7f259122177bdd6dfc2bc4ebcfe5ed54a5e4f57dbfa5\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":407,\"class\":\"__TwigTemplate_32d26abe0884e0208e1c7f259122177bdd6dfc2bc4ebcfe5ed54a5e4f57dbfa5\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"head\\\" => [__TwigTemplate_32d26abe0884e0208e1c7f259122177bdd6dfc2bc4ebcfe5ed54a5e4f57dbfa5, \\\"block_head\\\"], \\\"layout\\\" => [__TwigTemplate_3d4ac0307fd017002f079ba377852933a22bcad8dc7dcedda259766a8224434e, \\\"block_layout\\\"], \\\"endBody\\\" => [__TwigTemplate_32d26abe0884e0208e1c7f259122177bdd6dfc2bc4ebcfe5ed54a5e4f57dbfa5, \\\"block_endBody\\\"], \\\"content\\\" => [__TwigTemplate_f4b3ef1b6bdfdbe0a5d6d7e91ff758f898ae23a8dc2b29e16e16bb053f51e1bb, \\\"block_content\\\"], ...]\"},{\"objectClass\":\"__TwigTemplate_32d26abe0884e0208e1c7f259122177bdd6dfc2bc4ebcfe5ed54a5e4f57dbfa5\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"head\\\" => [__TwigTemplate_32d26abe0884e0208e1c7f259122177bdd6dfc2bc4ebcfe5ed54a5e4f57dbfa5, \\\"block_head\\\"], \\\"layout\\\" => [__TwigTemplate_3d4ac0307fd017002f079ba377852933a22bcad8dc7dcedda259766a8224434e, \\\"block_layout\\\"], \\\"endBody\\\" => [__TwigTemplate_32d26abe0884e0208e1c7f259122177bdd6dfc2bc4ebcfe5ed54a5e4f57dbfa5, \\\"block_endBody\\\"], \\\"content\\\" => [__TwigTemplate_f4b3ef1b6bdfdbe0a5d6d7e91ff758f898ae23a8dc2b29e16e16bb053f51e1bb, \\\"block_content\\\"], ...]\"},{\"objectClass\":\"__TwigTemplate_32d26abe0884e0208e1c7f259122177bdd6dfc2bc4ebcfe5ed54a5e4f57dbfa5\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\storage\\\\runtime\\\\compiled_templates\\\\4e\\\\4e17c1f3465c2762bf8ac0c5be595ee75a27cececc50580b8aa64757c4d2df2e.php\",\"line\":47,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"layout\\\" => [__TwigTemplate_3d4ac0307fd017002f079ba377852933a22bcad8dc7dcedda259766a8224434e, \\\"block_layout\\\"], \\\"content\\\" => [__TwigTemplate_f4b3ef1b6bdfdbe0a5d6d7e91ff758f898ae23a8dc2b29e16e16bb053f51e1bb, \\\"block_content\\\"], \\\"footer\\\" => [__TwigTemplate_3d4ac0307fd017002f079ba377852933a22bcad8dc7dcedda259766a8224434e, \\\"block_footer\\\"]]\"},{\"objectClass\":\"__TwigTemplate_3d4ac0307fd017002f079ba377852933a22bcad8dc7dcedda259766a8224434e\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":407,\"class\":\"__TwigTemplate_3d4ac0307fd017002f079ba377852933a22bcad8dc7dcedda259766a8224434e\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"layout\\\" => [__TwigTemplate_3d4ac0307fd017002f079ba377852933a22bcad8dc7dcedda259766a8224434e, \\\"block_layout\\\"], \\\"content\\\" => [__TwigTemplate_f4b3ef1b6bdfdbe0a5d6d7e91ff758f898ae23a8dc2b29e16e16bb053f51e1bb, \\\"block_content\\\"], \\\"footer\\\" => [__TwigTemplate_3d4ac0307fd017002f079ba377852933a22bcad8dc7dcedda259766a8224434e, \\\"block_footer\\\"]]\"},{\"objectClass\":\"__TwigTemplate_3d4ac0307fd017002f079ba377852933a22bcad8dc7dcedda259766a8224434e\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"layout\\\" => [__TwigTemplate_3d4ac0307fd017002f079ba377852933a22bcad8dc7dcedda259766a8224434e, \\\"block_layout\\\"], \\\"content\\\" => [__TwigTemplate_f4b3ef1b6bdfdbe0a5d6d7e91ff758f898ae23a8dc2b29e16e16bb053f51e1bb, \\\"block_content\\\"], \\\"footer\\\" => [__TwigTemplate_3d4ac0307fd017002f079ba377852933a22bcad8dc7dcedda259766a8224434e, \\\"block_footer\\\"]]\"},{\"objectClass\":\"__TwigTemplate_3d4ac0307fd017002f079ba377852933a22bcad8dc7dcedda259766a8224434e\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\storage\\\\runtime\\\\compiled_templates\\\\c0\\\\c0ef69691797e300c2b715b057ccc0ccbdf6a45de1175bcad35ae64f4a462b04.php\",\"line\":49,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_f4b3ef1b6bdfdbe0a5d6d7e91ff758f898ae23a8dc2b29e16e16bb053f51e1bb, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_f4b3ef1b6bdfdbe0a5d6d7e91ff758f898ae23a8dc2b29e16e16bb053f51e1bb\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":407,\"class\":\"__TwigTemplate_f4b3ef1b6bdfdbe0a5d6d7e91ff758f898ae23a8dc2b29e16e16bb053f51e1bb\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_f4b3ef1b6bdfdbe0a5d6d7e91ff758f898ae23a8dc2b29e16e16bb053f51e1bb, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_f4b3ef1b6bdfdbe0a5d6d7e91ff758f898ae23a8dc2b29e16e16bb053f51e1bb\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_f4b3ef1b6bdfdbe0a5d6d7e91ff758f898ae23a8dc2b29e16e16bb053f51e1bb, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_f4b3ef1b6bdfdbe0a5d6d7e91ff758f898ae23a8dc2b29e16e16bb053f51e1bb\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":392,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"__TwigTemplate_f4b3ef1b6bdfdbe0a5d6d7e91ff758f898ae23a8dc2b29e16e16bb053f51e1bb\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\TemplateWrapper.php\",\"line\":45,\"class\":\"Twig\\\\Template\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], []\"},{\"objectClass\":\"Twig\\\\TemplateWrapper\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Environment.php\",\"line\":318,\"class\":\"Twig\\\\TemplateWrapper\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\Environment\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\View.php\",\"line\":344,\"class\":\"Twig\\\\Environment\",\"method\":\"render\",\"args\":\"\\\"_pages/research/research.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\View.php\",\"line\":393,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderTemplate\",\"args\":\"\\\"_pages/research/research.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Controller.php\",\"line\":243,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderPageTemplate\",\"args\":\"\\\"_pages/research/research.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\controllers\\\\TemplatesController.php\",\"line\":101,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"renderTemplate\",\"args\":\"\\\"_pages/research/research.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":null,\"line\":null,\"class\":\"craft\\\\controllers\\\\TemplatesController\",\"method\":\"actionRender\",\"args\":\"\\\"_pages/research/research.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":null,\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\InlineAction.php\",\"line\":57,\"class\":null,\"method\":\"call_user_func_array\",\"args\":\"[craft\\\\controllers\\\\TemplatesController, \\\"actionRender\\\"], [\\\"_pages/research/research.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"yii\\\\base\\\\InlineAction\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Controller.php\",\"line\":157,\"class\":\"yii\\\\base\\\\InlineAction\",\"method\":\"runWithParams\",\"args\":\"[\\\"template\\\" => \\\"_pages/research/research.twig\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"research\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Controller.php\",\"line\":187,\"class\":\"yii\\\\base\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"_pages/research/research.twig\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"research\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Module.php\",\"line\":528,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"_pages/research/research.twig\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"research\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Application.php\",\"line\":299,\"class\":\"yii\\\\base\\\\Module\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"_pages/research/research.twig\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"research\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\yiisoft\\\\yii2\\\\web\\\\Application.php\",\"line\":103,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"_pages/research/research.twig\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"research\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Application.php\",\"line\":284,\"class\":\"yii\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Application.php\",\"line\":386,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\web\\\\index.php\",\"line\":21,\"class\":\"yii\\\\base\\\\Application\",\"method\":\"run\",\"args\":null}]', '2020-01-07 23:00:51', '2020-01-07 23:00:51', 'ee159a8d-4283-4a9a-aa70-ab7cab04bb3f');
INSERT INTO `deprecationerrors` (`id`, `key`, `fingerprint`, `lastOccurrence`, `file`, `line`, `message`, `traces`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(22, 'ElementQuery::getIterator()', 'C:\\wamp64\\www\\ixlab-craft\\templates\\_pages\\research\\research.twig:26', '2020-01-03 19:51:51', 'C:\\wamp64\\www\\ixlab-craft\\templates\\_pages\\research\\research.twig', 26, 'Looping through element queries directly has been deprecated. Use the all() function to fetch the query results before looping over them.', '[{\"objectClass\":\"craft\\\\services\\\\Deprecator\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\elements\\\\db\\\\ElementQuery.php\",\"line\":584,\"class\":\"craft\\\\services\\\\Deprecator\",\"method\":\"log\",\"args\":\"\\\"ElementQuery::getIterator()\\\", \\\"Looping through element queries directly has been deprecated. Us...\\\"\"},{\"objectClass\":\"craft\\\\elements\\\\db\\\\EntryQuery\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\storage\\\\runtime\\\\compiled_templates\\\\2e\\\\2ea55451098ca6d7418ffd603f7d05bb11953d687ff02e4fecdea5222e43e954.php\",\"line\":88,\"class\":\"craft\\\\elements\\\\db\\\\ElementQuery\",\"method\":\"getIterator\",\"args\":null},{\"objectClass\":\"__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":184,\"class\":\"__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71\",\"method\":\"block_content\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"head\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_head\\\"], \\\"layout\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_layout\\\"], \\\"endBody\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_endBody\\\"], \\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"], ...]\"},{\"objectClass\":\"__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\storage\\\\runtime\\\\compiled_templates\\\\c8\\\\c8eaa48f1bd44edfaf45ea6edf82b81a7a33de14ccaa17efcebb8ddae257a4f8.php\",\"line\":102,\"class\":\"Twig\\\\Template\",\"method\":\"displayBlock\",\"args\":\"\\\"content\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"head\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_head\\\"], \\\"layout\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_layout\\\"], \\\"endBody\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_endBody\\\"], \\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"], ...]\"},{\"objectClass\":\"__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":184,\"class\":\"__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e\",\"method\":\"block_layout\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"head\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_head\\\"], \\\"layout\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_layout\\\"], \\\"endBody\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_endBody\\\"], \\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"], ...]\"},{\"objectClass\":\"__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\storage\\\\runtime\\\\compiled_templates\\\\e3\\\\e34b38bdf339ee4fdc52971ed0ddd2715e509abc4fe22364ee07903ecedadf6c.php\",\"line\":98,\"class\":\"Twig\\\\Template\",\"method\":\"displayBlock\",\"args\":\"\\\"layout\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"head\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_head\\\"], \\\"layout\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_layout\\\"], \\\"endBody\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_endBody\\\"], \\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"], ...]\"},{\"objectClass\":\"__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":407,\"class\":\"__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"head\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_head\\\"], \\\"layout\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_layout\\\"], \\\"endBody\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_endBody\\\"], \\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"], ...]\"},{\"objectClass\":\"__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"head\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_head\\\"], \\\"layout\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_layout\\\"], \\\"endBody\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_endBody\\\"], \\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"], ...]\"},{\"objectClass\":\"__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\storage\\\\runtime\\\\compiled_templates\\\\c8\\\\c8eaa48f1bd44edfaf45ea6edf82b81a7a33de14ccaa17efcebb8ddae257a4f8.php\",\"line\":47,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"layout\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_layout\\\"], \\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"], \\\"footer\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_footer\\\"]]\"},{\"objectClass\":\"__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":407,\"class\":\"__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"layout\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_layout\\\"], \\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"], \\\"footer\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_footer\\\"]]\"},{\"objectClass\":\"__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"layout\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_layout\\\"], \\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"], \\\"footer\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_footer\\\"]]\"},{\"objectClass\":\"__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\storage\\\\runtime\\\\compiled_templates\\\\2e\\\\2ea55451098ca6d7418ffd603f7d05bb11953d687ff02e4fecdea5222e43e954.php\",\"line\":49,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":407,\"class\":\"__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":392,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\TemplateWrapper.php\",\"line\":45,\"class\":\"Twig\\\\Template\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], []\"},{\"objectClass\":\"Twig\\\\TemplateWrapper\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Environment.php\",\"line\":318,\"class\":\"Twig\\\\TemplateWrapper\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\Environment\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\View.php\",\"line\":344,\"class\":\"Twig\\\\Environment\",\"method\":\"render\",\"args\":\"\\\"_pages/research/research.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\View.php\",\"line\":393,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderTemplate\",\"args\":\"\\\"_pages/research/research.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Controller.php\",\"line\":243,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderPageTemplate\",\"args\":\"\\\"_pages/research/research.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\controllers\\\\TemplatesController.php\",\"line\":101,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"renderTemplate\",\"args\":\"\\\"_pages/research/research.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":null,\"line\":null,\"class\":\"craft\\\\controllers\\\\TemplatesController\",\"method\":\"actionRender\",\"args\":\"\\\"_pages/research/research.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":null,\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\InlineAction.php\",\"line\":57,\"class\":null,\"method\":\"call_user_func_array\",\"args\":\"[craft\\\\controllers\\\\TemplatesController, \\\"actionRender\\\"], [\\\"_pages/research/research.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"yii\\\\base\\\\InlineAction\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Controller.php\",\"line\":157,\"class\":\"yii\\\\base\\\\InlineAction\",\"method\":\"runWithParams\",\"args\":\"[\\\"template\\\" => \\\"_pages/research/research.twig\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"research\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Controller.php\",\"line\":187,\"class\":\"yii\\\\base\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"_pages/research/research.twig\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"research\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Module.php\",\"line\":528,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"_pages/research/research.twig\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"research\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Application.php\",\"line\":299,\"class\":\"yii\\\\base\\\\Module\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"_pages/research/research.twig\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"research\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\yiisoft\\\\yii2\\\\web\\\\Application.php\",\"line\":103,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"_pages/research/research.twig\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"research\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Application.php\",\"line\":284,\"class\":\"yii\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Application.php\",\"line\":386,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\web\\\\index.php\",\"line\":21,\"class\":\"yii\\\\base\\\\Application\",\"method\":\"run\",\"args\":null}]', '2020-01-03 19:51:51', '2020-01-03 19:51:51', '44c3a8e1-bc62-4dc8-b076-0824f2d1d80a'),
(23, 'ElementQuery::first()', 'C:\\wamp64\\www\\ixlab-craft\\templates\\_pages\\research\\research.twig:42', '2020-01-03 19:51:52', 'C:\\wamp64\\www\\ixlab-craft\\templates\\_pages\\research\\research.twig', 42, 'The first() function used to query for elements is now deprecated. Use one() instead.', '[{\"objectClass\":\"craft\\\\services\\\\Deprecator\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\elements\\\\db\\\\ElementQuery.php\",\"line\":1859,\"class\":\"craft\\\\services\\\\Deprecator\",\"method\":\"log\",\"args\":\"\\\"ElementQuery::first()\\\", \\\"The first() function used to query for elements is now deprecate...\\\"\"},{\"objectClass\":\"craft\\\\elements\\\\db\\\\CategoryQuery\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Extension\\\\CoreExtension.php\",\"line\":1495,\"class\":\"craft\\\\elements\\\\db\\\\ElementQuery\",\"method\":\"first\",\"args\":null},{\"objectClass\":null,\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\helpers\\\\Template.php\",\"line\":105,\"class\":null,\"method\":\"twig_get_attribute\",\"args\":\"craft\\\\web\\\\twig\\\\Environment, Twig\\\\Source, craft\\\\elements\\\\db\\\\CategoryQuery, \\\"first\\\", ...\"},{\"objectClass\":null,\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\storage\\\\runtime\\\\compiled_templates\\\\2e\\\\2ea55451098ca6d7418ffd603f7d05bb11953d687ff02e4fecdea5222e43e954.php\",\"line\":122,\"class\":\"craft\\\\helpers\\\\Template\",\"method\":\"attribute\",\"args\":\"craft\\\\web\\\\twig\\\\Environment, Twig\\\\Source, craft\\\\elements\\\\db\\\\CategoryQuery, \\\"first\\\", ...\"},{\"objectClass\":\"__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":184,\"class\":\"__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71\",\"method\":\"block_content\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"head\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_head\\\"], \\\"layout\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_layout\\\"], \\\"endBody\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_endBody\\\"], \\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"], ...]\"},{\"objectClass\":\"__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\storage\\\\runtime\\\\compiled_templates\\\\c8\\\\c8eaa48f1bd44edfaf45ea6edf82b81a7a33de14ccaa17efcebb8ddae257a4f8.php\",\"line\":102,\"class\":\"Twig\\\\Template\",\"method\":\"displayBlock\",\"args\":\"\\\"content\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"head\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_head\\\"], \\\"layout\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_layout\\\"], \\\"endBody\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_endBody\\\"], \\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"], ...]\"},{\"objectClass\":\"__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":184,\"class\":\"__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e\",\"method\":\"block_layout\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"head\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_head\\\"], \\\"layout\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_layout\\\"], \\\"endBody\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_endBody\\\"], \\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"], ...]\"},{\"objectClass\":\"__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\storage\\\\runtime\\\\compiled_templates\\\\e3\\\\e34b38bdf339ee4fdc52971ed0ddd2715e509abc4fe22364ee07903ecedadf6c.php\",\"line\":98,\"class\":\"Twig\\\\Template\",\"method\":\"displayBlock\",\"args\":\"\\\"layout\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"head\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_head\\\"], \\\"layout\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_layout\\\"], \\\"endBody\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_endBody\\\"], \\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"], ...]\"},{\"objectClass\":\"__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":407,\"class\":\"__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"head\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_head\\\"], \\\"layout\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_layout\\\"], \\\"endBody\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_endBody\\\"], \\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"], ...]\"},{\"objectClass\":\"__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"head\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_head\\\"], \\\"layout\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_layout\\\"], \\\"endBody\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_endBody\\\"], \\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"], ...]\"},{\"objectClass\":\"__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\storage\\\\runtime\\\\compiled_templates\\\\c8\\\\c8eaa48f1bd44edfaf45ea6edf82b81a7a33de14ccaa17efcebb8ddae257a4f8.php\",\"line\":47,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"layout\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_layout\\\"], \\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"], \\\"footer\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_footer\\\"]]\"},{\"objectClass\":\"__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":407,\"class\":\"__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"layout\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_layout\\\"], \\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"], \\\"footer\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_footer\\\"]]\"},{\"objectClass\":\"__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"layout\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_layout\\\"], \\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"], \\\"footer\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_footer\\\"]]\"},{\"objectClass\":\"__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\storage\\\\runtime\\\\compiled_templates\\\\2e\\\\2ea55451098ca6d7418ffd603f7d05bb11953d687ff02e4fecdea5222e43e954.php\",\"line\":49,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":407,\"class\":\"__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":392,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\TemplateWrapper.php\",\"line\":45,\"class\":\"Twig\\\\Template\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], []\"},{\"objectClass\":\"Twig\\\\TemplateWrapper\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Environment.php\",\"line\":318,\"class\":\"Twig\\\\TemplateWrapper\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\Environment\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\View.php\",\"line\":344,\"class\":\"Twig\\\\Environment\",\"method\":\"render\",\"args\":\"\\\"_pages/research/research.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\View.php\",\"line\":393,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderTemplate\",\"args\":\"\\\"_pages/research/research.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Controller.php\",\"line\":243,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderPageTemplate\",\"args\":\"\\\"_pages/research/research.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\controllers\\\\TemplatesController.php\",\"line\":101,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"renderTemplate\",\"args\":\"\\\"_pages/research/research.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":null,\"line\":null,\"class\":\"craft\\\\controllers\\\\TemplatesController\",\"method\":\"actionRender\",\"args\":\"\\\"_pages/research/research.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":null,\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\InlineAction.php\",\"line\":57,\"class\":null,\"method\":\"call_user_func_array\",\"args\":\"[craft\\\\controllers\\\\TemplatesController, \\\"actionRender\\\"], [\\\"_pages/research/research.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"yii\\\\base\\\\InlineAction\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Controller.php\",\"line\":157,\"class\":\"yii\\\\base\\\\InlineAction\",\"method\":\"runWithParams\",\"args\":\"[\\\"template\\\" => \\\"_pages/research/research.twig\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"research\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Controller.php\",\"line\":187,\"class\":\"yii\\\\base\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"_pages/research/research.twig\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"research\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Module.php\",\"line\":528,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"_pages/research/research.twig\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"research\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Application.php\",\"line\":299,\"class\":\"yii\\\\base\\\\Module\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"_pages/research/research.twig\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"research\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\yiisoft\\\\yii2\\\\web\\\\Application.php\",\"line\":103,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"_pages/research/research.twig\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"research\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Application.php\",\"line\":284,\"class\":\"yii\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Application.php\",\"line\":386,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\web\\\\index.php\",\"line\":21,\"class\":\"yii\\\\base\\\\Application\",\"method\":\"run\",\"args\":null}]', '2020-01-03 19:51:52', '2020-01-03 19:51:52', 'd5e255f6-2ee9-4d5f-a805-b3e2857e5d56');
INSERT INTO `deprecationerrors` (`id`, `key`, `fingerprint`, `lastOccurrence`, `file`, `line`, `message`, `traces`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(24, 'ElementQuery::first()', 'C:\\wamp64\\www\\ixlab-craft\\templates\\_pages\\research\\research.twig:23', '2020-01-03 19:41:00', 'C:\\wamp64\\www\\ixlab-craft\\templates\\_pages\\research\\research.twig', 23, 'The first() function used to query for elements is now deprecated. Use one() instead.', '[{\"objectClass\":\"craft\\\\services\\\\Deprecator\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\elements\\\\db\\\\ElementQuery.php\",\"line\":1859,\"class\":\"craft\\\\services\\\\Deprecator\",\"method\":\"log\",\"args\":\"\\\"ElementQuery::first()\\\", \\\"The first() function used to query for elements is now deprecate...\\\"\"},{\"objectClass\":\"craft\\\\elements\\\\db\\\\CategoryQuery\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Extension\\\\CoreExtension.php\",\"line\":1495,\"class\":\"craft\\\\elements\\\\db\\\\ElementQuery\",\"method\":\"first\",\"args\":null},{\"objectClass\":null,\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\helpers\\\\Template.php\",\"line\":105,\"class\":null,\"method\":\"twig_get_attribute\",\"args\":\"craft\\\\web\\\\twig\\\\Environment, Twig\\\\Source, craft\\\\elements\\\\db\\\\CategoryQuery, \\\"first\\\", ...\"},{\"objectClass\":null,\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\storage\\\\runtime\\\\compiled_templates\\\\2e\\\\2ea55451098ca6d7418ffd603f7d05bb11953d687ff02e4fecdea5222e43e954.php\",\"line\":76,\"class\":\"craft\\\\helpers\\\\Template\",\"method\":\"attribute\",\"args\":\"craft\\\\web\\\\twig\\\\Environment, Twig\\\\Source, craft\\\\elements\\\\db\\\\CategoryQuery, \\\"first\\\", ...\"},{\"objectClass\":\"__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":184,\"class\":\"__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71\",\"method\":\"block_content\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"head\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_head\\\"], \\\"layout\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_layout\\\"], \\\"endBody\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_endBody\\\"], \\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"], ...]\"},{\"objectClass\":\"__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\storage\\\\runtime\\\\compiled_templates\\\\c8\\\\c8eaa48f1bd44edfaf45ea6edf82b81a7a33de14ccaa17efcebb8ddae257a4f8.php\",\"line\":102,\"class\":\"Twig\\\\Template\",\"method\":\"displayBlock\",\"args\":\"\\\"content\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"head\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_head\\\"], \\\"layout\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_layout\\\"], \\\"endBody\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_endBody\\\"], \\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"], ...]\"},{\"objectClass\":\"__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":184,\"class\":\"__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e\",\"method\":\"block_layout\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"head\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_head\\\"], \\\"layout\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_layout\\\"], \\\"endBody\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_endBody\\\"], \\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"], ...]\"},{\"objectClass\":\"__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\storage\\\\runtime\\\\compiled_templates\\\\e3\\\\e34b38bdf339ee4fdc52971ed0ddd2715e509abc4fe22364ee07903ecedadf6c.php\",\"line\":98,\"class\":\"Twig\\\\Template\",\"method\":\"displayBlock\",\"args\":\"\\\"layout\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"head\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_head\\\"], \\\"layout\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_layout\\\"], \\\"endBody\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_endBody\\\"], \\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"], ...]\"},{\"objectClass\":\"__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":407,\"class\":\"__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"head\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_head\\\"], \\\"layout\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_layout\\\"], \\\"endBody\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_endBody\\\"], \\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"], ...]\"},{\"objectClass\":\"__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"head\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_head\\\"], \\\"layout\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_layout\\\"], \\\"endBody\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_endBody\\\"], \\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"], ...]\"},{\"objectClass\":\"__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\storage\\\\runtime\\\\compiled_templates\\\\c8\\\\c8eaa48f1bd44edfaf45ea6edf82b81a7a33de14ccaa17efcebb8ddae257a4f8.php\",\"line\":47,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"layout\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_layout\\\"], \\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"], \\\"footer\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_footer\\\"]]\"},{\"objectClass\":\"__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":407,\"class\":\"__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"layout\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_layout\\\"], \\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"], \\\"footer\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_footer\\\"]]\"},{\"objectClass\":\"__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"layout\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_layout\\\"], \\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"], \\\"footer\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_footer\\\"]]\"},{\"objectClass\":\"__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\storage\\\\runtime\\\\compiled_templates\\\\2e\\\\2ea55451098ca6d7418ffd603f7d05bb11953d687ff02e4fecdea5222e43e954.php\",\"line\":49,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":407,\"class\":\"__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":392,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\TemplateWrapper.php\",\"line\":45,\"class\":\"Twig\\\\Template\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], []\"},{\"objectClass\":\"Twig\\\\TemplateWrapper\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Environment.php\",\"line\":318,\"class\":\"Twig\\\\TemplateWrapper\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\Environment\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\View.php\",\"line\":344,\"class\":\"Twig\\\\Environment\",\"method\":\"render\",\"args\":\"\\\"_pages/research/research.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\View.php\",\"line\":393,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderTemplate\",\"args\":\"\\\"_pages/research/research.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Controller.php\",\"line\":243,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderPageTemplate\",\"args\":\"\\\"_pages/research/research.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\controllers\\\\TemplatesController.php\",\"line\":101,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"renderTemplate\",\"args\":\"\\\"_pages/research/research.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":null,\"line\":null,\"class\":\"craft\\\\controllers\\\\TemplatesController\",\"method\":\"actionRender\",\"args\":\"\\\"_pages/research/research.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":null,\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\InlineAction.php\",\"line\":57,\"class\":null,\"method\":\"call_user_func_array\",\"args\":\"[craft\\\\controllers\\\\TemplatesController, \\\"actionRender\\\"], [\\\"_pages/research/research.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"yii\\\\base\\\\InlineAction\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Controller.php\",\"line\":157,\"class\":\"yii\\\\base\\\\InlineAction\",\"method\":\"runWithParams\",\"args\":\"[\\\"template\\\" => \\\"_pages/research/research.twig\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"research\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Controller.php\",\"line\":187,\"class\":\"yii\\\\base\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"_pages/research/research.twig\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"research\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Module.php\",\"line\":528,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"_pages/research/research.twig\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"research\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Application.php\",\"line\":299,\"class\":\"yii\\\\base\\\\Module\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"_pages/research/research.twig\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"research\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\yiisoft\\\\yii2\\\\web\\\\Application.php\",\"line\":103,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"_pages/research/research.twig\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"research\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Application.php\",\"line\":284,\"class\":\"yii\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Application.php\",\"line\":386,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\web\\\\index.php\",\"line\":21,\"class\":\"yii\\\\base\\\\Application\",\"method\":\"run\",\"args\":null}]', '2020-01-03 19:41:00', '2020-01-03 19:41:00', 'e64318cc-c4c2-42f1-a0fa-ef01671a74a6'),
(25, 'ElementQuery::getIterator()', 'C:\\wamp64\\www\\ixlab-craft\\templates\\_pages\\research\\research.twig:25', '2020-01-07 23:00:51', 'C:\\wamp64\\www\\ixlab-craft\\templates\\_pages\\research\\research.twig', 25, 'Looping through element queries directly has been deprecated. Use the all() function to fetch the query results before looping over them.', '[{\"objectClass\":\"craft\\\\services\\\\Deprecator\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\elements\\\\db\\\\ElementQuery.php\",\"line\":584,\"class\":\"craft\\\\services\\\\Deprecator\",\"method\":\"log\",\"args\":\"\\\"ElementQuery::getIterator()\\\", \\\"Looping through element queries directly has been deprecated. Us...\\\"\"},{\"objectClass\":\"craft\\\\elements\\\\db\\\\EntryQuery\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\storage\\\\runtime\\\\compiled_templates\\\\c0\\\\c0ef69691797e300c2b715b057ccc0ccbdf6a45de1175bcad35ae64f4a462b04.php\",\"line\":84,\"class\":\"craft\\\\elements\\\\db\\\\ElementQuery\",\"method\":\"getIterator\",\"args\":null},{\"objectClass\":\"__TwigTemplate_f4b3ef1b6bdfdbe0a5d6d7e91ff758f898ae23a8dc2b29e16e16bb053f51e1bb\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":184,\"class\":\"__TwigTemplate_f4b3ef1b6bdfdbe0a5d6d7e91ff758f898ae23a8dc2b29e16e16bb053f51e1bb\",\"method\":\"block_content\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"head\\\" => [__TwigTemplate_32d26abe0884e0208e1c7f259122177bdd6dfc2bc4ebcfe5ed54a5e4f57dbfa5, \\\"block_head\\\"], \\\"layout\\\" => [__TwigTemplate_3d4ac0307fd017002f079ba377852933a22bcad8dc7dcedda259766a8224434e, \\\"block_layout\\\"], \\\"endBody\\\" => [__TwigTemplate_32d26abe0884e0208e1c7f259122177bdd6dfc2bc4ebcfe5ed54a5e4f57dbfa5, \\\"block_endBody\\\"], \\\"content\\\" => [__TwigTemplate_f4b3ef1b6bdfdbe0a5d6d7e91ff758f898ae23a8dc2b29e16e16bb053f51e1bb, \\\"block_content\\\"], ...]\"},{\"objectClass\":\"__TwigTemplate_3d4ac0307fd017002f079ba377852933a22bcad8dc7dcedda259766a8224434e\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\storage\\\\runtime\\\\compiled_templates\\\\4e\\\\4e17c1f3465c2762bf8ac0c5be595ee75a27cececc50580b8aa64757c4d2df2e.php\",\"line\":105,\"class\":\"Twig\\\\Template\",\"method\":\"displayBlock\",\"args\":\"\\\"content\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"head\\\" => [__TwigTemplate_32d26abe0884e0208e1c7f259122177bdd6dfc2bc4ebcfe5ed54a5e4f57dbfa5, \\\"block_head\\\"], \\\"layout\\\" => [__TwigTemplate_3d4ac0307fd017002f079ba377852933a22bcad8dc7dcedda259766a8224434e, \\\"block_layout\\\"], \\\"endBody\\\" => [__TwigTemplate_32d26abe0884e0208e1c7f259122177bdd6dfc2bc4ebcfe5ed54a5e4f57dbfa5, \\\"block_endBody\\\"], \\\"content\\\" => [__TwigTemplate_f4b3ef1b6bdfdbe0a5d6d7e91ff758f898ae23a8dc2b29e16e16bb053f51e1bb, \\\"block_content\\\"], ...]\"},{\"objectClass\":\"__TwigTemplate_3d4ac0307fd017002f079ba377852933a22bcad8dc7dcedda259766a8224434e\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":184,\"class\":\"__TwigTemplate_3d4ac0307fd017002f079ba377852933a22bcad8dc7dcedda259766a8224434e\",\"method\":\"block_layout\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"head\\\" => [__TwigTemplate_32d26abe0884e0208e1c7f259122177bdd6dfc2bc4ebcfe5ed54a5e4f57dbfa5, \\\"block_head\\\"], \\\"layout\\\" => [__TwigTemplate_3d4ac0307fd017002f079ba377852933a22bcad8dc7dcedda259766a8224434e, \\\"block_layout\\\"], \\\"endBody\\\" => [__TwigTemplate_32d26abe0884e0208e1c7f259122177bdd6dfc2bc4ebcfe5ed54a5e4f57dbfa5, \\\"block_endBody\\\"], \\\"content\\\" => [__TwigTemplate_f4b3ef1b6bdfdbe0a5d6d7e91ff758f898ae23a8dc2b29e16e16bb053f51e1bb, \\\"block_content\\\"], ...]\"},{\"objectClass\":\"__TwigTemplate_32d26abe0884e0208e1c7f259122177bdd6dfc2bc4ebcfe5ed54a5e4f57dbfa5\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\storage\\\\runtime\\\\compiled_templates\\\\f8\\\\f8e984799beca29a9ba7942df27ac50beb5bbc50db0074959fa7d5f48574f39a.php\",\"line\":98,\"class\":\"Twig\\\\Template\",\"method\":\"displayBlock\",\"args\":\"\\\"layout\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"head\\\" => [__TwigTemplate_32d26abe0884e0208e1c7f259122177bdd6dfc2bc4ebcfe5ed54a5e4f57dbfa5, \\\"block_head\\\"], \\\"layout\\\" => [__TwigTemplate_3d4ac0307fd017002f079ba377852933a22bcad8dc7dcedda259766a8224434e, \\\"block_layout\\\"], \\\"endBody\\\" => [__TwigTemplate_32d26abe0884e0208e1c7f259122177bdd6dfc2bc4ebcfe5ed54a5e4f57dbfa5, \\\"block_endBody\\\"], \\\"content\\\" => [__TwigTemplate_f4b3ef1b6bdfdbe0a5d6d7e91ff758f898ae23a8dc2b29e16e16bb053f51e1bb, \\\"block_content\\\"], ...]\"},{\"objectClass\":\"__TwigTemplate_32d26abe0884e0208e1c7f259122177bdd6dfc2bc4ebcfe5ed54a5e4f57dbfa5\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":407,\"class\":\"__TwigTemplate_32d26abe0884e0208e1c7f259122177bdd6dfc2bc4ebcfe5ed54a5e4f57dbfa5\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"head\\\" => [__TwigTemplate_32d26abe0884e0208e1c7f259122177bdd6dfc2bc4ebcfe5ed54a5e4f57dbfa5, \\\"block_head\\\"], \\\"layout\\\" => [__TwigTemplate_3d4ac0307fd017002f079ba377852933a22bcad8dc7dcedda259766a8224434e, \\\"block_layout\\\"], \\\"endBody\\\" => [__TwigTemplate_32d26abe0884e0208e1c7f259122177bdd6dfc2bc4ebcfe5ed54a5e4f57dbfa5, \\\"block_endBody\\\"], \\\"content\\\" => [__TwigTemplate_f4b3ef1b6bdfdbe0a5d6d7e91ff758f898ae23a8dc2b29e16e16bb053f51e1bb, \\\"block_content\\\"], ...]\"},{\"objectClass\":\"__TwigTemplate_32d26abe0884e0208e1c7f259122177bdd6dfc2bc4ebcfe5ed54a5e4f57dbfa5\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"head\\\" => [__TwigTemplate_32d26abe0884e0208e1c7f259122177bdd6dfc2bc4ebcfe5ed54a5e4f57dbfa5, \\\"block_head\\\"], \\\"layout\\\" => [__TwigTemplate_3d4ac0307fd017002f079ba377852933a22bcad8dc7dcedda259766a8224434e, \\\"block_layout\\\"], \\\"endBody\\\" => [__TwigTemplate_32d26abe0884e0208e1c7f259122177bdd6dfc2bc4ebcfe5ed54a5e4f57dbfa5, \\\"block_endBody\\\"], \\\"content\\\" => [__TwigTemplate_f4b3ef1b6bdfdbe0a5d6d7e91ff758f898ae23a8dc2b29e16e16bb053f51e1bb, \\\"block_content\\\"], ...]\"},{\"objectClass\":\"__TwigTemplate_32d26abe0884e0208e1c7f259122177bdd6dfc2bc4ebcfe5ed54a5e4f57dbfa5\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\storage\\\\runtime\\\\compiled_templates\\\\4e\\\\4e17c1f3465c2762bf8ac0c5be595ee75a27cececc50580b8aa64757c4d2df2e.php\",\"line\":47,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"layout\\\" => [__TwigTemplate_3d4ac0307fd017002f079ba377852933a22bcad8dc7dcedda259766a8224434e, \\\"block_layout\\\"], \\\"content\\\" => [__TwigTemplate_f4b3ef1b6bdfdbe0a5d6d7e91ff758f898ae23a8dc2b29e16e16bb053f51e1bb, \\\"block_content\\\"], \\\"footer\\\" => [__TwigTemplate_3d4ac0307fd017002f079ba377852933a22bcad8dc7dcedda259766a8224434e, \\\"block_footer\\\"]]\"},{\"objectClass\":\"__TwigTemplate_3d4ac0307fd017002f079ba377852933a22bcad8dc7dcedda259766a8224434e\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":407,\"class\":\"__TwigTemplate_3d4ac0307fd017002f079ba377852933a22bcad8dc7dcedda259766a8224434e\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"layout\\\" => [__TwigTemplate_3d4ac0307fd017002f079ba377852933a22bcad8dc7dcedda259766a8224434e, \\\"block_layout\\\"], \\\"content\\\" => [__TwigTemplate_f4b3ef1b6bdfdbe0a5d6d7e91ff758f898ae23a8dc2b29e16e16bb053f51e1bb, \\\"block_content\\\"], \\\"footer\\\" => [__TwigTemplate_3d4ac0307fd017002f079ba377852933a22bcad8dc7dcedda259766a8224434e, \\\"block_footer\\\"]]\"},{\"objectClass\":\"__TwigTemplate_3d4ac0307fd017002f079ba377852933a22bcad8dc7dcedda259766a8224434e\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"layout\\\" => [__TwigTemplate_3d4ac0307fd017002f079ba377852933a22bcad8dc7dcedda259766a8224434e, \\\"block_layout\\\"], \\\"content\\\" => [__TwigTemplate_f4b3ef1b6bdfdbe0a5d6d7e91ff758f898ae23a8dc2b29e16e16bb053f51e1bb, \\\"block_content\\\"], \\\"footer\\\" => [__TwigTemplate_3d4ac0307fd017002f079ba377852933a22bcad8dc7dcedda259766a8224434e, \\\"block_footer\\\"]]\"},{\"objectClass\":\"__TwigTemplate_3d4ac0307fd017002f079ba377852933a22bcad8dc7dcedda259766a8224434e\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\storage\\\\runtime\\\\compiled_templates\\\\c0\\\\c0ef69691797e300c2b715b057ccc0ccbdf6a45de1175bcad35ae64f4a462b04.php\",\"line\":49,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_f4b3ef1b6bdfdbe0a5d6d7e91ff758f898ae23a8dc2b29e16e16bb053f51e1bb, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_f4b3ef1b6bdfdbe0a5d6d7e91ff758f898ae23a8dc2b29e16e16bb053f51e1bb\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":407,\"class\":\"__TwigTemplate_f4b3ef1b6bdfdbe0a5d6d7e91ff758f898ae23a8dc2b29e16e16bb053f51e1bb\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_f4b3ef1b6bdfdbe0a5d6d7e91ff758f898ae23a8dc2b29e16e16bb053f51e1bb, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_f4b3ef1b6bdfdbe0a5d6d7e91ff758f898ae23a8dc2b29e16e16bb053f51e1bb\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_f4b3ef1b6bdfdbe0a5d6d7e91ff758f898ae23a8dc2b29e16e16bb053f51e1bb, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_f4b3ef1b6bdfdbe0a5d6d7e91ff758f898ae23a8dc2b29e16e16bb053f51e1bb\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":392,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"__TwigTemplate_f4b3ef1b6bdfdbe0a5d6d7e91ff758f898ae23a8dc2b29e16e16bb053f51e1bb\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\TemplateWrapper.php\",\"line\":45,\"class\":\"Twig\\\\Template\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], []\"},{\"objectClass\":\"Twig\\\\TemplateWrapper\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Environment.php\",\"line\":318,\"class\":\"Twig\\\\TemplateWrapper\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\Environment\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\View.php\",\"line\":344,\"class\":\"Twig\\\\Environment\",\"method\":\"render\",\"args\":\"\\\"_pages/research/research.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\View.php\",\"line\":393,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderTemplate\",\"args\":\"\\\"_pages/research/research.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Controller.php\",\"line\":243,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderPageTemplate\",\"args\":\"\\\"_pages/research/research.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\controllers\\\\TemplatesController.php\",\"line\":101,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"renderTemplate\",\"args\":\"\\\"_pages/research/research.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":null,\"line\":null,\"class\":\"craft\\\\controllers\\\\TemplatesController\",\"method\":\"actionRender\",\"args\":\"\\\"_pages/research/research.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":null,\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\InlineAction.php\",\"line\":57,\"class\":null,\"method\":\"call_user_func_array\",\"args\":\"[craft\\\\controllers\\\\TemplatesController, \\\"actionRender\\\"], [\\\"_pages/research/research.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"yii\\\\base\\\\InlineAction\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Controller.php\",\"line\":157,\"class\":\"yii\\\\base\\\\InlineAction\",\"method\":\"runWithParams\",\"args\":\"[\\\"template\\\" => \\\"_pages/research/research.twig\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"research\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Controller.php\",\"line\":187,\"class\":\"yii\\\\base\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"_pages/research/research.twig\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"research\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Module.php\",\"line\":528,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"_pages/research/research.twig\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"research\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Application.php\",\"line\":299,\"class\":\"yii\\\\base\\\\Module\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"_pages/research/research.twig\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"research\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\yiisoft\\\\yii2\\\\web\\\\Application.php\",\"line\":103,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"_pages/research/research.twig\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"research\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Application.php\",\"line\":284,\"class\":\"yii\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Application.php\",\"line\":386,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\web\\\\index.php\",\"line\":21,\"class\":\"yii\\\\base\\\\Application\",\"method\":\"run\",\"args\":null}]', '2020-01-07 23:00:51', '2020-01-07 23:00:51', 'f8d2c401-70d7-4f97-91a7-d36ca38042f2');
INSERT INTO `deprecationerrors` (`id`, `key`, `fingerprint`, `lastOccurrence`, `file`, `line`, `message`, `traces`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(26, 'ElementQuery::first()', 'C:\\wamp64\\www\\ixlab-craft\\templates\\_pages\\research\\research.twig:41', '2020-01-03 19:53:08', 'C:\\wamp64\\www\\ixlab-craft\\templates\\_pages\\research\\research.twig', 41, 'The first() function used to query for elements is now deprecated. Use one() instead.', '[{\"objectClass\":\"craft\\\\services\\\\Deprecator\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\elements\\\\db\\\\ElementQuery.php\",\"line\":1859,\"class\":\"craft\\\\services\\\\Deprecator\",\"method\":\"log\",\"args\":\"\\\"ElementQuery::first()\\\", \\\"The first() function used to query for elements is now deprecate...\\\"\"},{\"objectClass\":\"craft\\\\elements\\\\db\\\\CategoryQuery\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Extension\\\\CoreExtension.php\",\"line\":1495,\"class\":\"craft\\\\elements\\\\db\\\\ElementQuery\",\"method\":\"first\",\"args\":null},{\"objectClass\":null,\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\helpers\\\\Template.php\",\"line\":105,\"class\":null,\"method\":\"twig_get_attribute\",\"args\":\"craft\\\\web\\\\twig\\\\Environment, Twig\\\\Source, craft\\\\elements\\\\db\\\\CategoryQuery, \\\"first\\\", ...\"},{\"objectClass\":null,\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\storage\\\\runtime\\\\compiled_templates\\\\2e\\\\2ea55451098ca6d7418ffd603f7d05bb11953d687ff02e4fecdea5222e43e954.php\",\"line\":118,\"class\":\"craft\\\\helpers\\\\Template\",\"method\":\"attribute\",\"args\":\"craft\\\\web\\\\twig\\\\Environment, Twig\\\\Source, craft\\\\elements\\\\db\\\\CategoryQuery, \\\"first\\\", ...\"},{\"objectClass\":\"__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":184,\"class\":\"__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71\",\"method\":\"block_content\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"head\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_head\\\"], \\\"layout\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_layout\\\"], \\\"endBody\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_endBody\\\"], \\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"], ...]\"},{\"objectClass\":\"__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\storage\\\\runtime\\\\compiled_templates\\\\c8\\\\c8eaa48f1bd44edfaf45ea6edf82b81a7a33de14ccaa17efcebb8ddae257a4f8.php\",\"line\":102,\"class\":\"Twig\\\\Template\",\"method\":\"displayBlock\",\"args\":\"\\\"content\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"head\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_head\\\"], \\\"layout\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_layout\\\"], \\\"endBody\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_endBody\\\"], \\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"], ...]\"},{\"objectClass\":\"__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":184,\"class\":\"__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e\",\"method\":\"block_layout\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"head\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_head\\\"], \\\"layout\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_layout\\\"], \\\"endBody\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_endBody\\\"], \\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"], ...]\"},{\"objectClass\":\"__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\storage\\\\runtime\\\\compiled_templates\\\\e3\\\\e34b38bdf339ee4fdc52971ed0ddd2715e509abc4fe22364ee07903ecedadf6c.php\",\"line\":98,\"class\":\"Twig\\\\Template\",\"method\":\"displayBlock\",\"args\":\"\\\"layout\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"head\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_head\\\"], \\\"layout\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_layout\\\"], \\\"endBody\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_endBody\\\"], \\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"], ...]\"},{\"objectClass\":\"__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":407,\"class\":\"__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"head\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_head\\\"], \\\"layout\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_layout\\\"], \\\"endBody\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_endBody\\\"], \\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"], ...]\"},{\"objectClass\":\"__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"head\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_head\\\"], \\\"layout\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_layout\\\"], \\\"endBody\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_endBody\\\"], \\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"], ...]\"},{\"objectClass\":\"__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\storage\\\\runtime\\\\compiled_templates\\\\c8\\\\c8eaa48f1bd44edfaf45ea6edf82b81a7a33de14ccaa17efcebb8ddae257a4f8.php\",\"line\":47,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"layout\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_layout\\\"], \\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"], \\\"footer\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_footer\\\"]]\"},{\"objectClass\":\"__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":407,\"class\":\"__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"layout\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_layout\\\"], \\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"], \\\"footer\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_footer\\\"]]\"},{\"objectClass\":\"__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"layout\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_layout\\\"], \\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"], \\\"footer\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_footer\\\"]]\"},{\"objectClass\":\"__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\storage\\\\runtime\\\\compiled_templates\\\\2e\\\\2ea55451098ca6d7418ffd603f7d05bb11953d687ff02e4fecdea5222e43e954.php\",\"line\":49,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":407,\"class\":\"__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":392,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\TemplateWrapper.php\",\"line\":45,\"class\":\"Twig\\\\Template\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], []\"},{\"objectClass\":\"Twig\\\\TemplateWrapper\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Environment.php\",\"line\":318,\"class\":\"Twig\\\\TemplateWrapper\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\Environment\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\View.php\",\"line\":344,\"class\":\"Twig\\\\Environment\",\"method\":\"render\",\"args\":\"\\\"_pages/research/research.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\View.php\",\"line\":393,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderTemplate\",\"args\":\"\\\"_pages/research/research.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Controller.php\",\"line\":243,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderPageTemplate\",\"args\":\"\\\"_pages/research/research.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\controllers\\\\TemplatesController.php\",\"line\":101,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"renderTemplate\",\"args\":\"\\\"_pages/research/research.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":null,\"line\":null,\"class\":\"craft\\\\controllers\\\\TemplatesController\",\"method\":\"actionRender\",\"args\":\"\\\"_pages/research/research.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":null,\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\InlineAction.php\",\"line\":57,\"class\":null,\"method\":\"call_user_func_array\",\"args\":\"[craft\\\\controllers\\\\TemplatesController, \\\"actionRender\\\"], [\\\"_pages/research/research.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"yii\\\\base\\\\InlineAction\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Controller.php\",\"line\":157,\"class\":\"yii\\\\base\\\\InlineAction\",\"method\":\"runWithParams\",\"args\":\"[\\\"template\\\" => \\\"_pages/research/research.twig\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"research\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Controller.php\",\"line\":187,\"class\":\"yii\\\\base\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"_pages/research/research.twig\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"research\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Module.php\",\"line\":528,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"_pages/research/research.twig\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"research\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Application.php\",\"line\":299,\"class\":\"yii\\\\base\\\\Module\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"_pages/research/research.twig\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"research\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\yiisoft\\\\yii2\\\\web\\\\Application.php\",\"line\":103,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"_pages/research/research.twig\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"research\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Application.php\",\"line\":284,\"class\":\"yii\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Application.php\",\"line\":386,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\web\\\\index.php\",\"line\":21,\"class\":\"yii\\\\base\\\\Application\",\"method\":\"run\",\"args\":null}]', '2020-01-03 19:53:08', '2020-01-03 19:53:08', 'fe67b1fe-393c-471d-a1c8-b1fbd4059517'),
(27, 'ElementQuery::first()', 'C:\\wamp64\\www\\ixlab-craft\\templates\\_pages\\research\\research.twig:63', '2020-01-03 19:41:00', 'C:\\wamp64\\www\\ixlab-craft\\templates\\_pages\\research\\research.twig', 63, 'The first() function used to query for elements is now deprecated. Use one() instead.', '[{\"objectClass\":\"craft\\\\services\\\\Deprecator\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\elements\\\\db\\\\ElementQuery.php\",\"line\":1859,\"class\":\"craft\\\\services\\\\Deprecator\",\"method\":\"log\",\"args\":\"\\\"ElementQuery::first()\\\", \\\"The first() function used to query for elements is now deprecate...\\\"\"},{\"objectClass\":\"craft\\\\elements\\\\db\\\\CategoryQuery\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Extension\\\\CoreExtension.php\",\"line\":1495,\"class\":\"craft\\\\elements\\\\db\\\\ElementQuery\",\"method\":\"first\",\"args\":null},{\"objectClass\":null,\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\helpers\\\\Template.php\",\"line\":105,\"class\":null,\"method\":\"twig_get_attribute\",\"args\":\"craft\\\\web\\\\twig\\\\Environment, Twig\\\\Source, craft\\\\elements\\\\db\\\\CategoryQuery, \\\"first\\\", ...\"},{\"objectClass\":null,\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\storage\\\\runtime\\\\compiled_templates\\\\2e\\\\2ea55451098ca6d7418ffd603f7d05bb11953d687ff02e4fecdea5222e43e954.php\",\"line\":152,\"class\":\"craft\\\\helpers\\\\Template\",\"method\":\"attribute\",\"args\":\"craft\\\\web\\\\twig\\\\Environment, Twig\\\\Source, craft\\\\elements\\\\db\\\\CategoryQuery, \\\"first\\\", ...\"},{\"objectClass\":\"__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":184,\"class\":\"__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71\",\"method\":\"block_content\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"head\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_head\\\"], \\\"layout\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_layout\\\"], \\\"endBody\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_endBody\\\"], \\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"], ...]\"},{\"objectClass\":\"__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\storage\\\\runtime\\\\compiled_templates\\\\c8\\\\c8eaa48f1bd44edfaf45ea6edf82b81a7a33de14ccaa17efcebb8ddae257a4f8.php\",\"line\":102,\"class\":\"Twig\\\\Template\",\"method\":\"displayBlock\",\"args\":\"\\\"content\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"head\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_head\\\"], \\\"layout\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_layout\\\"], \\\"endBody\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_endBody\\\"], \\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"], ...]\"},{\"objectClass\":\"__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":184,\"class\":\"__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e\",\"method\":\"block_layout\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"head\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_head\\\"], \\\"layout\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_layout\\\"], \\\"endBody\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_endBody\\\"], \\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"], ...]\"},{\"objectClass\":\"__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\storage\\\\runtime\\\\compiled_templates\\\\e3\\\\e34b38bdf339ee4fdc52971ed0ddd2715e509abc4fe22364ee07903ecedadf6c.php\",\"line\":98,\"class\":\"Twig\\\\Template\",\"method\":\"displayBlock\",\"args\":\"\\\"layout\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"head\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_head\\\"], \\\"layout\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_layout\\\"], \\\"endBody\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_endBody\\\"], \\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"], ...]\"},{\"objectClass\":\"__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":407,\"class\":\"__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"head\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_head\\\"], \\\"layout\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_layout\\\"], \\\"endBody\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_endBody\\\"], \\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"], ...]\"},{\"objectClass\":\"__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"head\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_head\\\"], \\\"layout\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_layout\\\"], \\\"endBody\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_endBody\\\"], \\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"], ...]\"},{\"objectClass\":\"__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\storage\\\\runtime\\\\compiled_templates\\\\c8\\\\c8eaa48f1bd44edfaf45ea6edf82b81a7a33de14ccaa17efcebb8ddae257a4f8.php\",\"line\":47,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"layout\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_layout\\\"], \\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"], \\\"footer\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_footer\\\"]]\"},{\"objectClass\":\"__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":407,\"class\":\"__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"layout\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_layout\\\"], \\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"], \\\"footer\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_footer\\\"]]\"},{\"objectClass\":\"__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"layout\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_layout\\\"], \\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"], \\\"footer\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_footer\\\"]]\"},{\"objectClass\":\"__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\storage\\\\runtime\\\\compiled_templates\\\\2e\\\\2ea55451098ca6d7418ffd603f7d05bb11953d687ff02e4fecdea5222e43e954.php\",\"line\":49,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":407,\"class\":\"__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":392,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\TemplateWrapper.php\",\"line\":45,\"class\":\"Twig\\\\Template\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], []\"},{\"objectClass\":\"Twig\\\\TemplateWrapper\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Environment.php\",\"line\":318,\"class\":\"Twig\\\\TemplateWrapper\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\Environment\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\View.php\",\"line\":344,\"class\":\"Twig\\\\Environment\",\"method\":\"render\",\"args\":\"\\\"_pages/research/research.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\View.php\",\"line\":393,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderTemplate\",\"args\":\"\\\"_pages/research/research.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Controller.php\",\"line\":243,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderPageTemplate\",\"args\":\"\\\"_pages/research/research.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\controllers\\\\TemplatesController.php\",\"line\":101,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"renderTemplate\",\"args\":\"\\\"_pages/research/research.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":null,\"line\":null,\"class\":\"craft\\\\controllers\\\\TemplatesController\",\"method\":\"actionRender\",\"args\":\"\\\"_pages/research/research.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":null,\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\InlineAction.php\",\"line\":57,\"class\":null,\"method\":\"call_user_func_array\",\"args\":\"[craft\\\\controllers\\\\TemplatesController, \\\"actionRender\\\"], [\\\"_pages/research/research.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"yii\\\\base\\\\InlineAction\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Controller.php\",\"line\":157,\"class\":\"yii\\\\base\\\\InlineAction\",\"method\":\"runWithParams\",\"args\":\"[\\\"template\\\" => \\\"_pages/research/research.twig\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"research\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Controller.php\",\"line\":187,\"class\":\"yii\\\\base\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"_pages/research/research.twig\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"research\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Module.php\",\"line\":528,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"_pages/research/research.twig\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"research\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Application.php\",\"line\":299,\"class\":\"yii\\\\base\\\\Module\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"_pages/research/research.twig\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"research\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\yiisoft\\\\yii2\\\\web\\\\Application.php\",\"line\":103,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"_pages/research/research.twig\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"research\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Application.php\",\"line\":284,\"class\":\"yii\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Application.php\",\"line\":386,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\web\\\\index.php\",\"line\":21,\"class\":\"yii\\\\base\\\\Application\",\"method\":\"run\",\"args\":null}]', '2020-01-03 19:41:00', '2020-01-03 19:41:00', 'ccd15fa5-5f68-489d-bed2-73a3dfc2e424');
INSERT INTO `deprecationerrors` (`id`, `key`, `fingerprint`, `lastOccurrence`, `file`, `line`, `message`, `traces`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(28, 'ElementQuery::getIterator()', 'C:\\wamp64\\www\\ixlab-craft\\templates\\_pages\\research\\research.twig:65', '2020-01-03 19:53:08', 'C:\\wamp64\\www\\ixlab-craft\\templates\\_pages\\research\\research.twig', 65, 'Looping through element queries directly has been deprecated. Use the all() function to fetch the query results before looping over them.', '[{\"objectClass\":\"craft\\\\services\\\\Deprecator\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\elements\\\\db\\\\ElementQuery.php\",\"line\":584,\"class\":\"craft\\\\services\\\\Deprecator\",\"method\":\"log\",\"args\":\"\\\"ElementQuery::getIterator()\\\", \\\"Looping through element queries directly has been deprecated. Us...\\\"\"},{\"objectClass\":\"craft\\\\elements\\\\db\\\\EntryQuery\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\storage\\\\runtime\\\\compiled_templates\\\\2e\\\\2ea55451098ca6d7418ffd603f7d05bb11953d687ff02e4fecdea5222e43e954.php\",\"line\":159,\"class\":\"craft\\\\elements\\\\db\\\\ElementQuery\",\"method\":\"getIterator\",\"args\":null},{\"objectClass\":\"__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":184,\"class\":\"__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71\",\"method\":\"block_content\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"head\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_head\\\"], \\\"layout\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_layout\\\"], \\\"endBody\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_endBody\\\"], \\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"], ...]\"},{\"objectClass\":\"__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\storage\\\\runtime\\\\compiled_templates\\\\c8\\\\c8eaa48f1bd44edfaf45ea6edf82b81a7a33de14ccaa17efcebb8ddae257a4f8.php\",\"line\":102,\"class\":\"Twig\\\\Template\",\"method\":\"displayBlock\",\"args\":\"\\\"content\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"head\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_head\\\"], \\\"layout\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_layout\\\"], \\\"endBody\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_endBody\\\"], \\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"], ...]\"},{\"objectClass\":\"__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":184,\"class\":\"__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e\",\"method\":\"block_layout\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"head\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_head\\\"], \\\"layout\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_layout\\\"], \\\"endBody\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_endBody\\\"], \\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"], ...]\"},{\"objectClass\":\"__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\storage\\\\runtime\\\\compiled_templates\\\\e3\\\\e34b38bdf339ee4fdc52971ed0ddd2715e509abc4fe22364ee07903ecedadf6c.php\",\"line\":98,\"class\":\"Twig\\\\Template\",\"method\":\"displayBlock\",\"args\":\"\\\"layout\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"head\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_head\\\"], \\\"layout\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_layout\\\"], \\\"endBody\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_endBody\\\"], \\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"], ...]\"},{\"objectClass\":\"__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":407,\"class\":\"__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"head\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_head\\\"], \\\"layout\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_layout\\\"], \\\"endBody\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_endBody\\\"], \\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"], ...]\"},{\"objectClass\":\"__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"head\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_head\\\"], \\\"layout\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_layout\\\"], \\\"endBody\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_endBody\\\"], \\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"], ...]\"},{\"objectClass\":\"__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\storage\\\\runtime\\\\compiled_templates\\\\c8\\\\c8eaa48f1bd44edfaf45ea6edf82b81a7a33de14ccaa17efcebb8ddae257a4f8.php\",\"line\":47,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"layout\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_layout\\\"], \\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"], \\\"footer\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_footer\\\"]]\"},{\"objectClass\":\"__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":407,\"class\":\"__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"layout\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_layout\\\"], \\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"], \\\"footer\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_footer\\\"]]\"},{\"objectClass\":\"__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"layout\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_layout\\\"], \\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"], \\\"footer\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_footer\\\"]]\"},{\"objectClass\":\"__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\storage\\\\runtime\\\\compiled_templates\\\\2e\\\\2ea55451098ca6d7418ffd603f7d05bb11953d687ff02e4fecdea5222e43e954.php\",\"line\":49,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":407,\"class\":\"__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":392,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\TemplateWrapper.php\",\"line\":45,\"class\":\"Twig\\\\Template\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], []\"},{\"objectClass\":\"Twig\\\\TemplateWrapper\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Environment.php\",\"line\":318,\"class\":\"Twig\\\\TemplateWrapper\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\Environment\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\View.php\",\"line\":344,\"class\":\"Twig\\\\Environment\",\"method\":\"render\",\"args\":\"\\\"_pages/research/research.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\View.php\",\"line\":393,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderTemplate\",\"args\":\"\\\"_pages/research/research.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Controller.php\",\"line\":243,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderPageTemplate\",\"args\":\"\\\"_pages/research/research.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\controllers\\\\TemplatesController.php\",\"line\":101,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"renderTemplate\",\"args\":\"\\\"_pages/research/research.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":null,\"line\":null,\"class\":\"craft\\\\controllers\\\\TemplatesController\",\"method\":\"actionRender\",\"args\":\"\\\"_pages/research/research.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":null,\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\InlineAction.php\",\"line\":57,\"class\":null,\"method\":\"call_user_func_array\",\"args\":\"[craft\\\\controllers\\\\TemplatesController, \\\"actionRender\\\"], [\\\"_pages/research/research.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"yii\\\\base\\\\InlineAction\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Controller.php\",\"line\":157,\"class\":\"yii\\\\base\\\\InlineAction\",\"method\":\"runWithParams\",\"args\":\"[\\\"template\\\" => \\\"_pages/research/research.twig\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"research\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Controller.php\",\"line\":187,\"class\":\"yii\\\\base\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"_pages/research/research.twig\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"research\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Module.php\",\"line\":528,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"_pages/research/research.twig\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"research\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Application.php\",\"line\":299,\"class\":\"yii\\\\base\\\\Module\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"_pages/research/research.twig\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"research\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\yiisoft\\\\yii2\\\\web\\\\Application.php\",\"line\":103,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"_pages/research/research.twig\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"research\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Application.php\",\"line\":284,\"class\":\"yii\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Application.php\",\"line\":386,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\web\\\\index.php\",\"line\":21,\"class\":\"yii\\\\base\\\\Application\",\"method\":\"run\",\"args\":null}]', '2020-01-03 19:53:08', '2020-01-03 19:53:08', '7df39631-cdc1-4981-9e60-6fd6c05fdb4d'),
(29, 'ElementQuery::first()', 'C:\\wamp64\\www\\ixlab-craft\\templates\\_pages\\research\\research.twig:81', '2020-01-03 19:53:08', 'C:\\wamp64\\www\\ixlab-craft\\templates\\_pages\\research\\research.twig', 81, 'The first() function used to query for elements is now deprecated. Use one() instead.', '[{\"objectClass\":\"craft\\\\services\\\\Deprecator\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\elements\\\\db\\\\ElementQuery.php\",\"line\":1859,\"class\":\"craft\\\\services\\\\Deprecator\",\"method\":\"log\",\"args\":\"\\\"ElementQuery::first()\\\", \\\"The first() function used to query for elements is now deprecate...\\\"\"},{\"objectClass\":\"craft\\\\elements\\\\db\\\\CategoryQuery\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Extension\\\\CoreExtension.php\",\"line\":1495,\"class\":\"craft\\\\elements\\\\db\\\\ElementQuery\",\"method\":\"first\",\"args\":null},{\"objectClass\":null,\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\helpers\\\\Template.php\",\"line\":105,\"class\":null,\"method\":\"twig_get_attribute\",\"args\":\"craft\\\\web\\\\twig\\\\Environment, Twig\\\\Source, craft\\\\elements\\\\db\\\\CategoryQuery, \\\"first\\\", ...\"},{\"objectClass\":null,\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\storage\\\\runtime\\\\compiled_templates\\\\2e\\\\2ea55451098ca6d7418ffd603f7d05bb11953d687ff02e4fecdea5222e43e954.php\",\"line\":193,\"class\":\"craft\\\\helpers\\\\Template\",\"method\":\"attribute\",\"args\":\"craft\\\\web\\\\twig\\\\Environment, Twig\\\\Source, craft\\\\elements\\\\db\\\\CategoryQuery, \\\"first\\\", ...\"},{\"objectClass\":\"__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":184,\"class\":\"__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71\",\"method\":\"block_content\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"head\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_head\\\"], \\\"layout\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_layout\\\"], \\\"endBody\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_endBody\\\"], \\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"], ...]\"},{\"objectClass\":\"__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\storage\\\\runtime\\\\compiled_templates\\\\c8\\\\c8eaa48f1bd44edfaf45ea6edf82b81a7a33de14ccaa17efcebb8ddae257a4f8.php\",\"line\":102,\"class\":\"Twig\\\\Template\",\"method\":\"displayBlock\",\"args\":\"\\\"content\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"head\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_head\\\"], \\\"layout\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_layout\\\"], \\\"endBody\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_endBody\\\"], \\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"], ...]\"},{\"objectClass\":\"__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":184,\"class\":\"__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e\",\"method\":\"block_layout\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"head\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_head\\\"], \\\"layout\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_layout\\\"], \\\"endBody\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_endBody\\\"], \\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"], ...]\"},{\"objectClass\":\"__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\storage\\\\runtime\\\\compiled_templates\\\\e3\\\\e34b38bdf339ee4fdc52971ed0ddd2715e509abc4fe22364ee07903ecedadf6c.php\",\"line\":98,\"class\":\"Twig\\\\Template\",\"method\":\"displayBlock\",\"args\":\"\\\"layout\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"head\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_head\\\"], \\\"layout\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_layout\\\"], \\\"endBody\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_endBody\\\"], \\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"], ...]\"},{\"objectClass\":\"__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":407,\"class\":\"__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"head\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_head\\\"], \\\"layout\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_layout\\\"], \\\"endBody\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_endBody\\\"], \\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"], ...]\"},{\"objectClass\":\"__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"head\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_head\\\"], \\\"layout\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_layout\\\"], \\\"endBody\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_endBody\\\"], \\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"], ...]\"},{\"objectClass\":\"__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\storage\\\\runtime\\\\compiled_templates\\\\c8\\\\c8eaa48f1bd44edfaf45ea6edf82b81a7a33de14ccaa17efcebb8ddae257a4f8.php\",\"line\":47,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"layout\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_layout\\\"], \\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"], \\\"footer\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_footer\\\"]]\"},{\"objectClass\":\"__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":407,\"class\":\"__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"layout\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_layout\\\"], \\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"], \\\"footer\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_footer\\\"]]\"},{\"objectClass\":\"__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"layout\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_layout\\\"], \\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"], \\\"footer\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_footer\\\"]]\"},{\"objectClass\":\"__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\storage\\\\runtime\\\\compiled_templates\\\\2e\\\\2ea55451098ca6d7418ffd603f7d05bb11953d687ff02e4fecdea5222e43e954.php\",\"line\":49,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":407,\"class\":\"__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":392,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\TemplateWrapper.php\",\"line\":45,\"class\":\"Twig\\\\Template\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], []\"},{\"objectClass\":\"Twig\\\\TemplateWrapper\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Environment.php\",\"line\":318,\"class\":\"Twig\\\\TemplateWrapper\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\Environment\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\View.php\",\"line\":344,\"class\":\"Twig\\\\Environment\",\"method\":\"render\",\"args\":\"\\\"_pages/research/research.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\View.php\",\"line\":393,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderTemplate\",\"args\":\"\\\"_pages/research/research.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Controller.php\",\"line\":243,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderPageTemplate\",\"args\":\"\\\"_pages/research/research.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\controllers\\\\TemplatesController.php\",\"line\":101,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"renderTemplate\",\"args\":\"\\\"_pages/research/research.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":null,\"line\":null,\"class\":\"craft\\\\controllers\\\\TemplatesController\",\"method\":\"actionRender\",\"args\":\"\\\"_pages/research/research.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":null,\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\InlineAction.php\",\"line\":57,\"class\":null,\"method\":\"call_user_func_array\",\"args\":\"[craft\\\\controllers\\\\TemplatesController, \\\"actionRender\\\"], [\\\"_pages/research/research.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"yii\\\\base\\\\InlineAction\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Controller.php\",\"line\":157,\"class\":\"yii\\\\base\\\\InlineAction\",\"method\":\"runWithParams\",\"args\":\"[\\\"template\\\" => \\\"_pages/research/research.twig\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"research\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Controller.php\",\"line\":187,\"class\":\"yii\\\\base\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"_pages/research/research.twig\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"research\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Module.php\",\"line\":528,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"_pages/research/research.twig\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"research\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Application.php\",\"line\":299,\"class\":\"yii\\\\base\\\\Module\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"_pages/research/research.twig\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"research\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\yiisoft\\\\yii2\\\\web\\\\Application.php\",\"line\":103,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"_pages/research/research.twig\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"research\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Application.php\",\"line\":284,\"class\":\"yii\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Application.php\",\"line\":386,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\web\\\\index.php\",\"line\":21,\"class\":\"yii\\\\base\\\\Application\",\"method\":\"run\",\"args\":null}]', '2020-01-03 19:53:08', '2020-01-03 19:53:08', 'be6e6554-59b0-45fe-97a7-370953c0bf7b');
INSERT INTO `deprecationerrors` (`id`, `key`, `fingerprint`, `lastOccurrence`, `file`, `line`, `message`, `traces`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(33, 'ElementQuery::first()', 'C:\\wamp64\\www\\ixlab-craft\\templates\\_pages\\research\\research.twig:65', '2020-01-03 19:41:08', 'C:\\wamp64\\www\\ixlab-craft\\templates\\_pages\\research\\research.twig', 65, 'The first() function used to query for elements is now deprecated. Use one() instead.', '[{\"objectClass\":\"craft\\\\services\\\\Deprecator\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\elements\\\\db\\\\ElementQuery.php\",\"line\":1859,\"class\":\"craft\\\\services\\\\Deprecator\",\"method\":\"log\",\"args\":\"\\\"ElementQuery::first()\\\", \\\"The first() function used to query for elements is now deprecate...\\\"\"},{\"objectClass\":\"craft\\\\elements\\\\db\\\\CategoryQuery\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Extension\\\\CoreExtension.php\",\"line\":1495,\"class\":\"craft\\\\elements\\\\db\\\\ElementQuery\",\"method\":\"first\",\"args\":null},{\"objectClass\":null,\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\helpers\\\\Template.php\",\"line\":105,\"class\":null,\"method\":\"twig_get_attribute\",\"args\":\"craft\\\\web\\\\twig\\\\Environment, Twig\\\\Source, craft\\\\elements\\\\db\\\\CategoryQuery, \\\"first\\\", ...\"},{\"objectClass\":null,\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\storage\\\\runtime\\\\compiled_templates\\\\2e\\\\2ea55451098ca6d7418ffd603f7d05bb11953d687ff02e4fecdea5222e43e954.php\",\"line\":154,\"class\":\"craft\\\\helpers\\\\Template\",\"method\":\"attribute\",\"args\":\"craft\\\\web\\\\twig\\\\Environment, Twig\\\\Source, craft\\\\elements\\\\db\\\\CategoryQuery, \\\"first\\\", ...\"},{\"objectClass\":\"__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":184,\"class\":\"__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71\",\"method\":\"block_content\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"head\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_head\\\"], \\\"layout\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_layout\\\"], \\\"endBody\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_endBody\\\"], \\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"], ...]\"},{\"objectClass\":\"__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\storage\\\\runtime\\\\compiled_templates\\\\c8\\\\c8eaa48f1bd44edfaf45ea6edf82b81a7a33de14ccaa17efcebb8ddae257a4f8.php\",\"line\":102,\"class\":\"Twig\\\\Template\",\"method\":\"displayBlock\",\"args\":\"\\\"content\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"head\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_head\\\"], \\\"layout\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_layout\\\"], \\\"endBody\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_endBody\\\"], \\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"], ...]\"},{\"objectClass\":\"__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":184,\"class\":\"__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e\",\"method\":\"block_layout\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"head\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_head\\\"], \\\"layout\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_layout\\\"], \\\"endBody\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_endBody\\\"], \\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"], ...]\"},{\"objectClass\":\"__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\storage\\\\runtime\\\\compiled_templates\\\\e3\\\\e34b38bdf339ee4fdc52971ed0ddd2715e509abc4fe22364ee07903ecedadf6c.php\",\"line\":98,\"class\":\"Twig\\\\Template\",\"method\":\"displayBlock\",\"args\":\"\\\"layout\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"head\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_head\\\"], \\\"layout\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_layout\\\"], \\\"endBody\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_endBody\\\"], \\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"], ...]\"},{\"objectClass\":\"__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":407,\"class\":\"__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"head\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_head\\\"], \\\"layout\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_layout\\\"], \\\"endBody\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_endBody\\\"], \\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"], ...]\"},{\"objectClass\":\"__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"head\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_head\\\"], \\\"layout\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_layout\\\"], \\\"endBody\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_endBody\\\"], \\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"], ...]\"},{\"objectClass\":\"__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\storage\\\\runtime\\\\compiled_templates\\\\c8\\\\c8eaa48f1bd44edfaf45ea6edf82b81a7a33de14ccaa17efcebb8ddae257a4f8.php\",\"line\":47,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"layout\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_layout\\\"], \\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"], \\\"footer\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_footer\\\"]]\"},{\"objectClass\":\"__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":407,\"class\":\"__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"layout\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_layout\\\"], \\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"], \\\"footer\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_footer\\\"]]\"},{\"objectClass\":\"__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"layout\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_layout\\\"], \\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"], \\\"footer\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_footer\\\"]]\"},{\"objectClass\":\"__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\storage\\\\runtime\\\\compiled_templates\\\\2e\\\\2ea55451098ca6d7418ffd603f7d05bb11953d687ff02e4fecdea5222e43e954.php\",\"line\":49,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":407,\"class\":\"__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":392,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\TemplateWrapper.php\",\"line\":45,\"class\":\"Twig\\\\Template\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], []\"},{\"objectClass\":\"Twig\\\\TemplateWrapper\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Environment.php\",\"line\":318,\"class\":\"Twig\\\\TemplateWrapper\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\Environment\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\View.php\",\"line\":344,\"class\":\"Twig\\\\Environment\",\"method\":\"render\",\"args\":\"\\\"_pages/research/research.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\View.php\",\"line\":393,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderTemplate\",\"args\":\"\\\"_pages/research/research.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Controller.php\",\"line\":243,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderPageTemplate\",\"args\":\"\\\"_pages/research/research.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\controllers\\\\TemplatesController.php\",\"line\":101,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"renderTemplate\",\"args\":\"\\\"_pages/research/research.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":null,\"line\":null,\"class\":\"craft\\\\controllers\\\\TemplatesController\",\"method\":\"actionRender\",\"args\":\"\\\"_pages/research/research.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":null,\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\InlineAction.php\",\"line\":57,\"class\":null,\"method\":\"call_user_func_array\",\"args\":\"[craft\\\\controllers\\\\TemplatesController, \\\"actionRender\\\"], [\\\"_pages/research/research.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"yii\\\\base\\\\InlineAction\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Controller.php\",\"line\":157,\"class\":\"yii\\\\base\\\\InlineAction\",\"method\":\"runWithParams\",\"args\":\"[\\\"template\\\" => \\\"_pages/research/research.twig\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"research\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Controller.php\",\"line\":187,\"class\":\"yii\\\\base\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"_pages/research/research.twig\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"research\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Module.php\",\"line\":528,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"_pages/research/research.twig\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"research\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Application.php\",\"line\":299,\"class\":\"yii\\\\base\\\\Module\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"_pages/research/research.twig\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"research\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\yiisoft\\\\yii2\\\\web\\\\Application.php\",\"line\":103,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"_pages/research/research.twig\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"research\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Application.php\",\"line\":284,\"class\":\"yii\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Application.php\",\"line\":386,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\web\\\\index.php\",\"line\":21,\"class\":\"yii\\\\base\\\\Application\",\"method\":\"run\",\"args\":null}]', '2020-01-03 19:41:08', '2020-01-03 19:41:08', '7a56f694-e190-4957-8034-787e5829862d'),
(34, 'ElementQuery::getIterator()', 'C:\\wamp64\\www\\ixlab-craft\\templates\\_pages\\research\\research.twig:67', '2020-01-03 19:51:52', 'C:\\wamp64\\www\\ixlab-craft\\templates\\_pages\\research\\research.twig', 67, 'Looping through element queries directly has been deprecated. Use the all() function to fetch the query results before looping over them.', '[{\"objectClass\":\"craft\\\\services\\\\Deprecator\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\elements\\\\db\\\\ElementQuery.php\",\"line\":584,\"class\":\"craft\\\\services\\\\Deprecator\",\"method\":\"log\",\"args\":\"\\\"ElementQuery::getIterator()\\\", \\\"Looping through element queries directly has been deprecated. Us...\\\"\"},{\"objectClass\":\"craft\\\\elements\\\\db\\\\EntryQuery\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\storage\\\\runtime\\\\compiled_templates\\\\2e\\\\2ea55451098ca6d7418ffd603f7d05bb11953d687ff02e4fecdea5222e43e954.php\",\"line\":167,\"class\":\"craft\\\\elements\\\\db\\\\ElementQuery\",\"method\":\"getIterator\",\"args\":null},{\"objectClass\":\"__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":184,\"class\":\"__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71\",\"method\":\"block_content\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"head\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_head\\\"], \\\"layout\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_layout\\\"], \\\"endBody\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_endBody\\\"], \\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"], ...]\"},{\"objectClass\":\"__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\storage\\\\runtime\\\\compiled_templates\\\\c8\\\\c8eaa48f1bd44edfaf45ea6edf82b81a7a33de14ccaa17efcebb8ddae257a4f8.php\",\"line\":102,\"class\":\"Twig\\\\Template\",\"method\":\"displayBlock\",\"args\":\"\\\"content\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"head\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_head\\\"], \\\"layout\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_layout\\\"], \\\"endBody\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_endBody\\\"], \\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"], ...]\"},{\"objectClass\":\"__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":184,\"class\":\"__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e\",\"method\":\"block_layout\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"head\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_head\\\"], \\\"layout\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_layout\\\"], \\\"endBody\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_endBody\\\"], \\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"], ...]\"},{\"objectClass\":\"__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\storage\\\\runtime\\\\compiled_templates\\\\e3\\\\e34b38bdf339ee4fdc52971ed0ddd2715e509abc4fe22364ee07903ecedadf6c.php\",\"line\":98,\"class\":\"Twig\\\\Template\",\"method\":\"displayBlock\",\"args\":\"\\\"layout\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"head\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_head\\\"], \\\"layout\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_layout\\\"], \\\"endBody\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_endBody\\\"], \\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"], ...]\"},{\"objectClass\":\"__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":407,\"class\":\"__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"head\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_head\\\"], \\\"layout\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_layout\\\"], \\\"endBody\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_endBody\\\"], \\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"], ...]\"},{\"objectClass\":\"__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"head\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_head\\\"], \\\"layout\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_layout\\\"], \\\"endBody\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_endBody\\\"], \\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"], ...]\"},{\"objectClass\":\"__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\storage\\\\runtime\\\\compiled_templates\\\\c8\\\\c8eaa48f1bd44edfaf45ea6edf82b81a7a33de14ccaa17efcebb8ddae257a4f8.php\",\"line\":47,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"layout\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_layout\\\"], \\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"], \\\"footer\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_footer\\\"]]\"},{\"objectClass\":\"__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":407,\"class\":\"__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"layout\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_layout\\\"], \\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"], \\\"footer\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_footer\\\"]]\"},{\"objectClass\":\"__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"layout\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_layout\\\"], \\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"], \\\"footer\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_footer\\\"]]\"},{\"objectClass\":\"__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\storage\\\\runtime\\\\compiled_templates\\\\2e\\\\2ea55451098ca6d7418ffd603f7d05bb11953d687ff02e4fecdea5222e43e954.php\",\"line\":49,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":407,\"class\":\"__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":392,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\TemplateWrapper.php\",\"line\":45,\"class\":\"Twig\\\\Template\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], []\"},{\"objectClass\":\"Twig\\\\TemplateWrapper\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Environment.php\",\"line\":318,\"class\":\"Twig\\\\TemplateWrapper\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\Environment\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\View.php\",\"line\":344,\"class\":\"Twig\\\\Environment\",\"method\":\"render\",\"args\":\"\\\"_pages/research/research.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\View.php\",\"line\":393,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderTemplate\",\"args\":\"\\\"_pages/research/research.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Controller.php\",\"line\":243,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderPageTemplate\",\"args\":\"\\\"_pages/research/research.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\controllers\\\\TemplatesController.php\",\"line\":101,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"renderTemplate\",\"args\":\"\\\"_pages/research/research.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":null,\"line\":null,\"class\":\"craft\\\\controllers\\\\TemplatesController\",\"method\":\"actionRender\",\"args\":\"\\\"_pages/research/research.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":null,\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\InlineAction.php\",\"line\":57,\"class\":null,\"method\":\"call_user_func_array\",\"args\":\"[craft\\\\controllers\\\\TemplatesController, \\\"actionRender\\\"], [\\\"_pages/research/research.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"yii\\\\base\\\\InlineAction\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Controller.php\",\"line\":157,\"class\":\"yii\\\\base\\\\InlineAction\",\"method\":\"runWithParams\",\"args\":\"[\\\"template\\\" => \\\"_pages/research/research.twig\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"research\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Controller.php\",\"line\":187,\"class\":\"yii\\\\base\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"_pages/research/research.twig\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"research\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Module.php\",\"line\":528,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"_pages/research/research.twig\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"research\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Application.php\",\"line\":299,\"class\":\"yii\\\\base\\\\Module\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"_pages/research/research.twig\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"research\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\yiisoft\\\\yii2\\\\web\\\\Application.php\",\"line\":103,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"_pages/research/research.twig\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"research\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Application.php\",\"line\":284,\"class\":\"yii\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Application.php\",\"line\":386,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\web\\\\index.php\",\"line\":21,\"class\":\"yii\\\\base\\\\Application\",\"method\":\"run\",\"args\":null}]', '2020-01-03 19:51:52', '2020-01-03 19:51:52', 'ba1ed6cf-1658-445c-8f7b-8a15065d882e');
INSERT INTO `deprecationerrors` (`id`, `key`, `fingerprint`, `lastOccurrence`, `file`, `line`, `message`, `traces`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(35, 'ElementQuery::first()', 'C:\\wamp64\\www\\ixlab-craft\\templates\\_pages\\research\\research.twig:83', '2020-01-03 19:51:52', 'C:\\wamp64\\www\\ixlab-craft\\templates\\_pages\\research\\research.twig', 83, 'The first() function used to query for elements is now deprecated. Use one() instead.', '[{\"objectClass\":\"craft\\\\services\\\\Deprecator\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\elements\\\\db\\\\ElementQuery.php\",\"line\":1859,\"class\":\"craft\\\\services\\\\Deprecator\",\"method\":\"log\",\"args\":\"\\\"ElementQuery::first()\\\", \\\"The first() function used to query for elements is now deprecate...\\\"\"},{\"objectClass\":\"craft\\\\elements\\\\db\\\\CategoryQuery\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Extension\\\\CoreExtension.php\",\"line\":1495,\"class\":\"craft\\\\elements\\\\db\\\\ElementQuery\",\"method\":\"first\",\"args\":null},{\"objectClass\":null,\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\helpers\\\\Template.php\",\"line\":105,\"class\":null,\"method\":\"twig_get_attribute\",\"args\":\"craft\\\\web\\\\twig\\\\Environment, Twig\\\\Source, craft\\\\elements\\\\db\\\\CategoryQuery, \\\"first\\\", ...\"},{\"objectClass\":null,\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\storage\\\\runtime\\\\compiled_templates\\\\2e\\\\2ea55451098ca6d7418ffd603f7d05bb11953d687ff02e4fecdea5222e43e954.php\",\"line\":201,\"class\":\"craft\\\\helpers\\\\Template\",\"method\":\"attribute\",\"args\":\"craft\\\\web\\\\twig\\\\Environment, Twig\\\\Source, craft\\\\elements\\\\db\\\\CategoryQuery, \\\"first\\\", ...\"},{\"objectClass\":\"__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":184,\"class\":\"__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71\",\"method\":\"block_content\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"head\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_head\\\"], \\\"layout\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_layout\\\"], \\\"endBody\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_endBody\\\"], \\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"], ...]\"},{\"objectClass\":\"__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\storage\\\\runtime\\\\compiled_templates\\\\c8\\\\c8eaa48f1bd44edfaf45ea6edf82b81a7a33de14ccaa17efcebb8ddae257a4f8.php\",\"line\":102,\"class\":\"Twig\\\\Template\",\"method\":\"displayBlock\",\"args\":\"\\\"content\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"head\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_head\\\"], \\\"layout\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_layout\\\"], \\\"endBody\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_endBody\\\"], \\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"], ...]\"},{\"objectClass\":\"__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":184,\"class\":\"__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e\",\"method\":\"block_layout\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"head\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_head\\\"], \\\"layout\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_layout\\\"], \\\"endBody\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_endBody\\\"], \\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"], ...]\"},{\"objectClass\":\"__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\storage\\\\runtime\\\\compiled_templates\\\\e3\\\\e34b38bdf339ee4fdc52971ed0ddd2715e509abc4fe22364ee07903ecedadf6c.php\",\"line\":98,\"class\":\"Twig\\\\Template\",\"method\":\"displayBlock\",\"args\":\"\\\"layout\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"head\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_head\\\"], \\\"layout\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_layout\\\"], \\\"endBody\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_endBody\\\"], \\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"], ...]\"},{\"objectClass\":\"__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":407,\"class\":\"__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"head\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_head\\\"], \\\"layout\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_layout\\\"], \\\"endBody\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_endBody\\\"], \\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"], ...]\"},{\"objectClass\":\"__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"head\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_head\\\"], \\\"layout\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_layout\\\"], \\\"endBody\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_endBody\\\"], \\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"], ...]\"},{\"objectClass\":\"__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\storage\\\\runtime\\\\compiled_templates\\\\c8\\\\c8eaa48f1bd44edfaf45ea6edf82b81a7a33de14ccaa17efcebb8ddae257a4f8.php\",\"line\":47,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"layout\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_layout\\\"], \\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"], \\\"footer\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_footer\\\"]]\"},{\"objectClass\":\"__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":407,\"class\":\"__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"layout\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_layout\\\"], \\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"], \\\"footer\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_footer\\\"]]\"},{\"objectClass\":\"__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"layout\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_layout\\\"], \\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"], \\\"footer\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_footer\\\"]]\"},{\"objectClass\":\"__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\storage\\\\runtime\\\\compiled_templates\\\\2e\\\\2ea55451098ca6d7418ffd603f7d05bb11953d687ff02e4fecdea5222e43e954.php\",\"line\":49,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":407,\"class\":\"__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":392,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\TemplateWrapper.php\",\"line\":45,\"class\":\"Twig\\\\Template\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], []\"},{\"objectClass\":\"Twig\\\\TemplateWrapper\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Environment.php\",\"line\":318,\"class\":\"Twig\\\\TemplateWrapper\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\Environment\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\View.php\",\"line\":344,\"class\":\"Twig\\\\Environment\",\"method\":\"render\",\"args\":\"\\\"_pages/research/research.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\View.php\",\"line\":393,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderTemplate\",\"args\":\"\\\"_pages/research/research.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Controller.php\",\"line\":243,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderPageTemplate\",\"args\":\"\\\"_pages/research/research.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\controllers\\\\TemplatesController.php\",\"line\":101,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"renderTemplate\",\"args\":\"\\\"_pages/research/research.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":null,\"line\":null,\"class\":\"craft\\\\controllers\\\\TemplatesController\",\"method\":\"actionRender\",\"args\":\"\\\"_pages/research/research.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":null,\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\InlineAction.php\",\"line\":57,\"class\":null,\"method\":\"call_user_func_array\",\"args\":\"[craft\\\\controllers\\\\TemplatesController, \\\"actionRender\\\"], [\\\"_pages/research/research.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"yii\\\\base\\\\InlineAction\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Controller.php\",\"line\":157,\"class\":\"yii\\\\base\\\\InlineAction\",\"method\":\"runWithParams\",\"args\":\"[\\\"template\\\" => \\\"_pages/research/research.twig\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"research\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Controller.php\",\"line\":187,\"class\":\"yii\\\\base\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"_pages/research/research.twig\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"research\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Module.php\",\"line\":528,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"_pages/research/research.twig\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"research\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Application.php\",\"line\":299,\"class\":\"yii\\\\base\\\\Module\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"_pages/research/research.twig\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"research\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\yiisoft\\\\yii2\\\\web\\\\Application.php\",\"line\":103,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"_pages/research/research.twig\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"research\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Application.php\",\"line\":284,\"class\":\"yii\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Application.php\",\"line\":386,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\web\\\\index.php\",\"line\":21,\"class\":\"yii\\\\base\\\\Application\",\"method\":\"run\",\"args\":null}]', '2020-01-03 19:51:52', '2020-01-03 19:51:52', '4d61c861-20da-4e26-b182-ad42e21dc4e2'),
(74, 'ElementQuery::getIterator()', 'C:\\wamp64\\www\\ixlab-craft\\templates\\_pages\\research\\research.twig:64', '2020-01-03 20:04:17', 'C:\\wamp64\\www\\ixlab-craft\\templates\\_pages\\research\\research.twig', 64, 'Looping through element queries directly has been deprecated. Use the all() function to fetch the query results before looping over them.', '[{\"objectClass\":\"craft\\\\services\\\\Deprecator\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\elements\\\\db\\\\ElementQuery.php\",\"line\":584,\"class\":\"craft\\\\services\\\\Deprecator\",\"method\":\"log\",\"args\":\"\\\"ElementQuery::getIterator()\\\", \\\"Looping through element queries directly has been deprecated. Us...\\\"\"},{\"objectClass\":\"craft\\\\elements\\\\db\\\\EntryQuery\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\storage\\\\runtime\\\\compiled_templates\\\\2e\\\\2ea55451098ca6d7418ffd603f7d05bb11953d687ff02e4fecdea5222e43e954.php\",\"line\":155,\"class\":\"craft\\\\elements\\\\db\\\\ElementQuery\",\"method\":\"getIterator\",\"args\":null},{\"objectClass\":\"__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":184,\"class\":\"__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71\",\"method\":\"block_content\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"head\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_head\\\"], \\\"layout\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_layout\\\"], \\\"endBody\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_endBody\\\"], \\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"], ...]\"},{\"objectClass\":\"__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\storage\\\\runtime\\\\compiled_templates\\\\c8\\\\c8eaa48f1bd44edfaf45ea6edf82b81a7a33de14ccaa17efcebb8ddae257a4f8.php\",\"line\":102,\"class\":\"Twig\\\\Template\",\"method\":\"displayBlock\",\"args\":\"\\\"content\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"head\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_head\\\"], \\\"layout\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_layout\\\"], \\\"endBody\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_endBody\\\"], \\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"], ...]\"},{\"objectClass\":\"__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":184,\"class\":\"__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e\",\"method\":\"block_layout\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"head\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_head\\\"], \\\"layout\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_layout\\\"], \\\"endBody\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_endBody\\\"], \\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"], ...]\"},{\"objectClass\":\"__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\storage\\\\runtime\\\\compiled_templates\\\\e3\\\\e34b38bdf339ee4fdc52971ed0ddd2715e509abc4fe22364ee07903ecedadf6c.php\",\"line\":98,\"class\":\"Twig\\\\Template\",\"method\":\"displayBlock\",\"args\":\"\\\"layout\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"head\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_head\\\"], \\\"layout\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_layout\\\"], \\\"endBody\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_endBody\\\"], \\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"], ...]\"},{\"objectClass\":\"__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":407,\"class\":\"__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"head\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_head\\\"], \\\"layout\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_layout\\\"], \\\"endBody\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_endBody\\\"], \\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"], ...]\"},{\"objectClass\":\"__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"head\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_head\\\"], \\\"layout\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_layout\\\"], \\\"endBody\\\" => [__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff, \\\"block_endBody\\\"], \\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"], ...]\"},{\"objectClass\":\"__TwigTemplate_4b4978db70e388684384736943116aa02aa3a3e5168b72048271f3d6fd2f9aff\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\storage\\\\runtime\\\\compiled_templates\\\\c8\\\\c8eaa48f1bd44edfaf45ea6edf82b81a7a33de14ccaa17efcebb8ddae257a4f8.php\",\"line\":47,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"layout\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_layout\\\"], \\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"], \\\"footer\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_footer\\\"]]\"},{\"objectClass\":\"__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":407,\"class\":\"__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"layout\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_layout\\\"], \\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"], \\\"footer\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_footer\\\"]]\"},{\"objectClass\":\"__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"layout\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_layout\\\"], \\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"], \\\"footer\\\" => [__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e, \\\"block_footer\\\"]]\"},{\"objectClass\":\"__TwigTemplate_481ea57ee9be854569906b23b3b2d88bf3bafd36ce6daace9950b090aa441f6e\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\storage\\\\runtime\\\\compiled_templates\\\\2e\\\\2ea55451098ca6d7418ffd603f7d05bb11953d687ff02e4fecdea5222e43e954.php\",\"line\":49,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":407,\"class\":\"__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":392,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"__TwigTemplate_0ee7e88f9a81c0d38b22c1cac19658ae3d5e518fa680d82ca35a8aa7f62f5f71\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\TemplateWrapper.php\",\"line\":45,\"class\":\"Twig\\\\Template\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], []\"},{\"objectClass\":\"Twig\\\\TemplateWrapper\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Environment.php\",\"line\":318,\"class\":\"Twig\\\\TemplateWrapper\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\Environment\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\View.php\",\"line\":344,\"class\":\"Twig\\\\Environment\",\"method\":\"render\",\"args\":\"\\\"_pages/research/research.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\View.php\",\"line\":393,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderTemplate\",\"args\":\"\\\"_pages/research/research.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Controller.php\",\"line\":243,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderPageTemplate\",\"args\":\"\\\"_pages/research/research.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\controllers\\\\TemplatesController.php\",\"line\":101,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"renderTemplate\",\"args\":\"\\\"_pages/research/research.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":null,\"line\":null,\"class\":\"craft\\\\controllers\\\\TemplatesController\",\"method\":\"actionRender\",\"args\":\"\\\"_pages/research/research.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":null,\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\InlineAction.php\",\"line\":57,\"class\":null,\"method\":\"call_user_func_array\",\"args\":\"[craft\\\\controllers\\\\TemplatesController, \\\"actionRender\\\"], [\\\"_pages/research/research.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"yii\\\\base\\\\InlineAction\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Controller.php\",\"line\":157,\"class\":\"yii\\\\base\\\\InlineAction\",\"method\":\"runWithParams\",\"args\":\"[\\\"template\\\" => \\\"_pages/research/research.twig\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"research\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Controller.php\",\"line\":187,\"class\":\"yii\\\\base\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"_pages/research/research.twig\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"research\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Module.php\",\"line\":528,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"_pages/research/research.twig\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"research\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Application.php\",\"line\":299,\"class\":\"yii\\\\base\\\\Module\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"_pages/research/research.twig\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"research\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\yiisoft\\\\yii2\\\\web\\\\Application.php\",\"line\":103,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"_pages/research/research.twig\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"research\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Application.php\",\"line\":284,\"class\":\"yii\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Application.php\",\"line\":386,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\web\\\\index.php\",\"line\":21,\"class\":\"yii\\\\base\\\\Application\",\"method\":\"run\",\"args\":null}]', '2020-01-03 20:04:17', '2020-01-03 20:04:17', '48b07cad-8f84-4ab4-a7d3-5aae6ec0611c');
INSERT INTO `deprecationerrors` (`id`, `key`, `fingerprint`, `lastOccurrence`, `file`, `line`, `message`, `traces`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(95, 'ElementQuery::getIterator()', 'C:\\wamp64\\www\\ixlab-craft\\templates\\_pages\\research\\research.twig:66', '2020-01-07 23:00:51', 'C:\\wamp64\\www\\ixlab-craft\\templates\\_pages\\research\\research.twig', 66, 'Looping through element queries directly has been deprecated. Use the all() function to fetch the query results before looping over them.', '[{\"objectClass\":\"craft\\\\services\\\\Deprecator\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\elements\\\\db\\\\ElementQuery.php\",\"line\":584,\"class\":\"craft\\\\services\\\\Deprecator\",\"method\":\"log\",\"args\":\"\\\"ElementQuery::getIterator()\\\", \\\"Looping through element queries directly has been deprecated. Us...\\\"\"},{\"objectClass\":\"craft\\\\elements\\\\db\\\\EntryQuery\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\storage\\\\runtime\\\\compiled_templates\\\\c0\\\\c0ef69691797e300c2b715b057ccc0ccbdf6a45de1175bcad35ae64f4a462b04.php\",\"line\":157,\"class\":\"craft\\\\elements\\\\db\\\\ElementQuery\",\"method\":\"getIterator\",\"args\":null},{\"objectClass\":\"__TwigTemplate_f4b3ef1b6bdfdbe0a5d6d7e91ff758f898ae23a8dc2b29e16e16bb053f51e1bb\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":184,\"class\":\"__TwigTemplate_f4b3ef1b6bdfdbe0a5d6d7e91ff758f898ae23a8dc2b29e16e16bb053f51e1bb\",\"method\":\"block_content\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"head\\\" => [__TwigTemplate_32d26abe0884e0208e1c7f259122177bdd6dfc2bc4ebcfe5ed54a5e4f57dbfa5, \\\"block_head\\\"], \\\"layout\\\" => [__TwigTemplate_3d4ac0307fd017002f079ba377852933a22bcad8dc7dcedda259766a8224434e, \\\"block_layout\\\"], \\\"endBody\\\" => [__TwigTemplate_32d26abe0884e0208e1c7f259122177bdd6dfc2bc4ebcfe5ed54a5e4f57dbfa5, \\\"block_endBody\\\"], \\\"content\\\" => [__TwigTemplate_f4b3ef1b6bdfdbe0a5d6d7e91ff758f898ae23a8dc2b29e16e16bb053f51e1bb, \\\"block_content\\\"], ...]\"},{\"objectClass\":\"__TwigTemplate_3d4ac0307fd017002f079ba377852933a22bcad8dc7dcedda259766a8224434e\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\storage\\\\runtime\\\\compiled_templates\\\\4e\\\\4e17c1f3465c2762bf8ac0c5be595ee75a27cececc50580b8aa64757c4d2df2e.php\",\"line\":105,\"class\":\"Twig\\\\Template\",\"method\":\"displayBlock\",\"args\":\"\\\"content\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"head\\\" => [__TwigTemplate_32d26abe0884e0208e1c7f259122177bdd6dfc2bc4ebcfe5ed54a5e4f57dbfa5, \\\"block_head\\\"], \\\"layout\\\" => [__TwigTemplate_3d4ac0307fd017002f079ba377852933a22bcad8dc7dcedda259766a8224434e, \\\"block_layout\\\"], \\\"endBody\\\" => [__TwigTemplate_32d26abe0884e0208e1c7f259122177bdd6dfc2bc4ebcfe5ed54a5e4f57dbfa5, \\\"block_endBody\\\"], \\\"content\\\" => [__TwigTemplate_f4b3ef1b6bdfdbe0a5d6d7e91ff758f898ae23a8dc2b29e16e16bb053f51e1bb, \\\"block_content\\\"], ...]\"},{\"objectClass\":\"__TwigTemplate_3d4ac0307fd017002f079ba377852933a22bcad8dc7dcedda259766a8224434e\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":184,\"class\":\"__TwigTemplate_3d4ac0307fd017002f079ba377852933a22bcad8dc7dcedda259766a8224434e\",\"method\":\"block_layout\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"head\\\" => [__TwigTemplate_32d26abe0884e0208e1c7f259122177bdd6dfc2bc4ebcfe5ed54a5e4f57dbfa5, \\\"block_head\\\"], \\\"layout\\\" => [__TwigTemplate_3d4ac0307fd017002f079ba377852933a22bcad8dc7dcedda259766a8224434e, \\\"block_layout\\\"], \\\"endBody\\\" => [__TwigTemplate_32d26abe0884e0208e1c7f259122177bdd6dfc2bc4ebcfe5ed54a5e4f57dbfa5, \\\"block_endBody\\\"], \\\"content\\\" => [__TwigTemplate_f4b3ef1b6bdfdbe0a5d6d7e91ff758f898ae23a8dc2b29e16e16bb053f51e1bb, \\\"block_content\\\"], ...]\"},{\"objectClass\":\"__TwigTemplate_32d26abe0884e0208e1c7f259122177bdd6dfc2bc4ebcfe5ed54a5e4f57dbfa5\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\storage\\\\runtime\\\\compiled_templates\\\\f8\\\\f8e984799beca29a9ba7942df27ac50beb5bbc50db0074959fa7d5f48574f39a.php\",\"line\":98,\"class\":\"Twig\\\\Template\",\"method\":\"displayBlock\",\"args\":\"\\\"layout\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"head\\\" => [__TwigTemplate_32d26abe0884e0208e1c7f259122177bdd6dfc2bc4ebcfe5ed54a5e4f57dbfa5, \\\"block_head\\\"], \\\"layout\\\" => [__TwigTemplate_3d4ac0307fd017002f079ba377852933a22bcad8dc7dcedda259766a8224434e, \\\"block_layout\\\"], \\\"endBody\\\" => [__TwigTemplate_32d26abe0884e0208e1c7f259122177bdd6dfc2bc4ebcfe5ed54a5e4f57dbfa5, \\\"block_endBody\\\"], \\\"content\\\" => [__TwigTemplate_f4b3ef1b6bdfdbe0a5d6d7e91ff758f898ae23a8dc2b29e16e16bb053f51e1bb, \\\"block_content\\\"], ...]\"},{\"objectClass\":\"__TwigTemplate_32d26abe0884e0208e1c7f259122177bdd6dfc2bc4ebcfe5ed54a5e4f57dbfa5\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":407,\"class\":\"__TwigTemplate_32d26abe0884e0208e1c7f259122177bdd6dfc2bc4ebcfe5ed54a5e4f57dbfa5\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"head\\\" => [__TwigTemplate_32d26abe0884e0208e1c7f259122177bdd6dfc2bc4ebcfe5ed54a5e4f57dbfa5, \\\"block_head\\\"], \\\"layout\\\" => [__TwigTemplate_3d4ac0307fd017002f079ba377852933a22bcad8dc7dcedda259766a8224434e, \\\"block_layout\\\"], \\\"endBody\\\" => [__TwigTemplate_32d26abe0884e0208e1c7f259122177bdd6dfc2bc4ebcfe5ed54a5e4f57dbfa5, \\\"block_endBody\\\"], \\\"content\\\" => [__TwigTemplate_f4b3ef1b6bdfdbe0a5d6d7e91ff758f898ae23a8dc2b29e16e16bb053f51e1bb, \\\"block_content\\\"], ...]\"},{\"objectClass\":\"__TwigTemplate_32d26abe0884e0208e1c7f259122177bdd6dfc2bc4ebcfe5ed54a5e4f57dbfa5\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"head\\\" => [__TwigTemplate_32d26abe0884e0208e1c7f259122177bdd6dfc2bc4ebcfe5ed54a5e4f57dbfa5, \\\"block_head\\\"], \\\"layout\\\" => [__TwigTemplate_3d4ac0307fd017002f079ba377852933a22bcad8dc7dcedda259766a8224434e, \\\"block_layout\\\"], \\\"endBody\\\" => [__TwigTemplate_32d26abe0884e0208e1c7f259122177bdd6dfc2bc4ebcfe5ed54a5e4f57dbfa5, \\\"block_endBody\\\"], \\\"content\\\" => [__TwigTemplate_f4b3ef1b6bdfdbe0a5d6d7e91ff758f898ae23a8dc2b29e16e16bb053f51e1bb, \\\"block_content\\\"], ...]\"},{\"objectClass\":\"__TwigTemplate_32d26abe0884e0208e1c7f259122177bdd6dfc2bc4ebcfe5ed54a5e4f57dbfa5\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\storage\\\\runtime\\\\compiled_templates\\\\4e\\\\4e17c1f3465c2762bf8ac0c5be595ee75a27cececc50580b8aa64757c4d2df2e.php\",\"line\":47,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"layout\\\" => [__TwigTemplate_3d4ac0307fd017002f079ba377852933a22bcad8dc7dcedda259766a8224434e, \\\"block_layout\\\"], \\\"content\\\" => [__TwigTemplate_f4b3ef1b6bdfdbe0a5d6d7e91ff758f898ae23a8dc2b29e16e16bb053f51e1bb, \\\"block_content\\\"], \\\"footer\\\" => [__TwigTemplate_3d4ac0307fd017002f079ba377852933a22bcad8dc7dcedda259766a8224434e, \\\"block_footer\\\"]]\"},{\"objectClass\":\"__TwigTemplate_3d4ac0307fd017002f079ba377852933a22bcad8dc7dcedda259766a8224434e\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":407,\"class\":\"__TwigTemplate_3d4ac0307fd017002f079ba377852933a22bcad8dc7dcedda259766a8224434e\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"layout\\\" => [__TwigTemplate_3d4ac0307fd017002f079ba377852933a22bcad8dc7dcedda259766a8224434e, \\\"block_layout\\\"], \\\"content\\\" => [__TwigTemplate_f4b3ef1b6bdfdbe0a5d6d7e91ff758f898ae23a8dc2b29e16e16bb053f51e1bb, \\\"block_content\\\"], \\\"footer\\\" => [__TwigTemplate_3d4ac0307fd017002f079ba377852933a22bcad8dc7dcedda259766a8224434e, \\\"block_footer\\\"]]\"},{\"objectClass\":\"__TwigTemplate_3d4ac0307fd017002f079ba377852933a22bcad8dc7dcedda259766a8224434e\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"layout\\\" => [__TwigTemplate_3d4ac0307fd017002f079ba377852933a22bcad8dc7dcedda259766a8224434e, \\\"block_layout\\\"], \\\"content\\\" => [__TwigTemplate_f4b3ef1b6bdfdbe0a5d6d7e91ff758f898ae23a8dc2b29e16e16bb053f51e1bb, \\\"block_content\\\"], \\\"footer\\\" => [__TwigTemplate_3d4ac0307fd017002f079ba377852933a22bcad8dc7dcedda259766a8224434e, \\\"block_footer\\\"]]\"},{\"objectClass\":\"__TwigTemplate_3d4ac0307fd017002f079ba377852933a22bcad8dc7dcedda259766a8224434e\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\storage\\\\runtime\\\\compiled_templates\\\\c0\\\\c0ef69691797e300c2b715b057ccc0ccbdf6a45de1175bcad35ae64f4a462b04.php\",\"line\":49,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_f4b3ef1b6bdfdbe0a5d6d7e91ff758f898ae23a8dc2b29e16e16bb053f51e1bb, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_f4b3ef1b6bdfdbe0a5d6d7e91ff758f898ae23a8dc2b29e16e16bb053f51e1bb\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":407,\"class\":\"__TwigTemplate_f4b3ef1b6bdfdbe0a5d6d7e91ff758f898ae23a8dc2b29e16e16bb053f51e1bb\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_f4b3ef1b6bdfdbe0a5d6d7e91ff758f898ae23a8dc2b29e16e16bb053f51e1bb, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_f4b3ef1b6bdfdbe0a5d6d7e91ff758f898ae23a8dc2b29e16e16bb053f51e1bb\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_f4b3ef1b6bdfdbe0a5d6d7e91ff758f898ae23a8dc2b29e16e16bb053f51e1bb, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_f4b3ef1b6bdfdbe0a5d6d7e91ff758f898ae23a8dc2b29e16e16bb053f51e1bb\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":392,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"__TwigTemplate_f4b3ef1b6bdfdbe0a5d6d7e91ff758f898ae23a8dc2b29e16e16bb053f51e1bb\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\TemplateWrapper.php\",\"line\":45,\"class\":\"Twig\\\\Template\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], []\"},{\"objectClass\":\"Twig\\\\TemplateWrapper\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Environment.php\",\"line\":318,\"class\":\"Twig\\\\TemplateWrapper\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\Environment\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\View.php\",\"line\":344,\"class\":\"Twig\\\\Environment\",\"method\":\"render\",\"args\":\"\\\"_pages/research/research.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\View.php\",\"line\":393,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderTemplate\",\"args\":\"\\\"_pages/research/research.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Controller.php\",\"line\":243,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderPageTemplate\",\"args\":\"\\\"_pages/research/research.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\controllers\\\\TemplatesController.php\",\"line\":101,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"renderTemplate\",\"args\":\"\\\"_pages/research/research.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":null,\"line\":null,\"class\":\"craft\\\\controllers\\\\TemplatesController\",\"method\":\"actionRender\",\"args\":\"\\\"_pages/research/research.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":null,\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\InlineAction.php\",\"line\":57,\"class\":null,\"method\":\"call_user_func_array\",\"args\":\"[craft\\\\controllers\\\\TemplatesController, \\\"actionRender\\\"], [\\\"_pages/research/research.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"yii\\\\base\\\\InlineAction\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Controller.php\",\"line\":157,\"class\":\"yii\\\\base\\\\InlineAction\",\"method\":\"runWithParams\",\"args\":\"[\\\"template\\\" => \\\"_pages/research/research.twig\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"research\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Controller.php\",\"line\":187,\"class\":\"yii\\\\base\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"_pages/research/research.twig\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"research\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Module.php\",\"line\":528,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"_pages/research/research.twig\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"research\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Application.php\",\"line\":299,\"class\":\"yii\\\\base\\\\Module\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"_pages/research/research.twig\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"research\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\yiisoft\\\\yii2\\\\web\\\\Application.php\",\"line\":103,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"_pages/research/research.twig\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"research\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Application.php\",\"line\":284,\"class\":\"yii\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Application.php\",\"line\":386,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\wamp64\\\\www\\\\ixlab-craft\\\\web\\\\index.php\",\"line\":21,\"class\":\"yii\\\\base\\\\Application\",\"method\":\"run\",\"args\":null}]', '2020-01-07 23:00:51', '2020-01-07 23:00:51', '2b2a1c1f-6b9e-4d50-9973-c66e15539590');

-- --------------------------------------------------------

--
-- Table structure for table `drafts`
--

DROP TABLE IF EXISTS `drafts`;
CREATE TABLE IF NOT EXISTS `drafts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sourceId` int(11) DEFAULT NULL,
  `creatorId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `notes` text,
  PRIMARY KEY (`id`),
  KEY `drafts_creatorId_fk` (`creatorId`),
  KEY `drafts_sourceId_fk` (`sourceId`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `drafts`
--

INSERT INTO `drafts` (`id`, `sourceId`, `creatorId`, `name`, `notes`) VALUES
(2, NULL, 1, 'First draft', NULL),
(3, NULL, 1, 'First draft', NULL),
(7, NULL, 1, 'First draft', NULL),
(9, 44, 1, 'Draft 1', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `elementindexsettings`
--

DROP TABLE IF EXISTS `elementindexsettings`;
CREATE TABLE IF NOT EXISTS `elementindexsettings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `settings` text,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `elementindexsettings_type_unq_idx` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `elements`
--

DROP TABLE IF EXISTS `elements`;
CREATE TABLE IF NOT EXISTS `elements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `draftId` int(11) DEFAULT NULL,
  `revisionId` int(11) DEFAULT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `archived` tinyint(1) NOT NULL DEFAULT '0',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `elements_dateDeleted_idx` (`dateDeleted`),
  KEY `elements_fieldLayoutId_idx` (`fieldLayoutId`),
  KEY `elements_type_idx` (`type`),
  KEY `elements_enabled_idx` (`enabled`),
  KEY `elements_archived_dateCreated_idx` (`archived`,`dateCreated`),
  KEY `elements_draftId_fk` (`draftId`),
  KEY `elements_revisionId_fk` (`revisionId`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `elements`
--

INSERT INTO `elements` (`id`, `draftId`, `revisionId`, `fieldLayoutId`, `type`, `enabled`, `archived`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, NULL, NULL, NULL, 'craft\\elements\\User', 1, 0, '2019-12-17 19:39:09', '2019-12-17 20:07:37', NULL, '4994c613-93ef-4af9-8b39-a068fe4c1ecf'),
(2, NULL, NULL, NULL, 'craft\\elements\\Entry', 1, 0, '2019-12-17 20:21:57', '2019-12-18 23:59:12', '2019-12-18 23:59:12', 'a001c3d5-c8e8-4b67-9c3f-fba52b42e2de'),
(3, NULL, 1, NULL, 'craft\\elements\\Entry', 1, 0, '2019-12-17 20:21:57', '2019-12-17 20:21:57', '2019-12-18 23:59:12', 'efccc7f3-2f0a-4e97-b621-82b71b321633'),
(4, NULL, NULL, NULL, 'craft\\elements\\Entry', 1, 0, '2019-12-17 20:22:20', '2019-12-19 20:33:58', NULL, '32b79359-4366-46d4-ada1-c674dce1da17'),
(5, NULL, 2, NULL, 'craft\\elements\\Entry', 1, 0, '2019-12-17 20:22:20', '2019-12-17 20:22:20', NULL, '5ec01fa7-3f0b-429f-9da6-d755e3075650'),
(6, NULL, 3, NULL, 'craft\\elements\\Entry', 1, 0, '2019-12-17 20:23:41', '2019-12-17 20:23:41', '2019-12-18 23:59:12', 'e6d9047b-089b-45ba-978d-8f66c226ccf1'),
(7, NULL, 4, NULL, 'craft\\elements\\Entry', 1, 0, '2019-12-17 20:24:43', '2019-12-17 20:24:43', '2019-12-18 23:59:12', '42313e9f-0c83-4afe-9d54-6c07b4058769'),
(8, NULL, 5, NULL, 'craft\\elements\\Entry', 1, 0, '2019-12-17 20:28:58', '2019-12-17 20:28:58', '2019-12-18 23:59:12', 'fd1a1fa9-fa59-4f06-93a0-95fb2fd1dcc8'),
(9, NULL, NULL, NULL, 'craft\\elements\\Asset', 1, 0, '2019-12-17 21:02:29', '2019-12-17 21:02:29', '2019-12-17 21:04:49', 'f866225d-e586-468c-bcc7-54dbb903449a'),
(10, NULL, NULL, NULL, 'craft\\elements\\Asset', 1, 0, '2019-12-17 21:08:18', '2019-12-17 21:08:18', NULL, '7aa0e2d7-2429-4bb7-86b6-147ea6d0eb7d'),
(12, NULL, NULL, 1, 'craft\\elements\\Entry', 1, 0, '2019-12-17 23:36:37', '2019-12-17 23:36:37', NULL, '517e3898-27b1-4317-a7dc-0d797cb7ddd5'),
(13, NULL, 6, 1, 'craft\\elements\\Entry', 1, 0, '2019-12-17 23:36:37', '2019-12-17 23:36:37', NULL, '21d232d9-4482-42ab-bc5b-94be58c4a464'),
(14, 2, NULL, NULL, 'craft\\elements\\Entry', 1, 0, '2019-12-17 23:46:04', '2019-12-17 23:46:04', NULL, '7c6c9a37-a4d2-4b4f-acbb-efa69d14d737'),
(15, 3, NULL, 2, 'craft\\elements\\Entry', 1, 0, '2019-12-17 23:46:25', '2019-12-17 23:46:25', NULL, '1a61d871-4d12-4e36-9656-9b5027dbb7ac'),
(17, NULL, NULL, NULL, 'craft\\elements\\Asset', 1, 0, '2019-12-17 23:47:21', '2019-12-17 23:47:33', NULL, '1906233b-17c8-4f4a-87eb-b69055e26b18'),
(18, NULL, NULL, 2, 'craft\\elements\\Entry', 1, 0, '2019-12-17 23:47:32', '2019-12-17 23:47:32', NULL, 'e5f5a32c-6d1b-4b9e-8575-f5d586fce079'),
(19, NULL, 7, 2, 'craft\\elements\\Entry', 1, 0, '2019-12-17 23:47:32', '2019-12-17 23:47:32', NULL, 'fe37ebdc-c568-4d17-a749-543111ae8a3d'),
(20, NULL, NULL, NULL, 'craft\\elements\\Entry', 1, 0, '2019-12-18 00:01:54', '2019-12-19 20:47:12', NULL, '0d87eeab-976f-4bb7-818e-23db4df59974'),
(21, NULL, 8, NULL, 'craft\\elements\\Entry', 1, 0, '2019-12-18 00:01:54', '2019-12-18 00:01:54', NULL, '00165bee-80c5-4ac4-9de8-3efc83c82eb7'),
(23, NULL, NULL, NULL, 'craft\\elements\\Asset', 1, 0, '2019-12-18 01:46:01', '2019-12-18 01:46:01', '2019-12-18 01:46:27', '7d0e7ae7-424c-4291-8179-2afb954b5fe0'),
(24, NULL, NULL, NULL, 'craft\\elements\\Asset', 1, 0, '2019-12-18 01:46:08', '2019-12-18 01:46:08', NULL, '0b914382-0f6b-437a-b7bb-0c76f2c85924'),
(25, NULL, NULL, 2, 'craft\\elements\\Entry', 1, 0, '2019-12-18 01:46:16', '2019-12-18 01:48:41', NULL, '2b60d06b-a67c-4b7e-a988-df97b5071b92'),
(26, NULL, 9, 2, 'craft\\elements\\Entry', 1, 0, '2019-12-18 01:46:16', '2019-12-18 01:46:16', NULL, '57427b7b-f523-4851-8f9c-e51efc7f24a2'),
(27, NULL, 10, 2, 'craft\\elements\\Entry', 1, 0, '2019-12-18 01:48:41', '2019-12-18 01:48:41', NULL, 'ed0e8c5a-ae4e-432b-8097-2b79bb2fd834'),
(28, NULL, NULL, NULL, 'craft\\elements\\Entry', 1, 0, '2019-12-18 22:29:08', '2019-12-19 20:34:10', NULL, '63436709-d72c-4dbe-af36-f74d2e0f7486'),
(29, NULL, 11, NULL, 'craft\\elements\\Entry', 1, 0, '2019-12-18 22:29:08', '2019-12-18 22:29:08', NULL, '7f1c4252-b415-45fa-b956-b479e2072c4e'),
(30, NULL, NULL, 3, 'craft\\elements\\Entry', 1, 0, '2019-12-18 22:39:54', '2019-12-19 20:33:53', NULL, '26c05971-775a-4952-a81a-3e6367765b37'),
(31, NULL, 12, NULL, 'craft\\elements\\Entry', 1, 0, '2019-12-18 22:39:54', '2019-12-18 22:39:54', NULL, '781778da-ba5a-466a-a128-3ca180010ae2'),
(33, NULL, NULL, 1, 'craft\\elements\\Entry', 1, 0, '2019-12-18 23:45:03', '2019-12-18 23:45:03', NULL, 'a9566481-5905-4534-a6e1-f0b7c9b7c6e8'),
(34, NULL, 13, 1, 'craft\\elements\\Entry', 1, 0, '2019-12-18 23:45:03', '2019-12-18 23:45:03', NULL, '65e31544-937b-4bce-985a-af53220236e8'),
(35, NULL, 14, NULL, 'craft\\elements\\Entry', 1, 0, '2019-12-18 23:48:57', '2019-12-18 23:48:57', NULL, '200b04bf-f6f8-456f-a429-2fb622c1e12e'),
(36, NULL, 15, NULL, 'craft\\elements\\Entry', 1, 0, '2019-12-18 23:49:10', '2019-12-18 23:49:10', NULL, '3358ddcf-9a68-4d91-b422-7bcacaacdd90'),
(37, NULL, NULL, NULL, 'craft\\elements\\Entry', 1, 0, '2019-12-18 23:49:46', '2019-12-19 20:34:03', NULL, '11b6b9c3-e321-41c3-8f20-00d6851ea3bd'),
(38, NULL, 16, NULL, 'craft\\elements\\Entry', 1, 0, '2019-12-18 23:49:46', '2019-12-18 23:49:46', NULL, '421bc7cf-1d6d-4327-82d2-79eb33e9e993'),
(39, NULL, 17, NULL, 'craft\\elements\\Entry', 1, 0, '2019-12-18 23:55:23', '2019-12-18 23:55:23', NULL, '816a3052-056a-4967-b059-b1fd689264e3'),
(40, NULL, 18, NULL, 'craft\\elements\\Entry', 1, 0, '2019-12-18 23:59:12', '2019-12-18 23:59:12', '2019-12-18 23:59:12', '34604f2e-2ac5-40a8-bb09-385fc2fe7143'),
(41, 7, NULL, NULL, 'craft\\elements\\Entry', 1, 0, '2019-12-19 00:02:18', '2019-12-19 00:02:18', NULL, '8936ac61-aaed-40d9-aa29-996c3594b186'),
(43, NULL, NULL, NULL, 'craft\\elements\\Asset', 1, 0, '2019-12-19 00:04:57', '2019-12-19 00:04:57', '2019-12-19 00:18:38', '918e84f6-be40-4eec-9515-2e85a990c391'),
(44, NULL, NULL, 4, 'craft\\elements\\Entry', 1, 0, '2019-12-19 00:05:17', '2019-12-20 22:41:23', NULL, 'f32d1168-22df-4c89-b479-722e37207e2d'),
(45, NULL, 19, 4, 'craft\\elements\\Entry', 1, 0, '2019-12-19 00:05:16', '2019-12-19 00:05:16', NULL, 'a3e42ab8-18c4-4343-956c-e09c5e52df3b'),
(46, NULL, 20, 4, 'craft\\elements\\Entry', 1, 0, '2019-12-19 00:07:28', '2019-12-19 00:07:28', NULL, '828fbf57-2aa1-4753-aaa8-422f5f427df7'),
(47, NULL, 21, 4, 'craft\\elements\\Entry', 1, 0, '2019-12-19 00:08:09', '2019-12-19 00:08:09', NULL, '4f124791-3fb5-49c0-87de-46f00628dbc5'),
(48, NULL, 22, 4, 'craft\\elements\\Entry', 1, 0, '2019-12-19 00:11:14', '2019-12-19 00:11:14', NULL, 'a59d1fca-60cf-4405-a8a5-ad3adc5d60b2'),
(49, NULL, 23, 4, 'craft\\elements\\Entry', 1, 0, '2019-12-19 00:13:31', '2019-12-19 00:13:31', NULL, 'c12d74f4-ed8d-490e-aa29-abc625c91d00'),
(50, NULL, NULL, NULL, 'craft\\elements\\Asset', 1, 0, '2019-12-19 00:19:02', '2019-12-19 00:19:02', NULL, '7d703990-801e-40bc-91c2-2cc87b30655a'),
(51, NULL, NULL, NULL, 'craft\\elements\\Asset', 1, 0, '2019-12-19 00:21:13', '2020-01-03 20:22:10', NULL, 'f38d2b88-918c-4cb7-a797-1a001b2582d3'),
(52, NULL, NULL, NULL, 'craft\\elements\\Asset', 1, 0, '2019-12-19 00:22:02', '2020-01-03 20:22:10', NULL, '3b939cc4-7d97-442f-912b-912c919d6abb'),
(53, NULL, 24, 4, 'craft\\elements\\Entry', 1, 0, '2019-12-19 00:22:07', '2019-12-19 00:22:07', NULL, '2c7567aa-f17e-49fd-9414-30855e74a1c3'),
(54, NULL, 25, 3, 'craft\\elements\\Entry', 1, 0, '2019-12-19 20:33:53', '2019-12-19 20:33:53', NULL, '5d4edfe6-a3ea-4fbf-8239-6292d1de37a6'),
(55, NULL, 26, NULL, 'craft\\elements\\Entry', 1, 0, '2019-12-19 20:33:58', '2019-12-19 20:33:58', NULL, '71db0553-17b0-4fc0-86ed-9118a400d585'),
(56, NULL, 27, NULL, 'craft\\elements\\Entry', 1, 0, '2019-12-19 20:34:03', '2019-12-19 20:34:03', NULL, '63e77e22-b9c6-4c30-85aa-36cb21c1773c'),
(57, NULL, 28, NULL, 'craft\\elements\\Entry', 1, 0, '2019-12-19 20:34:07', '2019-12-19 20:34:07', NULL, '6b02bfef-cd75-48f2-b4c6-d50a1ad05106'),
(58, NULL, 29, NULL, 'craft\\elements\\Entry', 1, 0, '2019-12-19 20:34:10', '2019-12-19 20:34:10', NULL, '79756fb4-13e7-4b7a-a838-8b8e151614ec'),
(59, NULL, NULL, NULL, 'craft\\elements\\Entry', 1, 0, '2019-12-19 20:34:58', '2019-12-19 20:34:58', NULL, 'a45beb3c-b087-4ae6-8f45-9be730ab0fab'),
(60, NULL, 30, NULL, 'craft\\elements\\Entry', 1, 0, '2019-12-19 20:34:58', '2019-12-19 20:34:58', NULL, '65b43f5c-86b7-4cf0-bf1d-853b46c87eb4'),
(61, NULL, 31, NULL, 'craft\\elements\\Entry', 1, 0, '2019-12-19 20:47:12', '2019-12-19 20:47:12', NULL, '331e3e77-71a0-4ac9-8bb7-d38021f8bd08'),
(62, 9, NULL, 4, 'craft\\elements\\Entry', 1, 0, '2019-12-19 22:53:27', '2019-12-19 22:53:27', NULL, 'ad1846b5-c173-4edc-84e4-751d07ce5009'),
(63, NULL, NULL, NULL, 'craft\\elements\\Category', 1, 0, '2019-12-20 22:38:39', '2019-12-20 22:38:39', NULL, '47f59a04-055b-4de7-a42c-9065a3722d94'),
(64, NULL, NULL, NULL, 'craft\\elements\\Category', 1, 0, '2019-12-20 22:38:46', '2019-12-20 22:38:46', NULL, 'b80c1012-0798-41e7-908d-bc77d4f03ccb'),
(65, NULL, 32, 4, 'craft\\elements\\Entry', 1, 0, '2019-12-20 22:41:23', '2019-12-20 22:41:23', NULL, '2b4b6e48-923c-4713-8f70-c5dc4bd6e910'),
(67, NULL, NULL, 4, 'craft\\elements\\Entry', 1, 0, '2019-12-20 22:43:49', '2019-12-20 22:43:49', NULL, 'e30a1e7f-02a5-4fc9-b4d2-11e471b16550'),
(68, NULL, 33, 4, 'craft\\elements\\Entry', 1, 0, '2019-12-20 22:43:49', '2019-12-20 22:43:49', NULL, '43329036-c76f-4761-94f4-3a0fcaa1dd6e'),
(70, NULL, NULL, NULL, 'craft\\elements\\Asset', 1, 0, '2020-01-03 20:12:52', '2020-01-03 20:13:18', NULL, '341dd838-81bc-4a3e-9063-90b4007aed9e'),
(71, NULL, NULL, 4, 'craft\\elements\\Entry', 1, 0, '2020-01-03 20:13:18', '2020-01-03 20:13:18', NULL, 'fcb58b6c-193b-4185-80dc-a2c6bbdfbdd0'),
(72, NULL, 34, 4, 'craft\\elements\\Entry', 1, 0, '2020-01-03 20:13:18', '2020-01-03 20:13:18', NULL, '05ebe3b9-2536-44d4-9d8d-12d2e639e33e'),
(74, NULL, NULL, NULL, 'craft\\elements\\Asset', 1, 0, '2020-01-03 20:14:47', '2020-01-03 20:20:50', NULL, '8300ece1-568a-4243-bb2e-a8e4100ba2cf'),
(75, NULL, NULL, 4, 'craft\\elements\\Entry', 1, 0, '2020-01-03 20:14:53', '2020-01-03 20:14:52', NULL, '8f2336fa-9486-4a35-891a-ec974fa5fe2a'),
(76, NULL, 35, 4, 'craft\\elements\\Entry', 1, 0, '2020-01-03 20:14:52', '2020-01-03 20:14:52', NULL, 'ebdc555a-e0a9-496c-8952-a82cfbede56b'),
(77, NULL, NULL, 4, 'craft\\elements\\Entry', 1, 0, '2020-01-03 20:20:18', '2020-01-03 20:20:53', NULL, '342fac5b-3901-4b96-bb1a-59c77907f257'),
(78, NULL, 36, 4, 'craft\\elements\\Entry', 1, 0, '2020-01-03 20:14:52', '2020-01-03 20:14:52', NULL, 'b955a10f-785d-4938-a2c0-263d8a22162f'),
(79, NULL, 37, 4, 'craft\\elements\\Entry', 1, 0, '2020-01-03 20:20:18', '2020-01-03 20:20:18', NULL, '77ed5303-05a4-4683-a468-aa32376be003'),
(80, NULL, 38, 4, 'craft\\elements\\Entry', 1, 0, '2020-01-03 20:20:50', '2020-01-03 20:20:50', NULL, '543a1f7a-d11d-4fa9-8ad7-05f36c5be791'),
(81, NULL, 39, 4, 'craft\\elements\\Entry', 1, 0, '2020-01-03 20:20:53', '2020-01-03 20:20:53', NULL, '3fea2890-8fba-4c85-8f37-d2e1833c7fd8'),
(82, NULL, NULL, 4, 'craft\\elements\\Entry', 1, 0, '2020-01-03 20:22:00', '2020-01-03 20:22:10', NULL, 'fbb6a018-edb3-4e01-8f1d-b2de8920bbe2'),
(83, NULL, 40, 4, 'craft\\elements\\Entry', 1, 0, '2019-12-20 22:41:23', '2019-12-20 22:41:23', NULL, '5049f2ad-a9a8-4e91-ac9f-081389b40b20'),
(84, NULL, 41, 4, 'craft\\elements\\Entry', 1, 0, '2020-01-03 20:22:01', '2020-01-03 20:22:01', NULL, '7302862c-5d6e-4a80-9c9d-649c2f4b6324'),
(85, NULL, 42, 4, 'craft\\elements\\Entry', 1, 0, '2020-01-03 20:22:10', '2020-01-03 20:22:10', NULL, 'd4000206-db65-4997-8977-0040501e8f95');

-- --------------------------------------------------------

--
-- Table structure for table `elements_sites`
--

DROP TABLE IF EXISTS `elements_sites`;
CREATE TABLE IF NOT EXISTS `elements_sites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `elementId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `uri` varchar(255) DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `elements_sites_elementId_siteId_unq_idx` (`elementId`,`siteId`),
  KEY `elements_sites_siteId_idx` (`siteId`),
  KEY `elements_sites_slug_siteId_idx` (`slug`,`siteId`),
  KEY `elements_sites_enabled_idx` (`enabled`),
  KEY `elements_sites_uri_siteId_idx` (`uri`,`siteId`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `elements_sites`
--

INSERT INTO `elements_sites` (`id`, `elementId`, `siteId`, `slug`, `uri`, `enabled`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 1, NULL, NULL, 1, '2019-12-17 19:39:09', '2019-12-17 19:39:09', 'dfd5afc7-f6ca-43d4-8aac-8ab6270c6993'),
(2, 2, 1, 'about', 'about', 1, '2019-12-17 20:21:57', '2019-12-17 20:28:58', 'b0140e61-514b-4187-b9ac-7b7831add49f'),
(3, 3, 1, 'about', 'about', 1, '2019-12-17 20:21:57', '2019-12-17 20:21:57', 'd71515d4-1546-4d68-9f15-5f30de40fddc'),
(4, 4, 1, 'home', '__home__', 1, '2019-12-17 20:22:20', '2019-12-17 20:22:20', 'aab73a21-7369-48a8-9cfa-c90b25c40419'),
(5, 5, 1, 'home', '__home__', 1, '2019-12-17 20:22:20', '2019-12-17 20:22:20', '9135c86c-7879-49fc-978d-0eb3c05a7b25'),
(6, 6, 1, 'about', 'about', 1, '2019-12-17 20:23:41', '2019-12-17 20:23:41', 'c05757b8-40ec-47e8-8879-01574715a676'),
(7, 7, 1, 'about', 'about/about', 1, '2019-12-17 20:24:43', '2019-12-17 20:24:43', '2515abb0-93b7-4174-a4d4-ca4a1bcbbfb2'),
(8, 8, 1, 'about', 'about', 1, '2019-12-17 20:28:58', '2019-12-17 20:28:58', 'd9b76b80-ecd0-4a67-a81b-0debc1180ca3'),
(9, 9, 1, NULL, NULL, 1, '2019-12-17 21:02:29', '2019-12-17 21:02:29', '14ff1aa0-2dba-4f80-b38f-aa1307cd753d'),
(10, 10, 1, NULL, NULL, 1, '2019-12-17 21:08:18', '2019-12-17 21:08:18', '70fb0254-99b2-47d3-b3f1-8ee38b67220f'),
(12, 12, 1, 'welcome-to-the-new-ixlab-website', 'news/welcome-to-the-new-ixlab-website', 1, '2019-12-17 23:36:37', '2019-12-17 23:36:37', '333e8f79-0d03-498e-b226-f585272dadf2'),
(13, 13, 1, 'welcome-to-the-new-ixlab-website', 'news/welcome-to-the-new-ixlab-website', 1, '2019-12-17 23:36:37', '2019-12-17 23:36:37', '40c5ed09-6a6b-405b-a4dc-7245d7c9697a'),
(14, 14, 1, '__temp_0bhQ8rHD7UilhU8tNVo9Bo2Uel3MA8JNDQnc', 'people/__temp_0bhQ8rHD7UilhU8tNVo9Bo2Uel3MA8JNDQnc', 1, '2019-12-17 23:46:04', '2019-12-17 23:46:04', '4b6fd8ab-d18e-4b93-acf6-775b00cbc492'),
(15, 15, 1, '__temp_bHdD6o0l6sZA8qkmuCg4KRSx7hOCOLoVjSOa', 'people/__temp_bHdD6o0l6sZA8qkmuCg4KRSx7hOCOLoVjSOa', 1, '2019-12-17 23:46:25', '2019-12-17 23:46:25', 'e755adcb-5c90-424c-bdf5-628143ecc8f1'),
(17, 17, 1, NULL, NULL, 1, '2019-12-17 23:47:21', '2019-12-17 23:47:21', 'dc8fcc52-a55c-4e65-ad86-2a57b50a62f0'),
(18, 18, 1, 'peter-buk', 'people/peter-buk', 1, '2019-12-17 23:47:32', '2019-12-17 23:47:32', '5f9bb898-b392-41e2-951b-7b7bfe61ba4a'),
(19, 19, 1, 'peter-buk', 'people/peter-buk', 1, '2019-12-17 23:47:33', '2019-12-17 23:47:33', 'a98ee71b-0a8c-4866-8c6d-8d4f3e67485c'),
(20, 20, 1, 'people-index', 'people', 1, '2019-12-18 00:01:54', '2019-12-18 00:01:54', '4e5ba7a4-8cb8-4c84-80db-ddc1b88bc7c9'),
(21, 21, 1, 'people-index', 'people', 1, '2019-12-18 00:01:54', '2019-12-18 00:01:54', 'd7b47b90-6d9a-43da-b926-6abf0512ca68'),
(23, 23, 1, NULL, NULL, 1, '2019-12-18 01:46:01', '2019-12-18 01:46:01', '9a80ee30-57b4-4990-8aa9-e3335b3821c5'),
(24, 24, 1, NULL, NULL, 1, '2019-12-18 01:46:08', '2019-12-18 01:46:08', 'fce5d47d-218d-4d1c-b28a-6e12d9f483a7'),
(25, 25, 1, 'lien-quach', 'people/lien-quach', 1, '2019-12-18 01:46:16', '2019-12-18 01:46:16', '88f21cdd-7f18-4254-a201-3f9b07f64ffd'),
(26, 26, 1, 'lien-quach', 'people/lien-quach', 1, '2019-12-18 01:46:16', '2019-12-18 01:46:16', '4a261197-9b7d-43dd-bb1f-3311d35be30d'),
(27, 27, 1, 'lien-quach', 'people/lien-quach', 1, '2019-12-18 01:48:41', '2019-12-18 01:48:41', '053e1acf-d38b-4349-b26b-5b97d4051e51'),
(28, 28, 1, 'research-index', 'research', 1, '2019-12-18 22:29:08', '2019-12-18 22:29:08', '3a93a12b-bd89-4255-b4ea-f9621e5b64fd'),
(29, 29, 1, 'research-index', 'research', 1, '2019-12-18 22:29:08', '2019-12-18 22:29:08', 'a52e4657-f331-4123-9033-3086bff3bf20'),
(30, 30, 1, 'affiliations', 'affiliations', 1, '2019-12-18 22:39:54', '2019-12-18 22:39:54', '69ffebd3-c6c6-4e7d-aed9-72b945b105f3'),
(31, 31, 1, 'affiliations', 'affiliations', 1, '2019-12-18 22:39:54', '2019-12-18 22:39:54', '6152bcd6-a609-4a9b-925b-de62faa2da15'),
(33, 33, 1, 'testing-which-rich-text-editor-is-more-powerful', 'news/testing-which-rich-text-editor-is-more-powerful', 1, '2019-12-18 23:45:03', '2019-12-18 23:45:03', 'eaed312a-9f1e-427f-9355-044f13debce2'),
(34, 34, 1, 'testing-which-rich-text-editor-is-more-powerful', 'news/testing-which-rich-text-editor-is-more-powerful', 1, '2019-12-18 23:45:03', '2019-12-18 23:45:03', 'cf5778ea-3b46-4149-90d0-9e56b49f7e30'),
(35, 35, 1, 'affiliations', 'affiliations', 1, '2019-12-18 23:48:57', '2019-12-18 23:48:57', '91071b6a-3834-4d75-bf60-4796265be26f'),
(36, 36, 1, 'home', '__home__', 1, '2019-12-18 23:49:10', '2019-12-18 23:49:10', 'e02fb3d3-0c85-494d-8430-2193887b4bb1'),
(37, 37, 1, 'news-index', 'news', 1, '2019-12-18 23:49:46', '2019-12-18 23:49:46', '2018399b-6283-45ed-8639-aef25b539dd9'),
(38, 38, 1, 'news-index', 'news', 1, '2019-12-18 23:49:46', '2019-12-18 23:49:46', 'b0481bcd-d1ce-407a-9e2c-f363611f5382'),
(39, 39, 1, 'news-index', 'news', 1, '2019-12-18 23:55:23', '2019-12-18 23:55:23', 'd78d8c3d-b9b0-4917-9c91-b1dca69f7527'),
(40, 40, 1, 'about', 'about', 1, '2019-12-18 23:59:12', '2019-12-18 23:59:12', 'c7e0eb95-6b9b-439d-9672-5fa71345b805'),
(41, 41, 1, '__temp_HW4t8Ykgscb7AVIocM46LuRVvtVocHSTCTZy', 'research/__temp_HW4t8Ykgscb7AVIocM46LuRVvtVocHSTCTZy', 1, '2019-12-19 00:02:18', '2019-12-19 00:02:18', 'bfe8e677-6523-43e7-a557-b8cf7b650a34'),
(43, 43, 1, NULL, NULL, 1, '2019-12-19 00:04:57', '2019-12-19 00:04:57', '8cfb39ec-aabd-419f-8f71-0fea8cde1e43'),
(44, 44, 1, 'sample-research-project', 'research/sample-research-project', 1, '2019-12-19 00:05:17', '2019-12-19 00:05:17', '768a4051-1a34-4804-8e08-e7f0ba6d668a'),
(45, 45, 1, 'sample-research-project', 'research/sample-research-project', 1, '2019-12-19 00:05:17', '2019-12-19 00:05:17', '0cb8e8b9-926b-4d3d-a930-cd3b10a8cdde'),
(46, 46, 1, 'sample-research-project', 'research/sample-research-project', 1, '2019-12-19 00:07:28', '2019-12-19 00:07:28', 'fd0b6df8-8a29-4953-8b1a-f1749f938c69'),
(47, 47, 1, 'sample-research-project', 'research/sample-research-project', 1, '2019-12-19 00:08:09', '2019-12-19 00:08:09', '34b746ba-2bd0-4ce5-be14-aa76b386b443'),
(48, 48, 1, 'sample-research-project', 'research/sample-research-project', 1, '2019-12-19 00:11:14', '2019-12-19 00:11:14', 'cc17069a-1697-4b00-8a52-7c6346f8bec2'),
(49, 49, 1, 'sample-research-project', 'research/sample-research-project', 1, '2019-12-19 00:13:31', '2019-12-19 00:13:31', '06a0f72e-dc0b-421e-8cab-1d9d71cb8421'),
(50, 50, 1, NULL, NULL, 1, '2019-12-19 00:19:02', '2019-12-19 00:19:02', '7d810c99-879e-4b36-8d54-000a11df5980'),
(51, 51, 1, NULL, NULL, 1, '2019-12-19 00:21:13', '2019-12-19 00:21:13', '153d59e6-fe2b-4568-aca7-b833bbffca4c'),
(52, 52, 1, NULL, NULL, 1, '2019-12-19 00:22:02', '2019-12-19 00:22:02', 'f504ed85-e03a-4efb-b2bd-083f3d6e29fa'),
(53, 53, 1, 'sample-research-project', 'research/sample-research-project', 1, '2019-12-19 00:22:08', '2019-12-19 00:22:08', 'ef54db7e-9fa2-486a-acab-eca187d7a301'),
(54, 54, 1, 'affiliations', 'affiliations', 1, '2019-12-19 20:33:53', '2019-12-19 20:33:53', '0e340523-4984-40d2-b210-8cdfd3354854'),
(55, 55, 1, 'home', '__home__', 1, '2019-12-19 20:33:58', '2019-12-19 20:33:58', '42c3aa15-d99f-49a0-9c24-eb69a54fcba5'),
(56, 56, 1, 'news-index', 'news', 1, '2019-12-19 20:34:03', '2019-12-19 20:34:03', 'f223abf9-012f-438b-92d0-9a2bc73b0e7a'),
(57, 57, 1, 'people-index', 'people', 1, '2019-12-19 20:34:07', '2019-12-19 20:34:07', '48f91569-195e-4fe7-a3bd-a95a8a9b8c3a'),
(58, 58, 1, 'research-index', 'research', 1, '2019-12-19 20:34:10', '2019-12-19 20:34:10', '33fea93c-e8c8-4d30-9762-446886a7590d'),
(59, 59, 1, 'course-index', 'courses', 1, '2019-12-19 20:34:58', '2019-12-19 20:34:58', '0dadc5c0-e66b-442b-95a0-68292b1de379'),
(60, 60, 1, 'course-index', 'courses', 1, '2019-12-19 20:34:58', '2019-12-19 20:34:58', '2d2286a3-4c79-4996-8191-9735b76317ae'),
(61, 61, 1, 'people-index', 'people', 1, '2019-12-19 20:47:12', '2019-12-19 20:47:12', '9922e29a-8be3-4186-a190-e0ce8d357b4d'),
(62, 62, 1, 'sample-research-project', 'research/sample-research-project', 1, '2019-12-19 22:53:27', '2019-12-19 22:53:27', '31a29f0d-5ccf-4d99-8339-425aacd85e42'),
(63, 63, 1, 'parmits-lab', 'research-lab/parmits-lab', 1, '2019-12-20 22:38:39', '2019-12-20 22:38:41', '5fd2d0a8-68d1-4481-9a5c-e176abc978c0'),
(64, 64, 1, 'innovis', 'research-lab/innovis', 1, '2019-12-20 22:38:46', '2019-12-20 22:38:48', '2fd947db-5e83-4b84-8b0e-af73cce0974d'),
(65, 65, 1, 'sample-research-project', 'research/sample-research-project', 1, '2019-12-20 22:41:23', '2019-12-20 22:41:23', 'e47b14dc-5036-494f-9795-d8ff48492363'),
(67, 67, 1, 'modern-software-product-support-processes-and-the-usage-of-multimedia-formats', 'research/modern-software-product-support-processes-and-the-usage-of-multimedia-formats', 1, '2019-12-20 22:43:49', '2019-12-20 22:43:49', '80d08822-80f5-4eac-88b2-7f8a158aeec1'),
(68, 68, 1, 'modern-software-product-support-processes-and-the-usage-of-multimedia-formats', 'research/modern-software-product-support-processes-and-the-usage-of-multimedia-formats', 1, '2019-12-20 22:43:49', '2019-12-20 22:43:49', '17fea0ff-e5b7-4b63-9132-964240d7d8f2'),
(70, 70, 1, NULL, NULL, 1, '2020-01-03 20:12:52', '2020-01-03 20:12:52', '00fe083a-d484-4ec7-96ea-697575b4064d'),
(71, 71, 1, '2d-time-trajectories', 'research/2d-time-trajectories', 1, '2020-01-03 20:13:18', '2020-01-03 20:13:18', '4ffda925-d18a-467d-b576-018d1eb7f6d4'),
(72, 72, 1, '2d-time-trajectories', 'research/2d-time-trajectories', 1, '2020-01-03 20:13:19', '2020-01-03 20:13:19', 'bb1e9308-0803-4f5c-a895-7a468dc30ab9'),
(74, 74, 1, NULL, NULL, 1, '2020-01-03 20:14:47', '2020-01-03 20:14:47', '2f5a3f84-2646-4d9e-b219-96634c3aece6'),
(75, 75, 1, 'active-reading-of-visualizations', 'research/active-reading-of-visualizations', 1, '2020-01-03 20:14:53', '2020-01-03 20:14:53', '852fd513-66a1-4aff-9ba9-c83b0975c0a9'),
(76, 76, 1, 'active-reading-of-visualizations', 'research/active-reading-of-visualizations', 1, '2020-01-03 20:14:53', '2020-01-03 20:14:53', 'b3e06ad5-3d0c-49be-80aa-99b92d2eb94e'),
(77, 77, 1, 'another-proj', 'research/another-proj', 1, '2020-01-03 20:20:18', '2020-01-03 20:20:50', '899a9712-dcc7-458b-b506-377215837c32'),
(78, 78, 1, 'active-reading-of-visualizations-1', 'research/active-reading-of-visualizations-1', 1, '2020-01-03 20:20:18', '2020-01-03 20:20:18', '2a7dca02-b708-44ac-ae37-1e4c507650de'),
(79, 79, 1, 'active-reading-of-visualizations-1', 'research/active-reading-of-visualizations-1', 1, '2020-01-03 20:20:19', '2020-01-03 20:20:19', '46f97f9d-745c-4fdc-be68-7229ab280b89'),
(80, 80, 1, 'another-proj', 'research/another-proj', 1, '2020-01-03 20:20:51', '2020-01-03 20:20:51', '0beb8dc5-27c4-474b-bde6-09f4ce393c4b'),
(81, 81, 1, 'another-proj', 'research/another-proj', 1, '2020-01-03 20:20:53', '2020-01-03 20:20:53', '783fc947-ea91-406f-9763-6c84607c4da1'),
(82, 82, 1, 'research-yvr', 'research/research-yvr', 1, '2020-01-03 20:22:00', '2020-01-03 20:22:10', '4bedf4e3-5107-454c-ba77-c532356ab736'),
(83, 83, 1, 'sample-research-project-1', 'research/sample-research-project-1', 1, '2020-01-03 20:22:00', '2020-01-03 20:22:00', '322a4371-749c-4775-b978-e751d4ff9b54'),
(84, 84, 1, 'sample-research-project-1', 'research/sample-research-project-1', 1, '2020-01-03 20:22:01', '2020-01-03 20:22:01', 'c24d21cc-e4e1-449c-80cd-33cb3e68d079'),
(85, 85, 1, 'research-yvr', 'research/research-yvr', 1, '2020-01-03 20:22:11', '2020-01-03 20:22:11', 'b5f14cf5-2939-4ae7-9872-caa28448eadc');

-- --------------------------------------------------------

--
-- Table structure for table `entries`
--

DROP TABLE IF EXISTS `entries`;
CREATE TABLE IF NOT EXISTS `entries` (
  `id` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `parentId` int(11) DEFAULT NULL,
  `typeId` int(11) NOT NULL,
  `authorId` int(11) DEFAULT NULL,
  `postDate` datetime DEFAULT NULL,
  `expiryDate` datetime DEFAULT NULL,
  `deletedWithEntryType` tinyint(1) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `entries_postDate_idx` (`postDate`),
  KEY `entries_expiryDate_idx` (`expiryDate`),
  KEY `entries_authorId_idx` (`authorId`),
  KEY `entries_sectionId_idx` (`sectionId`),
  KEY `entries_typeId_idx` (`typeId`),
  KEY `entries_parentId_fk` (`parentId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `entries`
--

INSERT INTO `entries` (`id`, `sectionId`, `parentId`, `typeId`, `authorId`, `postDate`, `expiryDate`, `deletedWithEntryType`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(2, 1, NULL, 1, NULL, '2019-12-17 20:21:00', NULL, 1, '2019-12-17 20:21:57', '2019-12-17 20:21:57', '2ac4295e-7d46-4478-a1fc-223437116d53'),
(3, 1, NULL, 1, NULL, '2019-12-17 20:21:00', NULL, NULL, '2019-12-17 20:21:57', '2019-12-17 20:21:57', '014d7e60-ba53-4833-982e-e5de02098c85'),
(4, 2, NULL, 2, NULL, '2019-12-17 20:22:00', NULL, NULL, '2019-12-17 20:22:20', '2019-12-17 20:22:20', '66417f84-b5e6-4bfe-b620-4ea2471777e8'),
(5, 2, NULL, 2, NULL, '2019-12-17 20:22:00', NULL, NULL, '2019-12-17 20:22:20', '2019-12-17 20:22:20', 'b98860df-6740-4baa-9efc-0148d46fc980'),
(6, 1, NULL, 1, NULL, '2019-12-17 20:21:00', NULL, NULL, '2019-12-17 20:23:41', '2019-12-17 20:23:41', '02fa09bc-aabd-46ba-a122-033259d89501'),
(7, 1, NULL, 1, NULL, '2019-12-17 20:21:00', NULL, NULL, '2019-12-17 20:24:43', '2019-12-17 20:24:43', '5d990552-8cdd-4f03-9207-173938731ff7'),
(8, 1, NULL, 1, NULL, '2019-12-17 20:21:00', NULL, NULL, '2019-12-17 20:28:58', '2019-12-17 20:28:58', '5724324b-98d8-4154-96a8-294e7fc32a44'),
(12, 4, NULL, 4, 1, '2019-12-17 23:35:00', NULL, NULL, '2019-12-17 23:36:37', '2019-12-17 23:36:37', 'bccf2220-e0f5-4c22-ac3f-300b0e30693a'),
(13, 4, NULL, 4, 1, '2019-12-17 23:35:00', NULL, NULL, '2019-12-17 23:36:37', '2019-12-17 23:36:37', 'b3d49aaf-3c5d-4dd1-9e16-5dd3d361b26f'),
(14, 3, NULL, 3, 1, '2019-12-17 23:46:00', NULL, NULL, '2019-12-17 23:46:04', '2019-12-17 23:46:04', 'ebc4e1b7-61a0-4326-a027-467f8f330c48'),
(15, 3, NULL, 3, 1, '2019-12-17 23:46:00', NULL, NULL, '2019-12-17 23:46:25', '2019-12-17 23:46:25', 'b7dab9d9-6d78-4df1-8d11-5fc47977a977'),
(18, 3, NULL, 3, 1, '2019-12-17 23:46:00', NULL, NULL, '2019-12-17 23:47:32', '2019-12-17 23:47:32', 'd48fc858-e5d1-44c7-b32a-50f187fe11fd'),
(19, 3, NULL, 3, 1, '2019-12-17 23:46:00', NULL, NULL, '2019-12-17 23:47:33', '2019-12-17 23:47:33', '42a86f8e-3085-4ebc-81b5-bd941dcd9eab'),
(20, 5, NULL, 5, NULL, '2019-12-18 00:01:00', NULL, NULL, '2019-12-18 00:01:54', '2019-12-18 00:01:54', '83e3d0f1-1783-4867-8ddb-c0959b6949b3'),
(21, 5, NULL, 5, NULL, '2019-12-18 00:01:00', NULL, NULL, '2019-12-18 00:01:54', '2019-12-18 00:01:54', '1c8d49e6-42a0-49ba-bd54-77d6da1dd4b6'),
(25, 3, NULL, 3, 1, '2019-12-18 01:44:00', NULL, NULL, '2019-12-18 01:46:16', '2019-12-18 01:46:16', '188c080d-760b-4bef-85c8-255bd3dd6afd'),
(26, 3, NULL, 3, 1, '2019-12-18 01:44:00', NULL, NULL, '2019-12-18 01:46:16', '2019-12-18 01:46:16', '4466d8a8-969f-497d-8534-00d4c9b0adb3'),
(27, 3, NULL, 3, 1, '2019-12-18 01:44:00', NULL, NULL, '2019-12-18 01:48:41', '2019-12-18 01:48:41', '7147601d-3653-4d96-afba-6c4f59c753aa'),
(28, 7, NULL, 7, NULL, '2019-12-18 22:29:00', NULL, NULL, '2019-12-18 22:29:08', '2019-12-18 22:29:08', '4a0c2b41-3508-4c57-9581-6b411fe3da70'),
(29, 7, NULL, 7, NULL, '2019-12-18 22:29:00', NULL, NULL, '2019-12-18 22:29:08', '2019-12-18 22:29:08', '242c23af-2e43-473a-b20d-6fdd79d9404b'),
(30, 8, NULL, 8, NULL, '2019-12-18 22:39:00', NULL, NULL, '2019-12-18 22:39:54', '2019-12-18 22:39:54', '91d00c59-60c8-4372-be78-3e5ea0ed2674'),
(31, 8, NULL, 8, NULL, '2019-12-18 22:39:00', NULL, NULL, '2019-12-18 22:39:54', '2019-12-18 22:39:54', '156bfc94-e313-4f4a-b2ab-bc275dbc5ae9'),
(33, 4, NULL, 4, 1, '2019-12-18 23:42:00', NULL, NULL, '2019-12-18 23:45:03', '2019-12-18 23:45:03', '9788d7e2-7f41-4332-9b96-327128638a6f'),
(34, 4, NULL, 4, 1, '2019-12-18 23:42:00', NULL, NULL, '2019-12-18 23:45:03', '2019-12-18 23:45:03', '3b965694-f000-4cfa-a01d-cc72c19356bd'),
(35, 8, NULL, 8, NULL, '2019-12-18 22:39:00', NULL, NULL, '2019-12-18 23:48:57', '2019-12-18 23:48:57', 'd0197314-becb-44ba-99a8-aa1fce5558e0'),
(36, 2, NULL, 2, NULL, '2019-12-17 20:22:00', NULL, NULL, '2019-12-18 23:49:10', '2019-12-18 23:49:10', '9e59bbd9-526e-43c4-acb1-5d0f37e20c39'),
(37, 9, NULL, 9, NULL, '2019-12-18 23:49:00', NULL, NULL, '2019-12-18 23:49:46', '2019-12-18 23:49:46', '4e6116f2-425d-4ed2-84a2-78602008da0d'),
(38, 9, NULL, 9, NULL, '2019-12-18 23:49:00', NULL, NULL, '2019-12-18 23:49:46', '2019-12-18 23:49:46', '162e2a46-316d-425a-8e0b-5b4f0f123650'),
(39, 9, NULL, 9, NULL, '2019-12-18 23:49:00', NULL, NULL, '2019-12-18 23:55:23', '2019-12-18 23:55:23', '77d33346-4a1b-47aa-a282-4defe9105f71'),
(40, 1, NULL, 1, NULL, '2019-12-17 20:21:00', NULL, NULL, '2019-12-18 23:59:12', '2019-12-18 23:59:12', 'dd9c144c-733c-46f3-a9f2-2ad5e5907423'),
(41, 6, NULL, 6, 1, '2019-12-19 00:02:00', NULL, NULL, '2019-12-19 00:02:18', '2019-12-19 00:02:18', '449186cf-1282-460d-94af-e908ea913190'),
(44, 6, NULL, 6, 1, '2019-12-19 00:02:00', NULL, NULL, '2019-12-19 00:05:17', '2019-12-19 00:05:17', 'c3b403cd-d5bf-4b6f-bbd9-2fc8eec2e6a9'),
(45, 6, NULL, 6, 1, '2019-12-19 00:02:00', NULL, NULL, '2019-12-19 00:05:17', '2019-12-19 00:05:17', '5dda8560-1d39-45e1-b6e2-420d89f0679f'),
(46, 6, NULL, 6, 1, '2019-12-19 00:02:00', NULL, NULL, '2019-12-19 00:07:28', '2019-12-19 00:07:28', 'a5823442-5b89-4e95-857d-409641d9d255'),
(47, 6, NULL, 6, 1, '2019-12-19 00:02:00', NULL, NULL, '2019-12-19 00:08:09', '2019-12-19 00:08:09', '650ca603-efe8-460f-bdca-5a9556bddf94'),
(48, 6, NULL, 6, 1, '2019-12-19 00:02:00', NULL, NULL, '2019-12-19 00:11:14', '2019-12-19 00:11:14', '084dcb2b-f8e5-4713-9e7e-38ed2cddcc5b'),
(49, 6, NULL, 6, 1, '2019-12-19 00:02:00', NULL, NULL, '2019-12-19 00:13:31', '2019-12-19 00:13:31', 'f675574a-ad71-4f31-a811-d18ac88204f0'),
(53, 6, NULL, 6, 1, '2019-12-19 00:02:00', NULL, NULL, '2019-12-19 00:22:08', '2019-12-19 00:22:08', '5860ae73-ac26-4d7d-8ae4-53730f343d44'),
(54, 8, NULL, 8, NULL, '2019-12-18 22:39:00', NULL, NULL, '2019-12-19 20:33:53', '2019-12-19 20:33:53', '4b39606d-5549-4d3d-9f5c-494b221ecadf'),
(55, 2, NULL, 2, NULL, '2019-12-17 20:22:00', NULL, NULL, '2019-12-19 20:33:58', '2019-12-19 20:33:58', 'f2250a90-92cd-4f60-bb3b-5d27191858cf'),
(56, 9, NULL, 9, NULL, '2019-12-18 23:49:00', NULL, NULL, '2019-12-19 20:34:03', '2019-12-19 20:34:03', '1fbdcdb9-033d-4309-8d46-8fa17b2d79b2'),
(57, 5, NULL, 5, NULL, '2019-12-18 00:01:00', NULL, NULL, '2019-12-19 20:34:07', '2019-12-19 20:34:07', 'fbe150d4-ee3b-4ae6-88a6-c56e58452c49'),
(58, 7, NULL, 7, NULL, '2019-12-18 22:29:00', NULL, NULL, '2019-12-19 20:34:10', '2019-12-19 20:34:10', '1cb98d81-b13f-45e7-869c-4e8527fc7cd4'),
(59, 11, NULL, 11, NULL, '2019-12-19 20:34:00', NULL, NULL, '2019-12-19 20:34:58', '2019-12-19 20:34:58', 'f81a6fcf-293b-4b96-9347-b205c93df08b'),
(60, 11, NULL, 11, NULL, '2019-12-19 20:34:00', NULL, NULL, '2019-12-19 20:34:58', '2019-12-19 20:34:58', 'af418214-9653-4797-8b86-c7c161546f42'),
(61, 5, NULL, 5, NULL, '2019-12-18 00:01:00', NULL, NULL, '2019-12-19 20:47:12', '2019-12-19 20:47:12', '5380a678-a5af-42ce-89c6-e0787b6ef1f1'),
(62, 6, NULL, 6, 1, '2019-12-19 00:02:00', NULL, NULL, '2019-12-19 22:53:27', '2019-12-19 22:53:27', 'b691c5e9-58f1-4383-a03c-32833bbf0a76'),
(65, 6, NULL, 6, 1, '2019-12-19 00:02:00', NULL, NULL, '2019-12-20 22:41:23', '2019-12-20 22:41:23', 'b25dfe4c-18d4-403d-a329-4e2a9ff9bfff'),
(67, 6, NULL, 6, 1, '2019-12-20 22:41:00', NULL, NULL, '2019-12-20 22:43:49', '2019-12-20 22:43:49', '95e22cbf-90f2-4637-b896-44685147ff00'),
(68, 6, NULL, 6, 1, '2019-12-20 22:41:00', NULL, NULL, '2019-12-20 22:43:49', '2019-12-20 22:43:49', '0d679644-f401-47bc-89b9-4aadf6b50f6c'),
(71, 6, NULL, 6, 1, '2020-01-03 20:08:00', NULL, NULL, '2020-01-03 20:13:18', '2020-01-03 20:13:18', '6ad94ff8-e43c-406a-8593-318a1220cd36'),
(72, 6, NULL, 6, 1, '2020-01-03 20:08:00', NULL, NULL, '2020-01-03 20:13:19', '2020-01-03 20:13:19', '96af9dd3-936e-4f32-84e4-7a61483ca53f'),
(75, 6, NULL, 6, 1, '2020-01-03 20:13:00', NULL, NULL, '2020-01-03 20:14:53', '2020-01-03 20:14:53', '86ed9d49-0ff5-443c-b083-be37be8387a1'),
(76, 6, NULL, 6, 1, '2020-01-03 20:13:00', NULL, NULL, '2020-01-03 20:14:53', '2020-01-03 20:14:53', '05415a00-c494-469b-bf59-70ffa9cca2ab'),
(77, 6, NULL, 6, 1, '2020-01-03 20:13:00', NULL, NULL, '2020-01-03 20:20:18', '2020-01-03 20:20:18', 'bee3e10a-f1ee-437d-8955-0db39a5b3107'),
(78, 6, NULL, 6, 1, '2020-01-03 20:13:00', NULL, NULL, '2020-01-03 20:20:18', '2020-01-03 20:20:18', '34f911a4-a189-455d-9dab-2605a46afab7'),
(79, 6, NULL, 6, 1, '2020-01-03 20:13:00', NULL, NULL, '2020-01-03 20:20:19', '2020-01-03 20:20:19', '989fec7f-4b03-4777-9da5-81d382b3847f'),
(80, 6, NULL, 6, 1, '2020-01-03 20:13:00', NULL, NULL, '2020-01-03 20:20:51', '2020-01-03 20:20:51', 'ffc45db0-5f76-4e50-9256-fa2b2937241a'),
(81, 6, NULL, 6, 1, '2020-01-03 20:13:00', NULL, NULL, '2020-01-03 20:20:53', '2020-01-03 20:20:53', '604a83a4-e2fe-4843-8762-985271d85dfc'),
(82, 6, NULL, 6, 1, '2019-12-19 00:02:00', NULL, NULL, '2020-01-03 20:22:00', '2020-01-03 20:22:00', '0417318b-c1ea-4edf-a146-551867128427'),
(83, 6, NULL, 6, 1, '2019-12-19 00:02:00', NULL, NULL, '2020-01-03 20:22:00', '2020-01-03 20:22:00', '9db38816-c099-4f7c-bc3d-e311c6e9de65'),
(84, 6, NULL, 6, 1, '2019-12-19 00:02:00', NULL, NULL, '2020-01-03 20:22:01', '2020-01-03 20:22:01', '58df2fa3-86d1-4cd6-8890-6609d0560a76'),
(85, 6, NULL, 6, 1, '2019-12-19 00:02:00', NULL, NULL, '2020-01-03 20:22:11', '2020-01-03 20:22:11', '52cf4a13-45d6-4512-b39f-f42c9ee13ceb');

-- --------------------------------------------------------

--
-- Table structure for table `entrytypes`
--

DROP TABLE IF EXISTS `entrytypes`;
CREATE TABLE IF NOT EXISTS `entrytypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sectionId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `hasTitleField` tinyint(1) NOT NULL DEFAULT '1',
  `titleLabel` varchar(255) DEFAULT 'Title',
  `titleFormat` varchar(255) DEFAULT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `entrytypes_name_sectionId_idx` (`name`,`sectionId`),
  KEY `entrytypes_handle_sectionId_idx` (`handle`,`sectionId`),
  KEY `entrytypes_sectionId_idx` (`sectionId`),
  KEY `entrytypes_fieldLayoutId_idx` (`fieldLayoutId`),
  KEY `entrytypes_dateDeleted_idx` (`dateDeleted`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `entrytypes`
--

INSERT INTO `entrytypes` (`id`, `sectionId`, `fieldLayoutId`, `name`, `handle`, `hasTitleField`, `titleLabel`, `titleFormat`, `sortOrder`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 1, NULL, 'about', 'about', 0, NULL, '{section.name|raw}', 1, '2019-12-17 20:21:57', '2019-12-17 20:21:57', '2019-12-18 23:59:12', '60bca049-e9a3-47d4-95d9-2f7838b840f4'),
(2, 2, NULL, 'Homepage', 'home', 0, NULL, '{section.name|raw}', 1, '2019-12-17 20:22:20', '2019-12-18 23:49:10', NULL, 'bc253235-dd89-497c-adb1-a8001db5c241'),
(3, 3, 2, 'People', 'people', 1, 'Name', '', 1, '2019-12-17 23:26:26', '2019-12-17 23:46:43', NULL, '2eb3b0ee-57d0-43db-84d4-20572be068fc'),
(4, 4, 1, 'News', 'news', 1, 'Title', '', 1, '2019-12-17 23:34:11', '2019-12-18 23:42:11', NULL, '1162e949-017e-42a9-9bf1-c470441b230d'),
(5, 5, NULL, 'People Index', 'peopleIndex', 0, '', 'People', 1, '2019-12-18 00:01:54', '2019-12-19 20:47:12', NULL, '0b62424c-e32f-4a46-86e1-63d3663d0e02'),
(6, 6, 4, 'Research', 'research', 1, 'Title', '', 1, '2019-12-18 22:28:44', '2019-12-20 22:39:51', NULL, '27c68ace-bf5a-4fbe-9bf4-21ec72eee065'),
(7, 7, NULL, 'Research Index', 'researchIndex', 0, NULL, '{section.name|raw}', 1, '2019-12-18 22:29:07', '2019-12-18 22:29:07', NULL, 'dfae410e-da81-4fb7-b87f-369f6427c3c4'),
(8, 8, 3, 'Affiliations', 'affiliations', 1, 'Title', '', 1, '2019-12-18 22:39:42', '2019-12-18 23:48:57', NULL, '1ac95e25-974b-4724-9aa9-8a1801919f85'),
(9, 9, NULL, 'News Index', 'newsIndex', 0, NULL, '{section.name|raw}', 1, '2019-12-18 23:49:46', '2019-12-18 23:49:46', NULL, 'f187e35c-e27e-462b-b0e7-a6485b0bbc14'),
(10, 10, NULL, 'Courses', 'courses', 1, 'Title', NULL, 1, '2019-12-19 20:29:25', '2019-12-19 20:29:25', NULL, '6ce686ba-cf72-4669-8dd1-d75882bc18d2'),
(11, 11, NULL, 'Course Index', 'courseIndex', 1, 'Title', NULL, 1, '2019-12-19 20:33:39', '2019-12-19 20:33:39', NULL, '29257d21-4ba5-49a2-843d-10917b1ee49c');

-- --------------------------------------------------------

--
-- Table structure for table `fieldgroups`
--

DROP TABLE IF EXISTS `fieldgroups`;
CREATE TABLE IF NOT EXISTS `fieldgroups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `fieldgroups_name_unq_idx` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fieldgroups`
--

INSERT INTO `fieldgroups` (`id`, `name`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'Common', '2019-12-17 19:39:09', '2019-12-17 19:39:09', '87a50924-5642-49a0-a844-bc8254ad0ebc'),
(2, 'People', '2019-12-17 23:27:12', '2019-12-17 23:27:12', '0f7f27e8-d76c-452c-a2ee-0d0656e5337a'),
(3, 'News', '2019-12-17 23:32:07', '2019-12-17 23:32:07', 'a6284d4e-20d6-47b6-a67e-84d8a89e9313'),
(4, 'Research', '2019-12-18 22:30:46', '2019-12-18 22:30:46', '0391abea-adb9-420d-befa-b8a798995a31'),
(5, 'Courses', '2019-12-18 22:35:25', '2019-12-18 22:35:25', '00648b08-5880-47d5-ab41-599ad38f5fd0');

-- --------------------------------------------------------

--
-- Table structure for table `fieldlayoutfields`
--

DROP TABLE IF EXISTS `fieldlayoutfields`;
CREATE TABLE IF NOT EXISTS `fieldlayoutfields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `layoutId` int(11) NOT NULL,
  `tabId` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `fieldlayoutfields_layoutId_fieldId_unq_idx` (`layoutId`,`fieldId`),
  KEY `fieldlayoutfields_sortOrder_idx` (`sortOrder`),
  KEY `fieldlayoutfields_tabId_idx` (`tabId`),
  KEY `fieldlayoutfields_fieldId_idx` (`fieldId`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fieldlayoutfields`
--

INSERT INTO `fieldlayoutfields` (`id`, `layoutId`, `tabId`, `fieldId`, `required`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(7, 2, 4, 3, 0, 3, '2019-12-17 23:46:43', '2019-12-17 23:46:43', 'edac6771-c7bf-441e-a20b-3c0d94b291c3'),
(8, 2, 4, 1, 0, 2, '2019-12-17 23:46:43', '2019-12-17 23:46:43', '4f64bce8-ff44-4fe3-b7c6-ad8e68a8280e'),
(9, 2, 4, 2, 0, 1, '2019-12-17 23:46:43', '2019-12-17 23:46:43', '799b4edb-bcef-42a0-8b3b-cca18ddd5f28'),
(10, 1, 5, 5, 0, 2, '2019-12-18 23:42:11', '2019-12-18 23:42:11', '5edae74a-fb4f-4a65-bc95-f20b697eb773'),
(12, 1, 5, 4, 0, 1, '2019-12-18 23:42:11', '2019-12-18 23:42:11', 'f1a208c2-7537-4834-818e-97e75f326055'),
(13, 3, 6, 5, 0, 1, '2019-12-18 23:48:57', '2019-12-18 23:48:57', '86d14c5d-bc59-40fd-8b45-b3bebf4399f1'),
(18, 4, 8, 9, 0, 5, '2019-12-20 22:39:51', '2019-12-20 22:39:51', '3db949e7-e363-4767-a5d3-5e3592d13635'),
(19, 4, 8, 6, 0, 3, '2019-12-20 22:39:51', '2019-12-20 22:39:51', '3c9f0a11-8bd6-42d2-b619-ab6900dc966e'),
(20, 4, 8, 7, 0, 4, '2019-12-20 22:39:51', '2019-12-20 22:39:51', 'c823a465-56fd-404d-a02e-585194b3d6a2'),
(21, 4, 8, 8, 0, 2, '2019-12-20 22:39:51', '2019-12-20 22:39:51', 'c305b484-8f3e-4ffd-bd12-d83de33f1d3a'),
(22, 4, 8, 14, 0, 1, '2019-12-20 22:39:51', '2019-12-20 22:39:51', 'd739cd2d-db53-4a17-a18c-a5e2b92b534d');

-- --------------------------------------------------------

--
-- Table structure for table `fieldlayouts`
--

DROP TABLE IF EXISTS `fieldlayouts`;
CREATE TABLE IF NOT EXISTS `fieldlayouts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fieldlayouts_dateDeleted_idx` (`dateDeleted`),
  KEY `fieldlayouts_type_idx` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fieldlayouts`
--

INSERT INTO `fieldlayouts` (`id`, `type`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 'craft\\elements\\Entry', '2019-12-17 23:34:36', '2019-12-17 23:34:36', NULL, '0946d45e-3449-41f7-a617-a3c841435138'),
(2, 'craft\\elements\\Entry', '2019-12-17 23:46:20', '2019-12-17 23:46:20', NULL, 'eaaf8569-5bf3-4790-9f6b-01bb14f9e9eb'),
(3, 'craft\\elements\\Entry', '2019-12-18 23:48:57', '2019-12-18 23:48:57', NULL, 'a069186e-9a8d-4a03-9357-c83ae037da17'),
(4, 'craft\\elements\\Entry', '2019-12-19 00:02:37', '2019-12-19 00:02:37', NULL, '1d8079f8-13be-4053-a0e9-3856a71a2cb1');

-- --------------------------------------------------------

--
-- Table structure for table `fieldlayouttabs`
--

DROP TABLE IF EXISTS `fieldlayouttabs`;
CREATE TABLE IF NOT EXISTS `fieldlayouttabs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `layoutId` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fieldlayouttabs_sortOrder_idx` (`sortOrder`),
  KEY `fieldlayouttabs_layoutId_idx` (`layoutId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fieldlayouttabs`
--

INSERT INTO `fieldlayouttabs` (`id`, `layoutId`, `name`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(4, 2, 'People', 1, '2019-12-17 23:46:43', '2019-12-17 23:46:43', 'd479ceaa-b63c-4cc7-8cc1-d8fa90074b42'),
(5, 1, 'News', 1, '2019-12-18 23:42:11', '2019-12-18 23:42:11', '314e7a0a-774f-40b3-a518-b7083a6b5021'),
(6, 3, 'Content', 1, '2019-12-18 23:48:57', '2019-12-18 23:48:57', 'd44bf229-a382-4488-9ff5-99619fb6a387'),
(8, 4, 'Research', 1, '2019-12-20 22:39:51', '2019-12-20 22:39:51', '596bd227-e720-4aeb-a149-8098360cf249');

-- --------------------------------------------------------

--
-- Table structure for table `fields`
--

DROP TABLE IF EXISTS `fields`;
CREATE TABLE IF NOT EXISTS `fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(64) NOT NULL,
  `context` varchar(255) NOT NULL DEFAULT 'global',
  `instructions` text,
  `searchable` tinyint(1) NOT NULL DEFAULT '1',
  `translationMethod` varchar(255) NOT NULL DEFAULT 'none',
  `translationKeyFormat` text,
  `type` varchar(255) NOT NULL,
  `settings` text,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `fields_handle_context_unq_idx` (`handle`,`context`),
  KEY `fields_groupId_idx` (`groupId`),
  KEY `fields_context_idx` (`context`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fields`
--

INSERT INTO `fields` (`id`, `groupId`, `name`, `handle`, `context`, `instructions`, `searchable`, `translationMethod`, `translationKeyFormat`, `type`, `settings`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 2, 'Profile Image', 'profileImage', 'global', 'Profile Image of the Person', 0, 'site', NULL, 'craft\\fields\\Assets', '{\"useSingleFolder\":\"1\",\"defaultUploadLocationSource\":\"volume:a35e2a3c-cf4f-422c-af9b-2c59e7d86bfc\",\"defaultUploadLocationSubpath\":\"\",\"singleUploadLocationSource\":\"volume:a35e2a3c-cf4f-422c-af9b-2c59e7d86bfc\",\"singleUploadLocationSubpath\":\"/people/\",\"restrictFiles\":\"\",\"allowedKinds\":null,\"sources\":\"*\",\"source\":null,\"targetSiteId\":null,\"viewMode\":\"large\",\"limit\":\"1\",\"selectionLabel\":\"\",\"localizeRelations\":false,\"validateRelatedElements\":\"\"}', '2019-12-17 23:30:10', '2019-12-18 00:45:56', '0d61c45f-abc7-43c0-9271-d2db00f2ac4d'),
(2, 2, 'Bio', 'bio', 'global', 'One to two line bio for this person', 1, 'none', NULL, 'craft\\fields\\PlainText', '{\"placeholder\":\"\",\"code\":\"\",\"multiline\":\"\",\"initialRows\":\"4\",\"charLimit\":\"\",\"columnType\":\"text\"}', '2019-12-17 23:30:58', '2019-12-17 23:30:58', '7166459b-4a18-41d3-81c2-4d775c2a7024'),
(3, 2, 'Website', 'website', 'global', 'Optional link to person\'s website', 1, 'none', NULL, 'craft\\fields\\Url', '{\"placeholder\":\"\",\"maxLength\":\"255\"}', '2019-12-17 23:31:54', '2019-12-17 23:31:54', '0c8174e2-3f6b-43f6-9b8d-ac9644eb25a0'),
(4, 3, 'Date', 'date', 'global', 'Date this news is published', 1, 'none', NULL, 'craft\\fields\\Date', '{\"showDate\":true,\"showTime\":false,\"minuteIncrement\":\"30\"}', '2019-12-17 23:32:48', '2019-12-17 23:32:48', 'd5f28552-4c77-446b-8822-9510a5616ad0'),
(5, 1, 'body', 'body', 'global', 'Body content for this news article', 1, 'none', NULL, 'craft\\redactor\\Field', '{\"redactorConfig\":\"\",\"purifierConfig\":\"\",\"cleanupHtml\":true,\"removeInlineStyles\":\"1\",\"removeEmptyTags\":\"1\",\"removeNbsp\":\"1\",\"purifyHtml\":\"1\",\"columnType\":\"text\",\"availableVolumes\":\"*\",\"availableTransforms\":\"*\"}', '2019-12-17 23:35:10', '2019-12-18 23:48:18', '033ff0b1-cae2-4a02-88e4-7599dfb73576'),
(6, 4, 'Abstract', 'abstract', 'global', 'Abstract of the project', 1, 'none', NULL, 'craft\\redactor\\Field', '{\"redactorConfig\":\"\",\"purifierConfig\":\"\",\"cleanupHtml\":true,\"removeInlineStyles\":\"1\",\"removeEmptyTags\":\"1\",\"removeNbsp\":\"1\",\"purifyHtml\":\"1\",\"columnType\":\"text\",\"availableVolumes\":\"*\",\"availableTransforms\":\"*\"}', '2019-12-18 22:31:16', '2019-12-18 22:31:16', '30ecede2-23c8-4d30-a51e-9498647db8f9'),
(7, 4, 'Media', 'media', 'global', 'Any associate media files with the project', 1, 'site', NULL, 'craft\\fields\\Assets', '{\"useSingleFolder\":\"1\",\"defaultUploadLocationSource\":\"volume:a35e2a3c-cf4f-422c-af9b-2c59e7d86bfc\",\"defaultUploadLocationSubpath\":\"/research/{slug}/\",\"singleUploadLocationSource\":\"volume:a35e2a3c-cf4f-422c-af9b-2c59e7d86bfc\",\"singleUploadLocationSubpath\":\"/research/{slug}/\",\"restrictFiles\":\"\",\"allowedKinds\":null,\"sources\":\"*\",\"source\":null,\"targetSiteId\":null,\"viewMode\":\"large\",\"limit\":\"\",\"selectionLabel\":\"\",\"localizeRelations\":false,\"validateRelatedElements\":\"\"}', '2019-12-18 22:32:10', '2019-12-19 00:20:29', '5ddd31db-efcc-450c-a1e3-1f1f698b8fd1'),
(8, 4, 'Authors', 'authors', 'global', 'Authors for the project', 1, 'none', NULL, 'craft\\redactor\\Field', '{\"redactorConfig\":\"\",\"purifierConfig\":\"\",\"cleanupHtml\":true,\"removeInlineStyles\":\"1\",\"removeEmptyTags\":\"1\",\"removeNbsp\":\"1\",\"purifyHtml\":\"1\",\"columnType\":\"text\",\"availableVolumes\":\"*\",\"availableTransforms\":\"*\"}', '2019-12-18 22:33:04', '2019-12-19 00:13:05', '8fcd5a2d-5e1f-43cb-b2f0-b83b54d46aa6'),
(9, 4, 'Publication', 'publication', 'global', 'Publication citation', 1, 'none', NULL, 'craft\\redactor\\Field', '{\"redactorConfig\":\"\",\"purifierConfig\":\"\",\"cleanupHtml\":true,\"removeInlineStyles\":\"1\",\"removeEmptyTags\":\"1\",\"removeNbsp\":\"1\",\"purifyHtml\":\"1\",\"columnType\":\"text\",\"availableVolumes\":\"*\",\"availableTransforms\":\"*\"}', '2019-12-18 22:33:58', '2019-12-18 22:33:58', '02e4f87a-e7f4-49c2-b5b3-611c2c45bbb1'),
(10, 5, 'Description', 'description', 'global', 'Description of the course', 1, 'none', NULL, 'craft\\redactor\\Field', '{\"redactorConfig\":\"\",\"purifierConfig\":\"\",\"cleanupHtml\":true,\"removeInlineStyles\":\"1\",\"removeEmptyTags\":\"1\",\"removeNbsp\":\"1\",\"purifyHtml\":\"1\",\"columnType\":\"text\",\"availableVolumes\":\"*\",\"availableTransforms\":\"*\"}', '2019-12-18 22:35:51', '2019-12-18 22:35:51', '6fae3e75-7045-4b68-9634-7467d086fa82'),
(11, 5, 'Image', 'image', 'global', 'Any images with the courses', 1, 'site', NULL, 'craft\\fields\\Assets', '{\"useSingleFolder\":\"\",\"defaultUploadLocationSource\":\"volume:a35e2a3c-cf4f-422c-af9b-2c59e7d86bfc\",\"defaultUploadLocationSubpath\":\"courses/{slug}/\",\"singleUploadLocationSource\":\"volume:a35e2a3c-cf4f-422c-af9b-2c59e7d86bfc\",\"singleUploadLocationSubpath\":\"\",\"restrictFiles\":\"\",\"allowedKinds\":null,\"sources\":\"*\",\"source\":null,\"targetSiteId\":null,\"viewMode\":\"list\",\"limit\":\"\",\"selectionLabel\":\"\",\"localizeRelations\":false,\"validateRelatedElements\":\"\"}', '2019-12-18 22:36:23', '2019-12-18 22:36:23', '599a7231-c33d-4da1-8ba6-a8aacbb01c86'),
(12, 5, 'Course Code', 'courseCode', 'global', '', 1, 'none', NULL, 'craft\\fields\\PlainText', '{\"placeholder\":\"\",\"code\":\"\",\"multiline\":\"\",\"initialRows\":\"4\",\"charLimit\":\"\",\"columnType\":\"text\"}', '2019-12-18 22:37:22', '2019-12-18 22:37:22', '4aa60cf6-5dc4-4012-9dba-be5823ae0fc3'),
(14, 1, 'researchLab', 'researchlab', 'global', 'Which research lab does this belong to?', 1, 'site', NULL, 'craft\\fields\\Categories', '{\"allowLimit\":false,\"allowMultipleSources\":false,\"branchLimit\":\"\",\"sources\":\"*\",\"source\":\"group:6be471a8-ca3b-429f-a5e1-eb10a4213bb5\",\"targetSiteId\":null,\"viewMode\":null,\"limit\":null,\"selectionLabel\":\"\",\"localizeRelations\":false,\"validateRelatedElements\":\"\"}', '2019-12-20 22:39:20', '2019-12-20 22:39:20', 'd3d5dfac-7770-4737-bb3a-0fd910cbfeef');

-- --------------------------------------------------------

--
-- Table structure for table `globalsets`
--

DROP TABLE IF EXISTS `globalsets`;
CREATE TABLE IF NOT EXISTS `globalsets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `globalsets_name_idx` (`name`),
  KEY `globalsets_handle_idx` (`handle`),
  KEY `globalsets_fieldLayoutId_idx` (`fieldLayoutId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gqlschemas`
--

DROP TABLE IF EXISTS `gqlschemas`;
CREATE TABLE IF NOT EXISTS `gqlschemas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `accessToken` varchar(255) NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `expiryDate` datetime DEFAULT NULL,
  `lastUsed` datetime DEFAULT NULL,
  `scope` text,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gqlschemas_accessToken_unq_idx` (`accessToken`),
  UNIQUE KEY `gqlschemas_name_unq_idx` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `info`
--

DROP TABLE IF EXISTS `info`;
CREATE TABLE IF NOT EXISTS `info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version` varchar(50) NOT NULL,
  `schemaVersion` varchar(15) NOT NULL,
  `maintenance` tinyint(1) NOT NULL DEFAULT '0',
  `config` mediumtext,
  `configMap` mediumtext,
  `fieldVersion` char(12) NOT NULL DEFAULT '000000000000',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `info`
--

INSERT INTO `info` (`id`, `version`, `schemaVersion`, `maintenance`, `config`, `configMap`, `fieldVersion`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, '3.3.19', '3.3.3', 1, '{\"fieldGroups\":{\"87a50924-5642-49a0-a844-bc8254ad0ebc\":{\"name\":\"Common\"},\"0f7f27e8-d76c-452c-a2ee-0d0656e5337a\":{\"name\":\"People\"},\"a6284d4e-20d6-47b6-a67e-84d8a89e9313\":{\"name\":\"News\"},\"0391abea-adb9-420d-befa-b8a798995a31\":{\"name\":\"Research\"},\"00648b08-5880-47d5-ab41-599ad38f5fd0\":{\"name\":\"Courses\"}},\"siteGroups\":{\"63961ea1-ba8f-4e9c-86bb-a99915f7942a\":{\"name\":\"ixlab\"}},\"sites\":{\"d4d97380-b07f-42e2-be39-f820292a8d6f\":{\"baseUrl\":\"$DEFAULT_SITE_URL\",\"handle\":\"default\",\"hasUrls\":true,\"language\":\"en-US\",\"name\":\"ixlab\",\"primary\":true,\"siteGroup\":\"63961ea1-ba8f-4e9c-86bb-a99915f7942a\",\"sortOrder\":1}},\"email\":{\"fromEmail\":\"peter_buk@sfu.ca\",\"fromName\":\"ixlab\",\"transportType\":\"craft\\\\mail\\\\transportadapters\\\\Sendmail\"},\"system\":{\"edition\":\"solo\",\"name\":\"ixlab\",\"live\":true,\"schemaVersion\":\"3.3.3\",\"timeZone\":\"America/Los_Angeles\"},\"users\":{\"requireEmailVerification\":true,\"allowPublicRegistration\":false,\"defaultGroup\":null,\"photoVolumeUid\":null,\"photoSubpath\":\"\"},\"dateModified\":1576881591,\"plugins\":{\"redactor\":{\"edition\":\"standard\",\"enabled\":true,\"schemaVersion\":\"2.3.0\"},\"ckeditor\":{\"edition\":\"standard\",\"enabled\":true,\"schemaVersion\":\"1.0.0\"}},\"sections\":{\"6311178c-704d-480d-97d1-37f17b3cc48b\":{\"name\":\"Homepage\",\"handle\":\"home\",\"type\":\"single\",\"enableVersioning\":true,\"propagationMethod\":\"all\",\"siteSettings\":{\"d4d97380-b07f-42e2-be39-f820292a8d6f\":{\"enabledByDefault\":true,\"hasUrls\":true,\"uriFormat\":\"__home__\",\"template\":\"_pages/home/home.twig\"}},\"entryTypes\":{\"bc253235-dd89-497c-adb1-a8001db5c241\":{\"name\":\"Homepage\",\"handle\":\"home\",\"hasTitleField\":false,\"titleLabel\":null,\"titleFormat\":\"{section.name|raw}\",\"sortOrder\":1}}},\"83095466-6133-4161-84a9-74a5c7c6d415\":{\"name\":\"People\",\"handle\":\"people\",\"type\":\"channel\",\"enableVersioning\":true,\"propagationMethod\":\"all\",\"siteSettings\":{\"d4d97380-b07f-42e2-be39-f820292a8d6f\":{\"enabledByDefault\":true,\"hasUrls\":true,\"uriFormat\":\"people/{slug}\",\"template\":\"_pages/people/_people_entry.twig\"}},\"entryTypes\":{\"2eb3b0ee-57d0-43db-84d4-20572be068fc\":{\"name\":\"People\",\"handle\":\"people\",\"hasTitleField\":true,\"titleLabel\":\"Name\",\"titleFormat\":\"\",\"sortOrder\":1,\"fieldLayouts\":{\"eaaf8569-5bf3-4790-9f6b-01bb14f9e9eb\":{\"tabs\":[{\"name\":\"People\",\"sortOrder\":1,\"fields\":{\"0c8174e2-3f6b-43f6-9b8d-ac9644eb25a0\":{\"required\":false,\"sortOrder\":3},\"0d61c45f-abc7-43c0-9271-d2db00f2ac4d\":{\"required\":false,\"sortOrder\":2},\"7166459b-4a18-41d3-81c2-4d775c2a7024\":{\"required\":false,\"sortOrder\":1}}}]}}}}},\"b1ea6f78-b28a-4add-9aa9-b3dff4582b7e\":{\"name\":\"News\",\"handle\":\"news\",\"type\":\"channel\",\"enableVersioning\":true,\"propagationMethod\":\"all\",\"siteSettings\":{\"d4d97380-b07f-42e2-be39-f820292a8d6f\":{\"enabledByDefault\":true,\"hasUrls\":true,\"uriFormat\":\"news/{slug}\",\"template\":\"_pages/news/_news_entry.twig\"}},\"entryTypes\":{\"1162e949-017e-42a9-9bf1-c470441b230d\":{\"name\":\"News\",\"handle\":\"news\",\"hasTitleField\":true,\"titleLabel\":\"Title\",\"titleFormat\":\"\",\"sortOrder\":1,\"fieldLayouts\":{\"0946d45e-3449-41f7-a617-a3c841435138\":{\"tabs\":[{\"name\":\"News\",\"sortOrder\":1,\"fields\":{\"033ff0b1-cae2-4a02-88e4-7599dfb73576\":{\"required\":false,\"sortOrder\":2},\"d5f28552-4c77-446b-8822-9510a5616ad0\":{\"required\":false,\"sortOrder\":1}}}]}}}}},\"a21fe2e1-43d4-4493-a462-96d779a08978\":{\"name\":\"People Index\",\"handle\":\"peopleIndex\",\"type\":\"single\",\"enableVersioning\":true,\"propagationMethod\":\"all\",\"siteSettings\":{\"d4d97380-b07f-42e2-be39-f820292a8d6f\":{\"enabledByDefault\":true,\"hasUrls\":true,\"uriFormat\":\"people\",\"template\":\"_pages/people/people.twig\"}},\"entryTypes\":{\"0b62424c-e32f-4a46-86e1-63d3663d0e02\":{\"name\":\"People Index\",\"handle\":\"peopleIndex\",\"hasTitleField\":false,\"titleLabel\":\"\",\"titleFormat\":\"People\",\"sortOrder\":1}}},\"3846705d-50f3-453d-ba99-a6e3cca49b2d\":{\"name\":\"Research\",\"handle\":\"research\",\"type\":\"channel\",\"enableVersioning\":true,\"propagationMethod\":\"all\",\"siteSettings\":{\"d4d97380-b07f-42e2-be39-f820292a8d6f\":{\"enabledByDefault\":true,\"hasUrls\":true,\"uriFormat\":\"research/{slug}\",\"template\":\"_pages/research/_research_entry.twig\"}},\"entryTypes\":{\"27c68ace-bf5a-4fbe-9bf4-21ec72eee065\":{\"name\":\"Research\",\"handle\":\"research\",\"hasTitleField\":true,\"titleLabel\":\"Title\",\"titleFormat\":\"\",\"sortOrder\":1,\"fieldLayouts\":{\"1d8079f8-13be-4053-a0e9-3856a71a2cb1\":{\"tabs\":[{\"name\":\"Research\",\"sortOrder\":1,\"fields\":{\"02e4f87a-e7f4-49c2-b5b3-611c2c45bbb1\":{\"required\":false,\"sortOrder\":5},\"30ecede2-23c8-4d30-a51e-9498647db8f9\":{\"required\":false,\"sortOrder\":3},\"5ddd31db-efcc-450c-a1e3-1f1f698b8fd1\":{\"required\":false,\"sortOrder\":4},\"8fcd5a2d-5e1f-43cb-b2f0-b83b54d46aa6\":{\"required\":false,\"sortOrder\":2},\"d3d5dfac-7770-4737-bb3a-0fd910cbfeef\":{\"required\":false,\"sortOrder\":1}}}]}}}}},\"ed3ebfa3-8e6c-42f7-819d-7c63ec327600\":{\"name\":\"Research Index\",\"handle\":\"researchIndex\",\"type\":\"single\",\"enableVersioning\":true,\"propagationMethod\":\"all\",\"siteSettings\":{\"d4d97380-b07f-42e2-be39-f820292a8d6f\":{\"enabledByDefault\":true,\"hasUrls\":true,\"uriFormat\":\"research\",\"template\":\"_pages/research/research.twig\"}},\"entryTypes\":{\"dfae410e-da81-4fb7-b87f-369f6427c3c4\":{\"name\":\"Research Index\",\"handle\":\"researchIndex\",\"hasTitleField\":false,\"titleLabel\":null,\"titleFormat\":\"{section.name|raw}\",\"sortOrder\":1}}},\"2cb363b3-4783-43ac-983e-1f5b7663e1d0\":{\"name\":\"Affiliations\",\"handle\":\"affiliations\",\"type\":\"single\",\"enableVersioning\":true,\"propagationMethod\":\"all\",\"siteSettings\":{\"d4d97380-b07f-42e2-be39-f820292a8d6f\":{\"enabledByDefault\":true,\"hasUrls\":true,\"uriFormat\":\"affiliations\",\"template\":\"_pages/affiliations/affiliations.twig\"}},\"entryTypes\":{\"1ac95e25-974b-4724-9aa9-8a1801919f85\":{\"name\":\"Affiliations\",\"handle\":\"affiliations\",\"hasTitleField\":true,\"titleLabel\":\"Title\",\"titleFormat\":\"\",\"sortOrder\":1,\"fieldLayouts\":{\"a069186e-9a8d-4a03-9357-c83ae037da17\":{\"tabs\":[{\"name\":\"Content\",\"sortOrder\":1,\"fields\":{\"033ff0b1-cae2-4a02-88e4-7599dfb73576\":{\"required\":false,\"sortOrder\":1}}}]}}}}},\"c3a36ce8-b283-4b75-8f94-302209f9ce94\":{\"name\":\"News Index\",\"handle\":\"newsIndex\",\"type\":\"single\",\"enableVersioning\":true,\"propagationMethod\":\"all\",\"siteSettings\":{\"d4d97380-b07f-42e2-be39-f820292a8d6f\":{\"enabledByDefault\":true,\"hasUrls\":true,\"uriFormat\":\"news\",\"template\":\"_pages/news/news.twig\"}},\"entryTypes\":{\"f187e35c-e27e-462b-b0e7-a6485b0bbc14\":{\"name\":\"News Index\",\"handle\":\"newsIndex\",\"hasTitleField\":false,\"titleLabel\":null,\"titleFormat\":\"{section.name|raw}\",\"sortOrder\":1}}},\"b4b3aa00-328d-44cd-b7ca-e93ad43d66b8\":{\"name\":\"Courses\",\"handle\":\"courses\",\"type\":\"channel\",\"enableVersioning\":true,\"propagationMethod\":\"all\",\"siteSettings\":{\"d4d97380-b07f-42e2-be39-f820292a8d6f\":{\"enabledByDefault\":true,\"hasUrls\":true,\"uriFormat\":\"courses/{slug}\",\"template\":\"_pages/courses/_course_entry.twig\"}},\"entryTypes\":{\"6ce686ba-cf72-4669-8dd1-d75882bc18d2\":{\"name\":\"Courses\",\"handle\":\"courses\",\"hasTitleField\":true,\"titleLabel\":\"Title\",\"titleFormat\":null,\"sortOrder\":1}}},\"a7edf02d-2254-4734-8d41-d7949167e0f0\":{\"name\":\"Course Index\",\"handle\":\"courseIndex\",\"type\":\"single\",\"enableVersioning\":true,\"propagationMethod\":\"all\",\"siteSettings\":{\"d4d97380-b07f-42e2-be39-f820292a8d6f\":{\"enabledByDefault\":true,\"hasUrls\":true,\"uriFormat\":\"courses\",\"template\":\"_pages/courses/courses.twig\"}},\"entryTypes\":{\"29257d21-4ba5-49a2-843d-10917b1ee49c\":{\"name\":\"Course Index\",\"handle\":\"courseIndex\",\"hasTitleField\":true,\"titleLabel\":\"Title\",\"titleFormat\":null,\"sortOrder\":1}}}},\"volumes\":{\"a35e2a3c-cf4f-422c-af9b-2c59e7d86bfc\":{\"name\":\"Site Assets\",\"handle\":\"siteAssets\",\"type\":\"craft\\\\volumes\\\\Local\",\"hasUrls\":true,\"url\":\"./static/img/siteAssets\",\"settings\":{\"path\":\"./static/img/siteAssets\"},\"sortOrder\":2}},\"fields\":{\"0d61c45f-abc7-43c0-9271-d2db00f2ac4d\":{\"name\":\"Profile Image\",\"handle\":\"profileImage\",\"instructions\":\"Profile Image of the Person\",\"searchable\":false,\"translationMethod\":\"site\",\"translationKeyFormat\":null,\"type\":\"craft\\\\fields\\\\Assets\",\"settings\":{\"useSingleFolder\":\"1\",\"defaultUploadLocationSource\":\"volume:a35e2a3c-cf4f-422c-af9b-2c59e7d86bfc\",\"defaultUploadLocationSubpath\":\"\",\"singleUploadLocationSource\":\"volume:a35e2a3c-cf4f-422c-af9b-2c59e7d86bfc\",\"singleUploadLocationSubpath\":\"/people/\",\"restrictFiles\":\"\",\"allowedKinds\":null,\"sources\":\"*\",\"source\":null,\"targetSiteId\":null,\"viewMode\":\"large\",\"limit\":\"1\",\"selectionLabel\":\"\",\"localizeRelations\":false,\"validateRelatedElements\":\"\"},\"contentColumnType\":\"string\",\"fieldGroup\":\"0f7f27e8-d76c-452c-a2ee-0d0656e5337a\"},\"7166459b-4a18-41d3-81c2-4d775c2a7024\":{\"name\":\"Bio\",\"handle\":\"bio\",\"instructions\":\"One to two line bio for this person\",\"searchable\":true,\"translationMethod\":\"none\",\"translationKeyFormat\":null,\"type\":\"craft\\\\fields\\\\PlainText\",\"settings\":{\"placeholder\":\"\",\"code\":\"\",\"multiline\":\"\",\"initialRows\":\"4\",\"charLimit\":\"\",\"columnType\":\"text\"},\"contentColumnType\":\"text\",\"fieldGroup\":\"0f7f27e8-d76c-452c-a2ee-0d0656e5337a\"},\"0c8174e2-3f6b-43f6-9b8d-ac9644eb25a0\":{\"name\":\"Website\",\"handle\":\"website\",\"instructions\":\"Optional link to person\'s website\",\"searchable\":true,\"translationMethod\":\"none\",\"translationKeyFormat\":null,\"type\":\"craft\\\\fields\\\\Url\",\"settings\":{\"placeholder\":\"\",\"maxLength\":\"255\"},\"contentColumnType\":\"string(255)\",\"fieldGroup\":\"0f7f27e8-d76c-452c-a2ee-0d0656e5337a\"},\"d5f28552-4c77-446b-8822-9510a5616ad0\":{\"name\":\"Date\",\"handle\":\"date\",\"instructions\":\"Date this news is published\",\"searchable\":true,\"translationMethod\":\"none\",\"translationKeyFormat\":null,\"type\":\"craft\\\\fields\\\\Date\",\"settings\":{\"showDate\":true,\"showTime\":false,\"minuteIncrement\":\"30\"},\"contentColumnType\":\"datetime\",\"fieldGroup\":\"a6284d4e-20d6-47b6-a67e-84d8a89e9313\"},\"033ff0b1-cae2-4a02-88e4-7599dfb73576\":{\"name\":\"body\",\"handle\":\"body\",\"instructions\":\"Body content for this news article\",\"searchable\":true,\"translationMethod\":\"none\",\"translationKeyFormat\":null,\"type\":\"craft\\\\redactor\\\\Field\",\"settings\":{\"redactorConfig\":\"\",\"purifierConfig\":\"\",\"cleanupHtml\":true,\"removeInlineStyles\":\"1\",\"removeEmptyTags\":\"1\",\"removeNbsp\":\"1\",\"purifyHtml\":\"1\",\"columnType\":\"text\",\"availableVolumes\":\"*\",\"availableTransforms\":\"*\"},\"contentColumnType\":\"text\",\"fieldGroup\":\"87a50924-5642-49a0-a844-bc8254ad0ebc\"},\"30ecede2-23c8-4d30-a51e-9498647db8f9\":{\"name\":\"Abstract\",\"handle\":\"abstract\",\"instructions\":\"Abstract of the project\",\"searchable\":true,\"translationMethod\":\"none\",\"translationKeyFormat\":null,\"type\":\"craft\\\\redactor\\\\Field\",\"settings\":{\"redactorConfig\":\"\",\"purifierConfig\":\"\",\"cleanupHtml\":true,\"removeInlineStyles\":\"1\",\"removeEmptyTags\":\"1\",\"removeNbsp\":\"1\",\"purifyHtml\":\"1\",\"columnType\":\"text\",\"availableVolumes\":\"*\",\"availableTransforms\":\"*\"},\"contentColumnType\":\"text\",\"fieldGroup\":\"0391abea-adb9-420d-befa-b8a798995a31\"},\"5ddd31db-efcc-450c-a1e3-1f1f698b8fd1\":{\"name\":\"Media\",\"handle\":\"media\",\"instructions\":\"Any associate media files with the project\",\"searchable\":true,\"translationMethod\":\"site\",\"translationKeyFormat\":null,\"type\":\"craft\\\\fields\\\\Assets\",\"settings\":{\"useSingleFolder\":\"1\",\"defaultUploadLocationSource\":\"volume:a35e2a3c-cf4f-422c-af9b-2c59e7d86bfc\",\"defaultUploadLocationSubpath\":\"/research/{slug}/\",\"singleUploadLocationSource\":\"volume:a35e2a3c-cf4f-422c-af9b-2c59e7d86bfc\",\"singleUploadLocationSubpath\":\"/research/{slug}/\",\"restrictFiles\":\"\",\"allowedKinds\":null,\"sources\":\"*\",\"source\":null,\"targetSiteId\":null,\"viewMode\":\"large\",\"limit\":\"\",\"selectionLabel\":\"\",\"localizeRelations\":false,\"validateRelatedElements\":\"\"},\"contentColumnType\":\"string\",\"fieldGroup\":\"0391abea-adb9-420d-befa-b8a798995a31\"},\"8fcd5a2d-5e1f-43cb-b2f0-b83b54d46aa6\":{\"name\":\"Authors\",\"handle\":\"authors\",\"instructions\":\"Authors for the project\",\"searchable\":true,\"translationMethod\":\"none\",\"translationKeyFormat\":null,\"type\":\"craft\\\\redactor\\\\Field\",\"settings\":{\"redactorConfig\":\"\",\"purifierConfig\":\"\",\"cleanupHtml\":true,\"removeInlineStyles\":\"1\",\"removeEmptyTags\":\"1\",\"removeNbsp\":\"1\",\"purifyHtml\":\"1\",\"columnType\":\"text\",\"availableVolumes\":\"*\",\"availableTransforms\":\"*\"},\"contentColumnType\":\"text\",\"fieldGroup\":\"0391abea-adb9-420d-befa-b8a798995a31\"},\"02e4f87a-e7f4-49c2-b5b3-611c2c45bbb1\":{\"name\":\"Publication\",\"handle\":\"publication\",\"instructions\":\"Publication citation\",\"searchable\":true,\"translationMethod\":\"none\",\"translationKeyFormat\":null,\"type\":\"craft\\\\redactor\\\\Field\",\"settings\":{\"redactorConfig\":\"\",\"purifierConfig\":\"\",\"cleanupHtml\":true,\"removeInlineStyles\":\"1\",\"removeEmptyTags\":\"1\",\"removeNbsp\":\"1\",\"purifyHtml\":\"1\",\"columnType\":\"text\",\"availableVolumes\":\"*\",\"availableTransforms\":\"*\"},\"contentColumnType\":\"text\",\"fieldGroup\":\"0391abea-adb9-420d-befa-b8a798995a31\"},\"6fae3e75-7045-4b68-9634-7467d086fa82\":{\"name\":\"Description\",\"handle\":\"description\",\"instructions\":\"Description of the course\",\"searchable\":true,\"translationMethod\":\"none\",\"translationKeyFormat\":null,\"type\":\"craft\\\\redactor\\\\Field\",\"settings\":{\"redactorConfig\":\"\",\"purifierConfig\":\"\",\"cleanupHtml\":true,\"removeInlineStyles\":\"1\",\"removeEmptyTags\":\"1\",\"removeNbsp\":\"1\",\"purifyHtml\":\"1\",\"columnType\":\"text\",\"availableVolumes\":\"*\",\"availableTransforms\":\"*\"},\"contentColumnType\":\"text\",\"fieldGroup\":\"00648b08-5880-47d5-ab41-599ad38f5fd0\"},\"599a7231-c33d-4da1-8ba6-a8aacbb01c86\":{\"name\":\"Image\",\"handle\":\"image\",\"instructions\":\"Any images with the courses\",\"searchable\":true,\"translationMethod\":\"site\",\"translationKeyFormat\":null,\"type\":\"craft\\\\fields\\\\Assets\",\"settings\":{\"useSingleFolder\":\"\",\"defaultUploadLocationSource\":\"volume:a35e2a3c-cf4f-422c-af9b-2c59e7d86bfc\",\"defaultUploadLocationSubpath\":\"courses/{slug}/\",\"singleUploadLocationSource\":\"volume:a35e2a3c-cf4f-422c-af9b-2c59e7d86bfc\",\"singleUploadLocationSubpath\":\"\",\"restrictFiles\":\"\",\"allowedKinds\":null,\"sources\":\"*\",\"source\":null,\"targetSiteId\":null,\"viewMode\":\"list\",\"limit\":\"\",\"selectionLabel\":\"\",\"localizeRelations\":false,\"validateRelatedElements\":\"\"},\"contentColumnType\":\"string\",\"fieldGroup\":\"00648b08-5880-47d5-ab41-599ad38f5fd0\"},\"4aa60cf6-5dc4-4012-9dba-be5823ae0fc3\":{\"name\":\"Course Code\",\"handle\":\"courseCode\",\"instructions\":\"\",\"searchable\":true,\"translationMethod\":\"none\",\"translationKeyFormat\":null,\"type\":\"craft\\\\fields\\\\PlainText\",\"settings\":{\"placeholder\":\"\",\"code\":\"\",\"multiline\":\"\",\"initialRows\":\"4\",\"charLimit\":\"\",\"columnType\":\"text\"},\"contentColumnType\":\"text\",\"fieldGroup\":\"00648b08-5880-47d5-ab41-599ad38f5fd0\"},\"d3d5dfac-7770-4737-bb3a-0fd910cbfeef\":{\"name\":\"researchLab\",\"handle\":\"researchlab\",\"instructions\":\"Which research lab does this belong to?\",\"searchable\":true,\"translationMethod\":\"site\",\"translationKeyFormat\":null,\"type\":\"craft\\\\fields\\\\Categories\",\"settings\":{\"allowLimit\":false,\"allowMultipleSources\":false,\"branchLimit\":\"\",\"sources\":\"*\",\"source\":\"group:6be471a8-ca3b-429f-a5e1-eb10a4213bb5\",\"targetSiteId\":null,\"viewMode\":null,\"limit\":null,\"selectionLabel\":\"\",\"localizeRelations\":false,\"validateRelatedElements\":\"\"},\"contentColumnType\":\"string\",\"fieldGroup\":\"87a50924-5642-49a0-a844-bc8254ad0ebc\"}},\"categoryGroups\":{\"6be471a8-ca3b-429f-a5e1-eb10a4213bb5\":{\"name\":\"Research Lab\",\"handle\":\"researchLab\",\"structure\":{\"uid\":\"423646a9-4d6f-4128-9e9e-f38de78c60d9\",\"maxLevels\":2},\"siteSettings\":{\"d4d97380-b07f-42e2-be39-f820292a8d6f\":{\"hasUrls\":true,\"uriFormat\":\"research-lab/{slug}\",\"template\":\"\"}}}}}', '[]', 'ANfOV65yctXi', '2019-12-17 19:39:09', '2019-12-17 19:39:09', 'dad723e5-dad8-4605-a2d2-6ca29954f946');

-- --------------------------------------------------------

--
-- Table structure for table `matrixblocks`
--

DROP TABLE IF EXISTS `matrixblocks`;
CREATE TABLE IF NOT EXISTS `matrixblocks` (
  `id` int(11) NOT NULL,
  `ownerId` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `typeId` int(11) NOT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `deletedWithOwner` tinyint(1) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `matrixblocks_ownerId_idx` (`ownerId`),
  KEY `matrixblocks_fieldId_idx` (`fieldId`),
  KEY `matrixblocks_typeId_idx` (`typeId`),
  KEY `matrixblocks_sortOrder_idx` (`sortOrder`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `matrixblocktypes`
--

DROP TABLE IF EXISTS `matrixblocktypes`;
CREATE TABLE IF NOT EXISTS `matrixblocktypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fieldId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `matrixblocktypes_name_fieldId_unq_idx` (`name`,`fieldId`),
  UNIQUE KEY `matrixblocktypes_handle_fieldId_unq_idx` (`handle`,`fieldId`),
  KEY `matrixblocktypes_fieldId_idx` (`fieldId`),
  KEY `matrixblocktypes_fieldLayoutId_idx` (`fieldLayoutId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pluginId` int(11) DEFAULT NULL,
  `type` enum('app','plugin','content') NOT NULL DEFAULT 'app',
  `name` varchar(255) NOT NULL,
  `applyTime` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `migrations_pluginId_idx` (`pluginId`),
  KEY `migrations_type_pluginId_idx` (`type`,`pluginId`)
) ENGINE=InnoDB AUTO_INCREMENT=159 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `pluginId`, `type`, `name`, `applyTime`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, NULL, 'app', 'Install', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '650b7084-d535-4813-a25f-90384f1dfeac'),
(2, NULL, 'app', 'm150403_183908_migrations_table_changes', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '802408a3-1c19-4b3f-8a3f-21c2b45b32be'),
(3, NULL, 'app', 'm150403_184247_plugins_table_changes', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '69f7d02c-fb4c-49cb-9e08-283cebe9b511'),
(4, NULL, 'app', 'm150403_184533_field_version', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '47ae1fe6-3fd0-43a9-9b85-4651f68f192c'),
(5, NULL, 'app', 'm150403_184729_type_columns', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '9edc7d05-8072-4922-a304-8aab8c12d153'),
(6, NULL, 'app', 'm150403_185142_volumes', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '903c33cd-339a-4ef8-b891-4c5eecc6a884'),
(7, NULL, 'app', 'm150428_231346_userpreferences', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '77ca3294-2acc-41af-bcc9-8e74dd5064cf'),
(8, NULL, 'app', 'm150519_150900_fieldversion_conversion', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '5a696999-2ec3-473e-91ca-ad4460b891eb'),
(9, NULL, 'app', 'm150617_213829_update_email_settings', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '1d718e69-8f61-4d74-857e-121198c18db0'),
(10, NULL, 'app', 'm150721_124739_templatecachequeries', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '17bc439b-9d4b-4aca-bed8-98cccd582e0a'),
(11, NULL, 'app', 'm150724_140822_adjust_quality_settings', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '349482dd-0c2d-4328-abfb-788bba96e113'),
(12, NULL, 'app', 'm150815_133521_last_login_attempt_ip', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '1449ef5b-484b-468c-b0d2-4edb18aac0b0'),
(13, NULL, 'app', 'm151002_095935_volume_cache_settings', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', 'd6734ea2-9319-4985-8690-931a3b376dff'),
(14, NULL, 'app', 'm151005_142750_volume_s3_storage_settings', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '252bca96-53d8-4d33-acb6-b2f5fdfca63e'),
(15, NULL, 'app', 'm151016_133600_delete_asset_thumbnails', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '5f2c5fc4-abb5-4b32-b430-12d50a632f21'),
(16, NULL, 'app', 'm151209_000000_move_logo', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', 'a7dc9d71-2188-4ae1-9fae-a7f9733e3ada'),
(17, NULL, 'app', 'm151211_000000_rename_fileId_to_assetId', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '9a950eeb-8ddb-49e2-b1e9-f6ebfff164a4'),
(18, NULL, 'app', 'm151215_000000_rename_asset_permissions', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '7cf5829c-9b31-44df-82e8-44bf555fa172'),
(19, NULL, 'app', 'm160707_000001_rename_richtext_assetsource_setting', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '6c90e804-8bed-4148-a9cb-c20b3106d39b'),
(20, NULL, 'app', 'm160708_185142_volume_hasUrls_setting', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '5aded16d-371c-4a0a-9d41-3f658696bac3'),
(21, NULL, 'app', 'm160714_000000_increase_max_asset_filesize', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', 'fce0544e-b158-433e-ac25-c149c5b4fbcc'),
(22, NULL, 'app', 'm160727_194637_column_cleanup', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '6f693995-ac19-4161-bcf7-4a037dca1918'),
(23, NULL, 'app', 'm160804_110002_userphotos_to_assets', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', 'e04c9c0e-f01f-404b-a6cc-dfb45b965c65'),
(24, NULL, 'app', 'm160807_144858_sites', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', 'e384e9a8-89ce-4788-a8e6-012ea50876f0'),
(25, NULL, 'app', 'm160829_000000_pending_user_content_cleanup', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', 'bdf6514e-c1ab-4891-ad36-48d28ae7451a'),
(26, NULL, 'app', 'm160830_000000_asset_index_uri_increase', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '19e608d4-5ffa-43ab-bd8d-4270f7722697'),
(27, NULL, 'app', 'm160912_230520_require_entry_type_id', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '8f054d21-a573-4859-b8df-ed88369d2115'),
(28, NULL, 'app', 'm160913_134730_require_matrix_block_type_id', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', 'a8506241-1418-4324-95ef-f1c590a08767'),
(29, NULL, 'app', 'm160920_174553_matrixblocks_owner_site_id_nullable', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', 'f8200636-7cc5-4c31-a1d7-5a594b0783a3'),
(30, NULL, 'app', 'm160920_231045_usergroup_handle_title_unique', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '93ebf065-863a-4f76-9e96-5449b41b8201'),
(31, NULL, 'app', 'm160925_113941_route_uri_parts', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', 'b8e1e61f-8906-44f4-b1e1-1500a98faa93'),
(32, NULL, 'app', 'm161006_205918_schemaVersion_not_null', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '7bf25d57-9d2f-4802-bc48-752751188357'),
(33, NULL, 'app', 'm161007_130653_update_email_settings', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '6fca7cd4-a965-424c-9891-9e16e7b9301f'),
(34, NULL, 'app', 'm161013_175052_newParentId', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', 'f04b6991-d49d-4cb7-aea5-4285aa02c5cb'),
(35, NULL, 'app', 'm161021_102916_fix_recent_entries_widgets', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', 'c7db5ae9-0245-48d3-8867-e4cec0602c93'),
(36, NULL, 'app', 'm161021_182140_rename_get_help_widget', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '8f420c2d-354a-48a5-93d1-4e9177074b4d'),
(37, NULL, 'app', 'm161025_000000_fix_char_columns', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', 'a4b9b648-93b3-437a-a8b5-388dde2d218d'),
(38, NULL, 'app', 'm161029_124145_email_message_languages', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '1cdae44d-2355-4ade-b3ae-0d409916eb95'),
(39, NULL, 'app', 'm161108_000000_new_version_format', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '1989f5ec-169c-4a03-9513-3131d2b031c5'),
(40, NULL, 'app', 'm161109_000000_index_shuffle', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '8da89a61-e0b6-4917-bec1-17992ba77e1d'),
(41, NULL, 'app', 'm161122_185500_no_craft_app', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', 'ad3b752d-ba1a-43ce-9c39-f2e3366bcf87'),
(42, NULL, 'app', 'm161125_150752_clear_urlmanager_cache', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', 'e934eac4-58be-41b2-b1ac-44b6c3cac5c3'),
(43, NULL, 'app', 'm161220_000000_volumes_hasurl_notnull', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '8407b2a9-54c5-4d45-8c5b-d38f19582377'),
(44, NULL, 'app', 'm170114_161144_udates_permission', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '8cd00a97-54f9-438a-85b8-36ff3dba999f'),
(45, NULL, 'app', 'm170120_000000_schema_cleanup', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '61869809-4e37-4ed7-be23-cd1ba57d82c2'),
(46, NULL, 'app', 'm170126_000000_assets_focal_point', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '86ef076a-5d05-4755-a5f9-2232ca046312'),
(47, NULL, 'app', 'm170206_142126_system_name', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', 'ed707057-128a-4bb1-9f49-efa279b6b437'),
(48, NULL, 'app', 'm170217_044740_category_branch_limits', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', 'aab5e160-cfcd-4814-9bcc-0190c64786c0'),
(49, NULL, 'app', 'm170217_120224_asset_indexing_columns', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', 'a599602e-6efb-4b8a-909b-f6a1ba740a79'),
(50, NULL, 'app', 'm170223_224012_plain_text_settings', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '1a2e5a4f-d041-430c-9d41-ac451c211dc5'),
(51, NULL, 'app', 'm170227_120814_focal_point_percentage', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', 'f5806b97-a832-452e-9a4e-88ce3204dc13'),
(52, NULL, 'app', 'm170228_171113_system_messages', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', 'faad0e2f-becb-4d92-9cd8-a5350d9ef68f'),
(53, NULL, 'app', 'm170303_140500_asset_field_source_settings', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', 'e2538398-5032-4b09-b873-8b7da77a463a'),
(54, NULL, 'app', 'm170306_150500_asset_temporary_uploads', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', 'f2a493ae-9b0e-499e-b0f1-60f0920d398f'),
(55, NULL, 'app', 'm170523_190652_element_field_layout_ids', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', 'de6e16e2-c322-4fda-8e2c-7222146f4117'),
(56, NULL, 'app', 'm170612_000000_route_index_shuffle', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '51a928c0-7400-4b3f-956e-712eba340504'),
(57, NULL, 'app', 'm170621_195237_format_plugin_handles', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', 'cda4a8ad-c20f-4509-86c7-74ead331eda3'),
(58, NULL, 'app', 'm170630_161027_deprecation_line_nullable', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', 'b2435b75-150e-4765-b59e-45d9b4a81e3b'),
(59, NULL, 'app', 'm170630_161028_deprecation_changes', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', 'b86d7efc-86ab-4ac3-a649-888ae4bd8d72'),
(60, NULL, 'app', 'm170703_181539_plugins_table_tweaks', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2a501c33-6a75-4116-8707-ee1e9478fa14'),
(61, NULL, 'app', 'm170704_134916_sites_tables', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '6b05451e-1ad0-42c6-8a68-492574206ce7'),
(62, NULL, 'app', 'm170706_183216_rename_sequences', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '51e031bb-04c1-4e20-85d0-43c752ca32e5'),
(63, NULL, 'app', 'm170707_094758_delete_compiled_traits', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '318d8492-d9c4-4308-8510-30e9fbd9889a'),
(64, NULL, 'app', 'm170731_190138_drop_asset_packagist', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', 'd90096a5-06bb-406e-b281-8f421236dfd9'),
(65, NULL, 'app', 'm170810_201318_create_queue_table', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '1ce9cd52-d2cb-4615-839a-d2548457362f'),
(66, NULL, 'app', 'm170816_133741_delete_compiled_behaviors', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', 'af7a1e09-ac7a-4ea8-b036-6706c0a50491'),
(67, NULL, 'app', 'm170903_192801_longblob_for_queue_jobs', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', 'edc27114-2e33-4caf-9049-28fb3303c136'),
(68, NULL, 'app', 'm170914_204621_asset_cache_shuffle', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '42c84d4c-023e-490f-933c-668228acc909'),
(69, NULL, 'app', 'm171011_214115_site_groups', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '8bba30cd-8648-43cf-8e9b-69ff223ae226'),
(70, NULL, 'app', 'm171012_151440_primary_site', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '6dd1b4e5-7fb3-4938-9d5c-dc9afdc43bdd'),
(71, NULL, 'app', 'm171013_142500_transform_interlace', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', 'b01902f5-b0ba-424b-8af9-a502f52870c5'),
(72, NULL, 'app', 'm171016_092553_drop_position_select', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '45cef3f2-e981-47bc-a111-acbb9f4405f3'),
(73, NULL, 'app', 'm171016_221244_less_strict_translation_method', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '351b6fcc-0a17-4ac7-b659-b9153605d989'),
(74, NULL, 'app', 'm171107_000000_assign_group_permissions', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', 'f198f0e0-bacd-49bc-a34d-e6e83d1b6036'),
(75, NULL, 'app', 'm171117_000001_templatecache_index_tune', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', 'a842206c-3786-46c0-a42f-102dad23b5fb'),
(76, NULL, 'app', 'm171126_105927_disabled_plugins', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '7a022f44-6f1c-4e4a-915c-70fbc09a92cc'),
(77, NULL, 'app', 'm171130_214407_craftidtokens_table', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', 'd49adbbd-2ef1-452e-8329-dd4b86e3d55d'),
(78, NULL, 'app', 'm171202_004225_update_email_settings', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '287e3b64-1107-4572-ba77-8636f1b6c6fd'),
(79, NULL, 'app', 'm171204_000001_templatecache_index_tune_deux', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '05fd9af1-f686-4d96-8c1c-b1fa298e5c72'),
(80, NULL, 'app', 'm171205_130908_remove_craftidtokens_refreshtoken_column', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', 'ffdc0c06-518f-4b70-81f6-dfcbac7846fa'),
(81, NULL, 'app', 'm171218_143135_longtext_query_column', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', 'f1ff8bac-5c1f-4bbc-bcb4-b23c026bd2d9'),
(82, NULL, 'app', 'm171231_055546_environment_variables_to_aliases', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '24f7be96-f6c1-496d-9f04-43a0b5e66431'),
(83, NULL, 'app', 'm180113_153740_drop_users_archived_column', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '8c13cc85-9819-4e66-9192-92afd7577fc4'),
(84, NULL, 'app', 'm180122_213433_propagate_entries_setting', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', 'f9f1e8be-4878-43e2-8b21-394b81a39235'),
(85, NULL, 'app', 'm180124_230459_fix_propagate_entries_values', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', 'b08dbde2-a193-4fb8-83ea-6e39fbbb26c4'),
(86, NULL, 'app', 'm180128_235202_set_tag_slugs', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '460e6582-a478-4433-9c0f-8fe26106e855'),
(87, NULL, 'app', 'm180202_185551_fix_focal_points', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '8c55b723-25d3-4b48-b63c-d80d621a0f70'),
(88, NULL, 'app', 'm180217_172123_tiny_ints', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '8c7febe8-49b5-4d70-986f-97d09befb2ec'),
(89, NULL, 'app', 'm180321_233505_small_ints', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', 'f9f10da1-ad45-41ee-b583-9c2f9cd67fbc'),
(90, NULL, 'app', 'm180328_115523_new_license_key_statuses', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '0c3e4a11-0dc6-4450-9293-79156f6eb19a'),
(91, NULL, 'app', 'm180404_182320_edition_changes', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '5eb2d1f8-e3d1-4891-b4a3-3944594926d2'),
(92, NULL, 'app', 'm180411_102218_fix_db_routes', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', 'c8f9c2e8-75c9-491c-9693-60bbecac49cd'),
(93, NULL, 'app', 'm180416_205628_resourcepaths_table', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', 'd40d1d91-d087-41b5-8a8d-ef226b33b72c'),
(94, NULL, 'app', 'm180418_205713_widget_cleanup', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2eafa78a-42f7-4b6e-8010-87786cf68330'),
(95, NULL, 'app', 'm180425_203349_searchable_fields', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '92e4d43b-de65-4bbb-9dbe-8433c163caec'),
(96, NULL, 'app', 'm180516_153000_uids_in_field_settings', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', 'eb510a08-731a-4f18-886f-5f20598193cf'),
(97, NULL, 'app', 'm180517_173000_user_photo_volume_to_uid', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '9ee16df1-0c29-4afe-9143-5fbff70d094a'),
(98, NULL, 'app', 'm180518_173000_permissions_to_uid', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', 'b9eb06a5-1875-4952-8063-23f7e601179c'),
(99, NULL, 'app', 'm180520_173000_matrix_context_to_uids', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '5e168080-0d0f-4737-8e88-0e7f227a2ea2'),
(100, NULL, 'app', 'm180521_173000_initial_yml_and_snapshot', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', 'dc9d3d2d-ec42-404d-b39c-ffd6bce2471a'),
(101, NULL, 'app', 'm180731_162030_soft_delete_sites', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '3d3ef4ff-71c9-47bf-9419-fd87162f49c4'),
(102, NULL, 'app', 'm180810_214427_soft_delete_field_layouts', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', 'f885ff9d-5386-4180-ae7f-ff3474c7e314'),
(103, NULL, 'app', 'm180810_214439_soft_delete_elements', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', 'de94dc41-0ad6-47a0-9b12-cb0bac3b5490'),
(104, NULL, 'app', 'm180824_193422_case_sensitivity_fixes', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', 'd5b17b44-826b-4490-872f-bde7781c0c5a'),
(105, NULL, 'app', 'm180901_151639_fix_matrixcontent_tables', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', 'fcb3f5a1-c415-4c3c-9eb0-993d89d9ebe5'),
(106, NULL, 'app', 'm180904_112109_permission_changes', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', 'f4aaae65-f6f8-4466-989c-c2a132e0a4d9'),
(107, NULL, 'app', 'm180910_142030_soft_delete_sitegroups', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '5427f424-4d29-466e-861c-ad7ac25f8fef'),
(108, NULL, 'app', 'm181011_160000_soft_delete_asset_support', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '8f249a08-1278-4c87-bc59-5f35ada12150'),
(109, NULL, 'app', 'm181016_183648_set_default_user_settings', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '803d9251-9fae-4579-bfa5-1eae1f94674f'),
(110, NULL, 'app', 'm181017_225222_system_config_settings', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', 'c0d465b9-3d24-468b-8c0a-6ae9b19c524b'),
(111, NULL, 'app', 'm181018_222343_drop_userpermissions_from_config', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', 'aca4d587-d067-49fa-8675-490b374f72ee'),
(112, NULL, 'app', 'm181029_130000_add_transforms_routes_to_config', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '5c0ff1ac-8d9e-4615-88d8-6001154cfad4'),
(113, NULL, 'app', 'm181112_203955_sequences_table', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '9402f208-bc6c-40f1-b86e-1e9ce450b0d4'),
(114, NULL, 'app', 'm181121_001712_cleanup_field_configs', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', 'da6cd2b4-1cb8-44aa-9ad6-4ce11635fe37'),
(115, NULL, 'app', 'm181128_193942_fix_project_config', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '3d01a459-1cd9-4775-8aaa-d96c8568c2e2'),
(116, NULL, 'app', 'm181130_143040_fix_schema_version', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', 'db88302e-dc1b-4a1e-879b-e6b73cb1d7a4'),
(117, NULL, 'app', 'm181211_143040_fix_entry_type_uids', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', 'bb2cf566-3571-4baf-91f3-5a31cd848e9a'),
(118, NULL, 'app', 'm181213_102500_config_map_aliases', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', 'd1e82fd4-8f80-41e2-8bf2-3bb4378bb01f'),
(119, NULL, 'app', 'm181217_153000_fix_structure_uids', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '8b8d6a2e-a2c8-4518-8e06-c9b7d43c19b9'),
(120, NULL, 'app', 'm190104_152725_store_licensed_plugin_editions', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', 'f2afff2b-04f6-46a2-92e5-b6ec62d49a6b'),
(121, NULL, 'app', 'm190108_110000_cleanup_project_config', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '207f0e7e-65ff-482a-b4e5-9bfd857a7cc5'),
(122, NULL, 'app', 'm190108_113000_asset_field_setting_change', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', 'debacb5b-2af1-41e5-bd9b-bcbc89a28099'),
(123, NULL, 'app', 'm190109_172845_fix_colspan', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '410796f2-76b0-4c97-97a4-6023f769db3f'),
(124, NULL, 'app', 'm190110_150000_prune_nonexisting_sites', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', 'c29b80eb-9255-4d23-bc99-b6610846eb23'),
(125, NULL, 'app', 'm190110_214819_soft_delete_volumes', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '1e68ece0-04b6-4306-bb8e-51cfe632a724'),
(126, NULL, 'app', 'm190112_124737_fix_user_settings', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '89e2e8fa-61e4-4563-92a2-6599d4686ebe'),
(127, NULL, 'app', 'm190112_131225_fix_field_layouts', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', 'd492e9ca-9c5c-4961-9d64-c30a47c3bc59'),
(128, NULL, 'app', 'm190112_201010_more_soft_deletes', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', 'f1b8797a-4e2d-4de8-8f25-179fd95c1a27'),
(129, NULL, 'app', 'm190114_143000_more_asset_field_setting_changes', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '4b04a107-e3bf-49b4-8c78-708e574c6790'),
(130, NULL, 'app', 'm190121_120000_rich_text_config_setting', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '16a3f26c-849b-49aa-a122-7b6d298cb238'),
(131, NULL, 'app', 'm190125_191628_fix_email_transport_password', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '86dc0479-099a-47e0-bae2-35eb4d275e2d'),
(132, NULL, 'app', 'm190128_181422_cleanup_volume_folders', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', 'd7af5cbb-ddbd-4a0a-8ea4-5b1a92614e50'),
(133, NULL, 'app', 'm190205_140000_fix_asset_soft_delete_index', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '699a91dd-ea24-42ea-b7c9-71e956e91682'),
(134, NULL, 'app', 'm190208_140000_reset_project_config_mapping', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', 'f2daeae4-2cd8-4bac-a2cb-33e627a162f0'),
(135, NULL, 'app', 'm190218_143000_element_index_settings_uid', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', 'a9b5babc-2725-4b95-bf48-df2b0178d739'),
(136, NULL, 'app', 'm190312_152740_element_revisions', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '5732232c-8e64-4dd3-954b-96c95d4e3fbd'),
(137, NULL, 'app', 'm190327_235137_propagation_method', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', 'fb95ce87-49ad-4d96-8961-93d264578307'),
(138, NULL, 'app', 'm190401_223843_drop_old_indexes', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '97bb4c9a-9121-4865-8556-062bae042ce5'),
(139, NULL, 'app', 'm190416_014525_drop_unique_global_indexes', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '996e65d1-6e67-4b4a-a634-0afdc61e328c'),
(140, NULL, 'app', 'm190417_085010_add_image_editor_permissions', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', 'fb186a17-36f4-4c1e-a711-de4bf0f3f150'),
(141, NULL, 'app', 'm190502_122019_store_default_user_group_uid', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2fe4c922-24fd-4aa2-9e11-c263172e2ef4'),
(142, NULL, 'app', 'm190504_150349_preview_targets', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', 'f3789aa6-cc90-42f8-bdff-aa391b4e0d97'),
(143, NULL, 'app', 'm190516_184711_job_progress_label', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', 'caad6cf3-4015-41cc-9e75-d2508c6809da'),
(144, NULL, 'app', 'm190523_190303_optional_revision_creators', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '9d83f192-1c00-4bdd-8b3e-f4f819c97eed'),
(145, NULL, 'app', 'm190529_204501_fix_duplicate_uids', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '7cb88e25-5c51-445b-92ec-336993f141ad'),
(146, NULL, 'app', 'm190605_223807_unsaved_drafts', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '61b3a4df-a6a2-4700-952d-203a556e0945'),
(147, NULL, 'app', 'm190607_230042_entry_revision_error_tables', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', 'ef532091-becf-441d-a560-8f9fae9febec'),
(148, NULL, 'app', 'm190608_033429_drop_elements_uid_idx', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '1490a014-2b79-4844-b9a8-48593ba25a8a'),
(149, NULL, 'app', 'm190617_164400_add_gqlschemas_table', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '5b2e5962-68f6-4148-b6c6-c472fa5382d3'),
(150, NULL, 'app', 'm190624_234204_matrix_propagation_method', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '8b782fa3-2e20-4015-83cd-d2762e9c993f'),
(151, NULL, 'app', 'm190711_153020_drop_snapshots', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '967b37ae-a5bf-483d-bbf1-787bcdeb065f'),
(152, NULL, 'app', 'm190712_195914_no_draft_revisions', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '20935aec-382d-48bc-a47d-2b4ddbd93518'),
(153, NULL, 'app', 'm190723_140314_fix_preview_targets_column', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '9d91a87e-f34a-43ee-948e-7fd1b7f20454'),
(154, NULL, 'app', 'm190820_003519_flush_compiled_templates', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', 'c41e45ce-53c7-4ee3-8540-1a5ec0264255'),
(155, NULL, 'app', 'm190823_020339_optional_draft_creators', '2019-12-17 19:39:12', '2019-12-17 19:39:12', '2019-12-17 19:39:12', 'f6aa49cd-5a52-4ed3-bdcc-9690878c9a04'),
(156, 1, 'plugin', 'm180430_204710_remove_old_plugins', '2019-12-17 19:52:41', '2019-12-17 19:52:41', '2019-12-17 19:52:41', '976fa321-7d76-461f-9909-e39435733db4'),
(157, 1, 'plugin', 'Install', '2019-12-17 19:52:41', '2019-12-17 19:52:41', '2019-12-17 19:52:41', '9a6c7adb-c831-4acc-971a-a02a976ec9ff'),
(158, 1, 'plugin', 'm190225_003922_split_cleanup_html_settings', '2019-12-17 19:52:41', '2019-12-17 19:52:41', '2019-12-17 19:52:41', '25bb8c4f-3442-4622-9789-356db527bfdc');

-- --------------------------------------------------------

--
-- Table structure for table `plugins`
--

DROP TABLE IF EXISTS `plugins`;
CREATE TABLE IF NOT EXISTS `plugins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `handle` varchar(255) NOT NULL,
  `version` varchar(255) NOT NULL,
  `schemaVersion` varchar(255) NOT NULL,
  `licenseKeyStatus` enum('valid','invalid','mismatched','astray','unknown') NOT NULL DEFAULT 'unknown',
  `licensedEdition` varchar(255) DEFAULT NULL,
  `installDate` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `plugins_handle_unq_idx` (`handle`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `plugins`
--

INSERT INTO `plugins` (`id`, `handle`, `version`, `schemaVersion`, `licenseKeyStatus`, `licensedEdition`, `installDate`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'redactor', '2.4.0', '2.3.0', 'unknown', NULL, '2019-12-17 19:52:41', '2019-12-17 19:52:41', '2020-01-03 18:20:42', '13c8bf2d-9e57-4289-9fd0-9689e3651e3b'),
(2, 'ckeditor', '1.0.0-beta.2', '1.0.0', 'unknown', NULL, '2019-12-18 23:41:28', '2019-12-18 23:41:28', '2020-01-03 18:20:42', '7a9115c7-df12-4d96-b855-99583cdde005');

-- --------------------------------------------------------

--
-- Table structure for table `queue`
--

DROP TABLE IF EXISTS `queue`;
CREATE TABLE IF NOT EXISTS `queue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job` longblob NOT NULL,
  `description` text,
  `timePushed` int(11) NOT NULL,
  `ttr` int(11) NOT NULL,
  `delay` int(11) NOT NULL DEFAULT '0',
  `priority` int(11) UNSIGNED NOT NULL DEFAULT '1024',
  `dateReserved` datetime DEFAULT NULL,
  `timeUpdated` int(11) DEFAULT NULL,
  `progress` smallint(6) NOT NULL DEFAULT '0',
  `progressLabel` varchar(255) DEFAULT NULL,
  `attempt` int(11) DEFAULT NULL,
  `fail` tinyint(1) DEFAULT '0',
  `dateFailed` datetime DEFAULT NULL,
  `error` text,
  PRIMARY KEY (`id`),
  KEY `queue_fail_timeUpdated_timePushed_idx` (`fail`,`timeUpdated`,`timePushed`),
  KEY `queue_fail_timeUpdated_delay_idx` (`fail`,`timeUpdated`,`delay`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `relations`
--

DROP TABLE IF EXISTS `relations`;
CREATE TABLE IF NOT EXISTS `relations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fieldId` int(11) NOT NULL,
  `sourceId` int(11) NOT NULL,
  `sourceSiteId` int(11) DEFAULT NULL,
  `targetId` int(11) NOT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `relations_fieldId_sourceId_sourceSiteId_targetId_unq_idx` (`fieldId`,`sourceId`,`sourceSiteId`,`targetId`),
  KEY `relations_sourceId_idx` (`sourceId`),
  KEY `relations_targetId_idx` (`targetId`),
  KEY `relations_sourceSiteId_idx` (`sourceSiteId`)
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `relations`
--

INSERT INTO `relations` (`id`, `fieldId`, `sourceId`, `sourceSiteId`, `targetId`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(4, 1, 18, NULL, 17, 1, '2019-12-17 23:47:33', '2019-12-17 23:47:33', '44d47e2f-9b20-4a1c-a163-c25c78f2edeb'),
(5, 1, 19, NULL, 17, 1, '2019-12-17 23:47:33', '2019-12-17 23:47:33', '9e464029-15de-4bcc-a955-71d81cea4534'),
(9, 1, 26, NULL, 24, 1, '2019-12-18 01:46:16', '2019-12-18 01:46:16', '09a7476f-24e1-4f58-ad94-2df46235a181'),
(10, 1, 25, NULL, 24, 1, '2019-12-18 01:48:41', '2019-12-18 01:48:41', 'd9c1afd3-1b59-490d-9644-fe72a02982d6'),
(11, 1, 27, NULL, 24, 1, '2019-12-18 01:48:41', '2019-12-18 01:48:41', 'be0c3725-6052-4f77-aab9-5b9a036e5da0'),
(28, 8, 45, NULL, 1, 1, '2019-12-19 00:05:17', '2019-12-19 00:05:17', '69486716-998f-45b2-9095-ec598fefd403'),
(29, 7, 45, NULL, 43, 1, '2019-12-19 00:05:17', '2019-12-19 00:05:17', '309f0dfc-be57-4959-b5c8-a1ffc4d27dea'),
(32, 8, 46, NULL, 1, 1, '2019-12-19 00:07:28', '2019-12-19 00:07:28', '4638598b-1068-4480-80a4-2fadf0c16536'),
(33, 7, 46, NULL, 43, 1, '2019-12-19 00:07:28', '2019-12-19 00:07:28', '13110425-9e1f-4b66-ba42-7f82c18bdeb3'),
(37, 8, 47, NULL, 25, 1, '2019-12-19 00:08:09', '2019-12-19 00:08:09', 'b88c75ad-d20f-4d8b-a6c4-6198b380c04f'),
(38, 8, 47, NULL, 18, 2, '2019-12-19 00:08:09', '2019-12-19 00:08:09', '60b606c2-a60a-464c-9200-2d668a483bd1'),
(39, 7, 47, NULL, 43, 1, '2019-12-19 00:08:09', '2019-12-19 00:08:09', '5d9526a4-62f6-481d-9574-3d1623406432'),
(40, 8, 44, NULL, 25, 1, '2019-12-19 00:11:14', '2019-12-19 00:11:14', 'ea85eca0-5f62-4057-84cf-732cd4e826d8'),
(41, 8, 44, NULL, 18, 2, '2019-12-19 00:11:14', '2019-12-19 00:11:14', '295ab382-ba04-4103-ac50-29415c8140c5'),
(43, 8, 48, NULL, 25, 1, '2019-12-19 00:11:14', '2019-12-19 00:11:14', 'aca81440-3764-40e2-b56c-da485b93b476'),
(44, 8, 48, NULL, 18, 2, '2019-12-19 00:11:14', '2019-12-19 00:11:14', 'c1e117ba-14a3-48bb-903f-502e74ba2e4c'),
(45, 7, 48, NULL, 43, 1, '2019-12-19 00:11:14', '2019-12-19 00:11:14', '14cacfe1-d8ad-4b4b-84c8-866406989e18'),
(47, 7, 49, NULL, 43, 1, '2019-12-19 00:13:31', '2019-12-19 00:13:31', '90b2c95a-d0ff-4116-9454-224544fea704'),
(50, 7, 53, NULL, 51, 1, '2019-12-19 00:22:08', '2019-12-19 00:22:08', '281ae81e-595c-4e86-98b2-744fcefaebe2'),
(51, 7, 53, NULL, 52, 2, '2019-12-19 00:22:08', '2019-12-19 00:22:08', 'cd64a3ee-ee3a-445e-9d73-34728805a528'),
(54, 7, 62, NULL, 51, 1, '2019-12-19 22:53:27', '2019-12-19 22:53:27', '890068f8-a88f-48fa-98f6-bde8c4f75ad3'),
(55, 7, 62, NULL, 52, 2, '2019-12-19 22:53:27', '2019-12-19 22:53:27', '586404c9-10a4-4d9f-87db-df76c133417f'),
(56, 14, 44, NULL, 64, 1, '2019-12-20 22:41:23', '2019-12-20 22:41:23', 'a4794ae2-fd9a-4050-8ed0-7edc21331073'),
(57, 7, 44, NULL, 51, 1, '2019-12-20 22:41:23', '2019-12-20 22:41:23', 'fe36a25d-4d29-42b9-8c2a-fd1fb042cb9c'),
(58, 7, 44, NULL, 52, 2, '2019-12-20 22:41:23', '2019-12-20 22:41:23', 'a0462a36-0709-418f-9479-2112ba8766e1'),
(59, 14, 65, NULL, 64, 1, '2019-12-20 22:41:23', '2019-12-20 22:41:23', '7d4b0259-96f5-4537-9555-86a39cc9297d'),
(60, 7, 65, NULL, 51, 1, '2019-12-20 22:41:23', '2019-12-20 22:41:23', 'e2203018-f291-413b-8120-6f75f95b805c'),
(61, 7, 65, NULL, 52, 2, '2019-12-20 22:41:23', '2019-12-20 22:41:23', '5ee4bb25-6e20-45db-992c-361a43486624'),
(70, 14, 67, NULL, 63, 1, '2019-12-20 22:43:49', '2019-12-20 22:43:49', '6bef6bf6-f003-41aa-aee0-98ee7d21894a'),
(71, 14, 68, NULL, 63, 1, '2019-12-20 22:43:49', '2019-12-20 22:43:49', '939c5b2b-b096-4a75-9f48-fc77d0c8eed8'),
(83, 14, 71, NULL, 64, 1, '2020-01-03 20:13:18', '2020-01-03 20:13:18', 'e13ed6e5-539c-49fd-9309-411cbd5d0e57'),
(84, 7, 71, NULL, 70, 1, '2020-01-03 20:13:19', '2020-01-03 20:13:19', 'f3c719da-509b-4511-bfd4-0e594346e007'),
(85, 14, 72, NULL, 64, 1, '2020-01-03 20:13:19', '2020-01-03 20:13:19', '1eec08b9-dda3-4ebe-8001-52a27bfe1986'),
(86, 7, 72, NULL, 70, 1, '2020-01-03 20:13:19', '2020-01-03 20:13:19', 'de7372d3-d51f-4345-91d9-d4b1cf4f58ad'),
(92, 14, 75, NULL, 64, 1, '2020-01-03 20:14:53', '2020-01-03 20:14:53', '42e50694-02bf-43d4-a2c8-6a90344d9ee9'),
(93, 7, 75, NULL, 74, 1, '2020-01-03 20:14:53', '2020-01-03 20:14:53', '0e54f094-1168-4c91-84c1-6fd933aa1cce'),
(94, 14, 76, NULL, 64, 1, '2020-01-03 20:14:53', '2020-01-03 20:14:53', 'ac085f41-9ba6-4d94-9978-39163a9cee7e'),
(95, 7, 76, NULL, 74, 1, '2020-01-03 20:14:53', '2020-01-03 20:14:53', 'a219cc05-50e6-47cd-8c49-82753a636877'),
(98, 14, 78, NULL, 64, 1, '2020-01-03 20:20:18', '2020-01-03 20:20:18', 'ef1d155f-e45f-4bb1-8527-e58b311c6254'),
(99, 7, 78, NULL, 74, 1, '2020-01-03 20:20:18', '2020-01-03 20:20:18', '8b1e5aea-0e0c-4d2a-9830-8c7bea03522d'),
(102, 14, 79, NULL, 64, 1, '2020-01-03 20:20:19', '2020-01-03 20:20:19', 'c940b894-c240-4d73-bbdd-6b3736912993'),
(103, 7, 79, NULL, 74, 1, '2020-01-03 20:20:19', '2020-01-03 20:20:19', '423a8d51-6207-4603-8ae7-832d33deba86'),
(106, 14, 80, NULL, 64, 1, '2020-01-03 20:20:51', '2020-01-03 20:20:51', '02a33b33-8ee5-4d56-8a3c-e8f5deeca837'),
(107, 7, 80, NULL, 74, 1, '2020-01-03 20:20:51', '2020-01-03 20:20:51', '9a3dc444-9e4b-48e2-b2ec-6e82288131d9'),
(108, 14, 77, NULL, 64, 1, '2020-01-03 20:20:53', '2020-01-03 20:20:53', '374817ef-61a9-464d-a765-01afd1cd7b52'),
(109, 7, 77, NULL, 74, 1, '2020-01-03 20:20:53', '2020-01-03 20:20:53', 'e8f6c61a-a027-4bbf-b00a-eb7b934f3da5'),
(110, 14, 81, NULL, 64, 1, '2020-01-03 20:20:53', '2020-01-03 20:20:53', '8b38a290-1a0a-477f-9ea9-faa7a0296906'),
(111, 7, 81, NULL, 74, 1, '2020-01-03 20:20:53', '2020-01-03 20:20:53', '32de38b5-b538-4c86-910a-de7a22a7e655'),
(115, 14, 83, NULL, 64, 1, '2020-01-03 20:22:01', '2020-01-03 20:22:01', '43395b66-07c9-48e0-8881-39b5512974c2'),
(116, 7, 83, NULL, 51, 1, '2020-01-03 20:22:01', '2020-01-03 20:22:01', 'c0f18721-56d5-4a2b-bac6-2e957e67e085'),
(117, 7, 83, NULL, 52, 2, '2020-01-03 20:22:01', '2020-01-03 20:22:01', 'fbb72854-7080-467f-9434-fabb68af5e9a'),
(121, 14, 84, NULL, 64, 1, '2020-01-03 20:22:01', '2020-01-03 20:22:01', '6fb77c57-87fb-4fe0-968b-030780d2666d'),
(122, 7, 84, NULL, 51, 1, '2020-01-03 20:22:01', '2020-01-03 20:22:01', 'c4044100-deb4-4936-811d-9443683e5be7'),
(123, 7, 84, NULL, 52, 2, '2020-01-03 20:22:01', '2020-01-03 20:22:01', '5ceb3956-c6b5-41e7-8823-a4e5474e5af9'),
(124, 14, 82, NULL, 64, 1, '2020-01-03 20:22:10', '2020-01-03 20:22:10', '40b7f8db-d75e-4f50-b416-fae289785035'),
(125, 7, 82, NULL, 51, 1, '2020-01-03 20:22:10', '2020-01-03 20:22:10', 'f7770cfa-ffe8-4cf5-97cb-75be86756416'),
(126, 7, 82, NULL, 52, 2, '2020-01-03 20:22:10', '2020-01-03 20:22:10', 'd8879378-65e4-4a42-8550-44468fe81acd'),
(127, 14, 85, NULL, 64, 1, '2020-01-03 20:22:11', '2020-01-03 20:22:11', '80ee33b2-8bb6-4077-a3c0-a37006ac82d8'),
(128, 7, 85, NULL, 51, 1, '2020-01-03 20:22:11', '2020-01-03 20:22:11', 'eaec9b30-f9d9-4dac-9bbc-58d8c29798cc'),
(129, 7, 85, NULL, 52, 2, '2020-01-03 20:22:11', '2020-01-03 20:22:11', '2a0027b7-9ceb-4fe6-9aac-75e0c787aef2');

-- --------------------------------------------------------

--
-- Table structure for table `resourcepaths`
--

DROP TABLE IF EXISTS `resourcepaths`;
CREATE TABLE IF NOT EXISTS `resourcepaths` (
  `hash` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  PRIMARY KEY (`hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `resourcepaths`
--

INSERT INTO `resourcepaths` (`hash`, `path`) VALUES
('1560f82d', '@lib/jquery.payment'),
('17124691', '@app/web/assets/tablesettings/dist'),
('174536cc', '@lib/fabric'),
('18c8a0b8', '@bower/jquery/dist'),
('1ab8a6ff', '@app/web/assets/tablesettings/dist'),
('1b18d3b3', '@lib/garnishjs'),
('1bb95e98', '@lib/element-resize-detector'),
('1d3e65b7', '@app/web/assets/editsection/dist'),
('1d5f7915', '@app/web/assets/updateswidget/dist'),
('1e3828ce', '@app/web/assets/utilities/dist'),
('1f0b6acb', '@lib/timepicker'),
('20f432be', '@lib/xregexp'),
('21a4d8a6', '@lib/jquery-touch-events'),
('25cc6300', '@craft/web/assets/pluginstore/dist'),
('2608b12b', '@lib/jquery-ui'),
('264f622a', '@lib/jquery.payment'),
('27f3d4db', '@lib/fileupload'),
('2a987634', '@lib/selectize'),
('2aed9821', '@app/web/assets/routes/dist'),
('2be73abf', '@bower/jquery/dist'),
('2cb7537d', '@craft/web/assets/cp/dist'),
('2d17b2c9', '@app/web/assets/utilities/dist'),
('33023095', '@lib/vue'),
('3492758e', '@app/web/assets/matrixsettings/dist'),
('3677bbe6', '@app/web/assets/feed/dist'),
('36c98aec', '@craft/web/assets/updateswidget/dist'),
('37580b4d', '@lib/element-resize-detector'),
('3a68cdc2', '@lib/velocity'),
('3fe6deb7', '@craft/web/assets/generalsettings/dist'),
('419956ea', '@app/web/assets/cp/dist'),
('43fe6c67', '@lib/garnishjs'),
('477914a', '@lib/element-resize-detector'),
('47eecc60', '@lib/jquery-ui'),
('4a372ced', '@app/web/assets/updates/dist'),
('4b1063ad', '@app/web/assets/generalsettings/dist'),
('4d398c29', '@lib/axios'),
('4f6cf058', '@app/web/assets/cp/dist'),
('4fe15d83', '@app/web/assets/updater/dist'),
('5126a37d', '@app/web/assets/craftsupport/dist'),
('5221d7d5', '@app/web/assets/recententries/dist'),
('52adcdd2', '@app/web/assets/fields/dist'),
('55821e1', '@app/web/assets/feed/dist'),
('567d71b4', '@craft/web/assets/fields/dist'),
('56b8b859', '@lib/fabric'),
('5a97480c', '@lib/velocity'),
('5b41cf8', '@lib/axios'),
('5cd35e67', '@app/web/assets/utilities/dist'),
('5ceed850', '@app/web/assets/feed/dist'),
('5ecafd4a', '@app/web/assets/craftsupport/dist'),
('5fb40fbc', '@app/web/assets/updateswidget/dist'),
('6035ecb2', '@bower/jquery/dist'),
('60d22f5c', '@lib/vue'),
('610e4dd2', '@app/web/assets/recententries/dist'),
('6209397a', '@app/web/assets/craftsupport/dist'),
('660e5a4e', '@lib/fileupload'),
('677b2774', '@app/web/assets/pluginstore/dist'),
('6c37c08e', '@craft/ckeditor/assets/field/dist'),
('6c9b95bb', '@app/web/assets/updateswidget/dist'),
('6ca4adbc', '@app/web/assets/recententries/dist'),
('70437be1', '@lib/d3'),
('74868566', '@lib/jquery.payment'),
('74c15667', '@lib/jquery-ui'),
('756c219c', '@app/web/assets/editentry/dist'),
('787d7f21', '@app/web/assets/login/dist'),
('79426772', '@lib/jquery-touch-events'),
('7b21c6e9', '@app/web/assets/editcategory/dist'),
('7bc46dfb', '@lib/prismjs'),
('7c436a5f', '@app/web/assets/cp/dist'),
('7ccec784', '@app/web/assets/updater/dist'),
('7e6fc3c1', '@craft/web/assets/tablesettings/dist'),
('7ee65bb0', '@lib/picturefill'),
('80bbdbb9', '@lib/xregexp'),
('81bab86f', '@vendor/craftcms/redactor/lib/redactor'),
('873c882', '@craft/web/assets/recententries/dist'),
('89834d9d', '@app/web/assets/sites/dist'),
('8a56e8d3', '@lib/vue'),
('8c61be14', '@app/web/assets/dashboard/dist'),
('8c8a9dc1', '@lib/fileupload'),
('8dffe0fb', '@app/web/assets/pluginstore/dist'),
('8f13e5d1', '@lib/fabric'),
('9140aa74', '@lib/prismjs'),
('91657ce5', '@craft/web/assets/craftsupport/dist'),
('92f9b8ae', '@app/web/assets/login/dist'),
('939c7165', '@app/web/assets/updates/dist'),
('93c6a0fd', '@lib/jquery-touch-events'),
('93ccae72', '@lib/selectize'),
('94629c3f', '@lib/picturefill'),
('9465f8dd', '@app/web/assets/login/dist'),
('94757c5', '@lib/velocity'),
('96c7add0', '@app/web/assets/cp/dist'),
('9a5531ef', '@lib/garnishjs'),
('9ac7bc6e', '@lib/d3'),
('9fe8e613', '@app/web/assets/editentry/dist'),
('a0b3eb62', '@app/web/assets/updates/dist'),
('a0e93afa', '@lib/jquery-touch-events'),
('a5659a0c', '@app/web/assets/updater/dist'),
('a65fb28d', '@lib/timepicker'),
('a74d0638', '@lib/picturefill'),
('a7bd4ba6', '@lib/axios'),
('a97aabe8', '@lib/garnishjs'),
('a9e82669', '@lib/d3'),
('ad6a0bef', '@lib/jquery-ui'),
('ae7041a1', '@craft/web/assets/feed/dist'),
('af3dd8fa', '@lib/d3'),
('b0179829', '@vendor/craftcms/redactor/lib/redactor'),
('b0a27a24', '@app/web/assets/dashboard/dist'),
('b50de64c', '@craft/web/assets/editsection/dist'),
('b7176ac8', '@app/web/assets/editsection/dist'),
('b8290a5d', '@app/web/assets/fields/dist'),
('bc3c7fd6', '@lib/fabric'),
('bf4e2413', '@app/web/assets/dashboard/dist'),
('bfa507c6', '@lib/fileupload'),
('c01cb1bb', '@lib/selectize'),
('c191c333', '@app/web/assets/matrixsettings/dist'),
('c8f98406', '@craft/web/assets/matrixsettings/dist'),
('ca70f531', '@lib/xregexp'),
('d0254871', '@vendor/craftcms/ckeditor/lib/ckeditor/dist'),
('d0a2b2a', '@app/web/assets/updater/dist'),
('d108c996', '@app/web/assets/editcategory/dist'),
('d45634e8', '@craft/redactor/assets/field/dist'),
('d733676a', '@craft/web/assets/dashboard/dist'),
('d7c094c0', '@app/web/assets/edituser/dist'),
('dddcccc2', '@lib/element-resize-detector'),
('de16b201', '@app/web/assets/matrixsettings/dist'),
('df452ee3', '@app/web/assets/editentry/dist'),
('e19ff3ec', '@app/web/assets/fields/dist'),
('e2589dcb', '@app/web/assets/updates/dist'),
('e3c3904a', '@lib/velocity'),
('e9bde67e', '@lib/prismjs'),
('ec9fd035', '@lib/picturefill'),
('f24c6737', '@bower/jquery/dist'),
('f3332bbc', '@lib/selectize'),
('f4bcef41', '@app/web/assets/utilities/dist'),
('f58fad44', '@lib/timepicker'),
('f795a56a', '@craft/web/assets/editentry/dist'),
('f7baa238', '@app/web/assets/editsection/dist'),
('f95f6f36', '@lib/xregexp'),
('fce025ef', '@craft/redactor/assets/field/dist'),
('fd856900', '@app/web/assets/plugins/dist'),
('fd96811e', '@app/web/assets/tablesettings/dist'),
('ffe43fa2', '@lib/jquery.payment');

-- --------------------------------------------------------

--
-- Table structure for table `revisions`
--

DROP TABLE IF EXISTS `revisions`;
CREATE TABLE IF NOT EXISTS `revisions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sourceId` int(11) NOT NULL,
  `creatorId` int(11) DEFAULT NULL,
  `num` int(11) NOT NULL,
  `notes` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `revisions_sourceId_num_unq_idx` (`sourceId`,`num`),
  KEY `revisions_creatorId_fk` (`creatorId`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `revisions`
--

INSERT INTO `revisions` (`id`, `sourceId`, `creatorId`, `num`, `notes`) VALUES
(1, 2, 1, 1, NULL),
(2, 4, 1, 1, NULL),
(3, 2, 1, 2, NULL),
(4, 2, 1, 3, NULL),
(5, 2, 1, 4, NULL),
(6, 12, 1, 1, NULL),
(7, 18, 1, 1, NULL),
(8, 20, 1, 1, NULL),
(9, 25, 1, 1, NULL),
(10, 25, 1, 2, NULL),
(11, 28, 1, 1, NULL),
(12, 30, 1, 1, NULL),
(13, 33, 1, 1, NULL),
(14, 30, 1, 2, NULL),
(15, 4, 1, 2, NULL),
(16, 37, 1, 1, NULL),
(17, 37, 1, 2, NULL),
(18, 2, 1, 5, NULL),
(19, 44, 1, 1, NULL),
(20, 44, 1, 2, NULL),
(21, 44, 1, 3, NULL),
(22, 44, 1, 4, NULL),
(23, 44, 1, 5, NULL),
(24, 44, 1, 6, NULL),
(25, 30, 1, 3, NULL),
(26, 4, 1, 3, NULL),
(27, 37, 1, 3, NULL),
(28, 20, 1, 2, NULL),
(29, 28, 1, 2, NULL),
(30, 59, 1, 1, NULL),
(31, 20, 1, 3, NULL),
(32, 44, 1, 7, NULL),
(33, 67, 1, 1, NULL),
(34, 71, 1, 1, NULL),
(35, 75, 1, 1, NULL),
(36, 77, 1, 1, NULL),
(37, 77, 1, 2, NULL),
(38, 77, 1, 3, NULL),
(39, 77, 1, 4, NULL),
(40, 82, 1, 1, NULL),
(41, 82, 1, 2, NULL),
(42, 82, 1, 3, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `searchindex`
--

DROP TABLE IF EXISTS `searchindex`;
CREATE TABLE IF NOT EXISTS `searchindex` (
  `elementId` int(11) NOT NULL,
  `attribute` varchar(25) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `keywords` text NOT NULL,
  PRIMARY KEY (`elementId`,`attribute`,`fieldId`,`siteId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `searchindex`
--

INSERT INTO `searchindex` (`elementId`, `attribute`, `fieldId`, `siteId`, `keywords`) VALUES
(1, 'email', 0, 1, ' peter buk sfu ca '),
(1, 'fullname', 0, 1, ''),
(1, 'lastname', 0, 1, ''),
(1, 'firstname', 0, 1, ''),
(1, 'username', 0, 1, ' admin '),
(1, 'slug', 0, 1, ''),
(2, 'title', 0, 1, ' about '),
(4, 'slug', 0, 1, ' home '),
(2, 'slug', 0, 1, ' about '),
(9, 'filename', 0, 1, ' ixlab svg '),
(9, 'extension', 0, 1, ' svg '),
(9, 'kind', 0, 1, ' image '),
(9, 'slug', 0, 1, ''),
(9, 'title', 0, 1, ' ixlab '),
(10, 'filename', 0, 1, ' ixlab svg '),
(10, 'extension', 0, 1, ' svg '),
(10, 'kind', 0, 1, ' image '),
(10, 'slug', 0, 1, ''),
(10, 'title', 0, 1, ' ixlab '),
(12, 'slug', 0, 1, ' welcome to the new ixlab website '),
(12, 'title', 0, 1, ' welcome to the new ixlab website '),
(12, 'field', 4, 1, ''),
(12, 'field', 5, 1, ' what you are witnessing here is the new website for the interactive experiences lab some parts are still under construction but take a look around stay tuned for more updates '),
(17, 'kind', 0, 1, ' image '),
(17, 'extension', 0, 1, ' gif '),
(17, 'filename', 0, 1, ' toast gif '),
(17, 'slug', 0, 1, ''),
(17, 'title', 0, 1, ' toast '),
(18, 'slug', 0, 1, ' peter buk '),
(18, 'title', 0, 1, ' peter buk '),
(18, 'field', 2, 1, ' peter buk is the designer for this website '),
(18, 'field', 3, 1, ' https peterbuk com '),
(20, 'title', 0, 1, ' people index '),
(23, 'filename', 0, 1, ' oryctolagus cuniculus tasmania 2 jpg '),
(23, 'extension', 0, 1, ' jpg '),
(23, 'kind', 0, 1, ' image '),
(23, 'slug', 0, 1, ''),
(23, 'title', 0, 1, ' oryctolagus cuniculus tasmania 2 '),
(24, 'filename', 0, 1, ' woop png '),
(24, 'extension', 0, 1, ' png '),
(24, 'kind', 0, 1, ' image '),
(24, 'slug', 0, 1, ''),
(24, 'title', 0, 1, ' woop '),
(25, 'slug', 0, 1, ' lien quach '),
(25, 'title', 0, 1, ' lien quach '),
(25, 'field', 2, 1, ' lien quach is a designer for this web page woop '),
(25, 'field', 3, 1, ''),
(28, 'title', 0, 1, ' research index '),
(30, 'slug', 0, 1, ' affiliations '),
(30, 'title', 0, 1, ' affiliations '),
(33, 'slug', 0, 1, ' testing which rich text editor is more powerful '),
(33, 'title', 0, 1, ' testing which rich text editor is more powerful '),
(33, 'field', 4, 1, ''),
(33, 'field', 5, 1, ' this is my header now i am typing regular text this is indenteda list of whichthere is like no other '),
(33, 'field', 13, 1, ''),
(30, 'field', 5, 1, ''),
(4, 'title', 0, 1, ' homepage '),
(37, 'title', 0, 1, ' news index '),
(37, 'slug', 0, 1, ' news index '),
(43, 'filename', 0, 1, ' bird s eye view photography of high rise buildings 2382868 jpg '),
(43, 'extension', 0, 1, ' jpg '),
(43, 'kind', 0, 1, ' image '),
(43, 'slug', 0, 1, ''),
(43, 'title', 0, 1, ' bird s eye view photography of high rise buildings 2382868 '),
(44, 'field', 7, 1, ' bird fireflies '),
(44, 'field', 9, 1, ' ut ipsum non leo convallis et al sed semper turpis quis lorem blandit pharetra nullam fringilla elementum sollicitudin 2019 '),
(20, 'slug', 0, 1, ' people index '),
(44, 'slug', 0, 1, ' sample research project '),
(44, 'title', 0, 1, ' sample research project '),
(44, 'field', 14, 1, ' innovis '),
(44, 'field', 8, 1, ' bob smithandy waslow '),
(44, 'field', 6, 1, ' phasellus tristique sed magna eget dictum ut eget nibh sed augue scelerisque aliquam sed eu ligula sed blandit elit ipsum vitae dignissim urna fermentum at curabitur congue arcu vitae tincidunt sagittis duis ut odio a magna eleifend venenatis sed sed luctus nisl commodo scelerisque velit curabitur sagittis placerat rutrum '),
(50, 'filename', 0, 1, ' bird jpg '),
(50, 'extension', 0, 1, ' jpg '),
(50, 'kind', 0, 1, ' image '),
(50, 'slug', 0, 1, ''),
(50, 'title', 0, 1, ' bird '),
(51, 'title', 0, 1, ' bird '),
(51, 'kind', 0, 1, ' image '),
(52, 'title', 0, 1, ' fireflies '),
(52, 'kind', 0, 1, ' image '),
(51, 'slug', 0, 1, ''),
(52, 'slug', 0, 1, ''),
(28, 'slug', 0, 1, ' research index '),
(59, 'slug', 0, 1, ' course index '),
(59, 'title', 0, 1, ' course index '),
(63, 'slug', 0, 1, ' parmits lab '),
(63, 'title', 0, 1, ' parmit s lab '),
(64, 'slug', 0, 1, ' innovis '),
(64, 'title', 0, 1, ' innovis '),
(67, 'slug', 0, 1, ' modern software product support processes and the usage of multimedia formats '),
(67, 'title', 0, 1, ' modern software product support processes and the usage of multimedia formats '),
(67, 'field', 14, 1, ' parmit s lab '),
(67, 'field', 8, 1, ' parmit k chilana '),
(67, 'field', 6, 1, ' despite being an important channel for end user assistance few studies have directly investigated the interactions that occur in modern day practice of software product support we present results from a multi dimensional analysis of product support activities at a leading design software company '),
(67, 'field', 7, 1, ''),
(67, 'field', 9, 1, ' 2011 proceedings of the sigchi conference on human factors in computing systems acm new york ny usa '),
(70, 'kind', 0, 1, ' image '),
(70, 'extension', 0, 1, ' png '),
(70, 'filename', 0, 1, ' timevis encodings png '),
(70, 'slug', 0, 1, ''),
(70, 'title', 0, 1, ' timevis encodings '),
(71, 'slug', 0, 1, ' 2d time trajectories '),
(71, 'title', 0, 1, ' 2d time trajectories '),
(71, 'field', 14, 1, ' innovis '),
(71, 'field', 8, 1, ' charles perintiffany wunrichard puschsheelagh carpendale '),
(71, 'field', 6, 1, ' we empirically evaluate the extent to which people perceive non constant time and speed encoded on 2d paths in our graphical perception study we evaluate nine encodings from the literature for both straight and curved paths visualizing time and speed information is a challenge when the x and y axes already encode other data dimensions for example when plotting a trip on a map this is particularly true in disciplines such as time geography and movement analytics that often require visualizing spatio temporal trajectories a common approach is to use 2d time trajectories which are 2d paths for which time is an additional dimension however there are currently no guidelines regarding how to represent time and speed on such paths our study results provide infovis designers with clear guidance regarding which encodings to use and which ones to avoid in particular we suggest using color value to encode speed and segment length to encode time whenever possible '),
(71, 'field', 7, 1, ' timevis encodings '),
(71, 'field', 9, 1, ' perin charles wun tiffany pusch richard and carpendale sheelagh assessing the graphical perception of time and speed on 2d time trajectories ieee transactions on visualization and computer graphics 24 1 698 708 ieee 2018 '),
(74, 'extension', 0, 1, ' jpg '),
(74, 'kind', 0, 1, ' image '),
(74, 'slug', 0, 1, ''),
(74, 'title', 0, 1, ' avis teaser '),
(75, 'slug', 0, 1, ' active reading of visualizations '),
(75, 'title', 0, 1, ' active reading of visualizations '),
(75, 'field', 14, 1, ' innovis '),
(75, 'field', 8, 1, ' jagoda walnysamuel huroncharles perintiffany wunrichard puschsheelagh carpendale '),
(75, 'field', 6, 1, ' we investigate whether the notion of active reading for text might be usefully applied to visualizations through a qualitative study we explored whether people apply observable active reading techniques when reading paper based node link visualizations participants used a range of physical actions while reading and from these we synthesized an initial set of active reading techniques for visualizations to learn more about the potential impact such techniques may have on visualization reading we implemented support for one type of physical action from our observations making freeform marks in an interactive node link visualization results from our quantitative study of this implementation show that interactive support for active reading techniques can improve the accuracy of performing low level visualization tasks together our studies suggest that the active reading space is ripe for research exploration within visualization and can lead to new interactions that make for a more flexible and effective visualization reading experience '),
(75, 'field', 7, 1, ' avis teaser '),
(75, 'field', 9, 1, ''),
(74, 'filename', 0, 1, ' avis teaser jpg '),
(82, 'field', 7, 1, ' bird fireflies '),
(82, 'field', 9, 1, ' ut ipsum non leo convallis et al sed semper turpis quis lorem blandit pharetra nullam fringilla elementum sollicitudin 2019 '),
(77, 'slug', 0, 1, ' another proj '),
(77, 'title', 0, 1, ' another project '),
(77, 'field', 14, 1, ' innovis '),
(77, 'field', 8, 1, ' jagoda walnysamuel huroncharles perintiffany wunrichard puschsheelagh carpendale '),
(77, 'field', 6, 1, ' we investigate whether the notion of active reading for text might be usefully applied to visualizations through a qualitative study we explored whether people apply observable active reading techniques when reading paper based node link visualizations participants used a range of physical actions while reading and from these we synthesized an initial set of active reading techniques for visualizations '),
(77, 'field', 7, 1, ' avis teaser '),
(77, 'field', 9, 1, ''),
(51, 'extension', 0, 1, ' jpg '),
(51, 'filename', 0, 1, ' bird jpg '),
(52, 'extension', 0, 1, ' jpg '),
(52, 'filename', 0, 1, ' fireflies jpg '),
(82, 'slug', 0, 1, ' research yvr '),
(82, 'title', 0, 1, ' research in yvr '),
(82, 'field', 14, 1, ' innovis '),
(82, 'field', 8, 1, ' bob smithandy waslow '),
(82, 'field', 6, 1, ' phasellus tristique sed magna eget dictum ut eget nibh sed augue scelerisque aliquam sed eu ligula sed blandit elit ipsum vitae dignissim urna fermentum at curabitur congue arcu vitae tincidunt sagittis duis ut odio a magna eleifend venenatis sed sed luctus nisl commodo scelerisque velit curabitur sagittis placerat rutrum ');

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

DROP TABLE IF EXISTS `sections`;
CREATE TABLE IF NOT EXISTS `sections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `structureId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `type` enum('single','channel','structure') NOT NULL DEFAULT 'channel',
  `enableVersioning` tinyint(1) NOT NULL DEFAULT '0',
  `propagationMethod` varchar(255) NOT NULL DEFAULT 'all',
  `previewTargets` text,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `sections_handle_idx` (`handle`),
  KEY `sections_name_idx` (`name`),
  KEY `sections_structureId_idx` (`structureId`),
  KEY `sections_dateDeleted_idx` (`dateDeleted`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `structureId`, `name`, `handle`, `type`, `enableVersioning`, `propagationMethod`, `previewTargets`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, NULL, 'about', 'about', 'single', 1, 'all', NULL, '2019-12-17 20:21:57', '2019-12-18 23:59:12', '2019-12-18 23:59:12', '381ba80e-da6e-4a3c-ba49-39ecd60f7a10'),
(2, NULL, 'Homepage', 'home', 'single', 1, 'all', NULL, '2019-12-17 20:22:20', '2019-12-19 20:33:58', NULL, '6311178c-704d-480d-97d1-37f17b3cc48b'),
(3, NULL, 'People', 'people', 'channel', 1, 'all', NULL, '2019-12-17 23:26:26', '2019-12-19 20:30:26', NULL, '83095466-6133-4161-84a9-74a5c7c6d415'),
(4, NULL, 'News', 'news', 'channel', 1, 'all', NULL, '2019-12-17 23:34:11', '2019-12-19 20:30:55', NULL, 'b1ea6f78-b28a-4add-9aa9-b3dff4582b7e'),
(5, NULL, 'People Index', 'peopleIndex', 'single', 1, 'all', NULL, '2019-12-18 00:01:54', '2019-12-19 20:47:12', NULL, 'a21fe2e1-43d4-4493-a462-96d779a08978'),
(6, NULL, 'Research', 'research', 'channel', 1, 'all', NULL, '2019-12-18 22:28:44', '2019-12-20 22:39:51', NULL, '3846705d-50f3-453d-ba99-a6e3cca49b2d'),
(7, NULL, 'Research Index', 'researchIndex', 'single', 1, 'all', NULL, '2019-12-18 22:29:07', '2019-12-19 20:34:10', NULL, 'ed3ebfa3-8e6c-42f7-819d-7c63ec327600'),
(8, NULL, 'Affiliations', 'affiliations', 'single', 1, 'all', NULL, '2019-12-18 22:39:42', '2019-12-19 20:33:53', NULL, '2cb363b3-4783-43ac-983e-1f5b7663e1d0'),
(9, NULL, 'News Index', 'newsIndex', 'single', 1, 'all', NULL, '2019-12-18 23:49:45', '2019-12-19 20:34:03', NULL, 'c3a36ce8-b283-4b75-8f94-302209f9ce94'),
(10, NULL, 'Courses', 'courses', 'channel', 1, 'all', NULL, '2019-12-19 20:29:25', '2019-12-19 20:30:35', NULL, 'b4b3aa00-328d-44cd-b7ca-e93ad43d66b8'),
(11, NULL, 'Course Index', 'courseIndex', 'single', 1, 'all', NULL, '2019-12-19 20:33:39', '2019-12-19 20:34:58', NULL, 'a7edf02d-2254-4734-8d41-d7949167e0f0');

-- --------------------------------------------------------

--
-- Table structure for table `sections_sites`
--

DROP TABLE IF EXISTS `sections_sites`;
CREATE TABLE IF NOT EXISTS `sections_sites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sectionId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `hasUrls` tinyint(1) NOT NULL DEFAULT '1',
  `uriFormat` text,
  `template` varchar(500) DEFAULT NULL,
  `enabledByDefault` tinyint(1) NOT NULL DEFAULT '1',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `sections_sites_sectionId_siteId_unq_idx` (`sectionId`,`siteId`),
  KEY `sections_sites_siteId_idx` (`siteId`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sections_sites`
--

INSERT INTO `sections_sites` (`id`, `sectionId`, `siteId`, `hasUrls`, `uriFormat`, `template`, `enabledByDefault`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 1, 1, 'about', '_pages/about/about', 1, '2019-12-17 20:21:57', '2019-12-18 23:59:12', '0831ae21-8222-4a99-9b44-9f4fa2c0baac'),
(2, 2, 1, 1, '__home__', '_pages/home/home.twig', 1, '2019-12-17 20:22:20', '2019-12-19 20:33:58', '369719c9-2507-4f8c-a76b-08a043b70aee'),
(3, 3, 1, 1, 'people/{slug}', '_pages/people/_people_entry.twig', 1, '2019-12-17 23:26:26', '2019-12-19 20:30:26', '080b0fa4-e4f3-48be-92f0-fd2f745a7663'),
(4, 4, 1, 1, 'news/{slug}', '_pages/news/_news_entry.twig', 1, '2019-12-17 23:34:11', '2019-12-19 20:30:55', 'b1fef523-eae2-425a-90fc-1909a011f6a0'),
(5, 5, 1, 1, 'people', '_pages/people/people.twig', 1, '2019-12-18 00:01:54', '2019-12-19 20:47:12', '6b116ee8-18da-4ecc-983f-7e3943b78677'),
(6, 6, 1, 1, 'research/{slug}', '_pages/research/_research_entry.twig', 1, '2019-12-18 22:28:44', '2019-12-20 22:39:51', 'faa01a9b-4534-4fb5-a629-1b78d692f215'),
(7, 7, 1, 1, 'research', '_pages/research/research.twig', 1, '2019-12-18 22:29:07', '2019-12-19 20:34:10', 'bf464b40-a173-4549-af4c-45bd16f3be62'),
(8, 8, 1, 1, 'affiliations', '_pages/affiliations/affiliations.twig', 1, '2019-12-18 22:39:42', '2019-12-19 20:33:53', '5dc88088-9bb8-43dd-9f70-95095554f90a'),
(9, 9, 1, 1, 'news', '_pages/news/news.twig', 1, '2019-12-18 23:49:46', '2019-12-19 20:34:03', '18fd3593-ace4-4c54-b1df-d50d7173346f'),
(10, 10, 1, 1, 'courses/{slug}', '_pages/courses/_course_entry.twig', 1, '2019-12-19 20:29:25', '2019-12-19 20:30:35', 'a92cea96-c971-47c5-aef8-bb078ddd6d69'),
(11, 11, 1, 1, 'courses', '_pages/courses/courses.twig', 1, '2019-12-19 20:33:39', '2019-12-19 20:34:58', '1c112ea7-c5ed-4bae-bc06-e9c72431e777');

-- --------------------------------------------------------

--
-- Table structure for table `sequences`
--

DROP TABLE IF EXISTS `sequences`;
CREATE TABLE IF NOT EXISTS `sequences` (
  `name` varchar(255) NOT NULL,
  `next` int(11) UNSIGNED NOT NULL DEFAULT '1',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `token` char(100) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `sessions_uid_idx` (`uid`),
  KEY `sessions_token_idx` (`token`),
  KEY `sessions_dateUpdated_idx` (`dateUpdated`),
  KEY `sessions_userId_idx` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `userId`, `token`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(4, 1, 'viLlH6LA0wAwbcb1CoSNEJm7NugKvclG54H-VlYo7gu0Wxe0J7PyR4AX608vMcNq66pxVJkPKiXjf1x2pageiGVtiEerCo6qk7B5', '2019-12-17 20:07:55', '2019-12-17 20:25:09', 'a8efd020-cc88-48f4-bc4d-dc209fbe3d37'),
(5, 1, 'YFLOoGLIHur2Z4f46sOvgFrBJmNbnyazDv-MD9e3OJNzkbyhUADCJQ6BJL4BJgru9yqzLyVOZaLtpte2kf3oKP5fNGTHiqip-P5_', '2019-12-17 20:25:46', '2019-12-17 20:25:46', '1118de1a-ddb0-4aeb-8770-b380bdbe7067'),
(6, 1, 'bdQfVz2GGSNwaxHLF5ohhxi_4rft1WtMRxMsWd58Yn2Qx9cmGzLL9QlsIe41OhKIs9f3am88JiGJ38of_tjBMEMznQR17db-YfdR', '2019-12-17 20:28:07', '2019-12-17 20:28:15', '9d467ba7-7bb8-4fac-bb4b-84854557ea20'),
(13, 1, 'hm9tfREdTjZA7NjGGDckcZFs4N-kqE-mWJTqP2AM7uPnm-SHhaPJQnmwV6fY9X_PH7Amhi3CG5hiIhR30iioRo1FiaKsrRfFouv2', '2019-12-20 22:20:11', '2019-12-20 22:43:55', '8b5df6b1-8a9c-4701-a631-4a7c1954327e');

-- --------------------------------------------------------

--
-- Table structure for table `shunnedmessages`
--

DROP TABLE IF EXISTS `shunnedmessages`;
CREATE TABLE IF NOT EXISTS `shunnedmessages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `message` varchar(255) NOT NULL,
  `expiryDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shunnedmessages_userId_message_unq_idx` (`userId`,`message`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sitegroups`
--

DROP TABLE IF EXISTS `sitegroups`;
CREATE TABLE IF NOT EXISTS `sitegroups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `sitegroups_name_idx` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sitegroups`
--

INSERT INTO `sitegroups` (`id`, `name`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 'ixlab', '2019-12-17 19:39:09', '2019-12-17 19:39:09', NULL, '63961ea1-ba8f-4e9c-86bb-a99915f7942a');

-- --------------------------------------------------------

--
-- Table structure for table `sites`
--

DROP TABLE IF EXISTS `sites`;
CREATE TABLE IF NOT EXISTS `sites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupId` int(11) NOT NULL,
  `primary` tinyint(1) NOT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `language` varchar(12) NOT NULL,
  `hasUrls` tinyint(1) NOT NULL DEFAULT '0',
  `baseUrl` varchar(255) DEFAULT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `sites_dateDeleted_idx` (`dateDeleted`),
  KEY `sites_handle_idx` (`handle`),
  KEY `sites_sortOrder_idx` (`sortOrder`),
  KEY `sites_groupId_fk` (`groupId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sites`
--

INSERT INTO `sites` (`id`, `groupId`, `primary`, `name`, `handle`, `language`, `hasUrls`, `baseUrl`, `sortOrder`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 1, 1, 'ixlab', 'default', 'en-US', 1, '$DEFAULT_SITE_URL', 1, '2019-12-17 19:39:09', '2019-12-17 19:39:09', NULL, 'd4d97380-b07f-42e2-be39-f820292a8d6f');

-- --------------------------------------------------------

--
-- Table structure for table `structureelements`
--

DROP TABLE IF EXISTS `structureelements`;
CREATE TABLE IF NOT EXISTS `structureelements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `structureId` int(11) NOT NULL,
  `elementId` int(11) DEFAULT NULL,
  `root` int(11) UNSIGNED DEFAULT NULL,
  `lft` int(11) UNSIGNED NOT NULL,
  `rgt` int(11) UNSIGNED NOT NULL,
  `level` smallint(6) UNSIGNED NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `structureelements_structureId_elementId_unq_idx` (`structureId`,`elementId`),
  KEY `structureelements_root_idx` (`root`),
  KEY `structureelements_lft_idx` (`lft`),
  KEY `structureelements_rgt_idx` (`rgt`),
  KEY `structureelements_level_idx` (`level`),
  KEY `structureelements_elementId_idx` (`elementId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `structureelements`
--

INSERT INTO `structureelements` (`id`, `structureId`, `elementId`, `root`, `lft`, `rgt`, `level`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, NULL, 1, 1, 6, 0, '2019-12-20 22:38:39', '2019-12-20 22:38:46', '0c7b311b-062c-4cb6-a147-118a6e44296f'),
(2, 1, 63, 1, 2, 3, 1, '2019-12-20 22:38:39', '2019-12-20 22:38:39', '55e0f41c-b996-4582-8d59-0e215cbe47fc'),
(3, 1, 64, 1, 4, 5, 1, '2019-12-20 22:38:46', '2019-12-20 22:38:46', '25535514-9346-41bc-bd2e-734aaedee848');

-- --------------------------------------------------------

--
-- Table structure for table `structures`
--

DROP TABLE IF EXISTS `structures`;
CREATE TABLE IF NOT EXISTS `structures` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `maxLevels` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `structures_dateDeleted_idx` (`dateDeleted`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `structures`
--

INSERT INTO `structures` (`id`, `maxLevels`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 2, '2019-12-20 22:38:24', '2019-12-20 22:38:24', NULL, '423646a9-4d6f-4128-9e9e-f38de78c60d9');

-- --------------------------------------------------------

--
-- Table structure for table `systemmessages`
--

DROP TABLE IF EXISTS `systemmessages`;
CREATE TABLE IF NOT EXISTS `systemmessages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language` varchar(255) NOT NULL,
  `key` varchar(255) NOT NULL,
  `subject` text NOT NULL,
  `body` text NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `systemmessages_key_language_unq_idx` (`key`,`language`),
  KEY `systemmessages_language_idx` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `taggroups`
--

DROP TABLE IF EXISTS `taggroups`;
CREATE TABLE IF NOT EXISTS `taggroups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `taggroups_name_idx` (`name`),
  KEY `taggroups_handle_idx` (`handle`),
  KEY `taggroups_dateDeleted_idx` (`dateDeleted`),
  KEY `taggroups_fieldLayoutId_fk` (`fieldLayoutId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
CREATE TABLE IF NOT EXISTS `tags` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `deletedWithGroup` tinyint(1) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `tags_groupId_idx` (`groupId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `templatecacheelements`
--

DROP TABLE IF EXISTS `templatecacheelements`;
CREATE TABLE IF NOT EXISTS `templatecacheelements` (
  `cacheId` int(11) NOT NULL,
  `elementId` int(11) NOT NULL,
  KEY `templatecacheelements_cacheId_idx` (`cacheId`),
  KEY `templatecacheelements_elementId_idx` (`elementId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `templatecachequeries`
--

DROP TABLE IF EXISTS `templatecachequeries`;
CREATE TABLE IF NOT EXISTS `templatecachequeries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cacheId` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `query` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `templatecachequeries_cacheId_idx` (`cacheId`),
  KEY `templatecachequeries_type_idx` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `templatecaches`
--

DROP TABLE IF EXISTS `templatecaches`;
CREATE TABLE IF NOT EXISTS `templatecaches` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `siteId` int(11) NOT NULL,
  `cacheKey` varchar(255) NOT NULL,
  `path` varchar(255) DEFAULT NULL,
  `expiryDate` datetime NOT NULL,
  `body` mediumtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `templatecaches_cacheKey_siteId_expiryDate_path_idx` (`cacheKey`,`siteId`,`expiryDate`,`path`),
  KEY `templatecaches_cacheKey_siteId_expiryDate_idx` (`cacheKey`,`siteId`,`expiryDate`),
  KEY `templatecaches_siteId_idx` (`siteId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `templatecaches`
--

INSERT INTO `templatecaches` (`id`, `siteId`, `cacheKey`, `path`, `expiryDate`, `body`) VALUES
(7, 1, 'eweMv84YgdUloAk8CEdoM2mbS8l7itmSKfe4', NULL, '2020-01-04 18:13:53', ' \n'),
(8, 1, 'UXi1Mmk9QRnRwDpZSLMo4x9CU1FyxBWKWPxC', NULL, '2020-01-08 22:58:10', ' \n');

-- --------------------------------------------------------

--
-- Table structure for table `tokens`
--

DROP TABLE IF EXISTS `tokens`;
CREATE TABLE IF NOT EXISTS `tokens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` char(32) NOT NULL,
  `route` text,
  `usageLimit` tinyint(3) UNSIGNED DEFAULT NULL,
  `usageCount` tinyint(3) UNSIGNED DEFAULT NULL,
  `expiryDate` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `tokens_token_unq_idx` (`token`),
  KEY `tokens_expiryDate_idx` (`expiryDate`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tokens`
--

INSERT INTO `tokens` (`id`, `token`, `route`, `usageLimit`, `usageCount`, `expiryDate`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'er3cS5ssl1vjpsUNYxo7NupCx-3dwBNB', '[\"preview/preview\",{\"elementType\":\"craft\\\\elements\\\\Entry\",\"sourceId\":44,\"siteId\":1,\"draftId\":9,\"revisionId\":null}]', NULL, NULL, '2019-12-20 22:53:27', '2019-12-19 22:53:28', '2019-12-19 22:53:28', '20c6f14c-1cad-4efa-8f67-6695c852a130');

-- --------------------------------------------------------

--
-- Table structure for table `usergroups`
--

DROP TABLE IF EXISTS `usergroups`;
CREATE TABLE IF NOT EXISTS `usergroups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `usergroups_handle_unq_idx` (`handle`),
  UNIQUE KEY `usergroups_name_unq_idx` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `usergroups_users`
--

DROP TABLE IF EXISTS `usergroups_users`;
CREATE TABLE IF NOT EXISTS `usergroups_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `usergroups_users_groupId_userId_unq_idx` (`groupId`,`userId`),
  KEY `usergroups_users_userId_idx` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `userpermissions`
--

DROP TABLE IF EXISTS `userpermissions`;
CREATE TABLE IF NOT EXISTS `userpermissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `userpermissions_name_unq_idx` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `userpermissions_usergroups`
--

DROP TABLE IF EXISTS `userpermissions_usergroups`;
CREATE TABLE IF NOT EXISTS `userpermissions_usergroups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permissionId` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `userpermissions_usergroups_permissionId_groupId_unq_idx` (`permissionId`,`groupId`),
  KEY `userpermissions_usergroups_groupId_idx` (`groupId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `userpermissions_users`
--

DROP TABLE IF EXISTS `userpermissions_users`;
CREATE TABLE IF NOT EXISTS `userpermissions_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permissionId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `userpermissions_users_permissionId_userId_unq_idx` (`permissionId`,`userId`),
  KEY `userpermissions_users_userId_idx` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `userpreferences`
--

DROP TABLE IF EXISTS `userpreferences`;
CREATE TABLE IF NOT EXISTS `userpreferences` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `preferences` text,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `userpreferences`
--

INSERT INTO `userpreferences` (`userId`, `preferences`) VALUES
(1, '{\"language\":\"en-US\",\"weekStartDay\":\"1\",\"enableDebugToolbarForSite\":false,\"enableDebugToolbarForCp\":false,\"showExceptionView\":false,\"profileTemplates\":false}');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `photoId` int(11) DEFAULT NULL,
  `firstName` varchar(100) DEFAULT NULL,
  `lastName` varchar(100) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `admin` tinyint(1) NOT NULL DEFAULT '0',
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  `suspended` tinyint(1) NOT NULL DEFAULT '0',
  `pending` tinyint(1) NOT NULL DEFAULT '0',
  `lastLoginDate` datetime DEFAULT NULL,
  `lastLoginAttemptIp` varchar(45) DEFAULT NULL,
  `invalidLoginWindowStart` datetime DEFAULT NULL,
  `invalidLoginCount` tinyint(3) UNSIGNED DEFAULT NULL,
  `lastInvalidLoginDate` datetime DEFAULT NULL,
  `lockoutDate` datetime DEFAULT NULL,
  `hasDashboard` tinyint(1) NOT NULL DEFAULT '0',
  `verificationCode` varchar(255) DEFAULT NULL,
  `verificationCodeIssuedDate` datetime DEFAULT NULL,
  `unverifiedEmail` varchar(255) DEFAULT NULL,
  `passwordResetRequired` tinyint(1) NOT NULL DEFAULT '0',
  `lastPasswordChangeDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `users_uid_idx` (`uid`),
  KEY `users_verificationCode_idx` (`verificationCode`),
  KEY `users_email_idx` (`email`),
  KEY `users_username_idx` (`username`),
  KEY `users_photoId_fk` (`photoId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `photoId`, `firstName`, `lastName`, `email`, `password`, `admin`, `locked`, `suspended`, `pending`, `lastLoginDate`, `lastLoginAttemptIp`, `invalidLoginWindowStart`, `invalidLoginCount`, `lastInvalidLoginDate`, `lockoutDate`, `hasDashboard`, `verificationCode`, `verificationCodeIssuedDate`, `unverifiedEmail`, `passwordResetRequired`, `lastPasswordChangeDate`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'admin', NULL, '', '', 'peter_buk@sfu.ca', '$2y$13$/8j6SELVCjucwWGaLTL6GOfLdTG2cQRjDNesO3A5MHJ8h5VTLWkgu', 1, 0, 0, 0, '2020-01-03 18:20:17', NULL, NULL, NULL, '2019-12-19 20:05:24', NULL, 1, NULL, NULL, NULL, 0, '2019-12-17 20:07:40', '2019-12-17 19:39:12', '2020-01-03 18:20:17', '96ff0537-f78a-4549-9573-26487f62dd8b');

-- --------------------------------------------------------

--
-- Table structure for table `volumefolders`
--

DROP TABLE IF EXISTS `volumefolders`;
CREATE TABLE IF NOT EXISTS `volumefolders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parentId` int(11) DEFAULT NULL,
  `volumeId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `path` varchar(255) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `volumefolders_name_parentId_volumeId_unq_idx` (`name`,`parentId`,`volumeId`),
  KEY `volumefolders_parentId_idx` (`parentId`),
  KEY `volumefolders_volumeId_idx` (`volumeId`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `volumefolders`
--

INSERT INTO `volumefolders` (`id`, `parentId`, `volumeId`, `name`, `path`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, NULL, 1, 'Site Assets', '', '2019-12-17 21:01:53', '2019-12-17 21:03:46', 'a454a4f3-9eac-4b33-a4b6-19122480668a'),
(2, NULL, NULL, 'Temporary source', NULL, '2019-12-17 21:02:05', '2019-12-17 21:02:05', '4de3f3a2-31e8-44a1-9c37-df1a30a92a35'),
(3, 2, NULL, 'user_1', 'user_1/', '2019-12-17 21:02:05', '2019-12-17 21:02:05', '63ec1679-bfc2-4795-b32c-c575d9aefb81'),
(4, NULL, 2, 'Site Assets', '', '2019-12-17 21:08:06', '2019-12-17 21:08:06', '7a9b75ee-a4c0-4b7e-8681-0d4362452559'),
(5, 4, 2, 'people', 'people/', '2019-12-17 23:47:32', '2019-12-17 23:47:32', '0856a4fc-4b1f-437d-b776-25bb2ff648c3'),
(6, 4, 2, 'research', 'research/', '2019-12-19 00:22:07', '2019-12-19 00:22:07', 'd4d3f2d0-4084-4f42-9102-5b87c8ea2b60'),
(7, 6, 2, 'sample-research-project', 'research/sample-research-project/', '2019-12-19 00:22:07', '2019-12-19 00:22:07', 'c6bff9cc-4d41-46ac-8653-642b9b101664'),
(8, 6, 2, '2d-time-trajectories', 'research/2d-time-trajectories/', '2020-01-03 20:13:18', '2020-01-03 20:13:18', '548413ee-6cb1-4c34-b75f-83de296b7792'),
(9, 6, 2, 'active-reading-of-visualizations', 'research/active-reading-of-visualizations/', '2020-01-03 20:14:53', '2020-01-03 20:14:53', '2bf14135-726f-4928-8bd4-e989e71e530f'),
(10, 6, 2, 'active-reading-of-visualizations-1', 'research/active-reading-of-visualizations-1/', '2020-01-03 20:20:18', '2020-01-03 20:20:18', '5a42f813-b660-469d-94d0-999df66cbc6e'),
(11, 6, 2, 'another-proj', 'research/another-proj/', '2020-01-03 20:20:50', '2020-01-03 20:20:50', 'f7a772af-0e33-4b63-8849-98c4adea1a7b'),
(12, 6, 2, 'sample-research-project-1', 'research/sample-research-project-1/', '2020-01-03 20:22:00', '2020-01-03 20:22:00', '4c5468d5-9438-4743-aeb4-09043191c093'),
(13, 6, 2, 'research-yvr', 'research/research-yvr/', '2020-01-03 20:22:10', '2020-01-03 20:22:10', '1295bdcc-0570-4c3f-b015-1205d2750189');

-- --------------------------------------------------------

--
-- Table structure for table `volumes`
--

DROP TABLE IF EXISTS `volumes`;
CREATE TABLE IF NOT EXISTS `volumes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `hasUrls` tinyint(1) NOT NULL DEFAULT '1',
  `url` varchar(255) DEFAULT NULL,
  `settings` text,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `volumes_name_idx` (`name`),
  KEY `volumes_handle_idx` (`handle`),
  KEY `volumes_fieldLayoutId_idx` (`fieldLayoutId`),
  KEY `volumes_dateDeleted_idx` (`dateDeleted`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `volumes`
--

INSERT INTO `volumes` (`id`, `fieldLayoutId`, `name`, `handle`, `type`, `hasUrls`, `url`, `settings`, `sortOrder`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, NULL, 'Site Assets', 'siteAssets', 'craft\\volumes\\Local', 1, '$ASSET_BASE_URL', '{\"path\":\"$ASSET_BASE_URL\"}', 1, '2019-12-17 21:01:53', '2019-12-17 21:03:46', '2019-12-17 21:04:49', '5c395d56-9491-4ba8-ae6a-561e0259257a'),
(2, NULL, 'Site Assets', 'siteAssets', 'craft\\volumes\\Local', 1, './static/img/siteAssets', '{\"path\":\"./static/img/siteAssets\"}', 2, '2019-12-17 21:08:06', '2019-12-17 21:08:06', NULL, 'a35e2a3c-cf4f-422c-af9b-2c59e7d86bfc');

-- --------------------------------------------------------

--
-- Table structure for table `widgets`
--

DROP TABLE IF EXISTS `widgets`;
CREATE TABLE IF NOT EXISTS `widgets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `colspan` tinyint(3) DEFAULT NULL,
  `settings` text,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `widgets_userId_idx` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `widgets`
--

INSERT INTO `widgets` (`id`, `userId`, `type`, `sortOrder`, `colspan`, `settings`, `enabled`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 'craft\\widgets\\RecentEntries', 1, NULL, '{\"section\":\"*\",\"siteId\":\"1\",\"limit\":10}', 1, '2019-12-17 19:39:13', '2019-12-17 19:39:13', 'afb17074-f3a4-4701-a470-df4c863f6819'),
(2, 1, 'craft\\widgets\\CraftSupport', 2, NULL, '[]', 1, '2019-12-17 19:39:13', '2019-12-17 19:39:13', 'ec4d324b-2cec-45bc-8030-281e789b7953'),
(3, 1, 'craft\\widgets\\Updates', 3, NULL, '[]', 1, '2019-12-17 19:39:13', '2019-12-17 19:39:13', '71a8a9de-4996-4454-aa16-21750dc7a148'),
(4, 1, 'craft\\widgets\\Feed', 4, NULL, '{\"url\":\"https://craftcms.com/news.rss\",\"title\":\"Craft News\",\"limit\":5}', 1, '2019-12-17 19:39:13', '2019-12-17 19:39:13', '76f28431-f1bb-4a3d-a877-948c0bace784');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `searchindex`
--
ALTER TABLE `searchindex` ADD FULLTEXT KEY `searchindex_keywords_idx` (`keywords`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `assetindexdata`
--
ALTER TABLE `assetindexdata`
  ADD CONSTRAINT `assetindexdata_volumeId_fk` FOREIGN KEY (`volumeId`) REFERENCES `volumes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `assets`
--
ALTER TABLE `assets`
  ADD CONSTRAINT `assets_folderId_fk` FOREIGN KEY (`folderId`) REFERENCES `volumefolders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `assets_id_fk` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `assets_volumeId_fk` FOREIGN KEY (`volumeId`) REFERENCES `volumes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `categorygroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `categories_id_fk` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `categories_parentId_fk` FOREIGN KEY (`parentId`) REFERENCES `categories` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `categorygroups`
--
ALTER TABLE `categorygroups`
  ADD CONSTRAINT `categorygroups_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `categorygroups_structureId_fk` FOREIGN KEY (`structureId`) REFERENCES `structures` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `categorygroups_sites`
--
ALTER TABLE `categorygroups_sites`
  ADD CONSTRAINT `categorygroups_sites_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `categorygroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `categorygroups_sites_siteId_fk` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `content`
--
ALTER TABLE `content`
  ADD CONSTRAINT `content_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `content_siteId_fk` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `craftidtokens`
--
ALTER TABLE `craftidtokens`
  ADD CONSTRAINT `craftidtokens_userId_fk` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `drafts`
--
ALTER TABLE `drafts`
  ADD CONSTRAINT `drafts_creatorId_fk` FOREIGN KEY (`creatorId`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `drafts_sourceId_fk` FOREIGN KEY (`sourceId`) REFERENCES `elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `elements`
--
ALTER TABLE `elements`
  ADD CONSTRAINT `elements_draftId_fk` FOREIGN KEY (`draftId`) REFERENCES `drafts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `elements_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `elements_revisionId_fk` FOREIGN KEY (`revisionId`) REFERENCES `revisions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `elements_sites`
--
ALTER TABLE `elements_sites`
  ADD CONSTRAINT `elements_sites_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `elements_sites_siteId_fk` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `entries`
--
ALTER TABLE `entries`
  ADD CONSTRAINT `entries_authorId_fk` FOREIGN KEY (`authorId`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `entries_id_fk` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `entries_parentId_fk` FOREIGN KEY (`parentId`) REFERENCES `entries` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `entries_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `entries_typeId_fk` FOREIGN KEY (`typeId`) REFERENCES `entrytypes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `entrytypes`
--
ALTER TABLE `entrytypes`
  ADD CONSTRAINT `entrytypes_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `entrytypes_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `sections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `fieldlayoutfields`
--
ALTER TABLE `fieldlayoutfields`
  ADD CONSTRAINT `fieldlayoutfields_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fieldlayoutfields_layoutId_fk` FOREIGN KEY (`layoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fieldlayoutfields_tabId_fk` FOREIGN KEY (`tabId`) REFERENCES `fieldlayouttabs` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `fieldlayouttabs`
--
ALTER TABLE `fieldlayouttabs`
  ADD CONSTRAINT `fieldlayouttabs_layoutId_fk` FOREIGN KEY (`layoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `fields`
--
ALTER TABLE `fields`
  ADD CONSTRAINT `fields_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `fieldgroups` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `globalsets`
--
ALTER TABLE `globalsets`
  ADD CONSTRAINT `globalsets_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `globalsets_id_fk` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `matrixblocks`
--
ALTER TABLE `matrixblocks`
  ADD CONSTRAINT `matrixblocks_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `matrixblocks_id_fk` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `matrixblocks_ownerId_fk` FOREIGN KEY (`ownerId`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `matrixblocks_typeId_fk` FOREIGN KEY (`typeId`) REFERENCES `matrixblocktypes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `matrixblocktypes`
--
ALTER TABLE `matrixblocktypes`
  ADD CONSTRAINT `matrixblocktypes_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `matrixblocktypes_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `migrations`
--
ALTER TABLE `migrations`
  ADD CONSTRAINT `migrations_pluginId_fk` FOREIGN KEY (`pluginId`) REFERENCES `plugins` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `relations`
--
ALTER TABLE `relations`
  ADD CONSTRAINT `relations_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `relations_sourceId_fk` FOREIGN KEY (`sourceId`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `relations_sourceSiteId_fk` FOREIGN KEY (`sourceSiteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `relations_targetId_fk` FOREIGN KEY (`targetId`) REFERENCES `elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `revisions`
--
ALTER TABLE `revisions`
  ADD CONSTRAINT `revisions_creatorId_fk` FOREIGN KEY (`creatorId`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `revisions_sourceId_fk` FOREIGN KEY (`sourceId`) REFERENCES `elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sections`
--
ALTER TABLE `sections`
  ADD CONSTRAINT `sections_structureId_fk` FOREIGN KEY (`structureId`) REFERENCES `structures` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `sections_sites`
--
ALTER TABLE `sections_sites`
  ADD CONSTRAINT `sections_sites_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sections_sites_siteId_fk` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sessions`
--
ALTER TABLE `sessions`
  ADD CONSTRAINT `sessions_userId_fk` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `shunnedmessages`
--
ALTER TABLE `shunnedmessages`
  ADD CONSTRAINT `shunnedmessages_userId_fk` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sites`
--
ALTER TABLE `sites`
  ADD CONSTRAINT `sites_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `sitegroups` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `structureelements`
--
ALTER TABLE `structureelements`
  ADD CONSTRAINT `structureelements_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `structureelements_structureId_fk` FOREIGN KEY (`structureId`) REFERENCES `structures` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `taggroups`
--
ALTER TABLE `taggroups`
  ADD CONSTRAINT `taggroups_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `tags`
--
ALTER TABLE `tags`
  ADD CONSTRAINT `tags_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `taggroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tags_id_fk` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `templatecacheelements`
--
ALTER TABLE `templatecacheelements`
  ADD CONSTRAINT `templatecacheelements_cacheId_fk` FOREIGN KEY (`cacheId`) REFERENCES `templatecaches` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `templatecacheelements_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `templatecachequeries`
--
ALTER TABLE `templatecachequeries`
  ADD CONSTRAINT `templatecachequeries_cacheId_fk` FOREIGN KEY (`cacheId`) REFERENCES `templatecaches` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `templatecaches`
--
ALTER TABLE `templatecaches`
  ADD CONSTRAINT `templatecaches_siteId_fk` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `usergroups_users`
--
ALTER TABLE `usergroups_users`
  ADD CONSTRAINT `usergroups_users_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `usergroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `usergroups_users_userId_fk` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `userpermissions_usergroups`
--
ALTER TABLE `userpermissions_usergroups`
  ADD CONSTRAINT `userpermissions_usergroups_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `usergroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `userpermissions_usergroups_permissionId_fk` FOREIGN KEY (`permissionId`) REFERENCES `userpermissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `userpermissions_users`
--
ALTER TABLE `userpermissions_users`
  ADD CONSTRAINT `userpermissions_users_permissionId_fk` FOREIGN KEY (`permissionId`) REFERENCES `userpermissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `userpermissions_users_userId_fk` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `userpreferences`
--
ALTER TABLE `userpreferences`
  ADD CONSTRAINT `userpreferences_userId_fk` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_id_fk` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `users_photoId_fk` FOREIGN KEY (`photoId`) REFERENCES `assets` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `volumefolders`
--
ALTER TABLE `volumefolders`
  ADD CONSTRAINT `volumefolders_parentId_fk` FOREIGN KEY (`parentId`) REFERENCES `volumefolders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `volumefolders_volumeId_fk` FOREIGN KEY (`volumeId`) REFERENCES `volumes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `volumes`
--
ALTER TABLE `volumes`
  ADD CONSTRAINT `volumes_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `widgets`
--
ALTER TABLE `widgets`
  ADD CONSTRAINT `widgets_userId_fk` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
