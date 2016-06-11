-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 11, 2016 at 05:35 
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eclinicnew`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_category`
--

CREATE TABLE `data_category` (
  `id_category` int(11) NOT NULL,
  `name_category` varchar(75) DEFAULT NULL,
  `name_category_id` varchar(75) DEFAULT NULL,
  `pict_category` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_category`
--

INSERT INTO `data_category` (`id_category`, `name_category`, `name_category_id`, `pict_category`) VALUES
(1, 'General Physician', 'Dokter Umum', 'ic_doctor.png'),
(2, 'Dentist', 'Gigi', 'ic_doctor.png'),
(3, 'Gynecologist/Obstetrician', 'Kandungan', 'ic_doctor.png'),
(4, 'Dermatologist', 'Kulit', 'ic_doctor.png'),
(5, 'Homeopath', 'Homeopati', 'ic_doctor.png'),
(6, 'Cardiologist', 'Jantung', 'ic_doctor.png'),
(7, 'Gastroenterologist', 'Pencernaan', 'ic_doctor.png'),
(8, 'Neurologist', 'Saraf', 'ic_doctor.png'),
(9, 'Ear-Nose-Throat (ENT)', 'Telinga-Hidung-Tenggorokan (THT)', 'ic_doctor.png'),
(10, 'Psychiatrist', 'Psikiater', 'ic_doctor.png'),
(11, 'Physiotherapist', 'Fisioterapi', 'ic_doctor.png'),
(12, 'Pediatrician', 'Anak', 'ic_doctor.png'),
(13, 'Urologist', 'Urologi', 'ic_doctor.png'),
(14, 'Orthopedist', 'Ortopedi', 'ic_doctor.png'),
(15, 'Psychologist', 'Psikolog', 'ic_doctor.png'),
(16, 'Ophthalmologist', 'Mata', 'ic_doctor.png'),
(17, 'Dietitian', 'Diet', 'ic_doctor.png'),
(19, 'Spa', 'Spa', 'ic_doctor.png');

-- --------------------------------------------------------

--
-- Table structure for table `data_clinic`
--

CREATE TABLE `data_clinic` (
  `id` int(11) NOT NULL,
  `id_telkomsel` varchar(4) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `address` varchar(150) DEFAULT NULL,
  `lat` varchar(30) DEFAULT NULL,
  `long` varchar(30) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `range_price` varchar(50) DEFAULT NULL,
  `schedule_day` varchar(20) DEFAULT NULL,
  `schedule_time` varchar(50) DEFAULT NULL,
  `telp` varchar(15) NOT NULL,
  `geo` point DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_clinic`
--

INSERT INTO `data_clinic` (`id`, `id_telkomsel`, `name`, `address`, `lat`, `long`, `category`, `range_price`, `schedule_day`, `schedule_time`, `telp`, `geo`) VALUES
(1, NULL, 'Klinik Mata Mayestik', 'Kebayoran Baru, Jakarta\r\nJl. Bumi No. 14, Jakarta', '-6.237698', '106.7901005', 13, 'IDR 100.000 - 200.000', 'SEN - SAB', '8:00 AM - 6:00 PM', '+622129704992', NULL),
(2, NULL, 'drg. Handayani Estetika Dental', 'Cempaka Putih, Jakarta\r\nJl Raya Cempaka Putih Bl B/4,Cempaka Putih Timur, Cempaka Putih Jakarta Pusat 10510 DKI Jakarta, Jakarta', '-6.1740704', '106.8688538', 3, 'IDR 180.000 - 300.000', 'SEN - SAB', '9:00AM-12:00PM, 4:30PM-9:00PM', '+622129704993', NULL),
(3, NULL, 'Ultimo Aesthetic & Dental Center', 'Kebayoran Baru, Jakarta\r\nPlaza ASIA 18th Floor Jl. Jend Sudirman Kav. 59, Jakarta', '-6.2255576', '106.8034498', 11, 'IDR 200.000', '\r\nSEN-SAB', '8:30AM-9:00PM', '+622129704992', NULL),
(4, NULL, 'Klinik THT Dr. A.C. Harun', 'Manggarai Selatan, Jakarta', '-6.2173936', '106.8422062', 7, 'IDR 150,000', 'MON-SUN', '8:00AM-12:00PM, 5:00PM-9:30PM', '+622129704975', NULL),
(5, NULL, '\r\nCiputra Medical Center', 'Setia Budi, Jakarta\r\nLotte Shopping Avenue 5F, Ciputra World 1 Jakarta, Jl. Prof. Dr. Satrio, Kav 3-5, Jakarta', '-6.2249054', '106.8213702', 11, 'IDR 100.000 - 300.000', 'MON - SAT', '9:00 AM - 10:00 PM', '+622129704975', NULL),
(6, NULL, '\r\nAudy Dental', 'Mampang Prapatan, Jakarta\r\nJl. Bangka Raya No.40E Kemang Jakarta Selatan, Jakarta', '-6.2717997', '106.8110243', 4, 'IDR 100.000 - 150.000', 'SEN-MIN', '10:00AM-9:00PM', '+622129704996', NULL),
(7, NULL, '\r\nKlinik Anugerah', 'Kemayoran, Jakarta\r\nJL.Dwiwarna II No.36, Jakarta', '-6.1499347', '106.8255043', 12, 'IDR 150.000', 'SEN-SAB', '8:30AM-2:00PM', '+622129704996', NULL),
(8, NULL, '\r\nSudirman Medical Center', 'Setia Budi, Jakarta\r\nJl. Karbela Timur No.17, Jakarta', '-6.2145296', '106.8250798', 6, 'IDR 50.000 - 100.000', 'SEN-MIN', '7:00AM-11:00PM', '+622129704975', NULL),
(9, NULL, '\r\nPalapa Dentists', 'Pasar Minggu, Jakarta\r\nJalan Palapa 1 No. 4, Pasar Minggu, Jakarta, Special Capital Region of Jakarta 12520, Indonesia, Jakarta', '-6.2877031', '106.8385352', 2, 'IDR 12.500 - 125.000', 'SEN - JUM, SAB, MIN', '10:00 AM - 8:00 PM, 8:00 AM - 8:00 PM, 8:00 AM - 4', '+622129704992', NULL),
(10, NULL, '\r\nDr. Gan Hoa Hiong''s Clinic', 'Kebon Jeruk, Jakarta\r\nGraha Kencana Blok DL , Jl. Raya Perjuangan Number 88, Kebun Jeruk , Jakarta Barat 11530, Jakarta', '-6.1924967', '106.7632856', 9, 'IDR 400.000', 'SEN - SAB', '8:00 AM - 2:30 PM', '+622129704992', NULL),
(11, NULL, '\r\nClick House', 'Kebayoran Baru, Jakarta\r\nJl. Melawai Raya No. 27G Jakarta Selatan, Jakarta', '-6.246246', '106.7964609', 1, 'IDR 150.000 - 250.000', 'SEN - MIN', '9:00AM-9:00PM', '+622129704996', NULL),
(12, NULL, '\r\nMaharis Clinic', 'Menteng, Jakarta\r\nJl. Malabar 19, Guntur, Jakarta', '-6.2072538', '106.8353596', 1, 'IDR 50.000 - 150.000', 'SEN - JUM, SAB', '10:00 AM - 8:00 PM, 10:00 AM - 5:00 PM ', '+622129704996', NULL),
(13, NULL, 'Dr. JB. Hawoe', 'Tebet, Jakarta\r\nGedung Gajah Blok ABC Lt. 3 Unit A3 Jl. Dr Saharjo III Tebet Jakarta Selatan, Jakarta', '-6.2281437', '106.8455243', 1, 'IDR 100.000', 'SEN - SAB', '11:00 AM - 6:00 PM', '+622129704992', NULL),
(14, NULL, 'EDMO Clinic', 'Jl. Cikajang, RT.6/RW.6, Petogogan, Kby. Baru, Kota Jakarta Selatan, Daerah Khusus Ibukota Jakarta', '-6.2405999', '106.8082209', 5, 'IDR 150.000 - 250.000', 'SEN - SAB', '10:00AM-6:00PM', '+622129704996', NULL),
(15, NULL, 'Seoul Medical Clinic', 'Mampang Prapatan, Jakarta\r\nWisma Tandean Jl. Kapt. Tandean no.7 Lt.2 Jakarta Selatan 12710, Jakarta', '-6.245463', '106.8217218', 11, 'IDR 200.000', 'SEN - JUM, SAB', '8:30 AM - 6:00 PM, 8:00 AM - 12:00 PM ', '+622121889049', NULL),
(16, NULL, 'Medika Plaza', 'Jl. Jend. Gatot Subroto,RT.8/RW.2, Karet Semanggi,Kota Jakarta Selatan,Daerah Khusus Ibukota Jakarta', '-6.2289945', '106.8040828', 8, 'IDR 100.000', 'SEN - SAB', '8:00 AM - 5:00 PM', '+622129704975', NULL),
(17, NULL, 'Klinik Tiara', 'Blok S No.4,Jalan Birah 3,Rw. Bar.,Kby. Baru, Kota Jakarta Selatan, Daerah Khusus Ibukota Jakarta', '-6.228994', '106.8040828', 8, 'IDR 50.000 - 150.000', 'SEN-MIN', '1:00 AM - 12:00 PM', '+622129704992', NULL),
(18, NULL, 'The Clinic Aesthetic', 'Kebayoran Baru, Jakarta\r\nPacific Place Jakarta, Senayan, Kebayoran Baru, South Jakarta City, Special Capital Region of Jakarta 12190, Jakarta', '-6.230573', '106.8059711', 11, 'IDR 175.000', 'SEN - SAB, MIN', '9:00 AM - 8:00 PM, 9:00 AM - 5:00 PM', '+622129704995', NULL),
(19, NULL, 'Klinik Cikajang', 'Jalan Cikajang Raya No.1,RT.1/RW.5, Petogogan,Kby. Baru,Kota Jakarta Selatan, Daerah Khusus Ibukota Jakarta', '-6.234165', '106.803948', 8, 'IDR 40.000', 'SEN-MIN', '12:00AM-11:55PM', '+622129704996', NULL),
(20, NULL, '\r\nKlinik & Apotik Amerta 24 Jam', 'Jalan Palatehan 1 No.30,RT.2/RW.1, Melawai,Kby. Baru,Kota Jakarta Selatan, Daerah Khusus Ibukota Jakarta', '-6.234165', '106.803948', 10, 'IDR 50.000 - 150.000', 'SEN-MIN', '7:00AM-9:00PM', '+622129704996', NULL),
(21, NULL, 'MHDC (Mulia Health Dental Care) ', 'Menara Mulia, Lower Ground Suite 018,Jl. Jend Gatot Subroto Kav 9-11,Daerah Khusus Ibukota Jakarta', '-6.2245543', '106.8146663', 3, 'IDR 100.000 - 120.000', 'SEN-JUM', '9:00AM-5:00PM', '+622129704993', NULL),
(22, NULL, 'Bidakara Medical Center', 'Bina Sentra Building Ground Floor, JL. Jenderal Gatot Soebroto, Kavling 71-73, Pancoran, Kompleks Bidakara,', '-6.2229374', '106.8129896', 10, 'IDR 180.000 - 300.000', 'SEN-JUM', '7:00AM-7:00PM', '+622129704993', NULL),
(23, NULL, 'Medikaloka', 'edung Graha Irama Lantai M & Lt. 2, Jl. H.R. Rasuna Said Blok X-I Kav. 1-2, Kuningan,Kuningan Tim.,Setia Budi,Kota Jakarta Selatan', '-6.2337517', '106.8294453', 10, 'IDR 50.000 - 300.000', 'SEN-SAB', '9:00AM-5:00PM', '+622129704996', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_category`
--
ALTER TABLE `data_category`
  ADD PRIMARY KEY (`id_category`);

--
-- Indexes for table `data_clinic`
--
ALTER TABLE `data_clinic`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category` (`category`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_category`
--
ALTER TABLE `data_category`
  MODIFY `id_category` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `data_clinic`
--
ALTER TABLE `data_clinic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `data_clinic`
--
ALTER TABLE `data_clinic`
  ADD CONSTRAINT `category` FOREIGN KEY (`category`) REFERENCES `data_category` (`id_category`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
