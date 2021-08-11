-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               10.4.18-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table hki.d_paten
DROP TABLE IF EXISTS `d_paten`;
CREATE TABLE IF NOT EXISTS `d_paten` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nomor` varchar(50) DEFAULT NULL COMMENT 'nomor pendaftaran',
  `tanggal` date DEFAULT NULL,
  `jns_paten` enum('Biasa','Sederhana') DEFAULT NULL,
  `id_pegawai` int(11) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `nama_tanpa_gelar` varchar(255) DEFAULT NULL,
  `nip` varchar(18) DEFAULT NULL,
  `id_fakultas` int(11) DEFAULT NULL,
  `fakultas` varchar(100) DEFAULT NULL,
  `jurusan` varchar(100) DEFAULT NULL,
  `pekerjaan` varchar(100) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `hp` varchar(50) DEFAULT NULL,
  `wa` varchar(50) DEFAULT NULL,
  `alamat` text DEFAULT NULL COMMENT 'Alamat tempat tinggal',
  `alamat_ktp` text DEFAULT NULL COMMENT 'Alamat sesuai KTP',
  `id_verifikator` int(11) DEFAULT NULL,
  `verifikator` varchar(100) DEFAULT NULL COMMENT 'Nama Verifikator',
  `no_permohonan` varchar(20) DEFAULT NULL,
  `tgl_penerimaan` date DEFAULT NULL,
  `no_paten` varchar(20) DEFAULT NULL,
  `tgl_paten` date DEFAULT NULL,
  `no_pengumuman` varchar(20) DEFAULT NULL,
  `tgl_pengumuman` date DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COMMENT='Data paten';

-- Dumping data for table hki.d_paten: ~21 rows (approximately)
DELETE FROM `d_paten`;
/*!40000 ALTER TABLE `d_paten` DISABLE KEYS */;
INSERT INTO `d_paten` (`id`, `nomor`, `tanggal`, `jns_paten`, `id_pegawai`, `nama`, `nama_tanpa_gelar`, `nip`, `id_fakultas`, `fakultas`, `jurusan`, `pekerjaan`, `email`, `hp`, `wa`, `alamat`, `alamat_ktp`, `id_verifikator`, `verifikator`, `no_permohonan`, `tgl_penerimaan`, `no_paten`, `tgl_paten`, `no_pengumuman`, `tgl_pengumuman`, `status`) VALUES
	(1, 'P00001', '0000-00-00', 'Biasa', 2161, 'Khoirina Dwi Nugrahaningtyas, S.Si., M.Si', '', '197404192000032001', 10, 'FMIPA', '', '', '', '', '', '', '', 0, '', 'P00200800478', '0000-00-00', 'IDP000035952', '0000-00-00', '', '0000-00-00', 0),
	(2, 'P00002', '0000-00-00', 'Biasa', 2159, 'Dr. DESI SUCI HANDAYANI, S.Si,M.Si', '', '197212071999032001', 10, 'FMIPA', '', '', '', '', '', '', '', 0, '', 'P00200800479', '0000-00-00', 'IDP000040786', '0000-00-00', '', '0000-00-00', 0),
	(3, 'P00003', '0000-00-00', 'Biasa', 1630, 'Ir. WIJANG WISNU RAHARJO, M.T.', '', '196810041999031002', 9, 'FT', '', '', '', '', '', '', '', 0, '', 'P00200900696', '0000-00-00', 'IDP000040601', '0000-00-00', '', '0000-00-00', 0),
	(4, 'P00004', '0000-00-00', 'Biasa', 1673, 'Dr.Yofentina Iriani, S.Si., M.Si', '', '197112271997022001', 10, 'FMIPA', '', '', '', '', '', '', '', 0, '', 'P00200900715', '0000-00-00', 'IDP000045577', '0000-00-00', '', '0000-00-00', 0),
	(5, 'P00005', '0000-00-00', 'Biasa', 1085, 'Prof. Dr. KUNCORO DIHARJO, S.T., M.T.', '', '197101031997021001', 9, 'FT', '', '', '', '', '', '', '', 0, '', 'P00201000892', '0000-00-00', 'IDP000046355', '0000-00-00', '', '0000-00-00', 0),
	(6, 'P00006', '0000-00-00', 'Biasa', 1678, 'Dr. EDDY HERALDY, M.Si', '', '196403052000031002', 10, 'FMIPA', '', '', '', '', '', '', '', 0, '', 'P00201100698', '0000-00-00', 'IDP000042132', '0000-00-00', '', '0000-00-00', 0),
	(7, 'P00007', '0000-00-00', 'Biasa', 1085, 'Prof. Dr. KUNCORO DIHARJO, S.T., M.T.', '', '197101031997021001', 9, 'FT', '', '', '', '', '', '', '', 0, '', 'P00201300531', '0000-00-00', 'IDP000046356', '0000-00-00', '', '0000-00-00', 0),
	(8, 'P00008', '0000-00-00', 'Sederhana', 1633, 'Dr. JOKO TRIYONO, S.T., M.T.', '', '196906251997021001', 9, 'FT', '', '', '', '', '', '', '', 0, '', 'S00200800137', '0000-00-00', 'IDS000001563', '0000-00-00', '', '0000-00-00', 0),
	(9, 'P00009', '0000-00-00', 'Sederhana', 1646, 'Prof. Dr. techn. SUYITNO, S.T., M.T.', '', '197409022001121002', 9, 'FT', '', '', '', '', '', '', '', 0, '', 'S00201000022', '0000-00-00', 'S00201000022', '0000-00-00', '', '0000-00-00', 0),
	(10, 'P00010', '0000-00-00', 'Sederhana', 1676, 'Prof. Dr. Pranoto, M.Si', '', '195410301984031002', 10, 'FMIPA', '', '', '', '', '', '', '', 0, '', 'S00202010329', '0000-00-00', '', '0000-00-00', '', '0000-00-00', 0),
	(11, 'P00011', '0000-00-00', 'Biasa', 1682, 'Dr. Triana Kusumaningsih, M.Si', '', '197301241999032001', 10, 'FMIPA', '', '', '', '', '', '', '', 0, '', 'P00202010324', '0000-00-00', '', '0000-00-00', '', '0000-00-00', 0),
	(12, 'P00012', '0000-00-00', 'Sederhana', 2476, 'Dr. Eng. Kusumandari,S.Si, M.Si', '', '198105182005012002', 10, 'FMIPA', '', '', '', '', '', '', '', 0, '', 'S00202010321', '0000-00-00', '', '0000-00-00', '', '0000-00-00', 0),
	(13, 'P00013', '0000-00-00', 'Sederhana', 3295, 'Anif Nur Artanti, M.Sc., Apt.', '', '1987042720140501', 13, 'SV', '', '', '', '', '', '', '', 0, '', 'S00202010319', '0000-00-00', '', '0000-00-00', '', '0000-00-00', 0),
	(14, 'P00014', '0000-00-00', 'Sederhana', 1509, 'Dr. Ir. Endang Yuniastuti, M.Si', '', '197006091994022001', 7, 'FP', '', '', '', '', '', '', '', 0, '', 'S00202010318', '0000-00-00', '', '0000-00-00', '', '0000-00-00', 0),
	(15, 'P00015', '0000-00-00', 'Sederhana', 1306, 'Dr. Endang Susilowati, S.Si., M.Si.', '', '197001172000032001', 3, 'FKIP', '', '', '', '', '', '', '', 0, '', 'S00202010317', '0000-00-00', '', '0000-00-00', '', '0000-00-00', 0),
	(16, 'P00016', '0000-00-00', 'Sederhana', 1635, 'Dr. Eng. Syamsul Hadi, S.T., M.T', '', '197106151998021002', 9, 'FT', '', '', '', '', '', '', '', 0, '', 'S00202010315', '0000-00-00', '', '0000-00-00', '', '0000-00-00', 0),
	(17, 'P00017', '0000-00-00', 'Sederhana', 1631, 'Dr. Eko Surojo, ST.MT.', '', '196904112000031006', 9, 'FT', '', '', '', '', '', '', '', 0, '', 'S00202010314', '0000-00-00', '', '0000-00-00', '', '0000-00-00', 0),
	(18, 'P00018', '0000-00-00', 'Sederhana', 2167, 'Teguh Endah Saraswati, M.Sc., Ph.D', '', '197903262005012001', 10, 'FMIPA', '', '', '', '', '', '', '', 0, '', 'S00202010313', '0000-00-00', '', '0000-00-00', '', '0000-00-00', 0),
	(19, 'P00019', '0000-00-00', 'Sederhana', 2582, 'Dr. Miftahul Anwar, M.Eng.', '', '1983032420130201', 9, 'FT', '', '', '', '', '', '', '', 0, '', 'S00202010311', '0000-00-00', '', '0000-00-00', '', '0000-00-00', 0),
	(20, 'P00020', '0000-00-00', 'Sederhana', 1973, 'R. Baskara Katri Anandito, S.T.P., MP', '', '198005132006041001', 13, 'SV', '', '', '', '', '', '', '', 0, '', 'S00202010264', '0000-00-00', '', '0000-00-00', '', '0000-00-00', 0),
	(21, 'P00021', '0000-00-00', 'Biasa', 1726, 'Lulu Purwaningrum S.SN., M.T., Ph.D', '', '197706122001122003', 1, 'FSRD', '', '', '', '', '', '', '', 0, '', 'P00202010398', '0000-00-00', '', '0000-00-00', '', '0000-00-00', 0);
/*!40000 ALTER TABLE `d_paten` ENABLE KEYS */;

-- Dumping structure for table hki.d_paten_history
DROP TABLE IF EXISTS `d_paten_history`;
CREATE TABLE IF NOT EXISTS `d_paten_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nomor` varchar(50) NOT NULL DEFAULT '0',
  `tanggal` date NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `keterangan` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table hki.d_paten_history: ~0 rows (approximately)
DELETE FROM `d_paten_history`;
/*!40000 ALTER TABLE `d_paten_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `d_paten_history` ENABLE KEYS */;

-- Dumping structure for table hki.d_paten_invensi
DROP TABLE IF EXISTS `d_paten_invensi`;
CREATE TABLE IF NOT EXISTS `d_paten_invensi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nomor` varchar(50) DEFAULT NULL,
  `judul_id` text DEFAULT NULL,
  `judul_en` text DEFAULT NULL,
  `klaim` text DEFAULT NULL,
  `abstrak_id` text DEFAULT NULL,
  `abstrak_en` text DEFAULT NULL,
  `konten` text DEFAULT NULL,
  `file_abstrak` varchar(100) DEFAULT NULL,
  `file_gambar` varchar(100) DEFAULT NULL,
  `file_deskripsi` varchar(100) DEFAULT NULL,
  `file_pengalihan` varchar(100) DEFAULT NULL,
  `file_kepemilikan` varchar(100) DEFAULT NULL,
  `revisi_ke` int(11) DEFAULT NULL,
  `id_bidangilmu` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table hki.d_paten_invensi: ~21 rows (approximately)
DELETE FROM `d_paten_invensi`;
/*!40000 ALTER TABLE `d_paten_invensi` DISABLE KEYS */;
INSERT INTO `d_paten_invensi` (`id`, `nomor`, `judul_id`, `judul_en`, `klaim`, `abstrak_id`, `abstrak_en`, `konten`, `file_abstrak`, `file_gambar`, `file_deskripsi`, `file_pengalihan`, `file_kepemilikan`, `revisi_ke`, `id_bidangilmu`) VALUES
	(1, 'P00001', 'Katalis Bimetal Nikel Molybdenum Ditopangkan pada Zeolit Alam Aktif (NiMo / ZAA)', '', '', 'Suatu katalis bimetal untuk berbagai macam reaksi dalam industri yang terdiri dari logam nikel, molibdenum dan dengan penopang zeolit alam aktif. Katalis yang dimaksud dibuat dengan cara impregnasi (penempelan) logam nikel dan logam molibdenum pada padatan berpori zeolit alam aktif. Zeolit alam aktif dibuat dengan cara aktivasi zeolit alam menggunakan larutan HCl 6 M. Banyaknya logam yang ditopangkan berkisar antara 2-8% berat nikel monoksida dan 8% berat molbdenum dioksida setiap berat zeolit alam aktif.', '', '', '', '', '', '', '', 0, 9),
	(2, 'P00002', 'Resin Kopoli (Eugenol-DVB) Terimregnasi Ionofor 5 Kloro-2,4,2-Trihidroksiazobensena', '', '', 'Invensi ini berhubungan dengan suatu proses pembuatan resin dengan tahap-tahapan : (a) sintesis ionofor, (b) sintesis kopoli (eugenol-DVB), (c) impregnasi ionofor ke kopolimer. Resin penukar kation yang dihasilkan adalah kopoli (Eugenol-DVB) terimpregnasi 5\'kloro-2,4,2-trihidroksiazobenzena. Resin yang dihasilkan digunakan sebagai penukar kation efektif untuk ion Cu2+ dan selektif terhadap ion Cr3+.', '', '', '', '', '', '', '', 0, 9),
	(3, 'P00003', 'Metode Pembuatan Komposit Serat Alam Agave Cantula Roxb-UPRS', '', '', 'Invensi ini berhubungan dengan metode pembuatan komposit dari serat alam agave cantula Roxb dan resin poliester tak jenuh meliputi langkah-langkah sebagai berikut: a. memanaskan serat agave cantula Roxb pada temperatur 110oC selama 45 menit; b. memotong serat agave cantula Roxb sepanjang 20 cm yang telah dipanaskan pada langkah (a); c. mengisi cetakan dengan serat agave cantula Roxb pada langkah (b) untuk menghasilkan fraksi volume serat antara 0,323 sampai 0,419; d. menuangkan campuran katalis dan resin poliester tak jenuh di atas serat agave cantula Roxb pada langkah (c); e. membekukan campuran katalis, resin poliester tak jenuh dan serat alam pada langkah (d) selama 1 jam pada temperatur ruang untuk membentuk komposit; f. menyempurnakan komposit pada langkah (e) pada temperatur 60oC selama 4 jam. Dengan proses perwujudan invensi ini, dihasilkan komposit serat agave cantula roxb-poliester tak jenuh yang memiliki kekuatan lentur dari 147,54 MPa sampai 194,58 MPa dan kekuatan tumbukan dari 5,21 x 104 J/m2 sampai 6,83 x 104 J/m2.', '', '', '', '', '', '', '', 0, 17),
	(4, 'P00004', 'Metode Pembuatan Lapisan Tipis Barium Strontium Titanat', '', '', 'Invensi ini berhubungan dengan pembuatan lapisan tipis barium strontium titanat dengan metode pengendapan larutan kimia yang disiapkan dengan spin coating. Tahap-tahap pembuatan meliputi pembuatan larutan (0,5 M), proses spin coating dan proses annealing. Lapisan tipis barium strontium titanat telah berbentuk polikristal dengan suhu pre-annealing 400oC selama 15 menit, pada suhu 700oC – 850oC selama 30 menit – 3 jam dalam kondisi atmosfer. Variasi jumlah lapisan 1-5 lapis menghasilkan lapisan tipis BST berbentuk polikristal.', '', '', '', '', '', '', '', 0, 9),
	(5, 'P00005', 'Produk Core Fleksibel Dari Kayu Sengon Laut Untuk Struktur Komposit Sandwich  >>>  Panel Inti Fleksibel dari Kayu Sengon Laut Untuk Struktur Komposit Sandwich', '', '', 'Suatu panel inti fleksibel dari potongan melintang kayu sengon laut (1) yang direkatkan pada kain strimin (2) dengan perekat lem kayu yang kompatibel (3). Panel inti fleksibel ini disediakan untuk pembuatan panel struktur sandwich. Sifat fleksibel core KSL ini ditentukan dengan pola pemotongan permukaan core (segmentasi). Ukuran segmentasi yang disukai adalah 2 cm x 2 cm sampai 5 cm x 5 cm. Ketebalan panel inti yang lebih disukai adalah 5 sampai 25 mm. Panel inti fleksibel kayu sengon laut ini dipersiapkan untuk pembuatan panel struktur komposit sandwich.', '', '', '', '', '', '', '', 0, 17),
	(6, 'P00006', 'Pembuatan Senyawa Hydrotal Hydrotal Cite Like Dari Brine Water Untuk Katalis Transesterifikasi Minyak Sawit Menjadi Biodisel', '', '', 'Suatu senyawa hydrotalcite-Iike dapat dibuat dari brine water tiruan maupun dari brine water hasil samping proses desalinasi air laut. Brine water tiruan (artificial brine water) dibuat dengan cara: sebanyak 83,630 gram MgCb.6H20; 8,194 gram CaCb.2H20; 41,478 gram NaCI dan 1,4 gram KCI dilarutkan ke dalam 1 liter akuades sambil diaduk. Sintesis dilakukan dalam kondisi: rasio mol Mg/AI =2, pH = 10,5 dan suhu 700C dengan pengadukan selama 1 jam. Senyawa serupa hydrotalcite (hydrotalcite-Iike compound/HTlc) yang telah dikeringkan, dicampur (grinding) dengan Kalium Fluorida (KF) dalam perbandingan KF/HTlc sarna dengan 8/10 mempunyai harga d-spacing tiga puncak tertingginya d = 7,48; 3,75 dan 2,82 A(KF/HTlcBWA), serta d= 7,35; 3,73 dan 2,80 Auntuk HTlcBWT. Hydrotalcite-like dapat digunakan sebagai prekursor katalis dan atau katalis transesterifikasi minyak sawit menjadi biodiesel.', '', '', '', '', '', '', '', 0, 9),
	(7, 'P00007', 'Produk Inti dari Limbah Serbuk Gergaji Kayu Sengon Laut Dengan Perekat Urea Formaldehide Untuk Struktur Komposit Sandwich', '', '', 'Suatu p r odu k inti (core) dari bahan limbah serbuk gergaji kayu sengon laut (1) dengan perekat urea formaldehide yang dis ediaka n untuk pembuatan panel struktur komposit sandwich . Ketebalan produk inti (core) yang lebih disukai adalah sampai rom , sedangkan ka ndungan limbah serbuk gergaj i adalah antara 40 -80% (w/w ) . Produk inti ( core ) yang memiliki sifat mekanis paling tinggi memiliki kandungan serbuk gergaji 60 - 70 % (w/ w).', '', '', '', '', '', '', '', 0, 17),
	(8, 'P00008', 'Alat Bakar Untuk Proses Peleburan Logam Bebahan Bakar Oli Bekas', '', '', 'Invensi ini berhubungan dengan suatu alat bakar khususnya alat bakar untuk proses peleburan logam berbahan bakar oli bekas (A). Dalam hal ini, alat tersebut terdiri dari dari ruang bakar (9); yang berfungsi sebagai ruang terjadinya pembakaran, saluran masuk bahan bakar (5); yang berfungsi untuk mengalirkan bahan bakar ke ruang bakar (9), celah penampung bahan bakar (2); yang berfungsi untuk memanaskan bahan bakar menuju ruang bakar (9), saluran keluar bahan bakar (6); yang berfungsi untuk mengalirkan bahan bakar dari celah penampung bahan bakar (2), dan nosel (1); yang berfungsi untuk menaikkan tekanan bahan bakar dari saluran keluar bahan bakar (6). Nosel yang dimaksud terdiri dari bodi (11), saluran udara dari kompresor (12), saluran masuk bahan bakar dari kompresor (13), saluran keluar udara dari kompresor (14), dan saluran keluar bahan bakar dari kompresor (15).', '', '', '', '', '', '', '', 0, 17),
	(9, 'P00009', 'Kompor Bioetanol Kadar Rendah', '', '', 'Invensi ini berhubungan dengan kompor berbahan bakar bioetanol kadar rendah, yaitu bioetanol berkadar 40-50% yang mampu menghasilkan api stabil, merata, dan efisiensi kompor sebesar 42,6%-53,4%, dimana terdiri dari bagian-bagian yaitu: nosel yang berfungsi untuk mencampur bahan bakar bioetanol dengan udara; pipa udara yang berfungsi untuk mengalirkan udara dari tabung udara ke nosel; tabung udara yang berfungsi untuk menyimpan udara bertekanan; pipa bioetanol yang berfungsi untuk mengalirkan bioetanol; tabung bioetanol yang berfungsi untuk menampung bioetanol; pipa melingkar pemanasan awal yang berfungsi untuk memanaskan bioetanol kadar rendah sebelum masuk nosel; cawan yang berfungsi untuk penyalaan dan menampung air yang tidak menguap selama proses pembakaran; dan rangka yang dilengkapi dengan dudukan untuk menempatkan panci; yang dicirikan dimana: pada bagian nosel terdapat lubang udara dan dua lubang bioetanol yang kemudian bersatu menuju burner satu lubang dan disukai berdiameter 0,6 mm; pada bagian tabung udara bertekanan terdapat alat pengukur tekanan dan katup pengatur aliran udara; pada bagian tabung bioetanol dilengkapi dengan dudukan yang berfungsi untuk mengatur ketinggian lubang keluaran bioetanol dan disukai pada jarak 5 cm; pada bagian tabung bioetanol terbuat dari plastik; pada bagian saluran bioetanol, nosel pencampur, dan cawan disukai terbuat dari tembaga.', '', '', '', '', '', '', '', 0, 17),
	(10, 'P00010', 'Reaktor Untuk Pengelolaan Limbah Cair Industri Batik', '', '', 'Invensi ini berupa teknologi Alternatif Pengolahan Limbah Cair Industri Batik dengan Reaktor Berbasis Fotokatalis dan Adsorpsi. Reaktor berbasis fotokatalis merupakan suatu teknologi alternatif yang sangat berpotensi dalam menyelesaikan masalah pencemaran sungai akibat limbah cair industri batik. Komponen dari reaktor ini terdiri dari wadah limbah [1], mesin pengaduk [2], saluran masuknya limbah [3], pompa [4], sumber cahaya [5], tabung fotokatalis [6], tabung adsorpsi pertama [7], tabung adsorpsi kedua [8]. Material simikonduktor TiO2 dikemas dalam satu tabung fotokatalis [6], Tanah andisol dikemas dalam tabung adsoprsi pertama [7], adapun alofan dikemas dalam tabung adsorpsi kedua [8]. Invensi ini berkaitan dengan tingginya pencemaran sungai di sekitar kawasan industri batik. Pengolahan limbah industri batik masih menjadi permasalahan yang belum dapat diselesaikan dengan baik. Reaktor ini menunjukan aktifitas adsorb dan degradasi senyawa organik pada senyawa standar yang digunakan menunjukkan hasil yang positif, dimana terjadi penurunan konsentrasi pada konsentrasi logam berat dan zat warna.', '', '', '', '', '', '', '', 0, 9),
	(11, 'P00011', '	SINTESIS DIMER ASIL FLOROGLUSINOL TERMODIFIKASI NANOPARTIKEL PERAK (Ag) UNTUK OBAT ANTIKANKER SERVIKS', '', '', 'Invensi ini berhubungan dengan suatu proses sintesis material nanopartikel Ag terkonjugasi dimer asilfloroglusinol (nanopartikel Ag-DDAPG) sebagai material berpotensi obat antikanker serviks. Material ini dibuat dengan bahan dasar floroglusinol (PG). Proses sintesis senyawa diasilloroglusinol (DAPG) dilakukan dengan menggunakan metode refluks antara floroglusinol (PG) dan asetat anhidrid dengan perbandingan 1:2 dalam kondisi bebas pelarut. Selanjutnya, senyawa diasilloroglusinol (DAPG) didimerkan dengan menggunakan aldehid sebagai agen pengikat sehingga diperoleh produk berupa senyawa dimer diasilloroglusinol (DDAPG). Pada tahap berikutnya dilakukan sintesis nanopartikel Ag terkonjugasi dimer asilfloroglusinol (nanopartikel Ag-DDAPG), yang dilakukan dengan mereaksikan senyawa dimer diasilfloroglusinol (DDAPG) menggunakan 0,1 mM AgNO3 sebanyak 10 mL, kemudian diaduk selama 1 jam untuk menghasilkan larutan berwarna coklat tua. Material nanopartikel Ag-DDAPG yang dihasilkan, mempunyai bentuk morfologi berupa sperikal berukuran nano untuk dapat digunakan sebagai kandidat obat antikanker serviks.', '', '', '', '', '', '', '', 0, 9),
	(12, 'P00012', 'METODE PEMBANGKITAN PLASMA KORONA UNTUK DEGRADASI LIMBAH CAIR ZAT WARNA ', '', '', 'Invensi ini berhubungan dengan metode pembangkitan plasma korona untuk degradasi limbah cair zat warna yang mudah dan sederhana. Optimasi dilakukan dengan memperhatikan parameter-parameter yang mempengaruhi pembangkitan plasma yaitu material elektroda, diameter elektroda dan tegangan yang digunakan. Lebih khusus invensi ini menggunakan sepasang elektroda yang dihubungkan dengan sumber tegangan tinggi AC. Jenis elektroda stainless steel dengan diameter 2 mm dan tegangan 11,5 kV dideskripsikan sebagai parameter yang dapat memberikan efisiensi degradasi yang paling baik. Dengan demikian, invensi ini diharapkan dapat diterapkan untuk proses degradasi limbah zat warna yang mudah dan sederhana untuk kebutuhan pengolahan limbah cair industri batik dan tekstil di Indonesia sebelum dibuang ke lingkungan.', '', '', '', '', '', '', '', 0, 9),
	(13, 'P00013', 'FORMULA MASKER WAJAH UNTUK PERAWATAN KULIT WAJAH MENGGUNAKAN EKSTRAK ETANOL BUAH PARIJOTO (Medinilla speciosa Blume) ', '', '', 'Invensi ini menyediakan suatu formula masker wajah untuk perawatan kulit wajah menggunakan ekstrak etanol buah Parijoto (Medinilla speciosa Blume). Formula sesuai invensi ini memiliki komponen-komponen yaitu: polivinil alkohol yang berfungsi sebagai pembentuk lapisan film; polivinil pirolidon yang berfungsi sebagai surfaktan; propilen glikol yang berfungsi sebagai pelembap; sodium alginat yang berfungsi sebagai agen penstabil; fenoksietanol yang berfungsi sebagai pengawet; fragrance yang berfungsi sebagai pewangi; dan etanol 70% yang berfungsi sebagai pelarut. Produk formula masker wajah sesuai invens ini memiliki karakteristik yaitu : berbentuk gel transparan; warna merah kecoklatan; kental; pH 4,5 - 8,0 dan waktu kering 15-30 menit. Masker wajah sesuai invensi ini dapat mengangkat sel kulit mati, mengangkat kotoran pada kulit, memperbaiki warna dan tekstur kulit serta memberikan manfaat nutrisi pada wajah serta mampu menghaluskan kulit.', '', '', '', '', '', '', '', 0, 8),
	(14, 'P00014', 'METODE PEMBUATAN BRIKET DARI LIMBAH BIJI PRANAJIWA (Sterculia foetida Linn) ', '', '', 'Invensi berhubungan dengan metode pembuatan briket dari limbah atau sisa biji pranajiwa (Sterculia foetida Linn) yang terdiri dari dua tahapan yaitu karbonisasi dan pengepresan. Karbonisasi untuk mendapatkan pembakaran sempurna menjadi arang, sehingga kalor yang dihasilkan lebih tinggi serta abu terbang (flay ash) berkurang. Tahap kedua yaitu pengepresan dengan penambahan perekat dari lempung dan lem kanji dari tepung tapioka. Proses karbonisasi cangkang dan limbah biji pranajiwa merupakan proses awal pembuatan briket yang bagus. Hal tersebut dapat mengurangi kadar air yang berlebih dalam bahan baku. Setelah semua bahan baku dikarbonasi sampai terbentuk arang (tidak sampai menjadi abu), maka langkah selanjutnya seperti penggrindingan, pencampuran bahan baku perekat dari lempung, lem kanji dari tepung tapioka akan memudahkan dalam pencetakan/pembentukan briket. Dengan invensi ini briket yang dihasilkan dari bahan baku limbah biji pranajiwa memiliki temperatur yang lebih tinggi (1000-12000C) dari pada temperatur pembakaran briket berbahan baku tempurung kelapa (600–8000C) maupun temperature pembakaran briket berbahan baku batu bara (900–11000C).', '', '', '', '', '', '', '', 0, 11),
	(16, 'P00015', 'PROSES SINTESIS NANOKOMPOSIT PERAK-KITOSAN DENGAN BANTUAN IRADIASI MICROWAVE', '', '', 'Invensi ini berhubungan dengan proses sintesis nanokomposit perak-kitosan. Proses sintesis dilakukan dengan metode reduksi kimia menggunakan bantuan iradiasi microwave. Tahapan utama dari sintesis nanokomposit perak kitosan yaitu, preparasi nanopartikel perak dan pendispersian nanopartikel perak ke dalam polimer kitosan. Biopolimer kitosan yang bersifat biodegradable dan memiliki aktivitas antibakteri digunakan sebagai agen pereduksi sekaligus stabilizer dengan NaOH sebagai akselerator dalam preparasi nanopartikel perak. Kitosan juga digunakan sebagai matriks (zat pengikat) dalam sintesis nanokomposit perak-kitosan dengan nanopartikel perak sebagai filler (zat pengisi). Menurut analisis spektrum UV-Visible, preparasi nanopartikel perak dengan kitosan sebagai agen pereduksi sekaligus stabilizer hanya dapat dilakukan jika melibatkan NaOH sebagai akselerator. Selain itu, pemanasan menggunakan iradiasi microwave juga harus dilakukan agar proses preparasi nanopartikel perak dapat berlangsung. Penggunaan NaOH dan iradiasi microwave dengan jumlah dan waktu yang sesuai akan memberikan hasil yang optimal. Sintesis nanokomposit perak-kitosan dalam invensi ini dapat dilakukan dengan sederhana, cepat, tidak membutuhkan konsumsi energi yang tinggi, dan ramah lingkungan.', '', '', '', '', '', '', '', 0, 9),
	(18, 'P00016', 'Pembangkit Listrik Tenaga Air Menggunakan Turbin Drag Skala Pico/Nano Untuk Gedung Bertingkat.', '', '', 'Suatu alat pembangkit listrik menggunakan turbin drag skala piko/nano yang mampu beroperasi pada head 1,5 m, sehingga bisa diaplikasikan pada gedung bertingkat dengan memanfaatkan air buangan dan/atau air hujan sebagai fluida kerjanya, yang pada akhirnya dapat menunjang konsep Green Building. Alat ini terdiri dari blocking system, turbin air drag dan generator listrik DC, yang terangkai dalam suatu sistem berupa pipa fitting T-joint, untuk dipasangkan dalam sistem perpipaan air buangan gedung bertingkat.', '', '', '', '', '', '', '', 0, 17),
	(19, 'P00017', 'ALAT PENGUJIAN GESEK BAHAN BLOK REM KERETA API (DINAMOMETER REM)', '', '', 'Invensi ini berhubungan dengan alat pengujian gesek bahan blok rem kereta api (dinamometer rem). Karena kebutuhan pengujian yang cepat dan biaya pengujian yang rendah, maka penting disediakan alat uji untuk roda kereta yang diperkecil sampai 1/4 dari ukuran sebenarnya. Alat ini juga penting untuk digunakan dalam penelitian dan pengembangan blok rem di laboratorium. Agar sistem pengereman kereta api dapat bekerja dengan baik maka karakteristik bahan blok rem harus memenuhi spesifikasi yang ditentukan. Salah satu karakteristik material blok rem yang penting adalah koefisien gesek. Dinamometer rem sesuai invensi ini terdiri dari rangka motor listik (1) yang menopang motor listrik (2), poros flywheel (4), flywheel (9), pillow box (5), kopling (3), dan pulley (11). Pada rangka roda (19) menopang poros roda (12), housing poros roda (13), roda kereta api (15), pemegang spesimen (25), spesimen bahan blok rem (29), tekanan pneumatik (17), load cell (27), sensor infrared (14). Antara rangka motor listrik (1) dengan rangka roda (19) dihubungkan dengan sabuk (10). Oleh karena itu, alat pengujian koefisien gesek bahan blok rem kereta api sesuai dengan invensi ini dapat menguji spesimen meniru kondisi pengereman kereta api sebenarnya dan persiapan yang tidak terlalu rumit.', '', '', '', '', '', '', '', 0, 17),
	(20, 'P00018', 'PROSES PEMBUATAN NANOKOMPOSIT HIDROFILIK MAGNETIK BERBASIS KARBON DENGAN METODE LUCUTAN ARC TERENDAM (SUBMERGED ARC DISCHARGE)', '', '', 'Invensi ini berhubungan dengan metode sintesis dan modifikasi nanokomposit hidrofilik magnetik besi oksida/karbon dalam satu tahap dengan metode lucutan arc dalam satu proses. Metode yang dideskripsikan dalam invensi ini terdiri dari beberapa tahapan mencakup tahapan persiapan elektroda, persiapan media cair, proses lucutan arc, dan tahapan pengumpulan partikel diikuti dengan pencucian dan pengeringan. Metode yang dideskripsikan dalam invensi ini terbukti dapat menghasilkan material nanokomposit magnetik besi oksida/karbon berbasis karbon dengan karakteristik permukaan hidrofilik. Dengan demikian, invensi ini diharapkan dapat diterapkan sebagai metode yang dapat menggantikan metode lucutan arc konvensional yang biasanya menggunakan ruang khusus dalam kondisi tekanan rendah dengan peralatan rumit dan mahal.', '', '', '', '', '', '', '', 0, 9),
	(21, 'P00019', 'ALAT MONITORING ARUS TINGGI UNTUK APLIKASI ARC DISCHARGE', '', '', 'Pada aplikasi arc discharge dengan mesin las di industri dibutuhkan adanya alat yang dapat memonitor arus listrik yang mengalir dari mesin las ke beban. Namun saat ini belum ada alat yang dirancang untuk kebutuhan tersebut khususnya di Indonesia. Invensi ini berupa sebuah alat yang dapat mengukur, menampilkan dan merekam data arus listrik yang mengalir dari mesin las ke beban pada proses arc discharge. Alat ini terdiri dari sebuah kotak sensor berisi sensor arus tinggi jenis hall effect yang dilengkapi dengan kapasitor untuk menstabilkan tegangan suplai, PC Oscilloscope yang berfungsi untuk mengolah sinyal keluaran sensor, kabel konektor las yang berfungsi menghubungkan kotak hitam ke mesin las, serta sebuah kabel USB bercabang 2 yang berfungsi menghubungkan aliran listrik dari port USB di laptop ke piranti PC Oscilloscope dan kotak sensor. PC Oscilloscope memiliki 2 channel yang mana salah satunya berfungsi mengukur sinyal tegangan keluaran sensor dan yang lainnya berfungsi mengukur tegangan pada penyuplai daya sensor. Nilai kedua sinyal tegangan ditampilkan di komputer atau laptop dan secara otomatis terekam datanya. Kedua sinyal tersebut diolah sehingga didapatkan nilai arus yang sebenarnya.', '', '', '', '', '', '', '', 0, 17),
	(22, 'P00020', 'METODE PEMBUATAN KOYA BERBAHAN DASAR IKAN NILA DAN KEDELAI', '', '', 'Invensi ini berhubungan dengan metode pembuatan koya dengan bahan dasar ikan nila dan kedelai. Metode pembuatan koya dibagi menjadi tiga bagian yaitu pembuatan daging ikan nila giling sangrai, pembuatan tepung kedelai, dan pembuatan koya dengan mencampurkan bahan dasar dan bumbu. Hasil yang diperoleh berdasarkan metode yang digunakan adalah produk koya bubuk kering berwarna kecoklatan yang mengandung protein tinggi dan disukai berdasarkan parameter organoleptik.', '', '', '', '', '', '', '', 0, 11),
	(23, 'P00021', 'MEJA TERAPI AUTIS ', '', '', 'Seiring dengan meningkatnya angka kasus autis di Indonesia dan dunia, maka cara yang dianggap mempunyai efek bagus untuk terapi anak autis dan dapat membantu menurunkan laju peningkatanya yaitu dengan metode ABA (Applied Behavioural Analisys). Di Indonesia terapi tersebut, dalam metode-one on one banyak diterapkan menggunakan meja yang berlubang setengah oval pada top meja yang sisinya menghadap anak. Namun,meja ini mempunyai kelemahan: 1)mudah didorong anak keluar sehingga menganggu berlangsungnya terapi; 2)terlalu mengungkung dan mengganggu kebebasan natural anak untuk bergerak. Untuk mengatasi masalah ini, maka invensi ini merancang meja terapi ABA dengan diterapkan alas yang merekat permanen pada kaki mejanya, sementara lubang setengah oval pada top meja dihilangkan. Rancangan ini telah terbukti efektif melalui sebuah uji yang telah dilakukan dengan parameter kontak mata dan gerak anak sebagai tolak ukur keberhasilan terapi. Disimpulkan bahwa lengkungan meja tidak berpengaruh signifikan terhadap kontak mata. Sedang lengkungan dan alas mengurangi signifikan gerakan mendorong anak autis. Meja terapi autis dengan alas permanen-tanpa lubang setengah oval terbukti dapat membantu anak autis tidak mendorong meja saat terapi, dan menjaga keberlangsungan terapi dengan lancar.', '', '', '', '', '', '', '', 0, 17);
/*!40000 ALTER TABLE `d_paten_invensi` ENABLE KEYS */;

-- Dumping structure for table hki.d_paten_inventor
DROP TABLE IF EXISTS `d_paten_inventor`;
CREATE TABLE IF NOT EXISTS `d_paten_inventor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nomor` varchar(50) NOT NULL DEFAULT '0',
  `nourut` int(11) NOT NULL DEFAULT 0,
  `nidn` varchar(50) DEFAULT NULL,
  `id_pegawai` int(11) NOT NULL DEFAULT 0,
  `nama` varchar(150) NOT NULL DEFAULT '0',
  `nip` varchar(18) NOT NULL DEFAULT '0',
  `id_fakultas` int(11) NOT NULL DEFAULT 0,
  `fakultas` varchar(100) NOT NULL DEFAULT '0',
  `jurusan` varchar(100) NOT NULL DEFAULT '0',
  `alamat` text NOT NULL,
  `email` varchar(50) NOT NULL DEFAULT '',
  `hp` varchar(50) NOT NULL DEFAULT '',
  `wa` varchar(50) NOT NULL DEFAULT '',
  `file_ktp` varchar(100) NOT NULL DEFAULT '',
  `file_ttd` varchar(100) NOT NULL DEFAULT '',
  `id_jnspenulis` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table hki.d_paten_inventor: ~0 rows (approximately)
DELETE FROM `d_paten_inventor`;
/*!40000 ALTER TABLE `d_paten_inventor` DISABLE KEYS */;
/*!40000 ALTER TABLE `d_paten_inventor` ENABLE KEYS */;

-- Dumping structure for table hki.d_paten_verifikasi
DROP TABLE IF EXISTS `d_paten_verifikasi`;
CREATE TABLE IF NOT EXISTS `d_paten_verifikasi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nomor` varchar(50) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `id_verifikator` int(11) DEFAULT NULL,
  `verifikator` varchar(100) DEFAULT NULL,
  `catatan` text DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table hki.d_paten_verifikasi: ~0 rows (approximately)
DELETE FROM `d_paten_verifikasi`;
/*!40000 ALTER TABLE `d_paten_verifikasi` DISABLE KEYS */;
/*!40000 ALTER TABLE `d_paten_verifikasi` ENABLE KEYS */;

-- Dumping structure for table hki.d_unduh
DROP TABLE IF EXISTS `d_unduh`;
CREATE TABLE IF NOT EXISTS `d_unduh` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `judul` varchar(200) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `url` varchar(150) DEFAULT NULL,
  `file` varchar(100) DEFAULT NULL,
  `id_jnsunduh` int(11) DEFAULT NULL,
  `tampil` enum('Y','N') DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table hki.d_unduh: ~0 rows (approximately)
DELETE FROM `d_unduh`;
/*!40000 ALTER TABLE `d_unduh` DISABLE KEYS */;
/*!40000 ALTER TABLE `d_unduh` ENABLE KEYS */;

-- Dumping structure for table hki.ref_bidang_ilmu
DROP TABLE IF EXISTS `ref_bidang_ilmu`;
CREATE TABLE IF NOT EXISTS `ref_bidang_ilmu` (
  `id_bidangilmu` int(11) NOT NULL AUTO_INCREMENT,
  `nama_bidangilmu` varchar(255) NOT NULL,
  PRIMARY KEY (`id_bidangilmu`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- Dumping data for table hki.ref_bidang_ilmu: 13 rows
DELETE FROM `ref_bidang_ilmu`;
/*!40000 ALTER TABLE `ref_bidang_ilmu` DISABLE KEYS */;
INSERT INTO `ref_bidang_ilmu` (`id_bidangilmu`, `nama_bidangilmu`) VALUES
	(1, 'AGAMA'),
	(2, 'EKONOMI'),
	(7, 'HUKUM'),
	(8, 'KESEHATAN'),
	(9, 'MIPA'),
	(10, 'PENDIDIKAN'),
	(11, 'PERTANIAN'),
	(12, 'POLITIK'),
	(13, 'PSIKOLOGI'),
	(14, 'SASTRA/FILSAFAT'),
	(15, 'SENI'),
	(16, 'SOSIAL'),
	(17, 'TEKNOLOGI');
/*!40000 ALTER TABLE `ref_bidang_ilmu` ENABLE KEYS */;

-- Dumping structure for table hki.ref_fakultas
DROP TABLE IF EXISTS `ref_fakultas`;
CREATE TABLE IF NOT EXISTS `ref_fakultas` (
  `id_fakultas` int(11) NOT NULL AUTO_INCREMENT,
  `fakultas` varchar(50) DEFAULT NULL,
  `fakultas2` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_fakultas`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table hki.ref_fakultas: ~13 rows (approximately)
DELETE FROM `ref_fakultas`;
/*!40000 ALTER TABLE `ref_fakultas` DISABLE KEYS */;
INSERT INTO `ref_fakultas` (`id_fakultas`, `fakultas`, `fakultas2`) VALUES
	(1, 'FSRD', 'FAK. SASTRA DAN SENI RUPA\r\n'),
	(2, 'FIB', 'ILMU BUDAYA (FIB)\r\n'),
	(3, 'FKIP', 'FAK. KEGURUAN DAN ILMU PENDIDIKAN'),
	(4, 'FH', 'FAK. HUKUM'),
	(5, 'FEB', 'FAK. EKONOMI & BISNIS'),
	(6, 'FISIP', 'FAK. ILMU SOSIAL DAN ILMU POLITIK'),
	(7, 'FP', 'FAK. PERTANIAN'),
	(8, 'FK', 'FAK. KEDOKTERAN'),
	(9, 'FT', 'FAK. TEKNIK'),
	(10, 'FMIPA', 'FAK. MATEMATIKA DAN ILMU PENGETAHUAN ALAM'),
	(11, 'PASCA', 'FAK. PASCASARJANA'),
	(12, 'FKOR', 'FAK. Fakultas Keolahragaan'),
	(13, 'SV', 'FAK. Sekolah Vokasi');
/*!40000 ALTER TABLE `ref_fakultas` ENABLE KEYS */;

-- Dumping structure for table hki.ref_jns_penulis
DROP TABLE IF EXISTS `ref_jns_penulis`;
CREATE TABLE IF NOT EXISTS `ref_jns_penulis` (
  `id_jnspenulis` int(11) NOT NULL,
  `jenis_penulis` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_jnspenulis`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table hki.ref_jns_penulis: ~2 rows (approximately)
DELETE FROM `ref_jns_penulis`;
/*!40000 ALTER TABLE `ref_jns_penulis` DISABLE KEYS */;
INSERT INTO `ref_jns_penulis` (`id_jnspenulis`, `jenis_penulis`) VALUES
	(1, 'PENULIS UTAMA'),
	(2, 'ANGGOTA PENULIS');
/*!40000 ALTER TABLE `ref_jns_penulis` ENABLE KEYS */;

-- Dumping structure for table hki.ref_jns_unduh
DROP TABLE IF EXISTS `ref_jns_unduh`;
CREATE TABLE IF NOT EXISTS `ref_jns_unduh` (
  `id_jnsunduh` int(11) NOT NULL AUTO_INCREMENT,
  `jenis_unduh` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_jnsunduh`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table hki.ref_jns_unduh: ~4 rows (approximately)
DELETE FROM `ref_jns_unduh`;
/*!40000 ALTER TABLE `ref_jns_unduh` DISABLE KEYS */;
INSERT INTO `ref_jns_unduh` (`id_jnsunduh`, `jenis_unduh`) VALUES
	(1, 'MEREK'),
	(2, 'PATEN'),
	(3, 'HAK CIPTA'),
	(4, 'DESAIN INDUSTRI'),
	(5, 'LAIN-LAIN');
/*!40000 ALTER TABLE `ref_jns_unduh` ENABLE KEYS */;

-- Dumping structure for table hki.ref_status
DROP TABLE IF EXISTS `ref_status`;
CREATE TABLE IF NOT EXISTS `ref_status` (
  `id_status` int(11) NOT NULL AUTO_INCREMENT,
  `keterangan` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_status`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table hki.ref_status: ~10 rows (approximately)
DELETE FROM `ref_status`;
/*!40000 ALTER TABLE `ref_status` DISABLE KEYS */;
INSERT INTO `ref_status` (`id_status`, `keterangan`) VALUES
	(1, 'Pengajuan Baru'),
	(2, 'Sedang di review'),
	(3, 'Revisi dari reviewer'),
	(4, 'Disetujui reviewer'),
	(5, 'Didaftarkan'),
	(6, 'Revisi DKJI'),
	(7, 'Ditolak'),
	(8, 'Ditarik'),
	(9, 'Granted'),
	(10, 'Dibatalkan');
/*!40000 ALTER TABLE `ref_status` ENABLE KEYS */;

-- Dumping structure for view hki.v_ki
DROP VIEW IF EXISTS `v_ki`;
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `v_ki` (
	`nomor` VARCHAR(50) NULL COMMENT 'nomor pendaftaran' COLLATE 'utf8mb4_general_ci',
	`judul` TEXT NULL COLLATE 'utf8mb4_general_ci',
	`no_permohonan` VARCHAR(20) NULL COLLATE 'utf8mb4_general_ci',
	`tgl_penerimaan` DATE NULL,
	`bidang_ilmu` INT(11) NOT NULL,
	`abstrak` TEXT NULL COLLATE 'utf8mb4_general_ci',
	`hki` VARCHAR(6) NOT NULL COLLATE 'utf8mb4_general_ci'
) ENGINE=MyISAM;

-- Dumping structure for view hki.v_ki
DROP VIEW IF EXISTS `v_ki`;
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `v_ki`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `v_ki` AS SELECT 
	a.nomor AS nomor,
	b.judul_id AS judul,
	a.no_permohonan AS no_permohonan,
	a.tgl_penerimaan AS tgl_penerimaan,
	c.id_bidangilmu AS bidang_ilmu,
	b.abstrak_id AS abstrak,
	'patent' AS hki
FROM d_paten a
JOIN d_paten_invensi b ON a.nomor = b.nomor
JOIN ref_bidang_ilmu c ON b.id_bidangilmu = c.id_bidangilmu
WHERE a.no_permohonan <> '' OR a.no_permohonan IS NOT NULL ;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
