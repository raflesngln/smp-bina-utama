-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Waktu pembuatan: 20. Agustus 2017 jam 06:54
-- Versi Server: 5.5.16
-- Versi PHP: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `smpbinautama`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id_admin` int(11) NOT NULL AUTO_INCREMENT,
  `nm_admin` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(60) DEFAULT NULL,
  `createdBy` int(11) DEFAULT NULL,
  `gambar` text,
  PRIMARY KEY (`id_admin`),
  KEY `FK_jurusan_jenjang` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `nm_admin`, `username`, `password`, `createdBy`, `gambar`) VALUES
(1, 'ijat', 'ijat', '827ccb0eea8a706c4c34a16891f84e7b', 1, NULL),
(2, 'rafles', 'rafles', '827ccb0eea8a706c4c34a16891f84e7b', 1, 'images.jpg'),
(5, 'rere', 'rere', NULL, NULL, ''),
(16, 'alan', 'alan', '827ccb0eea8a706c4c34a16891f84e7b', NULL, 'walk-2162937_1920.jpg'),
(17, 'Ijat@gmail.com', 'Ijat@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', NULL, 'fto.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `berita`
--

CREATE TABLE IF NOT EXISTS `berita` (
  `id_berita` int(11) NOT NULL AUTO_INCREMENT,
  `tgl_berita` datetime DEFAULT NULL,
  `judul_berita` varchar(200) DEFAULT NULL,
  `isi_berita` text,
  `gambar` text,
  `createdBy` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id_berita`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data untuk tabel `berita`
--

INSERT INTO `berita` (`id_berita`, `tgl_berita`, `judul_berita`, `isi_berita`, `gambar`, `createdBy`) VALUES
(1, '2017-07-29 09:45:14', 'Seperti Finlandia, Sekolah di New Zealand Seperti ', '<p>Liputan6.com, Jakarta Bila masyarakat mengenal Finlandia sebagai negara dengan pendidikan terbaik, ternyata New Zealand juga memiliki kualitas yang setara. Bahkan di negara yang berada di selatan bumi ini, hubungan antara pelajar dan gurunya sangat dekat.</p>\r\n\r\n<p>Bagaimana bisa? "Untuk peringkat pendidikan terbaik, Finlandia dan New Zealand selalu berada di posisi tiga teratas. Hal ini menunjukkan bahwa sistem pendidikan di New Zealand sudah diakui menjadi salah satu yang terbaik di dunia," ungkap Karmela Christy, Marketing and Strategic Relations Manager Indonesia Education New Zealand. Karmela juga mengungkapkan, kedekatan antara dosen dan mahasiswa sangat terasa dalam proses belajar mengajar.</p>\r\n\r\n<p>Tidak hanya berdiri dan menjabarkan pelajaran saja, dosen juga ikut serta dalam setiap kegiatan yang diselenggarakan di kelas. Sehingga para dosen duduk setara dengan mahasiswa dan boleh bertanya apa saja mengenai pelajaran tersebut. "Karena sangat dekat, para dosen masih mau menjawab pertanyaan mahasiswanya, meski dikirim jam 11 malam," ujar Karmela yang dahulunya juga menuntut ilmu di New Zealand. Tidak hanya itu, kemudahan pendidikan di New Zealand juga didukung dengan sarana dan prasarana terbaik.</p>\r\n\r\n<p>Sehingga mahasiswa nantinya diberi kesempatan seluas-luasnya untuk mencari ilmu dan berkolaborasi bersama dengan dosen dan mahasiswa lainnya. Sedangkan di sekolah dasar dan menengah, para siswa sudah diberikan kebebasan untuk memilih apa yang ingin mereka lakukan. Sehingga praktik di workshop menjadi kegiatan bermain yang menyenangkan, ketika menempuh pendidikan di New Zealand.</p>\r\n', '1.jpg', ''),
(2, '2017-07-31 03:57:58', 'Bantu Perkembangan Indonesia Timur, Selandia Baru ', '<p>Liputan6.com, Jakarta Beasiswa menjadi salah satu kesempatan yang dibuka oleh New Zealand, untuk membantu perkembangan di Indonesia Timur.</p>\r\n\r\n<p>Hal ini menjadi perhatian yang diungkapkan oleh Duta Besar New Zealand untuk Indonesia, Dr Trevor Matheson, pada pertemuan New Zealand Education di Fairmont Hotel, Selasa (13/6/2017).</p>\r\n\r\n<p>"Hubungan pendidikan Indonesia dan New Zealand itu sangat kuat karena kita punya visi Asia Pasifik yg sama, untuk mempersiapkan generasi muda untuk menghadapi masa depan. Nanti kita pilih 60 yang terbaik untuk diberikan beasiswa," ungkap Dr Trevor Matheson.</p>\r\n\r\n<p>Lalu bidang apa saja yang berpeluang mendapatkan beasiswa dari pemerintah New Zealand? Dr Trevor mengungkapkan beberapa bidang di sosial ekonomi, agrisbisnis, geotermal, dan penanganan bencana punya dukungan khusus dari pemerintah New Zealand. Tidak hanya itu saja, nantinya akan ada pelatihan bahasa Inggris untuk mempermudah mahasiswa dalam proses belajar.</p>\r\n\r\n<p>Tentunya, bidang-bidang yang diambil diharapkan bisa diterapkan langsung ke daerah asal mahasiswa. Selain itu, para mahasiswa juga berkesempatan bekerja untuk mematangkan ilmunya di New Zealand. Baik itu melalui proyek yang langsung diterapkan sesuai dengan bidang studi, maupun bekerja paruh waktu selama kuliah.</p>\r\n\r\n<p>"Kualitas pendidikan di New Zealand sesuai untuk karir sukses di abad ke 21. Kita berharap orangTua dapat memilih New Zealand karena keadaanya yang aman dan budaya belajar. Sehingga dapat meningkatkan cara pikir pola pikir, sesuai dengan apa yg mereka inginkan," tutup Dr Trevor.</p>\r\n', '0,,16867260_303,00.jpg', ''),
(3, '2017-07-29 09:47:09', 'Demokrasi ala Republik Anak SD Kanisius Kenalan', '<p>Liputan6.com, Jakarta Di lereng Gunung Menoreh yang sejuk, tepatnya di Dusun Wonolelo, Kenalan, Kecamatan Borobudur Magelang, Jawa Tengah berdiri sebuah sekolah yang berbeda dari sekolah dasar pada umumnya. Keunikan serta kekhasan metode pendidikan yang diterapkan di sekolah ini menjadikannya bertahan sampai sekarang.</p>\r\n\r\n<p>Maklum sekolah yang berdiri sejak tahun 1930 ini sempat terancam ditutup karena alasan kekurangan murid dan ketiadaan biaya. SD Katolik Kanisius Kenalan, demikian namanya.</p>\r\n\r\n<p>Sekolah ini menerapkan metode sekolah kehidupan yang berwawasan lingkungan pedesaan, pengembangan diri, pemberdayaan orangtua dan gerakan orangtua asuh yang dinamai Gerakan Mengasuh Anak Tani (GEMATI). Para guru di sekolah ini telah berhasil menciptakan kurikulum pendidikan alternatif yang menghindarkan para siswa dari konsep pembelajaran teoritis yang membosankan melalui pembelajaran luar ruang yang terkait langsung dengan lingkungan. Sehingga praktik menjadi kegiatan rutin para siswa. “</p>\r\n\r\n<p>Siswa kami ajak untuk belajar langsung pada alam. Siswa tidak hanya belajar dari buku-buku pelajaran saja tapi juga belajar dari lingkungan. Mereka akan melihat, mencari, mengamati dan merasakan sendiri lingkungan sekitarnya mulai dari belajar jenis-jenis satwa, tanaman, tanah, dan air. Dengan demikian akan menumbuhkan rasa mencintai dan memiliki terhadap alam sekitarnya,” ujar Kepala Sekolah SDK Kanisius Kenalan, Yosef Onesimus Mayono, di Gua Maria Sendang Sono,</p>\r\n\r\n<p>Desa Banjaroyo, Kecamatan Kalibawang, Kabupaten Kulon Progo, DI Yogyakarta, Senin(2/5/2017). SD Katolik Kanisius Kenalan berhasil mengintegrasikan kurikulum reguler nasional dengan kurikulum alternatif khas SD Kenalan dengan menerapkan metode pembelajaran tematik. Tak hanya itu sekolah yang memilik enam ruang kelas, 60 murid dan tujuh guru ini juga merintis kegiatan komunitas basis bernama Republik Anak Kenalan (RAK). “Layaknya sebuah republik sungguhan, RAK juga mempunyai presiden, wakil presiden, dan menteri-menteri dalam kabinet. Seluruh siswa dan guru SDK Kenalan diposisikan sebagai rakyat. Presiden dipilih langsung oleh siswa.</p>\r\n\r\n<p>Murid yang menjadi calon presiden dan wakil presiden masing-masing juga menyampaikan visi dan misi serta berkampanye layaknya pemilu,” lanjut Yoseph Onesimus Maryono yang biasa disapa Pak Guru Simus. Kandidat presiden berasal dari siswa. Ada enam kandidat dari enam partai siswa. Keenamnya berasal dari organisasi Republik Anak Kenalan, lanjut Simus.</p>\r\n\r\n<p>Organisasi RAK membawahi berbagai bidang kegiatan komunitas pengembangan diri dalam bentuk kegiatan ekstrakurikuler. 1. Bidang pertanian ada basis komunitas Wiji Thukul yang fokus pada aktivitas bercocok tanam, hingga pembuatan pupuk organik. 2. Lalu ada Blekothek (Biar Jelek Otak harus Melek) dan Kembang Latar yang mengajarkan kesenian dan estetika. Blekothek adalah sejenis musik perkusi dimana alat-alat musik berasal dari barang-barang bekas seperti botol kaca, botol air mineral, drum, galon dan sebagainya dimainkan oleh para siswa. Membawakan lagu-lagu bertema lingkungan. 3. Sedangkan Basis Lintang Menoreh fokus pada kegiatan literasi.</p>\r\n\r\n<p>Produk yang dihasilkan adalah Republikana yang terbit sebulan sekali, memuat tulisan-tulisan pendek para siswa. 4. Sementara untuk komunitas rohani ada kegiatan Guyub Maryam yakni ziarah ke Goa Maria khususnya pada bulan-bulan Maria. 5. Ada pula komunitas Canthang Kumandang atau paduan suara, Turangga Siswa Arga yang fokus pada tarian tradisional 6. Dan yang terakhir kegiatan Pramuka.</p>\r\n\r\n<p>Enam komunitas basis tersebut akan mengirimkan kandidat mereka untuk maju dalam pemilihan presiden yang berlangsung setiap semester. Menurut pria berusia 41 tahun ini , pesta demokrasi ala SD Kenalan tersebut bertujuan untuk membentuk karakter anak sehingga mampu bertanggungjawab atas tugas yang diberikan guru. “Anak menjadi berani untuk bertanya dan menyampaikan pendapatnya,” terang Simus yang telah 10 tahun mengabdikan dirinya di SD Kenalan.</p>\r\n\r\n<p>Untuk memperkuat pendidikan demokrasi di sekolah, ada forum anak yang mirip rapat kabinet. Forum tersebut dihadiri oleh para guru dan seluruh siswa setiap hari Kamis. Dalam rapat itu dibahas sejumlah persoalan atau kasus yang terjadi di sekolah. Kegiatan tematik Selain kegiatan komunitas basis, SD Kenalan menerapkan beragam kegiatan lain yang bersifat tematik. Seperti misalnya Sabawana. Saba artinya jalan-jalan, wana berarti hutan. Sabawana merupakan kegiatan rutin SD Kenalan. Biasanya dilakukan bertepatan dengan hari bumi. Siswa diajak pergi ke hutan dengan tujuan agar murid melihat langsung kondisi hutan, satwa, tanaman dan tentu pesan lingkungan.</p>\r\n\r\n<p>“Kita lebih banyak menanam atau menebang? Program ini akan mendekatkan siswa agar lebih peduli, merasakan dan handarbeni. Merasa memiliki hutan sehingga mau menjaga,” terang Simus. Ada juga Mlipir Kutho, jalan-jalan bersama ke kota. Tilik Belik mengajak siswa untuk melihat dan mengamati sumber air yang ada di sekitar sekolah, sekaligus mencari mata air baru. Kegiatan lain yang juga menarik adalah Remen Peken (remen=suka, peken = pasar) yaitu suatu kegiatan dimana anak-anak beraktivitas di pasar tradisional setiap Sabtu Legi. Tujuannya agar siswa semakin mencintai pasar tradisional. Kepala SD Kanisius Kenalan Onesimus Maryono (kanan bertopi) sedang memerhatikan anak-anak didiknya bermain musik dari kaleng (blek) (Foto: Dokumentasi SDK Kenalan) Satu lagi PekOK (Pekan Olah Raga Kenalan).</p>\r\n\r\n<p>Kegiatan ini digelar saat bertepatan dengan Hari Olah Raga Nasional yang jatuh setiap tanggal 9 September. Dalam dua pekan seluruh siswa akan bertanding memperebutkan juara yang berhadiah medali emas, perak, dan perunggu, (tentu bukan medali emas sungguhan melainkan terbuat dari kayu yang dipahat seperti medali). Sementara cabang yang dipertandingkan adalah 8 cabang permainan tradisional. Seperti Gobak Sodor, Tarik Tambang, Bekel, Egrang, Dam-daman, Dakon, Ingkling dan Boi-Boinan yang eksistensinya mulai punah.</p>\r\n\r\n<p>“Sebagaimana pesta PON. Pembukaan dimulai dengan upacara Nyuwun Gromo (pengambilan api) di Gunung Gajah Mungkur. Kemudian dilanjutkan dengan estafet geni kapitayan menuju SDK Kenalan,” terang Pak Guru Simus. Simus mengungkapkan bahwa kegiatan semacam ini bukan tanpa alasan, selain agar anak-anak tak lupa akan akar budaya Jawa mereka juga diajak pula untuk belajar rasa kebersamaan, melatih kejujuran, bertanggung jawab dan menumbuhkan sikap gotong royong dan disiplin.</p>\r\n\r\n<p>Selain itu Simus menekankan bahwa pemakaian istilah-istilah Jawa dalam setiap kegiatan di sekolah yang ia pimpin juga merupakan bagian dalam upayanya untuk tetap memelihara budaya serta kearifan masyarakat setempat. Putus hanya sampai SD Lokasi SD Kenalan yang berada di lereng gunung Menoreh bisa dikatakan sangat terpencil. Dari pusat kota Yogyakarta berjarak 40 kilometer dengan jarak tempuh kendaraan kurang lebih 1.5 jam. Meski demikian dapat diakui bahwa sekolah ini memiliki program pendidikan karakter yang dapat diandalkan. Ini diakui oleh banyak orangtua murid pun siswa tamatan SD Kanisius Kenalan. Namun karena penerapan metode pembelajaran seperti ini baru ada di sekolah ini maka yang terjadi ketika para siswa ini lulus dan melanjutkan SMP, anak-anak ini seperti kehilangan sesuatu.</p>\r\n\r\n<p>“Banyak siswa yang telah tamat, amat merindukan momen kembali ke SD Kenalan lagi. Karena di SMP mereka tidak memperoleh metode pembelajaran yang sama. Ini yang menjadi perhatian saya,”ungkap Simus. Pria lulusan Pendidikan Bahasa Prancis, Universitas Negeri Yogyakarta ini pun memutar otak mengupayakan bagaimana program-programnya dapat diterima dan dilanjutkan di SMP. Harapan lain yang ia sampaikan adalah membangun asrama untuk mengakomodasi para orangtua yang ingin menyekolahkan anak-anak mereka di sini.</p>\r\n', '4.jpg', ''),
(4, '2017-07-29 09:46:17', 'Jokowi: Kurikulum di Perguruan Tinggi Harus Fleksi', '<p>Bantul - Presiden Joko Widodo menjadi pembicara dalam kuliah umum di Universitas Ahmad Dahlan, Bantul, Yogyakarta. Di hadapan para mahasiswa dan dosen, Jokowi mengatakan perguruan tinggi harus berani melakukan perubahan dan inovasi. "Seluruh universitas termasuk UAD (Universitas Ahmad Dahlan) harus mau berubah. Jangan sampai kita melakukan rutinitas, linier tanpa terobosan,"</p>\r\n\r\n<p>ujar Jokowi di Universitas Ahmad Dahlan, Sabtu (22/7/2017). Salah satu terobosan untuk mengikuti perkembangan zaman yakni menjadikan kurikulum di perguruan tinggi lebih fleksibel, sesuai perkembangan zaman.</p>\r\n\r\n<p>"Kurikulum misalnya harus fleksibel. Padahal perubahannya sudah sangat cepat sekali. Fakultas Ekonomi, Fakultas Hukum pasti ada (di semua universitas). Mestinya harus ada yang bersifat kekinian, misalnya Fakultas Logistik, karena platform logistik baik Retail Platform diperlukan sekali, dan sangat spesifik," kata Jokowi.</p>\r\n\r\n<p>Jokowi melanjutkan, dengan era digital seperti sekarang dan dengan perkembangan media sosial yang begitu cepat, hal itu bisa jadi peluang bagi perguruan tinggi.</p>\r\n\r\n<p>"Juga karena berkembang media sosial. Misalnya ada Fakultas Animasi, yang nanti jurusannya &#39;meme&#39;. Filofosi dasar ekonomi bisa diajarkan, tapi satu semester lah. Yang lain bagaimana membangun Retail Platform, itu harus dipelajari," ucapnya. Selain itu, Jokowi menyebutkan tiga hal yang bisa menjadi senjata buat memenangkan persaingan di era global.</p>\r\n\r\n<p>Ketiga hal ini menurut dia harus diajarkan ke kalangan mahasiswa. "Hal-hal yang bisa memenangkan persaingan ada tiga hal, pertama inovasi yang terus-menerus tidak berhenti, kedua kreatifitas, ketiga enterpreneurship. Semestinya diajarkan hal-hal yang seperti ini. Kemudian belajar-belajar di luar ruangan harus dihargai," pungkasnya.</p>\r\n', '5.jpg', ''),
(5, '2017-07-29 09:44:58', 'Jokowi: Jangan Sampai Anak-anak Kita Didik Oleh Me', '<p>Yogyakarta - Di hadapan ribuan guru,</p>\r\n\r\n<p>Presiden Joko Widodo mengingatkan agar siswa di Indonesia tidak dididik oleh media sosial. Peran guru begitu penting dalam mendidik serta membangun karakter para siswa. Kendati begitu, bukan berarti proses pendidikan tidak memanfaatkan teknologi yang terus berkembang.</p>\r\n\r\n<p>"Jangan sampai anak-anak kita didik oleh medsos. Jangan sampai anak-anak kita dididik oleh perubahan-perubahan yang merusak karakter kita. Perubahan tidak bisa kita tolak,"kata Jokowi pada Rakor Pimnas 2017</p>\r\n\r\n<p>Persatuan Guru Republik Indonesia(PGRI) di hotel Sahid Jaya, Babarsari, Sleman, Yogyakarta, Sabtu(23/7/2017). "Tapi bagaimana agar perubahan itu bisa dikendalikan, dikontrol, bisa kita menangkan dengan mengisi anak-anak kita dengan hal-hal yang berkaitan dengan karakter," lanjutnya. Jokowi mengatakan, guru memiliki tugas untuk mengajak peserta didik pada kebenaran dan kebaikan.</p>\r\n\r\n<p>Peran guru begitu penting dalam mengontrol para siswa dalam memanfaatkan teknologi, khususnya menggunakan media sosial yang kini tengah menjamur. "Hati-hati. Mereka bisa mendidik anak-anak kita kalau kita tidak membekali anak-anak kita dengan isi yang baik,"kata Jokowi. (nkn/nkn)</p>\r\n', '5.jpg', ''),
(6, NULL, 'Pembukaan sekolah', '<p><strong>uyfhusdhfusfhsu</strong></p>\r\n\r\n<p>sjdfnjsnfjsf</p>\r\n', '15135803_1804700446482399_2606566178654306965_n.jpg', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `calon_siswa`
--

CREATE TABLE IF NOT EXISTS `calon_siswa` (
  `id_calon` int(10) NOT NULL AUTO_INCREMENT,
  `tgl_daftar` datetime DEFAULT NULL,
  `nm_calon` varchar(100) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_calon`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data untuk tabel `calon_siswa`
--

INSERT INTO `calon_siswa` (`id_calon`, `tgl_daftar`, `nm_calon`, `email`, `password`) VALUES
(10, '2017-08-12 13:03:33', 'NURHIZAT', 'izzatrafardhan7@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b'),
(12, '2017-08-17 18:05:01', 'fahri', 'fahri@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b'),
(13, '2017-08-17 18:06:07', 'fardan', 'fardan@gmail.com', 'e10adc3949ba59abbe56e057f20f883e');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_kelas`
--

CREATE TABLE IF NOT EXISTS `detail_kelas` (
  `id_detail_kelas` int(11) NOT NULL AUTO_INCREMENT,
  `id_kelas` varchar(20) DEFAULT NULL,
  `id_siswa` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_detail_kelas`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data untuk tabel `detail_kelas`
--

INSERT INTO `detail_kelas` (`id_detail_kelas`, `id_kelas`, `id_siswa`) VALUES
(1, 'Diploma I', NULL),
(2, 'Diploma III', NULL),
(3, 'Sarjana', NULL),
(4, 'Magister', NULL),
(5, 'Doktor', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `gallery`
--

CREATE TABLE IF NOT EXISTS `gallery` (
  `id_gallery` int(11) NOT NULL AUTO_INCREMENT,
  `nm_gallery` varchar(50) DEFAULT NULL,
  `tgl_upload` datetime DEFAULT NULL,
  `gambar` text,
  `ket_gallery` varchar(100) DEFAULT NULL,
  `createdBy` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id_gallery`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data untuk tabel `gallery`
--

INSERT INTO `gallery` (`id_gallery`, `nm_gallery`, `tgl_upload`, `gambar`, `ket_gallery`, `createdBy`) VALUES
(1, 'Ruang Kelas', '2017-08-12 08:26:58', '14344210_10209553140523009_6954702864009253213_n.jpg', 'Kegiatan Saat Belajar Mengjar di Kelas', ''),
(2, 'Staff Guru dan Karyaswan Yayasan SMP Bina Utama Ja', '2017-08-12 08:29:03', '15135803_1804700446482399_2606566178654306965_n.jpg', 'Guru - Guru dan Karyawan', ''),
(3, 'Lorem ipsum dolor sit amet', '2017-07-17 05:12:29', '3.jpg', 'ewfewf', NULL),
(10, 'Ruang Guru', '2017-08-06 05:09:33', 'ffA.jpg', 'Kegiaatan Rapat', ''),
(11, 'Gedung Lantai Tiga', '2017-08-17 11:19:42', 'P1020117.JPG', 'Perluasan ', ''),
(12, 'Masjid Yayasan Nurul Ikhlas', '2017-08-17 11:20:43', '20170815_082924.jpg', 'Masjid SMP Bina Utama', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `guru`
--

CREATE TABLE IF NOT EXISTS `guru` (
  `nip` varchar(20) NOT NULL,
  `nm_guru` varchar(100) DEFAULT NULL,
  `jabatan` varchar(10) DEFAULT NULL,
  `almt_guru` varchar(200) DEFAULT NULL,
  `telpon` varchar(24) DEFAULT NULL,
  `gambar` text,
  `createdby` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`nip`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `guru`
--

INSERT INTO `guru` (`nip`, `nm_guru`, `jabatan`, `almt_guru`, `telpon`, `gambar`, `createdby`) VALUES
('098980', 'Nurlailah', '3', 'JL. Kemanggisan Raya', '08776767676', 'TRI NAWANG WULAN,S.Pd.jpg', ''),
('11160755', 'Dewi Setiawati, S.Ag', '3', 'Jl. Asia Baru ', '085678181823', 'siti nur amin.jpg', ''),
('1212', 'Achmad Syuhada, S.Pd', '3', 'jakarta', '085781177597', 'ahmad1.jpg', ''),
('1330776', 'Andriansyah, S.Pd.I', '1', 'Jl. GG Liam Palem', '081267789000', 'zaini.jpg', ''),
('1330777', 'Anisah Larasati, SE', '4', 'JL. Duri Mas Barat 4 ', '081212779877', 'sri minarsih1.jpg', ''),
('1570189', 'Faturahman Subkhy, S.Pd.I', '3', 'Jl. Kembangan Raya', '087880056723', 'Zaini .jpg', ''),
('DS004', 'Imran Medali', '3', 'Jl. Kedoya Raya ', '098276272672', 'firdaus1.jpg', ''),
('DS005', 'Budi Santoso', '3', 'Kedoya', '098276272672', 'err.jpg', ''),
('DSBINUT002', 'Suheti Setiawati,S.Kom', '3', 'Jl.Puri Indah', '098276272674', 'neti setiawati.jpg', ''),
('DSBINUT003', 'Mahmud Muhammad, S.Pd', '3', 'Jl.Kembangan', '087767676763', 'mahmud1.jpg', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jabatan`
--

CREATE TABLE IF NOT EXISTS `jabatan` (
  `id_jabatan` int(11) NOT NULL AUTO_INCREMENT,
  `nm_jabatan` varchar(50) NOT NULL,
  `createdBy` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id_jabatan`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data untuk tabel `jabatan`
--

INSERT INTO `jabatan` (`id_jabatan`, `nm_jabatan`, `createdBy`) VALUES
(1, 'Kepala Sekolah', NULL),
(2, 'Wakil kepala sekolah', NULL),
(3, 'Pengajar', NULL),
(4, 'Staff TU', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas`
--

CREATE TABLE IF NOT EXISTS `kelas` (
  `id_kelas` varchar(20) NOT NULL,
  `nm_kelas` varchar(50) DEFAULT NULL,
  `jumlah_tampung` int(5) DEFAULT NULL,
  `wali_kelas` varchar(20) DEFAULT NULL,
  `createdBy` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id_kelas`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `nm_kelas`, `jumlah_tampung`, `wali_kelas`, `createdBy`) VALUES
('1A', 'Kelas 1A', 22, '11160755', NULL),
('5B', 'kelas 5B', 30, 'DS005', NULL),
('R01', 'Ruangan 1', 11, '1212', NULL),
('R03', 'Ruangan 3', 25, '098980', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pendaftaran`
--

CREATE TABLE IF NOT EXISTS `pendaftaran` (
  `nomor_daftar` varchar(20) NOT NULL,
  `id_calon` varchar(10) DEFAULT NULL,
  `tgl_daftar` datetime DEFAULT NULL,
  `nama_lengkap` varchar(100) DEFAULT NULL,
  `jenis_kelamin` enum('pria','wanita') DEFAULT NULL,
  `berat` float DEFAULT NULL,
  `tinggi` float DEFAULT NULL,
  `golongan_darah` varchar(3) DEFAULT NULL,
  `nik` varchar(20) DEFAULT NULL,
  `agama` varchar(25) DEFAULT NULL,
  `tempat_lahir` varchar(20) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `anak_ke` int(3) DEFAULT NULL,
  `jumlah_bersaudara` int(3) DEFAULT NULL,
  `tempat_tinggal` varchar(150) DEFAULT NULL,
  `asal_sekolah` varchar(150) DEFAULT NULL,
  `nama_ayah` varchar(100) DEFAULT NULL,
  `nama_ibu` varchar(100) DEFAULT NULL,
  `tgl_lahir_ayah` int(5) DEFAULT NULL,
  `tgl_lahir_ibu` int(5) DEFAULT NULL,
  `pendidikan_ayah` varchar(20) DEFAULT NULL,
  `pendidikan_ibu` varchar(20) DEFAULT NULL,
  `pekerjaan_ayah` varchar(50) DEFAULT NULL,
  `pekerjaan_ibu` varchar(50) DEFAULT NULL,
  `penghasilan_ayah` float DEFAULT NULL,
  `penghasilan_ibu` float DEFAULT NULL,
  `alamat_ayah` varchar(150) DEFAULT NULL,
  `alamat_ibu` varchar(150) DEFAULT NULL,
  `pass_photo` text,
  `ijasah` text,
  `kk` text,
  `traskrip_nilai` text,
  `status_proses` enum('pending','proses','diterima','ditolak') DEFAULT 'pending',
  `status_pembayaran` enum('belum_lunas','lunas') DEFAULT 'belum_lunas',
  PRIMARY KEY (`nomor_daftar`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pendaftaran`
--

INSERT INTO `pendaftaran` (`nomor_daftar`, `id_calon`, `tgl_daftar`, `nama_lengkap`, `jenis_kelamin`, `berat`, `tinggi`, `golongan_darah`, `nik`, `agama`, `tempat_lahir`, `tgl_lahir`, `anak_ke`, `jumlah_bersaudara`, `tempat_tinggal`, `asal_sekolah`, `nama_ayah`, `nama_ibu`, `tgl_lahir_ayah`, `tgl_lahir_ibu`, `pendidikan_ayah`, `pendidikan_ibu`, `pekerjaan_ayah`, `pekerjaan_ibu`, `penghasilan_ayah`, `penghasilan_ibu`, `alamat_ayah`, `alamat_ibu`, `pass_photo`, `ijasah`, `kk`, `traskrip_nilai`, `status_proses`, `status_pembayaran`) VALUES
('PSB20170800001', '10', '2017-08-19 00:00:00', 'Nurhizat', 'pria', 75, 170, '0', '12333556677', 'islam', 'JAKARTA', '2000-03-02', 4, 4, 'Jl. Duri Kencana', 'SDN 14 Pagi', 'Maselih', 'Siam', 1986, 1995, 'SMP', 'SMP', 'Wiraswasta', 'Ibu Rumah Tangga', 3000000, 2000000, 'Jakarta', 'Jakarta', 'gb7.jpg', '20160718124104.pdf', '20160718124032.pdf', '20160718124132.pdf', 'proses', 'lunas'),
('PSB20170800002', '13', '2017-08-17 00:00:00', 'Muhammad Fardan', 'pria', 55, 170, '0', '1456772892003', 'islam', 'JAKARTA', '2006-01-09', 5, 5, 'Jl. Duri Mas', 'SDN 09 Pagi', 'Rasjeni', 'Wati', 1975, 1981, 'SMK', 'SMA', 'Wiraswasta', 'Ibu Rumah Tangga', 2000000, 1000000, 'Jl. Duri Mas', 'Jl. Duri Mas', 'imam.jpg', '', '', '', 'diterima', 'lunas');

-- --------------------------------------------------------

--
-- Struktur dari tabel `profil`
--

CREATE TABLE IF NOT EXISTS `profil` (
  `id_profil` int(11) NOT NULL AUTO_INCREMENT,
  `nm_profil` varchar(50) DEFAULT NULL,
  `ket_profil` text,
  `gambar` text,
  `createdBy` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id_profil`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data untuk tabel `profil`
--

INSERT INTO `profil` (`id_profil`, `nm_profil`, `ket_profil`, `gambar`, `createdBy`) VALUES
(1, 'Visi & misiss', '<p><strong>VISI</strong></p>\r\n\r\n<p><strong>Menjadikan SMP Bina Utama Jakarta sebagai Sekolah Menengah Pertama yang unggul beriman dan berakhlakul karimah.</strong></p>\r\n\r\n<p><strong>MISI</strong></p>\r\n\r\n<p><strong>1.      Menghasilkan tamatan yang senantiasa bertaqwa kepada Tuhan Yang  Maha                                </strong></p>\r\n\r\n<p><strong>         Esa.</strong></p>\r\n\r\n<p><strong>2.    Memberikan bekal pengetahuan, keterampilan, budi perkerti, kedisiplinan, tanggung jawab, kejujuran untuk mengembangkan </strong>diri.</p>\r\n', '20170812_102814.jpg', ''),
(2, 'Sejarah Sekolah', '<p><strong>SMP Bina Utama Jakarta yang berlokasi Jl. Kepa Timur Raya Duri Kepa Jakarta Barat  ini didirkan pada tahun 2005 oleh Bapak Sayuti Adduri . yang berawal dari SD saja sekarang telah ditambah tingkat SMP pada tahun 2009 yang sekarang sudah memiliki 15 ruangan dan sedang dibangun untuk perluasan lantai 3, ada ruangan belajar mengajar, kantor (ruang guru dan kepala sekolah) dan telah meiliki fasilitas Lab Komputer, ruang multimedia serta perpustakaan untuk menunjang proses belajar mengajar.</strong></p>\r\n\r\n<p><strong>            SMP Bina Utama Jakarta yang memiliki status diakui oleh pemerintah dan terakreditasi B dengan gedung milik sendiri.</strong></p>\r\n\r\n<h3> </h3>\r\n', 'Syiar - Al Chasanah 2 (2)_640x480.JPG', ''),
(3, 'Stuktur organisasi', '<h3><strong>STRUKTUR ORGANISASI SMP BINA UTAMA JAKARTA</strong></h3>\r\n', 'struktur.png', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE IF NOT EXISTS `siswa` (
  `NIS` varchar(20) NOT NULL,
  `nomor_daftar` varchar(20) NOT NULL,
  `tgl_verifikasi` datetime DEFAULT NULL,
  `nama_lengkap` varchar(100) DEFAULT NULL,
  `jenis_kelamin` enum('pria','wanita') DEFAULT NULL,
  `berat` float DEFAULT NULL,
  `tinggi` float DEFAULT NULL,
  `golongan_darah` varchar(3) DEFAULT NULL,
  `nik` varchar(20) DEFAULT NULL,
  `agama` varchar(25) DEFAULT NULL,
  `tempat_lahir` varchar(20) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `anak_ke` int(3) DEFAULT NULL,
  `jumlah_bersaudara` int(3) DEFAULT NULL,
  `tempat_tinggal` varchar(150) DEFAULT NULL,
  `asal_sekolah` varchar(150) DEFAULT NULL,
  `nama_ayah` varchar(100) DEFAULT NULL,
  `nama_ibu` varchar(100) DEFAULT NULL,
  `tgl_lahir_ayah` int(5) DEFAULT NULL,
  `tgl_lahir_ibu` int(5) DEFAULT NULL,
  `pendidikan_ayah` varchar(20) DEFAULT NULL,
  `pendidikan_ibu` varchar(20) DEFAULT NULL,
  `pekerjaan_ayah` varchar(50) DEFAULT NULL,
  `pekerjaan_ibu` varchar(50) DEFAULT NULL,
  `penghasilan_ayah` float DEFAULT NULL,
  `penghasilan_ibu` float DEFAULT NULL,
  `alamat_ayah` varchar(150) DEFAULT NULL,
  `alamat_ibu` varchar(150) DEFAULT NULL,
  `pass_photo` text,
  `ijasah` text,
  `kk` text,
  `traskrip_nilai` text,
  `kelas` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`NIS`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`NIS`, `nomor_daftar`, `tgl_verifikasi`, `nama_lengkap`, `jenis_kelamin`, `berat`, `tinggi`, `golongan_darah`, `nik`, `agama`, `tempat_lahir`, `tgl_lahir`, `anak_ke`, `jumlah_bersaudara`, `tempat_tinggal`, `asal_sekolah`, `nama_ayah`, `nama_ibu`, `tgl_lahir_ayah`, `tgl_lahir_ibu`, `pendidikan_ayah`, `pendidikan_ibu`, `pekerjaan_ayah`, `pekerjaan_ibu`, `penghasilan_ayah`, `penghasilan_ibu`, `alamat_ayah`, `alamat_ibu`, `pass_photo`, `ijasah`, `kk`, `traskrip_nilai`, `kelas`) VALUES
('2017081200001', 'PSB20170800001', '2017-08-12 13:14:54', 'Nurhizat', 'pria', 75, 170, '0', '12333556677', 'islam', 'JAKARTA', '2000-03-02', 4, 4, 'Jl. Duri Kencana', 'SDN 14 Pagi', 'Maselih', 'Siam', 1986, 1995, 'SMP', 'SMP', 'Wiraswasta', 'Ibu Rumah Tangga', 3000000, 2000000, 'Jakarta', 'Jakarta', 'gb7.jpg', '20160718124011.pdf', '20160718124032.pdf', '20160718124132.pdf', '1A');

-- --------------------------------------------------------

--
-- Struktur dari tabel `slide`
--

CREATE TABLE IF NOT EXISTS `slide` (
  `id_slide` int(10) NOT NULL AUTO_INCREMENT,
  `judul_slide` varchar(50) DEFAULT NULL,
  `tgl_upload` date DEFAULT NULL,
  `ket_slide` text,
  `gambar` text,
  `createdBy` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id_slide`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data untuk tabel `slide`
--

INSERT INTO `slide` (`id_slide`, `judul_slide`, `tgl_upload`, `ket_slide`, `gambar`, `createdBy`) VALUES
(6, 'Keluarga Besar Yayasan Nurul Ikhlas', '2017-08-06', 'Acara Pengibaran Bendera Merah Putih di Yayasan Nurul Ikhlas ', 'img_4421.jpg', ''),
(7, 'PENDAFTARAN', '2017-08-12', 'PENERIMAAN SISWA BARU TAHUN AJARAN 2017 - 2018', '20170812_103446.jpg', ''),
(9, 'Alamat Yayasan Nurul Ikhlas Assanusiah', '2017-08-12', 'YAYASAN PENDIDIKAN NURUL IKHLAS ASSANUSIAH ', '20170812_102502.jpg', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `verifikasi_daftar`
--

CREATE TABLE IF NOT EXISTS `verifikasi_daftar` (
  `id_verifikasi` int(11) NOT NULL AUTO_INCREMENT,
  `nomor_daftar` varchar(20) DEFAULT NULL,
  `tgl_verifikasi` datetime DEFAULT NULL,
  `status_verifikasi` enum('tidak','ya') DEFAULT 'tidak',
  `id_admin` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_verifikasi`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data untuk tabel `verifikasi_daftar`
--

INSERT INTO `verifikasi_daftar` (`id_verifikasi`, `nomor_daftar`, `tgl_verifikasi`, `status_verifikasi`, `id_admin`) VALUES
(3, 'PSB20170800001', '2017-08-12 01:13:26', 'ya', 0),
(4, 'PSB20170800002', '2017-08-17 06:10:43', 'tidak', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
