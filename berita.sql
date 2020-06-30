-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 30 Jun 2020 pada 16.19
-- Versi server: 10.1.40-MariaDB
-- Versi PHP: 7.1.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `berita`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `username` varchar(30) NOT NULL,
  `password` varchar(32) NOT NULL,
  `nm_admin` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`username`, `password`, `nm_admin`) VALUES
('admin', '21232f297a57a5a743894a0e4a801fc3', 'Administrator'),
('user', 'user123', 'user');

-- --------------------------------------------------------

--
-- Struktur dari tabel `berita`
--

CREATE TABLE `berita` (
  `id` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `judul` text NOT NULL,
  `isi` text NOT NULL,
  `tgl` date DEFAULT NULL,
  `gambar` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `berita`
--

INSERT INTO `berita` (`id`, `id_kategori`, `judul`, `isi`, `tgl`, `gambar`) VALUES
(1, 4, 'Facebook Buka Suara Usai Ramai Diboikot Perusahaan', 'Jakarta, CNN Indonesia -- Wakil Presiden Facebook untuk Urusan Publik Nick Clegg buka suara soal aksi boikot iklan yang dilakukan sejumlah perusahaan karena mereka menilai Facebook gagal mengatasi konten hoaks dan ujaran kebencian.\r\nAksi boikot itu juga diiringi dengan sejumlah warganet di media sosial Twitter yang menggaungkan tagar #StopHateForProfit.\r\n\r\nPerusahaan otomotif Honda merupakan salah satu penggerak tagar itu. Lewat akun Twitter resmi @HondaInclusion, mulai bulan Juli 2020, perusahaan akan menangguhkan iklan di Facebook dan Instagram.\r\n\"Bulan Juli, American Honda menangguhkan iklan di Facebook dan Instagram. Kami memilih untuk berdiri dengan orang-orang yang bersatu melawan kebencian dan rasisme,\" cuit Honda pada 27 Juni lalu.\r\n\r\n\"Ini (kebencian dan rasisme) tidak selaras dengan nilai-nilai perusahaan kami yang didasarkan pada rasa hormat kepada manusia #StopHateForProfit,\" lanjut Honda.Menurut Clegg, Facebook tidak mendapat profit atau keuntungan apapun dari konten-konten yang berisi ujaran kebencian maupun informasi palsu yang beredar di platform mereka.\r\n\r\nMalah sebaliknya, perusahaan sama sekali tidak menyukai konten-konten tersebut.\r\n\r\n\"Kami sama sekali tidak mendapat insentif untuk mentolerir ujaran kebencian. Kami tidak menyukainya, penggunaan kami tidak menyukainya, pengiklan pun tentu saja tidak menyukainya. Kami mendapat manfaat dari koneksi manusia yang positif, bukan kebencian,\" kata Clegg saat diwawancarai jurnalis CNN, Brian Shelter.', '2020-06-27', 'fb.jpeg'),
(2, 1, 'Beasiswa S2 Brunei, Kuliah Gratis dan Tunjangan Rp Rp 5 Juta Per Bulan\r\n\r\n', 'KOMPAS.com - Bagi kamu yang berencana melanjutkan studi ke jenjang S2, Brunei Darussalam bisa menjadi salah satu negara yang dipertimbangkan karena lokasinya yang dekat dengan Indonesia. Sebagai negara tetangga yang terkenal makmur, Brunei Darussalam rutin menawarkan beasiswa kuliah bagi pelajar internasional termasuk Indonesia. Salah satu program beasiswa yang masih membuka pendaftaran ialah Program UBD Graduate Scholarship (UGS) untuk studi pascasarjana di Universiti Brunei Darussalam (UBD). Berikut informasi seputar beasiswa UGS yang membuka pendaftaran hingga 31 Juli 2020:\r\n\r\n1. Biaya pendidikan penuh, termasuk biaya pendaftaran dan biaya penerimaan di Universiti Brunei Darussalam.\r\n\r\n2. Tunjangan sebesar BND 500 atau sekitar Rp 5,1 juta per bulan selama 36 bulan.\r\n \r\n3. Akomodasi di kampus selama 36 bulan.\r\n \r\n4. Bagi mahasiswa internasional yang menerima beasiswa ini juga akan mendapatkan tiket pesawat kelas ekonomi pada awal dan akhir studi. \r\n\r\n5. Tunjangan untuk riset lapangan sebesar BND 1.000 untuk Bidang Arts and Humanities dan BND 2.000 untuk Bidang Science.\r\n\r\nSyarat \r\n\r\n\r\n1. Telah menyelesaikan S1 minimal dengan gelar \"first class honours\" atau setara dengan nilai A atau kualifikasi yang setara.\r\n\r\n2. Telah menyelesaikan S1 dengan gelar \"second class upper honours\" atau setara dengan nilai B dengan riwayat publikasi yang baik, sebelum maupun setelah studi.\r\n\r\n3. Mempunyai proposal riset yang berkualitas tinggi dan berdampak untuk beasiswa S3.\r\n\r\n4. Memenuhi persyaratan untuk melanjutkan studi di bidang yang dipilih.\r\n\r\n\r\n', '2020-06-26', 'brunai.jpg'),
(3, 3, 'Calon Venue Piala Dunia U-20, Si Jalak Harupat Berbenah !!!', 'Kabupaten Bandung - Pemerintah Kabupaten Bandung membenahi Stadion Si Jalak Harupat. Stadion itu dicalonkan jadi salah satu venue perhelatan Piala Dunia U-20 di tahun 2021 nanti.\r\n\r\nSi Jalak Harupat dicalonkan menjadi venue untuk Piala Dunia U-20 bersama dengan Stadion Gelora Bung Karno (SUGBK), Stadion Gelora Bung Tomo, Stadion Manahan, Stadion Kapten I Wayan Dipta, dan Stadion Jakabaring. Beberapa fasilitas akan segera dibenahi untuk menyambut perlehatan akbar tersebut.\r\n\r\nKepala Dinas Pemuda dan Olahraga (Kadispora) Marlan Nirsyamsu mengatakan, masih menunggu hasil ulasan dari PSSI dan FIFA terkait fasilitas yang harus dibenahi. Namun, ia telah mendapatkan kabar terkait dua infrastruktur yang harus ditambah kapasitasnya.\r\n\r\n\"Kalau seandainya ada infrastruktur yang harus ditambah nantikan ada review dari FIFA dan PSSI, untuk teknis sekarang kita sudah clear bisa digunakan. Cuman ada dua yang sudah ada kabar awal,\" ujar Marlan Nirsyamsu, Selasa (30/6/2020).\r\n\r\nMarlan menyebutkan, dua infrastruktur yang mesti dibenahi, di antaranya lampu stadion dan sound system. Saat ini, lampu stadion di SJH (Si Jalak Harupat) berkapasitas 2.000 lux sedangkan kapasitas yang menjadi standar FIFA adalah 2.500 lux.\r\n\r\n\"Pertama adalah penambahan lampu di stadion, kapasitas kita sekarang 2.000 luk menjadi 2.500 luk. Kedua, sound system stadion. Sementara itu baru dua info tersebut yang kita dapat,\" tambah Marlan.\r\n\r\nBukan hanya infrastruktur, Marlan mengatakan, biaya untuk memperbaiki lampu dan sound system di stadion masih belum jelas. Karena, beberapa anggaran di Kabupaten Bandung banyak dilakukan rekofusing untuk penanganan Covid-19.\r\n\r\nBeberapa skema disebutkan Marlan, di antaranya dengan mengandalkan APBD Perubahan atau APBD di tahun 2021 nanti. Sedangkan pembangunan infrastruktur di luar stadion akan diserahkan kepada PUPR.\r\n\r\n\"Kita usahakan di APBD-Perubahan, atau enggak di murni (APBD 2021). Di murni itu kan ke kejar lah, karena tidak susah. Jadi mudah-mudahan bisa kita lakukan, kalau pun di perubahan tidak bisa, nanti kita di murni. Karena kan pelaksanaan bulan Juni,\" katanya.\r\n\r\nSelain itu, ada empat stadion yang akan menunjang kontingen untuk berlatih. Di antaranya, Stadion Jati Unpad Jatinangor, Stadion Sabuga ITB, Stadion Siliwangi dan Stadion Arcamanik.\r\n\r\nApabila dinilai masih kurang, pihaknya pun telah disarankan untuk menyiapkan lahan yang akan dibangun untuk stadion latihan. Marlan mengatakan, rencananya lahan tersebut akan disiapkan tetap berada di kompleks olahraga SJH.\r\n\r\n\"Kalau masih kurang, kita juga diminta data sebetulnya, untuk menyiapkan lahan untuk dibangun satu stadion untuk latihan. Cuman ini kan keputusannya belum keluar, jadi kita ya siapin lahan untuk bangunannya apakah jadi atau tidaknya nanti dari PSSI atau dari PUPR (yang membangun),\" pungkasnya.', '2020-06-30', 'si-jalak-harupat-2.jpeg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nm_kategori` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nm_kategori`) VALUES
(1, 'Pendidikan'),
(3, 'Olahraga'),
(4, 'Teknologi'),
(5, 'Kesehatan'),
(6, 'games');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`username`),
  ADD UNIQUE KEY `password` (`password`);

--
-- Indeks untuk tabel `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_kategori` (`id_kategori`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `berita`
--
ALTER TABLE `berita`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `berita`
--
ALTER TABLE `berita`
  ADD CONSTRAINT `berita_ibfk_1` FOREIGN KEY (`id_kategori`) REFERENCES `kategori` (`id_kategori`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
