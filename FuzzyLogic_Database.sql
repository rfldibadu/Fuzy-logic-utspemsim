-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               5.7.24 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for fuzzylogic
CREATE DATABASE IF NOT EXISTS `fuzzylogic` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `fuzzylogic`;

-- Dumping structure for table fuzzylogic.grafik_permintaan
CREATE TABLE IF NOT EXISTS `grafik_permintaan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Istilah` varchar(50) NOT NULL,
  `nilai_x` int(11) NOT NULL,
  `nilai_y` int(11) NOT NULL,
  `nilai_x2` int(11) NOT NULL,
  `nilai_y2` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table fuzzylogic.grafik_permintaan: ~2 rows (approximately)
/*!40000 ALTER TABLE `grafik_permintaan` DISABLE KEYS */;
INSERT INTO `grafik_permintaan` (`id`, `Istilah`, `nilai_x`, `nilai_y`, `nilai_x2`, `nilai_y2`) VALUES
	(1, 'Turun', 1000, 1, 5000, 0),
	(2, 'Naik', 1000, 0, 5000, 1);
/*!40000 ALTER TABLE `grafik_permintaan` ENABLE KEYS */;

-- Dumping structure for table fuzzylogic.grafik_persediaan
CREATE TABLE IF NOT EXISTS `grafik_persediaan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `istilah` varchar(50) NOT NULL,
  `nilai_x` int(11) NOT NULL DEFAULT '0',
  `nilai_y` int(11) NOT NULL DEFAULT '0',
  `nilai_x2` int(11) DEFAULT NULL,
  `nilai_y2` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table fuzzylogic.grafik_persediaan: ~2 rows (approximately)
/*!40000 ALTER TABLE `grafik_persediaan` DISABLE KEYS */;
INSERT INTO `grafik_persediaan` (`id`, `istilah`, `nilai_x`, `nilai_y`, `nilai_x2`, `nilai_y2`) VALUES
	(1, 'Sedikit', 100, 1, 600, 0),
	(2, 'Banyak', 100, 0, 600, 1);
/*!40000 ALTER TABLE `grafik_persediaan` ENABLE KEYS */;

-- Dumping structure for table fuzzylogic.grafik_produksi
CREATE TABLE IF NOT EXISTS `grafik_produksi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `istilah` varchar(50) NOT NULL,
  `nilai_x` int(11) NOT NULL DEFAULT '0',
  `nilai_y` int(11) NOT NULL DEFAULT '0',
  `nilai_x2` int(11) NOT NULL DEFAULT '0',
  `nilai_y2` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table fuzzylogic.grafik_produksi: ~2 rows (approximately)
/*!40000 ALTER TABLE `grafik_produksi` DISABLE KEYS */;
INSERT INTO `grafik_produksi` (`id`, `istilah`, `nilai_x`, `nilai_y`, `nilai_x2`, `nilai_y2`) VALUES
	(1, 'Berkurang', 2000, 1, 7000, 0),
	(2, 'Bertambah', 2000, 0, 7000, 1);
/*!40000 ALTER TABLE `grafik_produksi` ENABLE KEYS */;

-- Dumping structure for table fuzzylogic.inputan
CREATE TABLE IF NOT EXISTS `inputan` (
  `id` int(1) NOT NULL AUTO_INCREMENT,
  `permintaan` int(11) DEFAULT NULL,
  `persediaan` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table fuzzylogic.inputan: ~0 rows (approximately)
/*!40000 ALTER TABLE `inputan` DISABLE KEYS */;
/*!40000 ALTER TABLE `inputan` ENABLE KEYS */;

-- Dumping structure for table fuzzylogic.rules
CREATE TABLE IF NOT EXISTS `rules` (
  `id` varchar(50) DEFAULT NULL,
  `permintaan` varchar(50) DEFAULT NULL,
  `persediaan` varchar(50) DEFAULT NULL,
  `produksi` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table fuzzylogic.rules: ~4 rows (approximately)
/*!40000 ALTER TABLE `rules` DISABLE KEYS */;
INSERT INTO `rules` (`id`, `permintaan`, `persediaan`, `produksi`) VALUES
	('R1', 'Turun', 'Banyak', 'Berkurang'),
	('R2', 'Turun', 'Sedikit', 'Berkurang'),
	('R3', 'Naik', 'Banyak', 'Bertambah'),
	('R4', 'Naik', 'Sedikit', 'Bertambah');
/*!40000 ALTER TABLE `rules` ENABLE KEYS */;

-- Dumping structure for table fuzzylogic.variabel
CREATE TABLE IF NOT EXISTS `variabel` (
  `id` int(1) NOT NULL AUTO_INCREMENT,
  `jenis` varchar(50) NOT NULL,
  `nama_variabel` varchar(50) NOT NULL,
  `min_istilah` enum('Turun','Sedikit','Berkurang') NOT NULL,
  `min_angka` int(11) NOT NULL DEFAULT '0',
  `max_istilah` enum('Naik','Banyak','Bertambah') NOT NULL,
  `max_angka` int(11) NOT NULL DEFAULT '0',
  `satuan` set('Kemasan/Hari') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Dumping data for table fuzzylogic.variabel: ~2 rows (approximately)
/*!40000 ALTER TABLE `variabel` DISABLE KEYS */;
INSERT INTO `variabel` (`id`, `jenis`, `nama_variabel`, `min_istilah`, `min_angka`, `max_istilah`, `max_angka`, `satuan`) VALUES
	(1, 'INPUT 1', 'Permintaan', 'Turun', 1000, 'Naik', 5000, 'Kemasan/Hari'),
	(2, 'INPUT 2', 'Persediaan', 'Sedikit', 100, 'Banyak', 600, 'Kemasan/Hari'),
	(3, 'OUTPUT', 'Produksi', 'Berkurang', 2000, 'Bertambah', 7000, 'Kemasan/Hari');
/*!40000 ALTER TABLE `variabel` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
