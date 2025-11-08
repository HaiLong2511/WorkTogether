-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th8 13, 2022 lúc 08:55 AM
-- Phiên bản máy phục vụ: 5.7.31
-- Phiên bản PHP: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `qlcv1`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chat`
--

DROP TABLE IF EXISTS `chat`;
CREATE TABLE IF NOT EXISTS `chat` (
  `Machatbox` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `MaNV` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `Noidung` text COLLATE utf8_unicode_ci NOT NULL,
  `Ngaygui` date NOT NULL,
  KEY `Machatbox` (`Machatbox`),
  KEY `MaNd` (`MaNV`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chatbox`
--

DROP TABLE IF EXISTS `chatbox`;
CREATE TABLE IF NOT EXISTS `chatbox` (
  `Machatbox` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `Tenchatbox` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Ngaytao` date NOT NULL,
  `MaDV` int(10) NOT NULL,
  PRIMARY KEY (`Machatbox`),
  KEY `MaDV` (`MaDV`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `congviec`
--

DROP TABLE IF EXISTS `congviec`;
CREATE TABLE IF NOT EXISTS `congviec` (
  `MaCV` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `Tieude` text COLLATE utf8_unicode_ci NOT NULL,
  `Noidung` text COLLATE utf8_unicode_ci NOT NULL,
  `Ngaytao` date NOT NULL,
  `MaDV` int(10) NOT NULL,
  `mucdocv` tinyint(4) NOT NULL,
  PRIMARY KEY (`MaCV`),
  KEY `Maphongban` (`MaDV`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `congviec`
--

INSERT INTO `congviec` (`MaCV`, `Tieude`, `Noidung`, `Ngaytao`, `MaDV`, `mucdocv`) VALUES
('CV1', 'Làm đồ án', 'Làm đồ án', '2022-08-09', 7, 2),
('CV10', 'Test luận văn 11', 'If a file needs protection, why would you store it in the storage folder? The only difference is that files in public folder are by default open in opposite to storage location. This mean that you will still need to write the access layer for a files no matter what location you choose. – \r\nBartłomiej Sobieszek\r\n Jun 15, 2017 at 22:55', '2022-08-09', 7, 1),
('CV11', 'Test luận văn 12', 'If a file needs protection, why would you store it in the storage folder? The only difference is that files in public folder are by default open in opposite to storage location. This mean that you will still need to write the access layer for a files no matter what location you choose. – \r\nBartłomiej Sobieszek\r\n Jun 15, 2017 at 22:55', '2022-08-09', 7, 1),
('CV12', 'Test luận văn 13', 'If a file needs protection, why would you store it in the storage folder? The only difference is that files in public folder are by default open in opposite to storage location. This mean that you will still need to write the access layer for a files no matter what location you choose. – \r\nBartłomiej Sobieszek\r\n Jun 15, 2017 at 22:55', '2022-08-09', 7, 1),
('CV13', 'Test luận văn 14', 'If a file needs protection, why would you store it in the storage folder? The only difference is that files in public folder are by default open in opposite to storage location. This mean that you will still need to write the access layer for a files no matter what location you choose. – \r\nBartłomiej Sobieszek\r\n Jun 15, 2017 at 22:55', '2022-08-09', 7, 1),
('CV2', 'Đồ án tin học', 'Làm đồ án', '2022-08-09', 7, 1),
('CV3', 'test luận văn', 'Test web quản lý đánh giá nhân viên', '2022-08-09', 7, 1),
('CV4', 'Test web final', 'Test web final', '2022-08-09', 7, 0),
('CV5', 'Lập trình web bán hàng', 'Lập trình web bán hàng', '2022-08-09', 7, 2),
('CV6', 'Test data', 'Test data', '2022-08-09', 7, 0),
('CV7', 'Thu phí đoàn sinh viên', 'Thu phí đoàn sinh viên', '2022-08-09', 8, 1),
('CV8', 'Test luận văn 9', 'If a file needs protection, why would you store it in the storage folder? The only difference is that files in public folder are by default open in opposite to storage location. This mean that you will still need to write the access layer for a files no matter what location you choose. – \r\nBartłomiej Sobieszek\r\n Jun 15, 2017 at 22:55', '2022-08-09', 7, 1),
('CV9', 'Test luận văn 10', 'If a file needs protection, why would you store it in the storage folder? The only difference is that files in public folder are by default open in opposite to storage location. This mean that you will still need to write the access layer for a files no matter what location you choose. – \r\nBartłomiej Sobieszek\r\n Jun 15, 2017 at 22:55', '2022-08-09', 7, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `congviec_nhanvien`
--

DROP TABLE IF EXISTS `congviec_nhanvien`;
CREATE TABLE IF NOT EXISTS `congviec_nhanvien` (
  `magiao` int(11) NOT NULL AUTO_INCREMENT,
  `MaCV` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `MaNV` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `NgayGiao` date NOT NULL,
  `HanDK` date NOT NULL,
  `HanTT` date DEFAULT NULL,
  `Nhanxet` text COLLATE utf8_unicode_ci,
  `diem` int(10) DEFAULT NULL,
  `Trangthai` tinyint(4) NOT NULL,
  PRIMARY KEY (`magiao`),
  KEY `MaNV` (`MaNV`),
  KEY `MaCV` (`MaCV`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `congviec_nhanvien`
--

INSERT INTO `congviec_nhanvien` (`magiao`, `MaCV`, `MaNV`, `NgayGiao`, `HanDK`, `HanTT`, `Nhanxet`, `diem`, `Trangthai`) VALUES
(1, 'CV1', 'NV7', '2022-08-09', '2022-08-12', NULL, NULL, NULL, 0),
(2, 'CV2', 'NV7', '2022-08-09', '2022-08-12', NULL, NULL, NULL, 0),
(3, 'CV3', 'NV3', '2022-08-09', '2022-08-15', NULL, 'tốt', 8, 3),
(4, 'CV4', 'NV8', '2022-08-09', '2022-08-30', NULL, NULL, NULL, 0),
(5, 'CV5', 'NV8', '2022-08-09', '2022-08-12', NULL, NULL, NULL, 1),
(6, 'CV6', 'NV7', '2022-08-09', '2022-08-17', NULL, NULL, NULL, 0),
(7, 'CV7', 'NV10', '2022-08-09', '2022-08-18', NULL, NULL, NULL, 0),
(8, 'CV8', 'NV3', '2022-08-09', '2022-08-12', NULL, NULL, NULL, 1),
(9, 'CV9', 'NV3', '2022-08-09', '2022-08-12', NULL, NULL, NULL, 0),
(10, 'CV10', 'NV7', '2022-08-09', '2022-08-12', NULL, NULL, NULL, 0),
(11, 'CV11', 'NV7', '2022-08-09', '2022-08-12', NULL, NULL, NULL, 0),
(12, 'CV12', 'NV7', '2022-08-09', '2022-08-12', NULL, NULL, NULL, 0),
(13, 'CV13', 'NV3', '2022-08-09', '2022-08-12', '2022-08-10', NULL, NULL, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donvi`
--

DROP TABLE IF EXISTS `donvi`;
CREATE TABLE IF NOT EXISTS `donvi` (
  `MaDV` int(10) NOT NULL AUTO_INCREMENT,
  `TenPhong` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Mota` text COLLATE utf8_unicode_ci,
  `Matruongphong` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Logo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`MaDV`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `donvi`
--

INSERT INTO `donvi` (`MaDV`, `TenPhong`, `Mota`, `Matruongphong`, `Logo`) VALUES
(1, 'Phòng quản lý nhân sự', 'quản lý đơn vị và nhân viên', '', 'Logo_STU.png'),
(2, 'Phòng quản lý dự án', 'Quản lý dự án', '', NULL),
(7, 'Phòng hành chính', 'Phòng Tổ chức hành chính là Phòng chức năng thuộc bộ máy quản lý, điều hành của bất kỳ cơ quan nào.', 'NV6', 'addlogo.jpg'),
(8, 'Phòng công tác sinh viên', 'Phòng công tác sinh viên', 'NV9', 'addlogo.jpg'),
(9, 'Phòng đoàn', 'Các công tác đoàn, hội.', NULL, 'addlogo.jpg'),
(10, 'Phòng thiết bị', 'Phòng thiết bị', NULL, 'addlogo.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hosocongviec`
--

DROP TABLE IF EXISTS `hosocongviec`;
CREATE TABLE IF NOT EXISTS `hosocongviec` (
  `mahs` int(11) NOT NULL AUTO_INCREMENT,
  `MaCV` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `duongdan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`mahs`),
  KEY `MaCV` (`MaCV`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hosocongviec`
--

INSERT INTO `hosocongviec` (`mahs`, `MaCV`, `duongdan`) VALUES
(1, 'CV1', 'CV1_CV11_2022.06.13_TB 22-107_THONG BAO CHUAN BI HO SO RA TRUONG CUA SINH VIEN DAI HOC K2018.pdf'),
(2, 'CV2', 'CV2_CV11_2022.06.13_TB 22-107_THONG BAO CHUAN BI HO SO RA TRUONG CUA SINH VIEN DAI HOC K2018.pdf'),
(3, 'CV3', 'CV3_CV11_2022.06.13_TB 22-107_THONG BAO CHUAN BI HO SO RA TRUONG CUA SINH VIEN DAI HOC K2018.pdf'),
(4, 'CV4', 'CV4_CV11_2022.06.13_TB 22-107_THONG BAO CHUAN BI HO SO RA TRUONG CUA SINH VIEN DAI HOC K2018.pdf'),
(5, 'CV5', 'CV5_CV11_2022.06.13_TB 22-107_THONG BAO CHUAN BI HO SO RA TRUONG CUA SINH VIEN DAI HOC K2018.pdf'),
(6, 'CV6', 'CV6_CV11_2022.06.13_TB 22-107_THONG BAO CHUAN BI HO SO RA TRUONG CUA SINH VIEN DAI HOC K2018.pdf'),
(7, 'CV7', 'CV7_CV11_2022.06.13_TB 22-107_THONG BAO CHUAN BI HO SO RA TRUONG CUA SINH VIEN DAI HOC K2018.pdf'),
(8, 'CV8', 'CV8_Chức năng.txt'),
(9, 'CV9', 'CV9_Chức năng.txt'),
(10, 'CV10', 'CV10_Chức năng.txt'),
(11, 'CV11', 'CV11_Chức năng.txt'),
(12, 'CV12', 'CV12_Chức năng.txt'),
(13, 'CV13', 'CV13_Chức năng.txt'),
(14, 'CV3', 'CV3_Chức năng.txt');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhanvien`
--

DROP TABLE IF EXISTS `nhanvien`;
CREATE TABLE IF NOT EXISTS `nhanvien` (
  `MaNV` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `TenNV` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `Gt` tinyint(1) NOT NULL,
  `NgaySinh` date NOT NULL,
  `Email` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `SDT` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `DiaChi` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `TenDN` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `MatKhau` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `MaQuyen` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `MaDV` int(10) NOT NULL,
  `Avt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Is_deleted` date DEFAULT NULL,
  `trangthai` int(5) NOT NULL,
  PRIMARY KEY (`MaNV`),
  KEY `MaPhong` (`MaDV`),
  KEY `MaQuyen` (`MaQuyen`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nhanvien`
--

INSERT INTO `nhanvien` (`MaNV`, `TenNV`, `Gt`, `NgaySinh`, `Email`, `SDT`, `DiaChi`, `TenDN`, `MatKhau`, `MaQuyen`, `MaDV`, `Avt`, `Is_deleted`, `trangthai`) VALUES
('NV0', 'ADMIN ', 1, '2000-02-29', 'nguyenhuy27022000@gmail.com', '0376865627', '180, cao lỗ, phường 4, quận 8', 'Stu2022', '$2y$10$VcUC7KwzEUQOOfBoj5uJmudeHLA2hc/YwQt2m9N6P16qFsrOy2RHm', '000', 1, 'admin.jpg', NULL, 1),
('NV1', 'Chính Huy', 1, '2000-04-03', 'huynguyen01@gmail.com', '0985509812', '180 cao lỗ HCM', 'huynguyen01', '$2y$10$HO0rWShNE7gjlOQPYddgN.fd0Y2TPocO8a4mvAwowyS4wi.gN3MAi', '002', 1, 'female.jpg', NULL, 1),
('NV10', 'NV phòng đoàn Minh Thy 04', 1, '2000-09-05', 'minhthy04@gmail.com', '0985509812', 'Hồ Chí Minh', 'minhthy04', '$2y$10$tRcdLg0YAI/9S1Zrdf4EmeE0I70vlXEv/NT4cUoJS8uxD5NREGMvy', '001', 8, 'male.jpg', NULL, 1),
('NV2', 'Minh Thy', 1, '2000-03-02', 'nhminhthy630@gmai.com', '0985509812', '180 cao lỗ', 'minhthy01', '$2y$10$JkrQmsVWAb.MLhOxFdhWZON6Jjr4kStlUXkrnSZldPXyoeuf0lfMm', '001', 1, 'male.jpg', NULL, 1),
('NV3', 'Lê quốc khánh', 0, '2000-01-01', 'lequockhanh@gmail.com', '0123456789', '180 cao lỗ', 'quockhanh', '$2y$10$VcUC7KwzEUQOOfBoj5uJmudeHLA2hc/YwQt2m9N6P16qFsrOy2RHm', '001', 7, 'female.jpg', NULL, 1),
('NV4', 'Tấn An', 0, '2000-02-01', 'tanan@gmail.com', '0985509812', 'Hồ Chí Minh', 'tanan01', '$2y$10$Bwrwgl.0iVXbXtEftyFbJ.UHGcoDtGWHS/m5s9qti6wfIDJGM2t.e', '001', 1, 'female.jpg', NULL, 1),
('NV5', 'Tấn an 02', 0, '2000-02-01', 'tanan02@gmail.com', '0985509812', 'Hồ Chí Minh', 'tanan02', '$2y$10$8drTfAwPUcvZhRxZsaXdg.PxNEQPveWTgDZRuESSCKSKYfk0NNVJa', '001', 2, 'female.jpg', NULL, 1),
('NV6', 'Minh Thy 02', 1, '2000-02-01', 'minhthy02@gmail.com', '0985509812', 'Hồ Chí Minh', 'minhthy02', '$2y$10$HINEh31xiv3yTazzEOW.H.YVzd4yKG.2ozf86uf9o/V.unb74wlYG', '002', 7, 'male.jpg', NULL, 1),
('NV7', 'Hoàng Anh', 0, '2000-02-01', 'hoanganh@gmail.com', '0985509812', 'Hồ Chí Minh', 'hoanganh01', '$2y$10$EfrLiU3vl7t3gvK47u5Lc.oNc.hzlm7ikScDBjIHN5RxAEyOTyjqO', '001', 7, 'female.jpg', NULL, 1),
('NV8', 'Hoàng Anh 02', 0, '2000-02-01', 'hoanganh02@gmai.com', '0985509812', 'Hồ Chí Minh', 'hoanganh02', '$2y$10$ik/imRvHqWxsyCrS8pfNSOxHthikzwiPsUzd23UkaAXHwYQJCm6z.', '001', 7, 'female.jpg', NULL, 1),
('NV9', 'Minh Thy 03', 1, '2000-09-05', 'minhthy3@gmail.com', '0985509812', '180 cao lỗ', 'minhthy03', '$2y$10$JVxxxKTHvMZ/jz25/ohsfOoz7T4LkBRHkVH/jA5N.2T6X5PwGWgta', '002', 8, 'male.jpg', NULL, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhatkycv`
--

DROP TABLE IF EXISTS `nhatkycv`;
CREATE TABLE IF NOT EXISTS `nhatkycv` (
  `Maghi` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `MaCV` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `MaNV` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `NoiDung` text COLLATE utf8_unicode_ci NOT NULL,
  `NgayTao` date NOT NULL,
  `sogio` tinyint(8) DEFAULT NULL,
  `loaink` tinyint(4) NOT NULL,
  PRIMARY KEY (`Maghi`),
  KEY `MaCV` (`MaCV`),
  KEY `MaNV` (`MaNV`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nhatkycv`
--

INSERT INTO `nhatkycv` (`Maghi`, `MaCV`, `MaNV`, `NoiDung`, `NgayTao`, `sogio`, `loaink`) VALUES
('NK0', 'CV1', 'NV6', 'Giao công việc Làm đồ án cho Hoàng Anh', '2022-08-09', NULL, 1),
('NK1', 'CV2', 'NV6', 'Giao công việc Đồ án tin học cho Hoàng Anh', '2022-08-09', NULL, 1),
('NK10', 'CV10', 'NV6', 'Giao công việc Test luận văn 11 cho Hoàng Anh', '2022-08-09', NULL, 1),
('NK11', 'CV11', 'NV6', 'Giao công việc Test luận văn 12 cho Hoàng Anh', '2022-08-09', NULL, 1),
('NK12', 'CV12', 'NV6', 'Giao công việc Test luận văn 13 cho Hoàng Anh', '2022-08-09', NULL, 1),
('NK13', 'CV13', 'NV6', 'Giao công việc Test luận văn 14 cho Lê quốc khánh', '2022-08-09', NULL, 1),
('NK14', 'CV8', 'NV3', 'testing', '2022-08-09', 4, 0),
('NK15', 'CV13', 'NV3', 'Chuyển trạng thái -> Đã Hoàn thành (2022-08-10)', '2022-08-10', NULL, 1),
('NK16', 'CV13', 'NV3', 'Chuyển trạng thái -> Đã Hoàn thành (2022-08-10)', '2022-08-10', NULL, 1),
('NK17', 'CV13', 'NV3', 'Chuyển trạng thái -> Đang thực hiện', '2022-08-10', NULL, 1),
('NK18', 'CV13', 'NV3', 'Chuyển trạng thái -> Đã Hoàn thành (2022-08-10)', '2022-08-10', NULL, 1),
('NK19', 'CV13', 'NV3', 'Chuyển trạng thái -> Đã Hoàn thành (2022-08-10)', '2022-08-10', NULL, 1),
('NK2', 'CV3', 'NV6', 'Giao công việc test luận văn cho Lê quốc khánh', '2022-08-09', NULL, 1),
('NK20', 'CV3', 'NV3', 'Chuyển trạng thái -> Đang thực hiện', '2022-08-10', NULL, 1),
('NK21', 'CV3', 'NV3', 'Chuyển trạng thái -> Đã Hoàn thành (2022-08-10)', '2022-08-10', NULL, 1),
('NK22', 'CV3', 'NV6', 'Nhận xét công việc test luận văn \n Điểm: 8', '2022-08-10', NULL, 1),
('NK23', 'CV3', 'NV6', 'Nhận xét công việc test luận văn \n Điểm: 8', '2022-08-10', NULL, 1),
('NK24', 'CV8', 'NV3', 'Chuyển trạng thái -> Đang thực hiện', '2022-08-10', NULL, 1),
('NK3', 'CV4', 'NV6', 'Giao công việc Test web final cho Hoàng Anh 02', '2022-08-09', NULL, 1),
('NK4', 'CV5', 'NV6', 'Giao công việc Lập trình web bán hàng cho Hoàng Anh 02', '2022-08-09', NULL, 1),
('NK5', 'CV6', 'NV6', 'Giao công việc Test data cho Hoàng Anh', '2022-08-09', NULL, 1),
('NK6', 'CV5', 'NV8', 'Chuyển trạng thái -> Đang thực hiện', '2022-08-09', NULL, 1),
('NK7', 'CV7', 'NV9', 'Giao công việc Thu phí đoàn sinh viên cho NV phòng đoàn Minh Thy 04', '2022-08-09', NULL, 1),
('NK8', 'CV8', 'NV6', 'Giao công việc Test luận văn 9 cho Lê quốc khánh', '2022-08-09', NULL, 1),
('NK9', 'CV9', 'NV6', 'Giao công việc Test luận văn 10 cho Lê quốc khánh', '2022-08-09', NULL, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phanquyen`
--

DROP TABLE IF EXISTS `phanquyen`;
CREATE TABLE IF NOT EXISTS `phanquyen` (
  `MaQuyen` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `TenQuyen` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Mota` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`MaQuyen`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `phanquyen`
--

INSERT INTO `phanquyen` (`MaQuyen`, `TenQuyen`, `Mota`) VALUES
('000', 'Admin', 'Quyền Quản trị hệ thống: có thể tạo đơn vị, tạo user'),
('001', 'Nhân Viên', 'Dành cho nhân viên bình thường: được quyền tạo QA, Báo cáo công việc, Nhận việc'),
('002', 'Trưởng Phòng', 'Quyền dành cho trưởng phòng: được phép tạo công việc, đánh giá công việc, chấm điểm\r\n');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `qa`
--

DROP TABLE IF EXISTS `qa`;
CREATE TABLE IF NOT EXISTS `qa` (
  `MaQA` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `MaCV` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `Noidungqa` text COLLATE utf8_unicode_ci NOT NULL,
  `MaNV` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `ngayghiqa` date NOT NULL,
  PRIMARY KEY (`MaQA`),
  KEY `Macongviec` (`MaCV`),
  KEY `MaNguoiTao` (`MaNV`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chat`
--
ALTER TABLE `chat`
  ADD CONSTRAINT `chat_ibfk_1` FOREIGN KEY (`Machatbox`) REFERENCES `chatbox` (`Machatbox`),
  ADD CONSTRAINT `chat_ibfk_2` FOREIGN KEY (`MaNV`) REFERENCES `nhanvien` (`MaNV`);

--
-- Các ràng buộc cho bảng `chatbox`
--
ALTER TABLE `chatbox`
  ADD CONSTRAINT `chatbox_ibfk_1` FOREIGN KEY (`MaDV`) REFERENCES `donvi` (`MaDV`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `congviec`
--
ALTER TABLE `congviec`
  ADD CONSTRAINT `congviec_ibfk_1` FOREIGN KEY (`MaDV`) REFERENCES `donvi` (`MaDV`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `congviec_nhanvien`
--
ALTER TABLE `congviec_nhanvien`
  ADD CONSTRAINT `congviec_nhanvien_ibfk_1` FOREIGN KEY (`MaNV`) REFERENCES `nhanvien` (`MaNV`),
  ADD CONSTRAINT `congviec_nhanvien_ibfk_2` FOREIGN KEY (`MaCV`) REFERENCES `congviec` (`MaCV`);

--
-- Các ràng buộc cho bảng `hosocongviec`
--
ALTER TABLE `hosocongviec`
  ADD CONSTRAINT `hosocongviec_ibfk_1` FOREIGN KEY (`MaCV`) REFERENCES `congviec` (`MaCV`);

--
-- Các ràng buộc cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD CONSTRAINT `nhanvien_ibfk_2` FOREIGN KEY (`MaQuyen`) REFERENCES `phanquyen` (`MaQuyen`),
  ADD CONSTRAINT `nhanvien_ibfk_3` FOREIGN KEY (`MaDV`) REFERENCES `donvi` (`MaDV`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `nhatkycv`
--
ALTER TABLE `nhatkycv`
  ADD CONSTRAINT `nhatkycv_ibfk_1` FOREIGN KEY (`MaCV`) REFERENCES `congviec` (`MaCV`),
  ADD CONSTRAINT `nhatkycv_ibfk_2` FOREIGN KEY (`MaNV`) REFERENCES `nhanvien` (`MaNV`);

--
-- Các ràng buộc cho bảng `qa`
--
ALTER TABLE `qa`
  ADD CONSTRAINT `qa_ibfk_1` FOREIGN KEY (`MaCV`) REFERENCES `congviec` (`MaCV`),
  ADD CONSTRAINT `qa_ibfk_2` FOREIGN KEY (`MaNV`) REFERENCES `nhanvien` (`MaNV`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
