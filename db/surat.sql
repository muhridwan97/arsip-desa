/*
SQLyog Ultimate v12.4.3 (64 bit)
MySQL - 10.1.37-MariaDB : Database - surat
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`surat` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `surat`;

/*Table structure for table `dept` */

DROP TABLE IF EXISTS `dept`;

CREATE TABLE `dept` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dept` varchar(40) NOT NULL,
  `kode` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

/*Data for the table `dept` */

insert  into `dept`(`id`,`dept`,`kode`) values 
(1,'ORGANISASI','OT.01'),
(2,'TATA LAKSANA','OT.02'),
(3,'KEHUMASAN - PENERANGAN','HM.00'),
(4,'KEHUMASAN - HUBUNGAN','HM.01');

/*Table structure for table `tbl_bagian` */

DROP TABLE IF EXISTS `tbl_bagian`;

CREATE TABLE `tbl_bagian` (
  `id_bagian` int(10) NOT NULL AUTO_INCREMENT,
  `nama_bagian` text,
  `id_user` int(10) DEFAULT NULL,
  PRIMARY KEY (`id_bagian`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_bagian` */

insert  into `tbl_bagian`(`id_bagian`,`nama_bagian`,`id_user`) values 
(6,'Kepala Desa',5),
(7,'Bendahara',5),
(9,'Kaur Umum',5),
(10,'Kaur Keuangan',5),
(11,'Kaur Pemerintahan',5),
(12,'Kaur Kesra',5);

/*Table structure for table `tbl_lampiran` */

DROP TABLE IF EXISTS `tbl_lampiran`;

CREATE TABLE `tbl_lampiran` (
  `id_lampiran` int(10) NOT NULL AUTO_INCREMENT,
  `token_lampiran` varchar(100) NOT NULL,
  `nama_berkas` text,
  `ukuran` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_lampiran`)
) ENGINE=MyISAM AUTO_INCREMENT=145 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_lampiran` */

insert  into `tbl_lampiran`(`id_lampiran`,`token_lampiran`,`nama_berkas`,`ukuran`) values 
(32,'1584fb55e3d9507afba9c049fae89e99','SURAT_KESEDIAAN_MENTOR_MUDA.docx','38.49'),
(33,'f0e5c28a75bf7d614ea9ae270f796ae2','SURAT_KESEDIAAN_MENTOR_MUDA1.docx','38.49'),
(34,'99a4e612860c981627ac5d01728fb188','SURAT_KESEDIAAN_MENTOR_MUDA2.docx','38.49'),
(35,'c686f7934302bb80a85c7227bf74aa6d','SURAT_KESEDIAAN_MENTOR_MUDA3.docx','38.49'),
(36,'95c7672e5c9a134866f7d8a18a29664b','SURAT_KESEDIAAN_MENTOR_MUDA4.docx','38.49'),
(37,'35248261906c718077dce9483c2e6168','Mahmuda_Muthmainnah_Journal_Harian_Ekstrakur_Latsar_-_Copy_-_Copy_-_Copy_-_Copy.docx','229.46'),
(38,'072beba616670fb8aae83e0e20c6b883','Mahmuda_Muthmainnah_Journal_Harian_Ekstrakur_Latsar_-_Copy_-_Copy_-_Copy_-_Copy.docx','229.46'),
(39,'c9a2f664f8b9060669ae2937ad6b13ea','Mahmuda_Muthmainnah_Journal_Harian_Ekstrakur_Latsar_-_Copy_-_Copy_-_Copy_-_Copy1.docx','229.46'),
(40,'915d7db30b2e43b3ca4088cbb28a3332','Mahmuda_Muthmainnah_Journal_Harian_Ekstrakur_Latsar_-_Copy_-_Copy_-_Copy_-_Copy2.docx','229.46'),
(41,'d31c88b9d25d4a71e1192f10fb85c8ed','Mahmuda_Muthmainnah_Journal_Harian_Ekstrakur_Latsar_-_Copy_-_Copy_-_Copy_-_Copy3.docx','229.46'),
(42,'39643e1a639dbe5b99904950940d7ee2','Mahmuda_Muthmainnah_Journal_Harian_Ekstrakur_Latsar_-_Copy_-_Copy_-_Copy_-_Copy4.docx','229.46'),
(43,'14bd7897cbd8a320392a65c2adb97f69','Mahmuda_Muthmainnah_Journal_Harian_Ekstrakur_Latsar_-_Copy_-_Copy_-_Copy_-_Copy5.docx','229.46'),
(44,'0a0271d6df613237add4a8d787cba14a','Mahmuda_Muthmainnah_Journal_Harian_Ekstrakur_Latsar_-_Copy_-_Copy_-_Copy_-_Copy.docx','229.46'),
(45,'af686caf02ef1fb573fd6176273238b4','Mahmuda_Muthmainnah_Journal_Harian_Ekstrakur_Latsar_-_Copy_-_Copy_-_Copy_-_Copy1.docx','229.46'),
(46,'ba310d1e850e388f8e451e07abd1574d','Mahmuda_Muthmainnah_Journal_Harian_Ekstrakur_Latsar_-_Copy_-_Copy_-_Copy_-_Copy2.docx','229.46'),
(47,'479b11df35a4a395df5f3b059966968f','Mahmuda_Muthmainnah_Journal_Harian_Ekstrakur_Latsar_-_Copy_-_Copy_-_Copy_-_Copy3.docx','229.46'),
(48,'e394bc3e6829726a0f9bd8975000773b','Mahmuda_Muthmainnah_Journal_Harian_Ekstrakur_Latsar_-_Copy_-_Copy_-_Copy_-_Copy4.docx','229.46'),
(49,'933aadf3cb9a86ee42c6711bf768c278','Mahmuda_Muthmainnah_Journal_Harian_Ekstrakur_Latsar_-_Copy_-_Copy_-_Copy_-_Copy5.docx','229.46'),
(50,'18bbad3bc0acbf846c2e18837e2bfae2','Mahmuda_Muthmainnah_Journal_Harian_Ekstrakur_Latsar_-_Copy_-_Copy_-_Copy_-_Copy6.docx','229.46'),
(51,'7b41d246f9bf1ce064804cb08ff12e8a','Mahmuda_Muthmainnah_Journal_Harian_Ekstrakur_Latsar_-_Copy_-_Copy_-_Copy_-_Copy7.docx','229.46'),
(52,'3874fb984489de1974a7349b87657746','Mahmuda_Muthmainnah_Journal_Harian_Ekstrakur_Latsar_-_Copy_-_Copy_-_Copy_-_Copy8.docx','229.46'),
(53,'e0561d6fe272d19e903fd893937685ed','Mahmuda_Muthmainnah_Journal_Harian_Ekstrakur_Latsar_-_Copy_-_Copy_-_Copy_-_Copy9.docx','229.46'),
(54,'0c4010db8048f0ab95b3d1f26210f10c','Mahmuda_Muthmainnah_Journal_Harian_Ekstrakur_Latsar_-_Copy_-_Copy_-_Copy_-_Copy10.docx','229.46'),
(55,'86ba66ed646462e3d15166aeccaac6d5','Mahmuda_Muthmainnah_Journal_Harian_Ekstrakur_Latsar_-_Copy_-_Copy_-_Copy_-_Copy11.docx','229.46'),
(56,'55967a53257c4d79b8f5abf618abf746','Mahmuda_Muthmainnah_Journal_Harian_Ekstrakur_Latsar_-_Copy_-_Copy_-_Copy_-_Copy12.docx','229.46'),
(57,'ee9a98f531cb205f7477cf17e16a55ac','Mahmuda_Muthmainnah_Journal_Harian_Ekstrakur_Latsar_-_Copy_-_Copy_-_Copy_-_Copy13.docx','229.46'),
(58,'183a0b4f6f2e92a64a98a3ccd9f02ee9','Mahmuda_Muthmainnah_Journal_Harian_Ekstrakur_Latsar_-_Copy_-_Copy_-_Copy_-_Copy14.docx','229.46'),
(59,'75cb49938604199457aa767df330a31f','Mahmuda_Muthmainnah_Journal_Harian_Ekstrakur_Latsar_-_Copy_-_Copy_-_Copy_-_Copy15.docx','229.46'),
(60,'8cc17fa46eb3636cf2e1115ace67661e','Mahmuda_Muthmainnah_Journal_Harian_Ekstrakur_Latsar_-_Copy_-_Copy_-_Copy_-_Copy16.docx','229.46'),
(61,'bb3df95904cd8256a93531fa7320c708','Mahmuda_Muthmainnah_Journal_Harian_Ekstrakur_Latsar_-_Copy_-_Copy_-_Copy_-_Copy17.docx','229.46'),
(62,'ee2fae8772de5669ff11d88a67a070eb','Mahmuda_Muthmainnah_Journal_Harian_Ekstrakur_Latsar_-_Copy_-_Copy_-_Copy_-_Copy18.docx','229.46'),
(63,'e492c096b971811efadec161f653af3f','Mahmuda_Muthmainnah_Journal_Harian_Ekstrakur_Latsar_-_Copy_-_Copy_-_Copy_-_Copy19.docx','229.46'),
(64,'2d34e387a88ac59dc7851ecb7a3da0a2','Mahmuda_Muthmainnah_Journal_Harian_Ekstrakur_Latsar_-_Copy_-_Copy_-_Copy_-_Copy20.docx','229.46'),
(65,'9618cbce07cfb12e312fa77455e2f6e1','Mahmuda_Muthmainnah_Journal_Harian_Ekstrakur_Latsar_-_Copy_-_Copy_-_Copy_-_Copy21.docx','229.46'),
(66,'2f24a33f7a550e66e33800dd3a32e5b7','Mahmuda_Muthmainnah_Journal_Harian_Ekstrakur_Latsar_-_Copy_-_Copy_-_Copy_-_Copy22.docx','229.46'),
(67,'f5ff73e349a0a78f329d1b9187cbb366','Mahmuda_Muthmainnah_Journal_Harian_Ekstrakur_Latsar_-_Copy_-_Copy_-_Copy_-_Copy23.docx','229.46'),
(68,'9e0bea74b85abd9b3518dcd760054ea0','Mahmuda_Muthmainnah_Journal_Harian_Ekstrakur_Latsar_-_Copy_-_Copy_-_Copy_-_Copy24.docx','229.46'),
(69,'9cac1f5f5a4b2ebeb4bb402ab621dde0','Mahmuda_Muthmainnah_Journal_Harian_Ekstrakur_Latsar_-_Copy_-_Copy_-_Copy_-_Copy25.docx','229.46'),
(70,'d380f1dbaa451f693669d11e0da2810e','Mahmuda_Muthmainnah_Journal_Harian_Ekstrakur_Latsar_-_Copy_-_Copy_-_Copy_-_Copy26.docx','229.46'),
(71,'3f313b1ac4ab3005893cbbc3439a1cfc','Mahmuda_Muthmainnah_Journal_Harian_Ekstrakur_Latsar_-_Copy_-_Copy_-_Copy_-_Copy27.docx','229.46'),
(72,'8ffac7c8ded0a9d60f160329cf00b596','Mahmuda_Muthmainnah_Journal_Harian_Ekstrakur_Latsar_-_Copy_-_Copy_-_Copy_-_Copy28.docx','229.46'),
(73,'b49c705d329fabcfa8d8b8363196dca7','Mahmuda_Muthmainnah_Journal_Harian_Ekstrakur_Latsar_-_Copy_-_Copy_-_Copy_-_Copy29.docx','229.46'),
(74,'80e4f89e2bab797ef16ab621a2f9974d','Mahmuda_Muthmainnah_Journal_Harian_Ekstrakur_Latsar_-_Copy_-_Copy_-_Copy_-_Copy30.docx','229.46'),
(75,'70751c667fc9c16a38433de666bf34d7','Mahmuda_Muthmainnah_Journal_Harian_Ekstrakur_Latsar_-_Copy_-_Copy_-_Copy_-_Copy31.docx','229.46'),
(76,'59d195a2249b50b92b75a60267b381e6','Mahmuda_Muthmainnah_Journal_Harian_Ekstrakur_Latsar_-_Copy_-_Copy_-_Copy_-_Copy32.docx','229.46'),
(77,'2eaa2464336c50ca0568e4ea55914f74','Mahmuda_Muthmainnah_Journal_Harian_Ekstrakur_Latsar_-_Copy_-_Copy_-_Copy_-_Copy33.docx','229.46'),
(78,'e775b8e01fcf661e155797f8711b934d','Mahmuda_Muthmainnah_Journal_Harian_Ekstrakur_Latsar_-_Copy_-_Copy_-_Copy_-_Copy34.docx','229.46'),
(79,'9b6419f7650f67ee686b3b24661258e9','Mahmuda_Muthmainnah_Journal_Harian_Ekstrakur_Latsar_-_Copy_-_Copy_-_Copy_-_Copy35.docx','229.46'),
(80,'c9d754dfe7d351d3104aa8a1a573e3c6','Mahmuda_Muthmainnah_Journal_Harian_Ekstrakur_Latsar_-_Copy_-_Copy_-_Copy_-_Copy36.docx','229.46'),
(81,'60d014de51fbc11820ef96436befaf16','Mahmuda_Muthmainnah_Journal_Harian_Ekstrakur_Latsar_-_Copy_-_Copy_-_Copy_-_Copy37.docx','229.46'),
(82,'3ec57092923409fc925820153f50a204','Mahmuda_Muthmainnah_Journal_Harian_Ekstrakur_Latsar_-_Copy_-_Copy_-_Copy_-_Copy38.docx','229.46'),
(83,'f6ee44bd4a0e3025a38c78331eafcc5a','Mahmuda_Muthmainnah_Journal_Harian_Ekstrakur_Latsar_-_Copy_-_Copy_-_Copy_-_Copy39.docx','229.46'),
(84,'065c08286cfd067312110fc53d4da5aa','Mahmuda_Muthmainnah_Journal_Harian_Ekstrakur_Latsar_-_Copy_-_Copy_-_Copy_-_Copy40.docx','229.46'),
(85,'dcd5f42ae63b2acffd2a7b349a2c68e6','Mahmuda_Muthmainnah_Journal_Harian_Ekstrakur_Latsar_-_Copy_-_Copy_-_Copy_-_Copy41.docx','229.46'),
(86,'a13fa9ac75c667a680518537ebda568c','Mahmuda_Muthmainnah_Journal_Harian_Ekstrakur_Latsar_-_Copy_-_Copy_-_Copy_-_Copy42.docx','229.46'),
(87,'75f704cef52acca72160b9caee6bc9cb','Mahmuda_Muthmainnah_Journal_Harian_Ekstrakur_Latsar_-_Copy_-_Copy_-_Copy_-_Copy43.docx','229.46'),
(88,'c129cba340d3834f913ee59d8ec8cb97','Mahmuda_Muthmainnah_Journal_Harian_Ekstrakur_Latsar_-_Copy_-_Copy_-_Copy_-_Copy44.docx','229.46'),
(89,'a3c531fa0feff535c3c6dec74f619ac0','Mahmuda_Muthmainnah_Journal_Harian_Ekstrakur_Latsar_-_Copy_-_Copy_-_Copy_-_Copy45.docx','229.46'),
(90,'dc6f4de426fa24b0ff2a68090c1bc0b5','Mahmuda_Muthmainnah_Journal_Harian_Ekstrakur_Latsar_-_Copy_-_Copy_-_Copy_-_Copy46.docx','229.46'),
(91,'d1a303aa346f77b005a97ed996ffdb86','Mahmuda_Muthmainnah_Journal_Harian_Ekstrakur_Latsar_-_Copy_-_Copy_-_Copy_-_Copy47.docx','229.46'),
(92,'b60aeedb429f6eaf6ef0ecb65e34f8f7','Mahmuda_Muthmainnah_Journal_Harian_Ekstrakur_Latsar_-_Copy_-_Copy_-_Copy_-_Copy48.docx','229.46'),
(93,'daa9588c8a7d9faf523b3666b2e4ad91','Mahmuda_Muthmainnah_Journal_Harian_Ekstrakur_Latsar_-_Copy_-_Copy_-_Copy_-_Copy49.docx','229.46'),
(94,'bd237ac77bce334a7546cf1c5ae531e4','Mahmuda_Muthmainnah_Journal_Harian_Ekstrakur_Latsar_-_Copy_-_Copy_-_Copy_-_Copy50.docx','229.46'),
(95,'bc440554e9066088ecaf5f87df57df72','Mahmuda_Muthmainnah_Journal_Harian_Ekstrakur_Latsar_-_Copy_-_Copy_-_Copy_-_Copy51.docx','229.46'),
(96,'b6716a5df60e1dcae674b08665877827','Mahmuda_Muthmainnah_Journal_Harian_Ekstrakur_Latsar_-_Copy_-_Copy_-_Copy_-_Copy52.docx','229.46'),
(97,'d370592153af1478cb70810b295b0341','Mahmuda_Muthmainnah_Journal_Harian_Ekstrakur_Latsar_-_Copy_-_Copy_-_Copy_-_Copy53.docx','229.46'),
(98,'7deb0b635aec1ae47a937d56f01824d6','Mahmuda_Muthmainnah_Journal_Harian_Ekstrakur_Latsar_-_Copy_-_Copy_-_Copy_-_Copy54.docx','229.46'),
(99,'2e7cd466b974596e88bdbbcb02082671','Mahmuda_Muthmainnah_Journal_Harian_Ekstrakur_Latsar_-_Copy_-_Copy_-_Copy_-_Copy55.docx','229.46'),
(100,'062332dc600ab402d0446257f9d2ba41','Mahmuda_Muthmainnah_Journal_Harian_Ekstrakur_Latsar_-_Copy_-_Copy_-_Copy_-_Copy56.docx','229.46'),
(101,'c451472f41bb79244bb8fa10cb7a24ab','Mahmuda_Muthmainnah_Journal_Harian_Ekstrakur_Latsar_-_Copy_-_Copy_-_Copy_-_Copy57.docx','229.46'),
(102,'50d2bf5a13b8e6b9e0bb2241b34e8576','Mahmuda_Muthmainnah_Journal_Harian_Ekstrakur_Latsar_-_Copy_-_Copy_-_Copy_-_Copy58.docx','229.46'),
(103,'b3fa2501406430c390735fa482cf218e','Mahmuda_Muthmainnah_Journal_Harian_Ekstrakur_Latsar_-_Copy_-_Copy_-_Copy_-_Copy60.docx','229.46'),
(104,'0556232c4ed63dc1189e338a08774f28','Mahmuda_Muthmainnah_Journal_Harian_Ekstrakur_Latsar_-_Copy_-_Copy_-_Copy_-_Copy61.docx','229.46'),
(105,'fedb2b8542776839d1fa310d3855a0e1','LEMBAR1-dikonversi.docx','7.13'),
(106,'29746f1543263ecd2fb0ff4149968620','SURAT_KESEDIAAN_MENTOR_MUDA.docx','38.49'),
(107,'141408ce84f10fdf31a58613779e8956','SURAT_KESEDIAAN_MENTOR_MUDA1.docx','38.49'),
(108,'c5fd1462aabe48a1001818049ddd6c26','LEMBAR1-dikonversi1.docx','7.13'),
(109,'392ccb05a207d5ffd7f194284a235c59','LEMBAR1-dikonversi2.docx','7.13'),
(110,'24580050b758a1a39dcb09f24bd05d7e','LEMBAR1-dikonversi3.docx','7.13'),
(111,'31ac281a8c3d33f786ece50c197223ff','LEMBAR1-dikonversi4.docx','7.13'),
(112,'3f1ff204d4ae2b0b26c6c946e4c9c4c6','LEMBAR1-dikonversi5.docx','7.13'),
(113,'e36a410515c72afd66f7935becf6aecf','LEMBAR1-dikonversi6.docx','7.13'),
(114,'8ad8b4771cc4487850f942e7f94eef22','LEMBAR1-dikonversi7.docx','7.13'),
(115,'a34fc47b30fb79a9551f91b36d33b3d4','LEMBAR1-dikonversi8.docx','7.13'),
(116,'953536f95c8a3c19ac7f56425e0e67d3','Mahmuda_Muthmainnah_Journal_Harian_Ekstrakur_Latsar_-_Copy_-_Copy_-_Copy_-_Copy611.docx','229.46'),
(117,'4889fbbd61c36323e93662cdb3df5d40','Mahmuda_Muthmainnah_Journal_Harian_Ekstrakur_Latsar_-_Copy_-_Copy_-_Copy_-_Copy612.docx','229.46'),
(118,'1067b2178a005e6b4354dd319b62c213','Mahmuda_Muthmainnah_Journal_Harian_Ekstrakur_Latsar_-_Copy_-_Copy_-_Copy_-_Copy613.docx','229.46'),
(119,'aa8114d38f6905c25ccaef46f2249b1f','Mahmuda_Muthmainnah_Journal_Harian_Ekstrakur_Latsar_-_Copy_-_Copy_-_Copy_-_Copy614.docx','229.46'),
(120,'f7ecb5557387e7d606ccb8ea09ded2f3','Mahmuda_Muthmainnah_Journal_Harian_Ekstrakur_Latsar_-_Copy_-_Copy_-_Copy_-_Copy615.docx','229.46'),
(121,'7ed4d789c96b61ce7ab439dab6a7e973','Mahmuda_Muthmainnah_Journal_Harian_Ekstrakur_Latsar_-_Copy_-_Copy_-_Copy_-_Copy616.docx','229.46'),
(122,'ac4e2f1ee47b26097b5ac0beeb42decc','Mahmuda_Muthmainnah_Journal_Harian_Ekstrakur_Latsar_-_Copy_-_Copy_-_Copy_-_Copy617.docx','229.46'),
(123,'cc7a746985f3149e218cdc6ba0294429','Mahmuda_Muthmainnah_Journal_Harian_Ekstrakur_Latsar_-_Copy_-_Copy_-_Copy_-_Copy618.docx','229.46'),
(124,'7689fc7a0537e48a603d326947a2bfd3','Mahmuda_Muthmainnah_Journal_Harian_Ekstrakur_Latsar_-_Copy_-_Copy_-_Copy_-_Copy619.docx','229.46'),
(125,'a6da1f9980779e847085d2b4e0b6b657','Mahmuda_Muthmainnah_Journal_Harian_Ekstrakur_Latsar_-_Copy_-_Copy_-_Copy_-_Copy62.docx','229.46'),
(126,'9ea5a42cb2297723b8d4ad754ba3f7ab','Mahmuda_Muthmainnah_Journal_Harian_Ekstrakur_Latsar_-_Copy_-_Copy_-_Copy_-_Copy6110.docx','229.46'),
(127,'aa9621dd2e4ebf4207ef4fa5cb9f8864','Mahmuda_Muthmainnah_Journal_Harian_Ekstrakur_Latsar_-_Copy_-_Copy_-_Copy_-_Copy6111.docx','229.46'),
(128,'6c125082f8d02940f80301c10a4c17e8','Mahmuda_Muthmainnah_Journal_Harian_Ekstrakur_Latsar_-_Copy_-_Copy_-_Copy_-_Copy6112.docx','229.46'),
(129,'2e0105fed51dfc63a5161dcc9e39acf5','Mahmuda_Muthmainnah_Journal_Harian_Ekstrakur_Latsar_-_Copy_-_Copy_-_Copy_-_Copy6113.docx','229.46'),
(130,'59d3012e75a67781afdfbe83814aee47','Mahmuda_Muthmainnah_Journal_Harian_Ekstrakur_Latsar_-_Copy_-_Copy_-_Copy_-_Copy6114.docx','229.46'),
(131,'55183277e22fea3b1a0c50497b26b4ab','Mahmuda_Muthmainnah_Journal_Harian_Ekstrakur_Latsar_-_Copy_-_Copy_-_Copy_-_Copy6115.docx','229.46'),
(132,'1650d0c628f21ce11a74e02943fccc0c','Mahmuda_Muthmainnah_Journal_Harian_Ekstrakur_Latsar_-_Copy_-_Copy_-_Copy_-_Copy6116.docx','229.46'),
(133,'f867c3d726543c72d3c92144db630df1','Mahmuda_Muthmainnah_Journal_Harian_Ekstrakur_Latsar_-_Copy_-_Copy_-_Copy_-_Copy6117.docx','229.46'),
(134,'0f6fe6d961f06fd0fe86fd97187198c6','Mahmuda_Muthmainnah_Journal_Harian_Ekstrakur_Latsar_(02-10-2021).pdf','439.51'),
(135,'105db93f494fb417a075379ae26a6e2e','Mahmuda_Muthmainnah_Journal_Harian_Ekstrakur_Latsar_-_Copy_-_Copy_-_Copy_-_Copy6118.docx','229.46'),
(136,'44972bcc112dd58e39bd13d49c36c895','Mahmuda_Muthmainnah_Journal_Harian_Ekstrakur_Latsar_-_Copy_-_Copy_-_Copy_-_Copy6119.docx','229.46'),
(137,'475a1d7e152a0df9471baf6e9f0aa610','LEMBAR1-dikonversi9.docx','7.13'),
(138,'a6cc6497f61791cc2e84dfa55cb1f6ef','LEMBAR1-dikonversi10.docx','7.13'),
(139,'c832af7e418f7c7ce29e8230a73a569d','LEMBAR1-dikonversi11.docx','7.13'),
(140,'d35dd9105970acab3807ba2b73f72c77','LEMBAR1-dikonversi12.docx','7.13'),
(141,'e6fb3d23843c75bd082b1a460361092c','HAHA_KOSONG1.pdf','179.77'),
(142,'78af39a7784f32e3ba34ffb872cd60c6','dasi.png','13.25'),
(143,'a1f7a18e822cae26b2fe760707071b17','dasi1.png','13.25'),
(144,'8b93c93963ea664631e1fc4f7f515bfa','dasi2.png','250.85');

/*Table structure for table `tbl_memo` */

DROP TABLE IF EXISTS `tbl_memo`;

CREATE TABLE `tbl_memo` (
  `id_memo` int(10) NOT NULL AUTO_INCREMENT,
  `judul_memo` text,
  `memo` text,
  `id_user` int(10) DEFAULT NULL,
  PRIMARY KEY (`id_memo`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_memo` */

/*Table structure for table `tbl_ns` */

DROP TABLE IF EXISTS `tbl_ns`;

CREATE TABLE `tbl_ns` (
  `id_ns` int(10) NOT NULL AUTO_INCREMENT,
  `separator` text,
  `no_posisi` text,
  `no` text,
  `org_posisi` text,
  `org` text,
  `bag_posisi` text,
  `bag` text,
  `subbag_posisi` text,
  `subbag` text,
  `bln_posisi` text,
  `bln` text,
  `thn_posisi` text,
  `thn` text,
  `reset_no` text,
  `prefix` text,
  `prefix_posisi` enum('kiri','kanan') DEFAULT NULL,
  `no_surat` text,
  `ket` text,
  `jenis_ns` enum('semua','sm','sk','disposisi') DEFAULT NULL,
  `id_user` int(10) DEFAULT NULL,
  `tgl_ns` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`id_ns`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_ns` */

/*Table structure for table `tbl_sk` */

DROP TABLE IF EXISTS `tbl_sk`;

CREATE TABLE `tbl_sk` (
  `id_sk` int(10) NOT NULL AUTO_INCREMENT,
  `id_dept` int(10) unsigned DEFAULT NULL,
  `no_surat` text,
  `tgl_ns` varchar(12) DEFAULT NULL,
  `pengirim` text NOT NULL,
  `penerima` text,
  `perihal` text,
  `id_bagian` int(10) NOT NULL,
  `token_lampiran` text,
  `id_user` int(10) DEFAULT NULL,
  `dibaca` int(1) NOT NULL,
  `disposisi` text NOT NULL,
  `peringatan` int(1) NOT NULL,
  `tgl_sk` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`id_sk`)
) ENGINE=MyISAM AUTO_INCREMENT=106 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_sk` */

insert  into `tbl_sk`(`id_sk`,`id_dept`,`no_surat`,`tgl_ns`,`pengirim`,`penerima`,`perihal`,`id_bagian`,`token_lampiran`,`id_user`,`dibaca`,`disposisi`,`peringatan`,`tgl_sk`) values 
(101,NULL,'B-2499/In.20//../10/2021','06-10-2021','','','',0,'a6da1f9980779e847085d2b4e0b6b657',6,1,'',0,'06-10-2021'),
(100,NULL,'B-2498/In.20//../10/2021','06-10-2021','','','',0,'7689fc7a0537e48a603d326947a2bfd3',6,0,'',0,'06-10-2021'),
(99,NULL,'B-2497/In.20//../10/2021','06-10-2021','','','',0,'cc7a746985f3149e218cdc6ba0294429',6,0,'',0,'06-10-2021'),
(98,NULL,'B-2496/In.20//../10/2021','06-10-2021','','','',0,'ac4e2f1ee47b26097b5ac0beeb42decc',6,0,'',0,'06-10-2021'),
(97,NULL,'B-2495/In.20//../10/2021','06-10-2021','','','',0,'7ed4d789c96b61ce7ab439dab6a7e973',6,0,'',0,'06-10-2021'),
(96,NULL,'B-2494/In.20//../10/2021','06-10-2021','','','',0,'f7ecb5557387e7d606ccb8ea09ded2f3',6,0,'',0,'06-10-2021'),
(95,NULL,'B-2493/In.20//../10/2021','06-10-2021','','','',0,'aa8114d38f6905c25ccaef46f2249b1f',6,0,'',0,'06-10-2021'),
(94,NULL,'B-2492/In.20//../10/2021','06-10-2021','','','',0,'1067b2178a005e6b4354dd319b62c213',6,0,'',0,'06-10-2021'),
(93,NULL,'B-2491/In.20//../10/2021','06-10-2021','','','',0,'4889fbbd61c36323e93662cdb3df5d40',6,0,'',0,'06-10-2021'),
(92,NULL,'B-2490/In.20//../10/2021','06-10-2021','','','',0,'953536f95c8a3c19ac7f56425e0e67d3',6,0,'',0,'06-10-2021'),
(102,NULL,'B-2500/In.20//../10/2021','06-10-2021','','','',0,'a6da1f9980779e847085d2b4e0b6b657',6,1,'',0,'06-10-2021'),
(103,2,'B-2501/In.20//../10/2021','08-10-2021','ridwan','fatim','project',0,'78af39a7784f32e3ba34ffb872cd60c6',0,0,'',0,'08-10-2021'),
(104,1,'B-2502/In.20//OT.01/10/2021','08-10-2021','ridwan','bos','hallo bos',0,'a1f7a18e822cae26b2fe760707071b17',6,0,'',0,'08-10-2021'),
(105,3,'B-2503/In.20//HM.00/10/2021','08-10-2021','ridwan','badang','git',0,'8b93c93963ea664631e1fc4f7f515bfa',6,0,'',0,'08-10-2021');

/*Table structure for table `tbl_sm` */

DROP TABLE IF EXISTS `tbl_sm`;

CREATE TABLE `tbl_sm` (
  `id_sm` int(10) NOT NULL AUTO_INCREMENT,
  `no_surat` text,
  `tgl_ns` varchar(12) DEFAULT NULL,
  `pengirim` text NOT NULL,
  `penerima` text,
  `perihal` text,
  `id_bagian` int(10) NOT NULL,
  `token_lampiran` text,
  `id_user` int(10) DEFAULT NULL,
  `dibaca` int(1) NOT NULL,
  `disposisi` text NOT NULL,
  `peringatan` int(1) NOT NULL,
  `tgl_sm` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`id_sm`)
) ENGINE=MyISAM AUTO_INCREMENT=109 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_sm` */

insert  into `tbl_sm`(`id_sm`,`no_surat`,`tgl_ns`,`pengirim`,`penerima`,`perihal`,`id_bagian`,`token_lampiran`,`id_user`,`dibaca`,`disposisi`,`peringatan`,`tgl_sm`) values 
(107,'1234/KP25/2021','06-10-2021','','','',0,'d35dd9105970acab3807ba2b73f72c77',6,0,'',0,'06-10-2021'),
(104,'B-2502/In.20//../10/2021','06-10-2021','','','',0,'475a1d7e152a0df9471baf6e9f0aa610',6,0,'',0,'06-10-2021'),
(102,'B-2500/In.20//../10/2021','06-10-2021','','','',0,'105db93f494fb417a075379ae26a6e2e',6,0,'',0,'06-10-2021'),
(103,'B-2501/In.20//../10/2021','06-10-2021','','','',0,'44972bcc112dd58e39bd13d49c36c895',6,0,'',0,'06-10-2021'),
(100,'B-2498/In.20//../10/2021','06-10-2021','','','',0,'f867c3d726543c72d3c92144db630df1',6,0,'',0,'06-10-2021'),
(101,'B-2499/In.20//../10/2021','06-10-2021','','','',0,'0f6fe6d961f06fd0fe86fd97187198c6',6,0,'',0,'06-10-2021'),
(98,'B-2496/In.20//../10/2021','06-10-2021','','','',0,'55183277e22fea3b1a0c50497b26b4ab',6,0,'',0,'06-10-2021'),
(99,'B-2497/In.20//../10/2021','06-10-2021','','','',0,'1650d0c628f21ce11a74e02943fccc0c',6,0,'',0,'06-10-2021'),
(97,'B-2495/In.20//../10/2021','06-10-2021','','','',0,'59d3012e75a67781afdfbe83814aee47',6,0,'',0,'06-10-2021'),
(96,'B-2494/In.20//../10/2021','06-10-2021','','','',0,'2e0105fed51dfc63a5161dcc9e39acf5',6,0,'',0,'06-10-2021'),
(94,'B-2492/In.20//../10/2021','06-10-2021','','','',0,'aa9621dd2e4ebf4207ef4fa5cb9f8864',6,0,'',0,'06-10-2021'),
(95,'B-2493/In.20//../10/2021','06-10-2021','','','',0,'6c125082f8d02940f80301c10a4c17e8',6,0,'',0,'06-10-2021'),
(93,'B-2491/In.20//../10/2021','06-10-2021','','','',0,'9ea5a42cb2297723b8d4ad754ba3f7ab',6,0,'',0,'06-10-2021'),
(105,'B-2503/In.20//../10/2021','06-10-2021','','','',0,'a6cc6497f61791cc2e84dfa55cb1f6ef',6,0,'',0,'06-10-2021'),
(106,'B-2504/In.20//../10/2021','06-10-2021','','','',0,'c832af7e418f7c7ce29e8230a73a569d',6,0,'',0,'06-10-2021'),
(108,'','07-10-2021','fat','zahro','agdad',0,'e6fb3d23843c75bd082b1a460361092c',0,0,'',0,'07-10-2021');

/*Table structure for table `tbl_user` */

DROP TABLE IF EXISTS `tbl_user`;

CREATE TABLE `tbl_user` (
  `id_user` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) DEFAULT NULL,
  `password` text NOT NULL,
  `nama_lengkap` varchar(100) DEFAULT NULL,
  `email` text,
  `alamat` text,
  `telp` varchar(30) DEFAULT NULL,
  `pengalaman` text,
  `level` enum('s_admin','admin','user') DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL,
  `tgl_daftar` varchar(20) DEFAULT NULL,
  `terakhir_login` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_user` */

insert  into `tbl_user`(`id_user`,`username`,`password`,`nama_lengkap`,`email`,`alamat`,`telp`,`pengalaman`,`level`,`status`,`tgl_daftar`,`terakhir_login`) values 
(1,'admin','21232f297a57a5a743894a0e4a801fc3','KEPALA DESA','anwarsptr@gmail.com','negarabumi','453454','ok','s_admin','aktif','07-10-2017 17:03:12','06-10-2021 19:06:47'),
(5,'admin2','c84258e9c39059a89ab77d846ddab909','KAUR UMUM','herusp49@gmail.com','Negarabumi','4646546','ok','admin','aktif','07-10-2017 17:30:08','06-10-2021 19:07:14'),
(6,'user','ee11cbb19052e40b07aac0ca060c23ee','SEKRETARIS DESA','herusp49@gmail.com','negarabumi','0987775','ok','user','aktif','07-10-2017 17:31:54','08-10-2021 10:48:17'),
(7,'user1','24c9e15e52afc47c225b757e7bee1f9d','user1','-','-','-','-','user','aktif','05-10-2021 15:53:31',NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
