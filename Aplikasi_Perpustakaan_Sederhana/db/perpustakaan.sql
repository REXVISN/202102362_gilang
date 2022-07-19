/*
 Navicat Premium Data Transfer

 Source Server         : gilang
 Source Server Type    : MySQL
 Source Server Version : 100424
 Source Host           : localhost:3306
 Source Schema         : perpustakaan

 Target Server Type    : MySQL
 Target Server Version : 100424
 File Encoding         : 65001

 Date: 19/07/2022 23:32:39
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tb_buku
-- ----------------------------
DROP TABLE IF EXISTS `tb_buku`;
CREATE TABLE `tb_buku`  (
  `kode_buku` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `judul_buku` varchar(40) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tanggal_terbit` date NOT NULL,
  `pengarang` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`kode_buku`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_buku
-- ----------------------------
INSERT INTO `tb_buku` VALUES ('001', 'Novel', '2017-07-14', 'Nur Fahmi');
INSERT INTO `tb_buku` VALUES ('002', 'Komik', '2016-08-11', 'Vallentino Reza');
INSERT INTO `tb_buku` VALUES ('003', 'Pendidikan', '2020-12-06', 'Nikolas Aslam');

-- ----------------------------
-- Table structure for tb_mahasiswa
-- ----------------------------
DROP TABLE IF EXISTS `tb_mahasiswa`;
CREATE TABLE `tb_mahasiswa`  (
  `nim` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nama` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tempat_lahir` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jurusan` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tanggal_masuk` date NOT NULL,
  PRIMARY KEY (`nim`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_mahasiswa
-- ----------------------------
INSERT INTO `tb_mahasiswa` VALUES ('202102340', 'Nur Faisal', 'Sambas', '2000-01-10', 'Sistem Informatika', '2019-10-30');
INSERT INTO `tb_mahasiswa` VALUES ('202102362', 'Nikolas Gilang Wisnuadi', 'Merarai Satu', '2002-07-14', 'Teknik Informatika', '2020-09-21');
INSERT INTO `tb_mahasiswa` VALUES ('202102363', 'Reza Meinanda Anugrah Putra', 'Kubu Raya', '2000-06-07', 'Teknik Informatika', '2020-09-21');
INSERT INTO `tb_mahasiswa` VALUES ('202102364', 'Fahmi Dwi Pamane', 'Sambas', '2001-01-15', 'Sistem Informatika', '2021-07-14');

-- ----------------------------
-- Table structure for tb_peminjaman
-- ----------------------------
DROP TABLE IF EXISTS `tb_peminjaman`;
CREATE TABLE `tb_peminjaman`  (
  `nim` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nama` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `jurusan` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `kode_buku` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `judul_buku` varchar(40) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tanggal_terbit` date NOT NULL,
  `tanggal_pinjam` date NOT NULL,
  PRIMARY KEY (`nim`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_peminjaman
-- ----------------------------
INSERT INTO `tb_peminjaman` VALUES ('202102340', 'Nur Faisal', 'Sistem Informatika', '002', 'One Peace', '2017-08-21', '2022-07-19');
INSERT INTO `tb_peminjaman` VALUES ('202102362', 'Nikolas Gilang Wisnuadi', 'Teknik Informatika', '001', 'Danur', '2016-07-14', '2022-07-19');

SET FOREIGN_KEY_CHECKS = 1;
