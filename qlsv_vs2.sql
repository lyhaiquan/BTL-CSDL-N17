-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: quanlysinhvien
-- ------------------------------------------------------
-- Server version	8.0.43

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `chuongtrinhdaotao`
--

DROP TABLE IF EXISTS `chuongtrinhdaotao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chuongtrinhdaotao` (
  `ma_chuong_trinh` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `ten_chuong_trinh` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `so_tin_chi` float DEFAULT NULL,
  `nam_bat_dau` int DEFAULT NULL,
  PRIMARY KEY (`ma_chuong_trinh`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chuongtrinhdaotao`
--

LOCK TABLES `chuongtrinhdaotao` WRITE;
/*!40000 ALTER TABLE `chuongtrinhdaotao` DISABLE KEYS */;
INSERT INTO `chuongtrinhdaotao` VALUES ('ATTT','An toàn thông tin',155,2020),('CNSH','Công nghệ sinh học',145,2020),('CNTT','Công nghê thông tin ',120,2022),('DL','Du lịch',120,2023),('HTTT','Hệ thống thông tin',140,2022),('KMHT','Khoa học máy tính',150,2020),('KT','Kế toán',130,2022),('KTDT','Kỹ thuật điện tử',150,2019),('KTPM','Kỹ thuật phần mềm',150,2021),('KTXD','Kỹ thuật xây dựng',160,2020),('LKT','Luật kinh tế',130,2021),('LOG','Logistics và Quản lý chuỗi cung ứng',135,2021),('MKT','Marketing',125,2023),('NNA','Ngôn ngữ Anh',130,2022),('NNT','Ngôn ngữ Trung',130,2020),('QTDL','Quản trị du lịch và lữ hành',120,2023),('QTKD','Quản trị kinh doanh',120,2021),('QTKS','Quản trị khách sạn',125,2021),('TC','Tài chính',130,2020),('TCNH','Tài chính - Ngân hàng',130,2022),('TDH','Tự động hóa',150,2019),('TKDH','Thiết kế đồ họa',135,2022);
/*!40000 ALTER TABLE `chuongtrinhdaotao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lophocphan`
--

DROP TABLE IF EXISTS `lophocphan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lophocphan` (
  `ma_lop_hoc_phan` int NOT NULL AUTO_INCREMENT,
  `hoc_ki` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `nam_hoc` int NOT NULL,
  `ma_mon_hoc` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `ma_nhan_vien` int NOT NULL DEFAULT '0',
  `ngon_ngu_giang_day` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `mo_ta` text COLLATE utf8mb4_general_ci NOT NULL,
  `gioi_han_so_luong_sv` int NOT NULL,
  PRIMARY KEY (`ma_lop_hoc_phan`),
  KEY `FK_lophocphan_monhoc` (`ma_mon_hoc`),
  KEY `FK_lophocphan_nhanvien` (`ma_nhan_vien`),
  CONSTRAINT `FK_lophocphan_monhoc` FOREIGN KEY (`ma_mon_hoc`) REFERENCES `monhoc` (`ma_mon_hoc`),
  CONSTRAINT `FK_lophocphan_nhanvien` FOREIGN KEY (`ma_nhan_vien`) REFERENCES `nhanvien` (`ma_nhan_vien`)
) ENGINE=InnoDB AUTO_INCREMENT=156 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lophocphan`
--

LOCK TABLES `lophocphan` WRITE;
/*!40000 ALTER TABLE `lophocphan` DISABLE KEYS */;
INSERT INTO `lophocphan` VALUES (3,'KH1',2022,'TRR1',5,'Tiếng Việt','',40),(5,'KH1',2025,'TRR2',7,'Tiếng Việt','',120),(6,'KH2',2025,'CSKH',2,'Tiếng Anh','',50),(7,'KH1',2025,'MMT',1,'Tiếng Việt','bạn sẽ được đối mặt với thử thách lớn nhât từ đầu năm học',80),(8,'HK2',2025,'CSDL',6,'Tiếng Anh và Tiếng Việt','',200),(101,'HK1',2024,'CSDL',1,'Tiếng Việt','Cung cấp kiến thức nền tảng về thiết kế và truy vấn CSDL quan hệ.',150),(102,'HK1',2024,'MMT',4,'Tiếng Việt','Sinh viên sẽ được học về mô hình OSI, TCP/IP và thực hành cấu hình mạng.',100),(103,'HK1',2024,'OOP',2,'Tiếng Việt','Tập trung vào 4 tính chất cốt lõi của lập trình hướng đối tượng.',120),(104,'HK2',2024,'CSDL',8,'Tiếng Việt','Lớp nâng cao, tập trung vào tối ưu hóa và các hệ quản trị CSDL phổ biến.',80),(105,'HK2',2024,'TRR1',1,'Tiếng Việt','Yêu cầu tư duy logic và khả năng chứng minh toán học.',200),(106,'HK2',2024,'MKT-CB',5,'Tiếng Việt','Học phần giới thiệu về 4P trong Marketing và nghiên cứu thị trường.',70),(107,'HK1',2025,'KTLT',10,'Tiếng Việt','Môn học khó, yêu cầu sinh viên nắm vững kiến trúc máy tính ở mức độ thấp.',50),(108,'HK1',2025,'AI',16,'Tiếng Anh','Yêu cầu kiến thức vững về Toán và Lập trình. Ngôn ngữ giảng dạy chính là Tiếng Anh.',40),(109,'HK1',2025,'WEB',20,'Tiếng Việt','Sinh viên sẽ làm đồ án xây dựng một website hoàn chỉnh cuối kỳ.',90),(110,'HK2',2025,'ML',16,'Tiếng Anh','Tập trung vào các thuật toán học máy và ứng dụng thực tế.',45),(111,'HK2',2025,'OS',14,'Tiếng Việt','Nghiên cứu về quản lý tiến trình, bộ nhớ và hệ thống file của hệ điều hành.',110),(112,'HK2',2025,'LOG-CB',6,'Tiếng Việt','Cung cấp cái nhìn tổng quan về ngành Logistics và quản lý chuỗi cung ứng.',80),(113,'HK1',2024,'GT1',17,'Tiếng Việt','Môn đại cương bắt buộc cho tất cả sinh viên khối ngành kỹ thuật.',250),(114,'HK1',2024,'TCKT',19,'Tiếng Việt','Sinh viên học cách đọc hiểu và lập các báo cáo tài chính cơ bản.',130),(115,'HK2',2024,'PPL',22,'Tiếng Anh','Nghiên cứu so sánh các mô hình lập trình như Functional, Imperative, Logic.',60),(116,'HK1',2025,'CSKH',5,'Tiếng Việt','Lớp học kỹ năng mềm, tập trung vào xử lý các tình huống với khách hàng.',30),(117,'HK2',2025,'TRR2',3,'Tiếng Việt','Nâng cao từ Toán Rời Rạc 1, đi sâu vào lý thuyết đồ thị và tổ hợp.',180),(118,'HK1',2024,'VLDC1',25,'Tiếng Việt','Yêu cầu làm các bài thí nghiệm vật lý để củng cố lý thuyết.',160),(119,'HK1',2023,'CSDL',1,'Tiếng Việt','Lớp dành cho sinh viên năm 2, kiến thức nhập môn.',200),(120,'HK1',2023,'GT1',17,'Tiếng Việt','Lớp đại trà cho sinh viên năm nhất.',300),(121,'HK1',2023,'MMT',4,'Tiếng Việt','Lý thuyết kết hợp với các buổi thực hành tại phòng Lab.',90),(122,'HK2',2023,'OOP',2,'Tiếng Việt','Đồ án cuối kỳ chiếm 50% điểm tổng kết.',150),(123,'HK2',2023,'TRR1',3,'Tiếng Việt','Bao gồm các bài kiểm tra ngắn hàng tuần.',220),(124,'HK1',2024,'AI',16,'Tiếng Anh','Lớp chất lượng cao, sĩ số giới hạn.',35),(125,'HK1',2024,'MKT-CB',11,'Tiếng Việt','Yêu cầu làm việc nhóm và thuyết trình thường xuyên.',80),(126,'HK2',2024,'WEB',20,'Tiếng Việt','Sinh viên được tự chọn công nghệ backend (NodeJS, PHP, Java).',100),(127,'HK2',2024,'OS',14,'Tiếng Việt','Cần có kiến thức nền tảng về Cấu trúc dữ liệu và giải thuật.',130),(128,'HK1',2025,'TCKT',19,'Tiếng Việt','Phân tích các báo cáo tài chính của các công ty niêm yết.',110),(129,'HK1',2025,'QTRR',24,'Tiếng Việt','Môn học chuyên sâu cho sinh viên ngành Tài chính - Ngân hàng.',60),(130,'HK2',2025,'CNSH-DC',18,'Tiếng Việt','Giới thiệu về các kỹ thuật di truyền và ứng dụng trong y học.',90),(131,'HK2',2025,'PPL',22,'Tiếng Anh','Thảo luận về lịch sử và tương lai của các ngôn ngữ lập trình.',55),(132,'HK1',2023,'VLDC1',25,'Tiếng Việt','Lớp học phần có trợ giảng hỗ trợ ngoài giờ.',180),(133,'HK2',2023,'LOG-CB',7,'Tiếng Việt','Có các chuyến đi thực tế tại các trung tâm logistics.',75),(134,'HK1',2024,'TRR2',1,'Tiếng Việt','Tập trung vào các thuật toán trên đồ thị và ứng dụng.',160),(135,'HK2',2024,'ML',22,'Tiếng Anh','Yêu cầu sinh viên tham gia các cuộc thi Kaggle nhỏ.',40),(136,'HK1',2026,'CSDL',8,'Tiếng Việt','Lớp học trực tuyến kết hợp với các buổi học tập trung.',120),(137,'HK1',2026,'OOP',10,'Tiếng Việt','Dự án cuối kỳ: Xây dựng một phần mềm quản lý nhỏ.',100),(138,'HK2',2026,'MMT',12,'Tiếng Việt','Thực hành trên các thiết bị mạng Cisco thật.',80),(139,'HK2',2026,'AI',16,'Tiếng Anh','Nghiên cứu chuyên sâu về mạng neural và học sâu (Deep Learning).',40),(140,'HK1',2023,'MKT-CB',11,'Tiếng Việt','Phân tích các chiến dịch marketing thành công trên thế giới.',90),(141,'HK2',2023,'TCKT',19,'Tiếng Việt','Thực hành trên phần mềm kế toán MISA.',110),(142,'HK1',2024,'OS',20,'Tiếng Việt','Tìm hiểu về lập trình hệ thống và kernel.',70),(143,'HK2',2024,'GT1',17,'Tiếng Việt','Lớp bổ trợ kiến thức cho sinh viên gặp khó khăn.',100),(144,'HK1',2025,'CSKH',7,'Tiếng Việt','Thực hành đóng vai và giải quyết các tình huống khủng hoảng.',35),(145,'HK2',2025,'WEB',14,'Tiếng Việt','Tập trung vào các kỹ thuật tối ưu hóa hiệu năng và SEO cho website.',85),(146,'HK1',2026,'TRR1',3,'Tiếng Việt','Lớp học dành cho các sinh viên đăng ký học lại.',150),(147,'HK2',2026,'ML',22,'Tiếng Anh','Mỗi nhóm sẽ trình bày một bài báo khoa học về Học máy.',40),(148,'HK1',2024,'KTLT',10,'Tiếng Việt','Lớp học ban đêm dành cho sinh viên hệ tại chức.',60),(149,'HK2',2024,'LOG-CB',13,'Tiếng Việt','Mô phỏng quy trình vận hành của một chuỗi cung ứng hoàn chỉnh.',70),(150,'HK1',2025,'CNSH-DC',18,'Tiếng Việt','Các buổi học trong phòng thí nghiệm chiếm 50% thời lượng.',80),(151,'HK2',2025,'QTRR',24,'Tiếng Việt','Phân tích rủi ro thị trường chứng khoán Việt Nam.',50),(152,'HK1',2026,'GT1',21,'Tiếng Việt','Chương trình tiên tiến, giảng dạy kết hợp tài liệu tiếng Anh.',120),(153,'HK2',2026,'CSDL',1,'Tiếng Việt','Tập trung vào Big Data và các hệ CSDL NoSQL như MongoDB.',90),(154,'HK1',2023,'OOP',2,'Tiếng Việt','Lớp học theo dự án, sinh viên tự do chọn đề tài.',100),(155,'HK2',2023,'MMT',4,'Tiếng Việt','Thi cuối kỳ bao gồm cả phần lý thuyết và thực hành.',95);
/*!40000 ALTER TABLE `lophocphan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monhoc`
--

DROP TABLE IF EXISTS `monhoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `monhoc` (
  `ma_mon_hoc` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `ten_mon_hoc` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `so_tin_chi` float DEFAULT '0',
  `nam_bat_dau_ap_dung` int DEFAULT '0',
  `the_loai` varchar(50) COLLATE utf8mb4_general_ci DEFAULT '0',
  `mo_ta_tom_tat` varchar(1024) COLLATE utf8mb4_general_ci DEFAULT '0',
  `mo_ta_day_du` text COLLATE utf8mb4_general_ci,
  `tai_lieu_tham_khao` varchar(1024) COLLATE utf8mb4_general_ci DEFAULT '0',
  `muc_tieu_dau_ra` varchar(1024) COLLATE utf8mb4_general_ci DEFAULT '0',
  `hinh_thuc_dao_tao` varchar(1024) COLLATE utf8mb4_general_ci DEFAULT '0',
  `ma_chuong_trinh` varchar(50) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`ma_mon_hoc`),
  KEY `FK_monhoc_chuongtrinhdaotao` (`ma_chuong_trinh`),
  CONSTRAINT `FK_monhoc_chuongtrinhdaotao` FOREIGN KEY (`ma_chuong_trinh`) REFERENCES `chuongtrinhdaotao` (`ma_chuong_trinh`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monhoc`
--

LOCK TABLES `monhoc` WRITE;
/*!40000 ALTER TABLE `monhoc` DISABLE KEYS */;
INSERT INTO `monhoc` VALUES ('AI','Trí tuệ nhân tạo',4,2023,'Bắt Buộc','Giới thiệu các thuật toán tìm kiếm, biểu diễn tri thức và học máy.',NULL,'Artificial Intelligence: A Modern Approach by Stuart Russell and Peter Norvig','Hiểu và triển khai được các thuật toán AI cơ bản.','Lập trình đồ án cuối kỳ','KMHT'),('CNSH-DC','Công nghệ sinh học đại cương',3,2020,'Bắt Buộc','Giới thiệu về sinh học phân tử, kỹ thuật di truyền và ứng dụng.',NULL,'Brock Biology of Microorganisms','Hiểu các nguyên lý cơ bản và ứng dụng của công nghệ sinh học trong đời sống.','Trắc nghiệm','CNSH'),('CSDL','Cơ sở dữ liệu',3,2022,'Bắt Buộc','Môn học cung cấp kiến thức về database cơ bản',NULL,'giáo trình CSDL PTIT 2022','Sinh viên nắm được kiến thức cơ bản về cơ sở dữ liệu','Trắc nghiệ','CNTT'),('CSKH','Chăm sóc khách hàng',3,2021,'Tự Chọn','0',NULL,'giao trình tự chọn','0','vấn đáp','QTKD'),('GT1','Giải tích 1',3,2020,'Bắt Buộc','Bao gồm giới hạn, đạo hàm, tích phân và ứng dụng.',NULL,'Calculus by James Stewart','Thành thạo các kỹ thuật tính toán vi tích phân cơ bản.','Tự luận','CNTT'),('KTLT','Kiến trúc và Lập trình máy tính',4,2021,'Bắt Buộc','Giới thiệu về kiến trúc máy tính và hợp ngữ (Assembly).',NULL,'Computer Organization and Design by Patterson & Hennessy','Hiểu cách máy tính hoạt động ở mức độ thấp, cách viết các chương trình đơn giản bằng hợp ngữ.','Thi thực hành trên máy','KTPM'),('LOG-CB','Logistics và chuỗi cung ứng',3,2021,'Bắt Buộc','Tổng quan về hoạt động logistics, quản trị kho bãi, vận tải.',NULL,'Supply Chain Management by Sunil Chopra','Nắm được vai trò và quy trình của logistics trong doanh nghiệp.','Bài tập tình huống và thi trắc nghiệm','LOG'),('MKT-CB','Marketing căn bản',3,2022,'Bắt Buộc','Tổng quan về thị trường, sản phẩm, giá, phân phối và xúc tiến.',NULL,'Principles of Marketing by Philip Kotler','Xây dựng được một kế hoạch marketing cơ bản cho một sản phẩm/dịch vụ.','Thuyết trình nhóm và tự luận','QTKD'),('ML','Học máy',4,2023,'Bắt Buộc','Tập trung vào các mô hình học có giám sát và không giám sát.',NULL,'Introduction to Machine Learning with Python','Xây dựng và đánh giá được các mô hình dự báo, phân loại.','Thi thực hành và báo cáo dự án','KMHT'),('MMT','Mạng máy tính',4,2019,'Bắt buộc','cung cấp kiến thức về mô hình mạng',NULL,'Mạng máy tính thầy Xuân Anh','Hiểu rõ mô hình OSI/TCP IP, cấu hình mạng cơ bản, tư duy lập trình mạng cơ bản, xây dụng hệ thống mạng cơ bản','Trắc nghiệm đề riêng của thấy XA','KMHT'),('OOP','Lập trình hướng đối tượng',3,2022,'Bắt Buộc','Cung cấp tư duy lập trình hướng đối tượng với Java/C++.',NULL,'Giáo trình Lập trình hướng đối tượng','Thành thạo 4 tính chất (kế thừa, đóng gói, đa hình, trừu tượng) và áp dụng vào dự án.','Bài tập lớn và thi vấn đáp','CNTT'),('OS','Hệ điều hành',3,2021,'Bắt Buộc','Nghiên cứu về quản lý tiến trình, bộ nhớ, và hệ thống file.',NULL,'Operating System Concepts by Silberschatz, Galvin, Gagne','Hiểu rõ cách thức hoạt động và các thành phần cốt lõi của một hệ điều hành.','Tự luận','CNTT'),('PPL','Nguyên lý ngôn ngữ lập trình',3,2020,'Tự Chọn','Nghiên cứu các mô hình và đặc điểm của các ngôn ngữ lập trình.',NULL,'Concepts of Programming Languages by Robert W. Sebesta','Phân tích và so sánh được ưu nhược điểm của các ngôn ngữ lập trình khác nhau.','Tự luận và nghiên cứu bài báo','KMHT'),('QTRR','Quản trị rủi ro',3,2022,'Tự Chọn','Nhận diện, phân tích và xử lý các rủi ro trong tài chính.',NULL,'Giáo trình Quản trị rủi ro tài chính','Xây dựng được chiến lược phòng ngừa rủi ro cho một danh mục đầu tư.','Thuyết trình và tự luận','TCNH'),('TCKT','Tài chính kế toán',3,2021,'Bắt Buộc','Nhập môn về các nguyên lý tài chính và hạch toán kế toán.',NULL,'Giáo trình Nguyên lý kế toán','Đọc và hiểu được các báo cáo tài chính cơ bản của doanh nghiệp.','Trắc nghiệm và bài tập tình huống','KT'),('TRR1','Toán Rời Rạc1',3,2020,'Bắt Buộc','Môn học này cung cấp kiến thức về toán rời rạc',NULL,'giáo trình toán rời rạc','Sinh viên nắm được kiến thức toán rời rạc','tự luận','CNTT'),('TRR2','Toán Rời Rạc2',3,2020,'Bắt Buộc','Môn học này cung cấp kiến thức về toán rời rạc',NULL,'giáo trình toán rời rạc','Sinh viên nắm được kiến thức toán rời rạc','tự luận','CNTT'),('VLDC1','Vật lý đại cương 1',3,2020,'Bắt Buộc','Cung cấp kiến thức nền tảng về cơ học, nhiệt học và quang học.',NULL,'University Physics with Modern Physics by Young & Freedman','Áp dụng các định luật vật lý để giải các bài toán kỹ thuật cơ bản.','Tự luận và thi thí nghiệm','KTDT'),('WEB','Phát triển ứng dụng Web',3,2022,'Bắt Buộc','Dạy về HTML, CSS, JavaScript và các framework phía client/server.',NULL,'Tài liệu nội bộ khoa CNTT','Xây dựng được một ứng dụng web hoàn chỉnh có tương tác với CSDL.','Đồ án cuối kỳ','KTPM');
/*!40000 ALTER TABLE `monhoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nguoidung`
--

DROP TABLE IF EXISTS `nguoidung`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nguoidung` (
  `ten_nguoi_dung` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `mat_khau` varchar(1024) COLLATE utf8mb4_general_ci NOT NULL,
  `the_loai` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `ma_sinh_vien_nguoi_dung` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ma_nhan_vien_nguoi_dung` int DEFAULT NULL,
  `email` varchar(1024) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`ten_nguoi_dung`),
  KEY `FK__nhanvien_nguoidung` (`ma_nhan_vien_nguoi_dung`),
  KEY `FK__sinhvien_nguoidung` (`ma_sinh_vien_nguoi_dung`),
  CONSTRAINT `FK__nhanvien_nguoidung` FOREIGN KEY (`ma_nhan_vien_nguoi_dung`) REFERENCES `nhanvien` (`ma_nhan_vien`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `FK__sinhvien_nguoidung` FOREIGN KEY (`ma_sinh_vien_nguoi_dung`) REFERENCES `sinhvien` (`ma_sinh_vien`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nguoidung`
--

LOCK TABLES `nguoidung` WRITE;
/*!40000 ALTER TABLE `nguoidung` DISABLE KEYS */;
INSERT INTO `nguoidung` VALUES ('anhbtp62','123456','Sinh viên','62',NULL,'anh.btp@st.edu.vn'),('anhdtn65','123456','Sinh viên','65',NULL,'anh.dtn@st.edu.vn'),('anhnt64','123456','Sinh viên','64',NULL,'anh.nt@st.edu.vn'),('anhtm23','123456','Sinh viên','23',NULL,'anh.tm@st.edu.vn'),('anhtt34','123456','Sinh viên','34',NULL,'anh.tt@st.edu.vn'),('anhttm68','123456','Sinh viên','68',NULL,'anh.ttm@st.edu.vn'),('anhv10','123456','Giảng viên',NULL,10,'an.hv@school.edu.vn'),('anhvtn11','123456','Giảng viên',NULL,11,'anh.vtn@school.edu.vn'),('bachtv16','123456','Trưởng khoa',NULL,16,'bach.tv@school.edu.vn'),('baodq18','123456','Nhân viên IT',NULL,18,'bao.dq@school.edu.vn'),('baopg42','123456','Sinh viên','42',NULL,'bao.pg@st.edu.vn'),('bichlt40','123456','Sinh viên','40',NULL,'bich.lt@st.edu.vn'),('binhpt17','123456','Sinh viên','17',NULL,'binh.pt@st.edu.vn'),('chienmv18','123456','Sinh viên','18',NULL,'chien.mv@st.edu.vn'),('chiptk19','123456','Kế toán',NULL,19,'chi.ptk@school.edu.vn'),('cuonghv46','123456','Sinh viên','46',NULL,'cuong.hv@st.edu.vn'),('dattv58','123456','Sinh viên','58',NULL,'dat.tv@st.edu.vn'),('ducdm12','123456','Chuyên viên',NULL,12,'duc.dm@school.edu.vn'),('ducvm60','123456','Sinh viên','60',NULL,'duc.vm@st.edu.vn'),('dungba28','123456','Sinh viên','28',NULL,'dung.ba@st.edu.vn'),('dungdt13','123456','Sinh viên','13',NULL,'dung.dt@st.edu.vn'),('duongtt75','123456','Sinh viên','75',NULL,'duong.tt@st.edu.vn'),('hadt15','123456','Sinh viên','15',NULL,'ha.dt@st.edu.vn'),('hahaha','12345','sinh viên','05',NULL,NULL),('hainq56','123456','Sinh viên','56',NULL,'hai.nq@st.edu.vn'),('hangdt23','123456','Thư ký',NULL,23,'hang.dt@school.edu.vn'),('hant73','123456','Sinh viên','73',NULL,'ha.nt@st.edu.vn'),('hieuhm29','123456','Sinh viên','29',NULL,'hieu.hm@st.edu.vn'),('hoamt70','123456','Sinh viên','70',NULL,'hoa.mt@st.edu.vn'),('hoangbv10','123456','Sinh viên','10',NULL,'hoang.bv@st.edu.vn'),('hongbt79','123456','Sinh viên','79',NULL,'hong.bt@st.edu.vn'),('honglt32','123456','Sinh viên','32',NULL,'hong.lt@st.edu.vn'),('huhuhu','12345','sinh viên','01',NULL,NULL),('huongpt9','123456','Giáo vụ',NULL,9,'huong.pt@school.edu.vn'),('huyenlt21','123456','Chuyên viên',NULL,21,'huyen.lt@school.edu.vn'),('huyng12','123456','Sinh viên','12',NULL,'huy.ng@st.edu.vn'),('khoapv76','123456','Sinh viên','76',NULL,'khoa.pv@st.edu.vn'),('khoidm48','123456','Sinh viên','48',NULL,'khoi.dm@st.edu.vn'),('kiennd39','123456','Sinh viên','39',NULL,'kien.nd@st.edu.vn'),('lamdv61','123456','Sinh viên','61',NULL,'lam.dv@st.edu.vn'),('lanmt36','123456','Sinh viên','36',NULL,'lan.mt@st.edu.vn'),('lienhtk63','123456','Sinh viên','63',NULL,'lien.htk@st.edu.vn'),('linhdt15','123456','Chuyên viên',NULL,15,'linh.dt@school.edu.vn'),('linhvt43','123456','Sinh viên','43',NULL,'linh.vt@st.edu.vn'),('longth51','123456','Sinh viên','51',NULL,'long.th@st.edu.vn'),('lyhaiquan','12345','giảng viên',NULL,7,NULL),('maiht11','123456','Sinh viên','11',NULL,'mai.ht@st.edu.vn'),('maimt17','123456','Giảng viên',NULL,17,'mai.mt@school.edu.vn'),('manhpd24','123456','Sinh viên','24',NULL,'manh.pd@st.edu.vn'),('myptt52','123456','Sinh viên','52',NULL,'my.ptt@st.edu.vn'),('mytth55','123456','Sinh viên','55',NULL,'my.tth@st.edu.vn'),('namlv22','123456','Sinh viên','22',NULL,'nam.lv@st.edu.vn'),('ngadt44','123456','Sinh viên','44',NULL,'nga.dt@st.edu.vn'),('ngavt77','123456','Sinh viên','77',NULL,'nga.vt@st.edu.vn'),('ngoclt19','123456','Sinh viên','19',NULL,'ngoc.lt@st.edu.vn'),('ngonguyenthanhthao','12345','giảng viên',NULL,6,NULL),('nhatdm33','123456','Sinh viên','33',NULL,'nhat.dm@st.edu.vn'),('nhatvm22','123456','Giảng viên',NULL,22,'nhat.vm@school.edu.vn'),('nhunglth57','123456','Sinh viên','57',NULL,'nhung.lth@st.edu.vn'),('nhungtt38','123456','Sinh viên','38',NULL,'nhung.tt@st.edu.vn'),('nhutn25','123456','Giảng viên',NULL,25,'nhu.tn@school.edu.vn'),('phucdg50','123456','Sinh viên','50',NULL,'phuc.dg@st.edu.vn'),('phuclh71','123456','Sinh viên','71',NULL,'phuc.lh@st.edu.vn'),('phuongnt21','123456','Sinh viên','21',NULL,'phuong.nt@st.edu.vn'),('quangbm45','123456','Sinh viên','45',NULL,'quang.bm@st.edu.vn'),('quanla14','123456','Sinh viên','14',NULL,'quan.la@st.edu.vn'),('quanlh7','123456','Chuyên viên',NULL,7,'quan.lh@school.edu.vn'),('quantm72','123456','Sinh viên','72',NULL,'quan.tm@st.edu.vn'),('samlv24','123456','Trưởng phòng',NULL,24,'sam.lv@school.edu.vn'),('sonlv37','123456','Sinh viên','37',NULL,'son.lv@st.edu.vn'),('taima53','123456','Sinh viên','53',NULL,'tai.ma@st.edu.vn'),('taipv35','123456','Sinh viên','35',NULL,'tai.pv@st.edu.vn'),('tamhm80','123456','Sinh viên','80',NULL,'tam.hm@st.edu.vn'),('tamlm66','123456','Sinh viên','66',NULL,'tam.lm@st.edu.vn'),('tamnt47','123456','Sinh viên','47',NULL,'tam.nt@st.edu.vn'),('thangdv31','123456','Sinh viên','31',NULL,'thang.dv@st.edu.vn'),('thangld74','123456','Sinh viên','74',NULL,'thang.ld@st.edu.vn'),('thanhnv1','123456','Giảng viên',NULL,1,'thanh.nv@school.edu.vn'),('thaonnt6','123456','Chuyên viên',NULL,6,'thao.nnt@school.edu.vn'),('thaont30','123456','Sinh viên','30',NULL,'thao.nt@st.edu.vn'),('thientt4','123456','Giảng viên',NULL,4,'thien.tt@school.edu.vn'),('thubt13','123456','Giáo vụ',NULL,13,'thu.bt@school.edu.vn'),('thuht25','123456','Sinh viên','25',NULL,'thu.ht@st.edu.vn'),('trangdth27','123456','Sinh viên','27',NULL,'trang.dth@st.edu.vn'),('trangth5','123456','Chuyên viên',NULL,5,'trang.th@school.edu.vn'),('tranhatrang','12345','giảng viên',NULL,5,NULL),('truongnx20','123456','Giảng viên',NULL,20,'truong.nx@school.edu.vn'),('tuanlm8','123456','Trưởng phòng',NULL,8,'tuan.lm@school.edu.vn'),('tuantq41','123456','Sinh viên','41',NULL,'tuan.tq@st.edu.vn'),('tudt78','123456','Sinh viên','78',NULL,'tu.dt@st.edu.vn'),('tuha14','123456','Giảng viên',NULL,14,'tu.ha@school.edu.vn'),('tungvd26','123456','Sinh viên','26',NULL,'tung.vd@st.edu.vn'),('tupa69','123456','Sinh viên','69',NULL,'tu.pa@st.edu.vn'),('tutm16','123456','Sinh viên','16',NULL,'tu.tm@st.edu.vn'),('tuyetpt59','123456','Sinh viên','59',NULL,'tuyet.pt@st.edu.vn'),('vannt3','123456','Giảng viên',NULL,3,'van.nt2@school.edu.vn'),('vannth2','123456','Giảng viên',NULL,2,'van.nt@school.edu.vn'),('vietdh67','123456','Sinh viên','67',NULL,'viet.dh@st.edu.vn'),('vietlq54','123456','Sinh viên','54',NULL,'viet.lq@st.edu.vn'),('vinhtq20','123456','Sinh viên','20',NULL,'vinh.tq@st.edu.vn'),('yenlt49','123456','Sinh viên','49',NULL,'yen.lt@st.edu.vn');
/*!40000 ALTER TABLE `nguoidung` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nhanvien`
--

DROP TABLE IF EXISTS `nhanvien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nhanvien` (
  `ma_nhan_vien` int NOT NULL AUTO_INCREMENT,
  `ho_dem` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ten` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `the_loai` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ngay_sinh` date DEFAULT NULL,
  `gioi_tinh` tinyint DEFAULT NULL,
  `email` varchar(1024) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`ma_nhan_vien`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nhanvien`
--

LOCK TABLES `nhanvien` WRITE;
/*!40000 ALTER TABLE `nhanvien` DISABLE KEYS */;
INSERT INTO `nhanvien` VALUES (1,'Nguyên Văn','Thành','giảng viên','1990-01-15',1,''),(2,'Nguyên Thị','Vân','giảng viên','1999-10-10',0,''),(3,'Nguyên Thanh','Vân','giảng viên','1999-10-20',0,''),(4,'Trần Thanh','Thiện','giảng viên','1970-02-19',1,''),(5,'Trần Hà','Trang','chuyên viên','2005-06-14',0,''),(6,'Ngô Nguyễn Thanh','Thảo','chuyên viên','2005-03-24',0,''),(7,'Lý Hải','Quân','chuyên viên','2005-07-02',1,''),(8,'Lê Minh','Tuấn','Trưởng phòng','1985-08-22',1,'tuan.lm@school.edu.vn'),(9,'Phạm Thị','Hương','Giáo vụ','1992-04-12',0,'huong.pt@school.edu.vn'),(10,'Hoàng Văn','An','Giảng viên','1988-11-30',1,'an.hv@school.edu.vn'),(11,'Vũ Thị Ngọc','Anh','Giảng viên','1995-07-18',0,'anh.vtn@school.edu.vn'),(12,'Đặng Minh','Đức','Chuyên viên','1998-09-05',1,'duc.dm@school.edu.vn'),(13,'Bùi Thị','Thu','Giáo vụ','1993-01-25',0,'thu.bt@school.edu.vn'),(14,'Hồ Anh','Tú','Giảng viên','1982-03-10',1,'tu.ha@school.edu.vn'),(15,'Đỗ Thị','Linh','Chuyên viên','2000-12-08',0,'linh.dt@school.edu.vn'),(16,'Trịnh Văn','Bách','Trưởng khoa','1975-06-20',1,'bach.tv@school.edu.vn'),(17,'Mai Thị','Mai','Giảng viên','1997-02-28',0,'mai.mt@school.edu.vn'),(18,'Dương Quốc','Bảo','Nhân viên IT','1996-10-17',1,'bao.dq@school.edu.vn'),(19,'Phan Thị Kim','Chi','Kế toán','1991-05-21',0,'chi.ptk@school.edu.vn'),(20,'Nguyễn Xuân','Trường','Giảng viên','1989-08-16',1,'truong.nx@school.edu.vn'),(21,'Lưu Thị','Huyền','Chuyên viên','1994-04-03',0,'huyen.lt@school.edu.vn'),(22,'Võ Minh','Nhật','Giảng viên','1990-11-11',1,'nhat.vm@school.edu.vn'),(23,'Đào Thu','Hằng','Thư ký','1998-07-07',0,'hang.dt@school.edu.vn'),(24,'Lại Văn','Sâm','Trưởng phòng','1980-02-02',1,'sam.lv@school.edu.vn'),(25,'Tôn Nữ',' Quỳnh Như','Giảng viên','1996-05-13',0,'nhu.tn@school.edu.vn');
/*!40000 ALTER TABLE `nhanvien` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sinhvien`
--

DROP TABLE IF EXISTS `sinhvien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sinhvien` (
  `ma_sinh_vien` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `ho_dem` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ten` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ngay_sinh` date DEFAULT NULL,
  `nam_nhap_hoc` int DEFAULT '0',
  `ma_chuong_trinh` varchar(50) COLLATE utf8mb4_general_ci DEFAULT '0',
  `gioi_tinh` tinyint DEFAULT '0',
  `email` varchar(1024) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`ma_sinh_vien`),
  KEY `FK_sinhvien_chuongtrinhdaotao` (`ma_chuong_trinh`),
  CONSTRAINT `FK_sinhvien_chuongtrinhdaotao` FOREIGN KEY (`ma_chuong_trinh`) REFERENCES `chuongtrinhdaotao` (`ma_chuong_trinh`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sinhvien`
--

LOCK TABLES `sinhvien` WRITE;
/*!40000 ALTER TABLE `sinhvien` DISABLE KEYS */;
INSERT INTO `sinhvien` VALUES ('01','Lê Nhật','Tùng','2000-10-17',2022,'CNTT',1,NULL),('02','Trần Văn','Phước','2000-01-29',2022,'KMHT',1,NULL),('03','Trần Thúy','Hiền','2003-08-19',2022,'QTKD',0,NULL),('04','Trần Thị Thúy','Kiều','1999-10-17',2022,'KT',0,NULL),('05','Nguyễn Tiến','Linh','1999-10-17',2022,'TC',0,NULL),('06','Phạm Thị','Lan Anh','2004-05-21',2023,'NNA',0,'anh.ptl@st.edu.vn'),('07','Hoàng Minh','Nhật','2004-02-11',2023,'KTPM',1,'nhat.hm@st.edu.vn'),('08','Vũ Ngọc','Huyền','2004-09-03',2023,'MKT',0,'huyen.vn@st.edu.vn'),('09','Đặng Quốc','Bảo','2003-11-25',2022,'ATTT',1,'bao.dq@st.edu.vn'),('10','Bùi Việt','Hoàng','2002-07-30',2021,'LOG',1,'hoang.bv@st.edu.vn'),('11','Hồ Thị','Mai','2002-12-01',2021,'DL',0,'mai.ht@st.edu.vn'),('12','Ngô Gia','Huy','2003-06-15',2022,'HTTT',1,'huy.ng@st.edu.vn'),('13','Dương Thùy','Dung','2004-08-09',2023,'QTKS',0,'dung.dt@st.edu.vn'),('14','Lý Anh','Quân','2001-04-18',2020,'KTDT',1,'quan.la@st.edu.vn'),('15','Đỗ Thị','Hà','2003-03-22',2022,'CNSH',0,'ha.dt@st.edu.vn'),('16','Trương Minh','Tú','2002-01-05',2021,'TKDH',1,'tu.tm@st.edu.vn'),('17','Phan Thanh','Bình','2004-10-14',2023,'LKT',1,'binh.pt@st.edu.vn'),('18','Mai Văn','Chiến','2001-09-28',2020,'TCNH',1,'chien.mv@st.edu.vn'),('19','Lâm Thị','Ngọc','2003-07-07',2022,'NNT',0,'ngoc.lt@st.edu.vn'),('20','Trịnh Quang','Vinh','2002-05-16',2021,'TDH',1,'vinh.tq@st.edu.vn'),('21','Nguyễn Thị','Phương','2004-11-02',2023,'QTKD',0,'phuong.nt@st.edu.vn'),('22','Lê Văn','Nam','2003-01-20',2022,'CNTT',1,'nam.lv@st.edu.vn'),('23','Trần Minh','Anh','2002-08-12',2021,'KMHT',0,'anh.tm@st.edu.vn'),('24','Phạm Đức','Mạnh','2004-04-05',2023,'KTPM',1,'manh.pd@st.edu.vn'),('25','Hoàng Thị','Thu','2001-06-25',2020,'KT',0,'thu.ht@st.edu.vn'),('26','Vũ Đình','Tùng','2003-12-30',2022,'ATTT',1,'tung.vd@st.edu.vn'),('27','Đặng Thị','Huyền Trang','2002-02-18',2021,'MKT',0,'trang.dth@st.edu.vn'),('28','Bùi Anh','Dũng','2004-07-23',2023,'LOG',1,'dung.ba@st.edu.vn'),('29','Hồ Minh','Hiếu','2003-09-11',2022,'HTTT',1,'hieu.hm@st.edu.vn'),('30','Ngô Thị','Thảo','2001-11-09',2020,'NNA',0,'thao.nt@st.edu.vn'),('31','Dương Văn','Thắng','2002-10-01',2021,'KTDT',1,'thang.dv@st.edu.vn'),('32','Lý Thị','Hồng','2004-03-08',2023,'CNSH',0,'hong.lt@st.edu.vn'),('33','Đỗ Minh','Nhật','2003-05-29',2022,'TKDH',1,'nhat.dm@st.edu.vn'),('34','Trương Thị','Ánh','2002-04-27',2021,'LKT',0,'anh.tt@st.edu.vn'),('35','Phan Văn','Tài','2001-02-14',2020,'TCNH',1,'tai.pv@st.edu.vn'),('36','Mai Thị','Lan','2004-01-01',2023,'NNT',0,'lan.mt@st.edu.vn'),('37','Lâm Văn','Sơn','2003-10-23',2022,'TDH',1,'son.lv@st.edu.vn'),('38','Trịnh Thị','Nhung','2002-06-04',2021,'QTDL',0,'nhung.tt@st.edu.vn'),('39','Nguyễn Đức','Kiên','2001-08-24',2020,'KTXD',1,'kien.nd@st.edu.vn'),('40','Lê Thị','Bích','2004-12-12',2023,'TC',0,'bich.lt@st.edu.vn'),('41','Trần Quốc','Tuấn','2003-02-28',2022,'CNTT',1,'tuan.tq@st.edu.vn'),('42','Phạm Gia','Bảo','2002-09-15',2021,'KMHT',1,'bao.pg@st.edu.vn'),('43','Vũ Thùy','Linh','2004-05-01',2023,'QTKD',0,'linh.vt@st.edu.vn'),('44','Đặng Thị','Nga','2001-10-10',2020,'KT',0,'nga.dt@st.edu.vn'),('45','Bùi Minh','Quang','2003-11-05',2022,'TC',1,'quang.bm@st.edu.vn'),('46','Hồ Văn','Cường','2002-01-23',2021,'KTPM',1,'cuong.hv@st.edu.vn'),('47','Ngô Thanh','Tâm','2004-06-30',2023,'MKT',0,'tam.nt@st.edu.vn'),('48','Dương Minh','Khôi','2001-03-12',2020,'ATTT',1,'khoi.dm@st.edu.vn'),('49','Lý Thị','Yến','2003-08-08',2022,'LOG',0,'yen.lt@st.edu.vn'),('50','Đỗ Gia','Phúc','2004-09-19',2023,'HTTT',1,'phuc.dg@st.edu.vn'),('51','Trương Hoàng','Long','2002-07-02',2021,'NNA',1,'long.th@st.edu.vn'),('52','Phan Thị','Thảo My','2003-04-25',2022,'DL',0,'my.ptt@st.edu.vn'),('53','Mai Anh','Tài','2004-11-18',2023,'QTKS',1,'tai.ma@st.edu.vn'),('54','Lâm Quốc','Việt','2001-02-09',2020,'KTDT',1,'viet.lq@st.edu.vn'),('55','Trịnh Thị','Hà My','2002-12-24',2021,'CNSH',0,'my.tth@st.edu.vn'),('56','Nguyễn Quang','Hải','2003-10-03',2022,'TKDH',1,'hai.nq@st.edu.vn'),('57','Lê Thị','Hồng Nhung','2004-01-26',2023,'LKT',0,'nhung.lth@st.edu.vn'),('58','Trần Văn','Đạt','2001-07-11',2020,'TCNH',1,'dat.tv@st.edu.vn'),('59','Phạm Thị','Tuyết','2002-03-06',2021,'NNT',0,'tuyet.pt@st.edu.vn'),('60','Vũ Minh','Đức','2003-05-13',2022,'TDH',1,'duc.vm@st.edu.vn'),('61','Đặng Văn','Lâm','2004-08-31',2023,'QTDL',1,'lam.dv@st.edu.vn'),('62','Bùi Thị','Phương Anh','2001-09-09',2020,'KTXD',0,'anh.btp@st.edu.vn'),('63','Hồ Thị','Kim Liên','2002-11-22',2021,'TC',0,'lien.htk@st.edu.vn'),('64','Ngô Tuấn','Anh','2003-01-07',2022,'CNTT',1,'anh.nt@st.edu.vn'),('65','Dương Thị','Ngọc Ánh','2004-02-14',2023,'KMHT',0,'anh.dtn@st.edu.vn'),('66','Lý Minh','Tâm','2001-05-04',2020,'QTKD',1,'tam.lm@st.edu.vn'),('67','Đỗ Hoàng','Việt','2002-10-18',2021,'KT',1,'viet.dh@st.edu.vn'),('68','Trương Thị','Mai Anh','2003-07-27',2022,'TC',0,'anh.ttm@st.edu.vn'),('69','Phan Anh','Tú','2004-12-05',2023,'KTPM',1,'tu.pa@st.edu.vn'),('70','Mai Thị','Hòa','2001-06-01',2020,'MKT',0,'hoa.mt@st.edu.vn'),('71','Lâm Hoàng','Phúc','2002-08-17',2021,'ATTT',1,'phuc.lh@st.edu.vn'),('72','Trịnh Minh','Quân','2003-09-21',2022,'LOG',1,'quan.tm@st.edu.vn'),('73','Nguyễn Thị','Hà','2004-03-16',2023,'HTTT',0,'ha.nt@st.edu.vn'),('74','Lê Đức','Thắng','2001-11-28',2020,'NNA',1,'thang.ld@st.edu.vn'),('75','Trần Thùy','Dương','2002-05-23',2021,'DL',0,'duong.tt@st.edu.vn'),('76','Phạm Văn','Khoa','2003-02-04',2022,'QTKS',1,'khoa.pv@st.edu.vn'),('77','Vũ Thị','Nga','2004-10-30',2023,'KTDT',0,'nga.vt@st.edu.vn'),('78','Đặng Tuấn','Tú','2001-12-14',2020,'CNSH',1,'tu.dt@st.edu.vn'),('79','Bùi Thị','Hồng','2002-09-07',2021,'TKDH',0,'hong.bt@st.edu.vn'),('80','Hồ Minh','Tâm','2003-11-11',2022,'LKT',1,'tam.hm@st.edu.vn');
/*!40000 ALTER TABLE `sinhvien` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `thamgiahoc`
--

DROP TABLE IF EXISTS `thamgiahoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `thamgiahoc` (
  `ma_lop_hoc_phan` int NOT NULL,
  `ma_sinh_vien` varchar(50) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `diem_chu` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `diem_so` int DEFAULT NULL,
  PRIMARY KEY (`ma_lop_hoc_phan`,`ma_sinh_vien`),
  KEY `FK__sinhvien` (`ma_sinh_vien`,`ma_lop_hoc_phan`) USING BTREE,
  CONSTRAINT `FK_thamgiahoc_lophocphan` FOREIGN KEY (`ma_lop_hoc_phan`) REFERENCES `lophocphan` (`ma_lop_hoc_phan`),
  CONSTRAINT `FK_thamgiahoc_sinhvien` FOREIGN KEY (`ma_sinh_vien`) REFERENCES `sinhvien` (`ma_sinh_vien`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `thamgiahoc`
--

LOCK TABLES `thamgiahoc` WRITE;
/*!40000 ALTER TABLE `thamgiahoc` DISABLE KEYS */;
INSERT INTO `thamgiahoc` VALUES (3,'05',NULL,NULL),(6,'02',NULL,NULL),(7,'03',NULL,NULL),(8,'01',NULL,NULL),(8,'04',NULL,NULL),(101,'12','A',9),(101,'22','F',4),(101,'23','B+',8),(101,'41','C+',7),(101,'64','A',9),(102,'17','A',9),(102,'26','C+',7),(102,'42','B+',8),(102,'48','D',4),(102,'71','F',2),(103,'13','B',7),(103,'21','B+',8),(103,'43','C',6),(103,'66','D+',5),(103,'75','A',9),(104,'15','A',9),(104,'29','C+',7),(104,'45','F',3),(104,'50','B+',8),(104,'68','B',7),(105,'10','B+',8),(105,'24','B',7),(105,'37','C',6),(105,'51','A',9),(105,'62','F',3),(106,'11','A',9),(106,'27','C+',7),(106,'47','D',5),(106,'52','B+',8),(106,'70','B',8),(107,'16','B',7),(107,'33','B+',8),(107,'46','C',6),(107,'56','D+',5),(107,'69','A',9),(108,'14','B+',8),(108,'28','B',7),(108,'44','A',9),(108,'54','C+',7),(108,'72','F',3),(109,'20','A',9),(109,'30','B+',8),(109,'35','B',7),(109,'49','C',6),(109,'58','A',9),(109,'76','D',4),(110,'18','B+',8),(110,'31','B',8),(110,'40','A',9),(110,'55','C+',7),(110,'60','F',4),(111,'19','A',9),(111,'32','B+',8),(111,'38','B',7),(111,'53','C',6),(111,'59','D+',5),(111,'73','A',9),(112,'25','B',8),(112,'34','A',9),(112,'39','C+',7),(112,'57','B+',8),(112,'61','B',8),(112,'79','D',4),(113,'36','A',9),(113,'63','B+',8),(113,'65','B',7),(113,'67','C',6),(113,'74','A',9),(113,'77','F',3),(114,'78','B+',8),(114,'80','B',7),(120,'10','B',7),(121,'11','F',1),(122,'12','A',10),(123,'13','B+',8),(124,'14','A',10),(125,'15','C+',7),(126,'16','B',8),(127,'17','D+',5),(128,'18','A',9),(129,'19','B',7),(130,'20','C',6),(131,'21','A',9),(132,'22','B+',8),(133,'23','D',5),(134,'24','A',9),(135,'25','C+',7),(136,'26','B',8),(137,'27','A',10),(138,'28','F',3),(139,'29','A',10),(140,'30','B',8),(141,'31','C+',7),(142,'32','A',9),(143,'33','D+',5),(144,'34','B+',8),(145,'35','A',9),(146,'36','C',6),(147,'37','B',7),(148,'38','A',9),(149,'39','D',4),(150,'40','B+',8),(151,'41','A',9),(152,'42','F',0),(153,'43','A',10),(154,'44','B',8),(155,'45','C+',7);
/*!40000 ALTER TABLE `thamgiahoc` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-10-17 21:40:31
