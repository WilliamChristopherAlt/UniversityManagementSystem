-- =============================================
-- Hệ thống Quản lý Đại học - Dữ liệu Mẫu
-- SQL Server Implementation
-- =============================================

USE UniversityManagement;
GO

PRINT N'==========================================';
PRINT N'Bắt đầu chèn dữ liệu mẫu...';
PRINT N'==========================================';

-- =============================================
-- 1. BẢNG NGUOI (50 người)
-- =============================================
PRINT N'Đang chèn dữ liệu bảng nguoi...';

SET IDENTITY_INSERT nguoi ON;

INSERT INTO nguoi (id_nguoi, ho_ten, ngay_sinh, gioi_tinh, email, so_dien_thoai, dia_chi, anh_dai_dien) VALUES
-- Admins (5 người)
(1, N'Nguyễn Văn Quản', '1980-05-15', N'Nam', 'admin01@university.edu.vn', '0901234501', N'123 Lê Lợi, Q1, TP.HCM', '/images/avatars/admin01.jpg'),
(2, N'Trần Thị Bích', '1982-08-20', N'Nữ', 'admin02@university.edu.vn', '0901234502', N'456 Nguyễn Huệ, Q1, TP.HCM', '/images/avatars/admin02.jpg'),
(3, N'Lê Văn Cường', '1978-03-10', N'Nam', 'admin03@university.edu.vn', '0901234503', N'789 Lý Tự Trọng, Q1, TP.HCM', '/images/avatars/admin03.jpg'),
(4, N'Phạm Thị Dung', '1985-11-25', N'Nữ', 'admin04@university.edu.vn', '0901234504', N'321 Hai Bà Trưng, Q3, TP.HCM', '/images/avatars/admin04.jpg'),
(5, N'Hoàng Văn Em', '1981-07-08', N'Nam', 'admin05@university.edu.vn', '0901234505', N'654 Điện Biên Phủ, Q3, TP.HCM', '/images/avatars/admin05.jpg'),

-- Giảng viên (15 người, id 6-20)
(6, N'Nguyễn Văn An', '1975-09-01', N'Nam', 'nguyen.van.a@university.edu.vn', '0912345601', N'111 Cách Mạng Tháng 8, Q10, TP.HCM', '/images/avatars/gv001.jpg'),
(7, N'Trần Thị Bình', '1978-03-15', N'Nữ', 'tran.thi.b@university.edu.vn', '0912345602', N'222 Trần Hưng Đạo, Q5, TP.HCM', '/images/avatars/gv002.jpg'),
(8, N'Lê Văn Cường', '1973-08-20', N'Nam', 'le.van.c@university.edu.vn', '0912345603', N'333 Nguyễn Trãi, Q5, TP.HCM', '/images/avatars/gv003.jpg'),
(9, N'Phạm Thị Dung', '1980-01-10', N'Nữ', 'pham.thi.d@university.edu.vn', '0912345604', N'444 Lý Chính Thắng, Q3, TP.HCM', '/images/avatars/gv004.jpg'),
(10, N'Hoàng Văn Em', '1972-09-01', N'Nam', 'hoang.van.e@university.edu.vn', '0912345605', N'555 Hoàng Văn Thụ, Tân Bình, TP.HCM', '/images/avatars/gv005.jpg'),
(11, N'Võ Thị Phượng', '1979-02-15', N'Nữ', 'vo.thi.f@university.edu.vn', '0912345606', N'666 Cộng Hòa, Tân Bình, TP.HCM', '/images/avatars/gv006.jpg'),
(12, N'Đặng Văn Giang', '1976-07-01', N'Nam', 'dang.van.g@university.edu.vn', '0912345607', N'777 Phan Văn Trị, Gò Vấp, TP.HCM', '/images/avatars/gv007.jpg'),
(13, N'Bùi Thị Hà', '1977-09-01', N'Nữ', 'bui.thi.h@university.edu.vn', '0912345608', N'888 Quang Trung, Gò Vấp, TP.HCM', '/images/avatars/gv008.jpg'),
(14, N'Đỗ Văn Ích', '1974-03-15', N'Nam', 'do.van.i@university.edu.vn', '0912345609', N'999 Phan Huy Ích, Tân Bình, TP.HCM', '/images/avatars/gv009.jpg'),
(15, N'Hồ Thị Kim', '1981-08-01', N'Nữ', 'ho.thi.k@university.edu.vn', '0912345610', N'101 Lạc Long Quân, Q11, TP.HCM', '/images/avatars/gv010.jpg'),
(16, N'Ngô Văn Long', '1971-09-01', N'Nam', 'ngo.van.l@university.edu.vn', '0912345611', N'202 Âu Cơ, Tân Phú, TP.HCM', '/images/avatars/gv011.jpg'),
(17, N'Dương Thị Mai', '1983-01-15', N'Nữ', 'duong.thi.m@university.edu.vn', '0912345612', N'303 Lũy Bán Bích, Tân Phú, TP.HCM', '/images/avatars/gv012.jpg'),
(18, N'Lý Văn Nam', '1976-02-01', N'Nam', 'ly.van.n@university.edu.vn', '0912345613', N'404 Tân Kỳ Tân Quý, Tân Phú, TP.HCM', '/images/avatars/gv013.jpg'),
(19, N'Trương Thị Oanh', '1979-07-15', N'Nữ', 'truong.thi.o@university.edu.vn', '0912345614', N'505 Hòa Bình, Tân Phú, TP.HCM', '/images/avatars/gv014.jpg'),
(20, N'Phan Văn Phúc', '1975-09-01', N'Nam', 'phan.van.p@university.edu.vn', '0912345615', N'606 Hậu Giang, Q6, TP.HCM', '/images/avatars/gv015.jpg'),

-- Sinh viên (30 người, id 21-50)
(21, N'Nguyễn Văn Anh', '2003-05-15', N'Nam', 'sv001@student.university.edu.vn', '0923456701', N'123 Nguyễn Thị Minh Khai, Q1, TP.HCM', '/images/avatars/sv001.jpg'),
(22, N'Trần Thị Bảo', '2003-08-20', N'Nữ', 'sv002@student.university.edu.vn', '0923456702', N'456 Lê Văn Sỹ, Q3, TP.HCM', '/images/avatars/sv002.jpg'),
(23, N'Lê Văn Cường', '2003-03-10', N'Nam', 'sv003@student.university.edu.vn', '0923456703', N'789 Võ Văn Tần, Q3, TP.HCM', '/images/avatars/sv003.jpg'),
(24, N'Phạm Thị Duyên', '2003-11-25', N'Nữ', 'sv004@student.university.edu.vn', '0923456704', N'321 Điện Biên Phủ, Q10, TP.HCM', '/images/avatars/sv004.jpg'),
(25, N'Hoàng Văn Em', '2003-07-08', N'Nam', 'sv005@student.university.edu.vn', '0923456705', N'654 Cách Mạng Tháng 8, Q10, TP.HCM', '/images/avatars/sv005.jpg'),
(26, N'Võ Thị Phương', '2003-12-30', N'Nữ', 'sv006@student.university.edu.vn', '0923456706', N'987 Trần Hưng Đạo, Q5, TP.HCM', '/images/avatars/sv006.jpg'),
(27, N'Đặng Văn Giang', '2003-04-18', N'Nam', 'sv007@student.university.edu.vn', '0923456707', N'147 Nguyễn Trãi, Q5, TP.HCM', '/images/avatars/sv007.jpg'),
(28, N'Bùi Thị Hồng', '2003-09-05', N'Nữ', 'sv008@student.university.edu.vn', '0923456708', N'258 Lý Chính Thắng, Q3, TP.HCM', '/images/avatars/sv008.jpg'),
(29, N'Đỗ Văn Ích', '2003-06-22', N'Nam', 'sv009@student.university.edu.vn', '0923456709', N'369 Hoàng Văn Thụ, Tân Bình, TP.HCM', '/images/avatars/sv009.jpg'),
(30, N'Hồ Thị Khánh', '2003-10-14', N'Nữ', 'sv010@student.university.edu.vn', '0923456710', N'741 Cộng Hòa, Tân Bình, TP.HCM', '/images/avatars/sv010.jpg'),
(31, N'Ngô Văn Linh', '2003-02-28', N'Nam', 'sv011@student.university.edu.vn', '0923456711', N'852 Phan Văn Trị, Gò Vấp, TP.HCM', '/images/avatars/sv011.jpg'),
(32, N'Dương Thị My', '2003-08-17', N'Nữ', 'sv012@student.university.edu.vn', '0923456712', N'963 Quang Trung, Gò Vấp, TP.HCM', '/images/avatars/sv012.jpg'),
(33, N'Lý Văn Nghĩa', '2003-05-09', N'Nam', 'sv013@student.university.edu.vn', '0923456713', N'159 Phan Huy Ích, Tân Bình, TP.HCM', '/images/avatars/sv013.jpg'),
(34, N'Trương Thị Oanh', '2003-11-03', N'Nữ', 'sv014@student.university.edu.vn', '0923456714', N'357 Lạc Long Quân, Q11, TP.HCM', '/images/avatars/sv014.jpg'),
(35, N'Phan Văn Phong', '2003-07-26', N'Nam', 'sv015@student.university.edu.vn', '0923456715', N'486 Âu Cơ, Tân Phú, TP.HCM', '/images/avatars/sv015.jpg'),
(36, N'Mai Thị Quỳnh', '2003-03-19', N'Nữ', 'sv016@student.university.edu.vn', '0923456716', N'753 Lũy Bán Bích, Tân Phú, TP.HCM', '/images/avatars/sv016.jpg'),
(37, N'Trịnh Văn Rồng', '2003-09-12', N'Nam', 'sv017@student.university.edu.vn', '0923456717', N'864 Tân Kỳ Tân Quý, Tân Phú, TP.HCM', '/images/avatars/sv017.jpg'),
(38, N'Vũ Thị Sang', '2003-12-07', N'Nữ', 'sv018@student.university.edu.vn', '0923456718', N'975 Hòa Bình, Tân Phú, TP.HCM', '/images/avatars/sv018.jpg'),
(39, N'Đinh Văn Tài', '2003-06-01', N'Nam', 'sv019@student.university.edu.vn', '0923456719', N'186 Hậu Giang, Q6, TP.HCM', '/images/avatars/sv019.jpg'),
(40, N'Cao Thị Uyên', '2003-10-23', N'Nữ', 'sv020@student.university.edu.vn', '0923456720', N'297 Minh Phụng, Q6, TP.HCM', '/images/avatars/sv020.jpg'),
(41, N'Huỳnh Văn Vũ', '2003-04-16', N'Nam', 'sv021@student.university.edu.vn', '0923456721', N'408 Bình Thới, Q11, TP.HCM', '/images/avatars/sv021.jpg'),
(42, N'Đoàn Thị Xuân', '2003-08-29', N'Nữ', 'sv022@student.university.edu.vn', '0923456722', N'519 Lê Đại Hành, Q11, TP.HCM', '/images/avatars/sv022.jpg'),
(43, N'Lương Văn Yên', '2003-05-11', N'Nam', 'sv023@student.university.edu.vn', '0923456723', N'630 Đường 3/2, Q10, TP.HCM', '/images/avatars/sv023.jpg'),
(44, N'Tô Thị Zoan', '2003-11-24', N'Nữ', 'sv024@student.university.edu.vn', '0923456724', N'741 Sư Vạn Hạnh, Q10, TP.HCM', '/images/avatars/sv024.jpg'),
(45, N'Quách Văn An', '2003-07-07', N'Nam', 'sv025@student.university.edu.vn', '0923456725', N'852 Nguyễn Chí Thanh, Q5, TP.HCM', '/images/avatars/sv025.jpg'),
(46, N'Tăng Thị Bích', '2003-02-20', N'Nữ', 'sv026@student.university.edu.vn', '0923456726', N'963 Trần Bình Trọng, Q5, TP.HCM', '/images/avatars/sv026.jpg'),
(47, N'Âu Văn Cảnh', '2003-09-13', N'Nam', 'sv027@student.university.edu.vn', '0923456727', N'174 Hai Bà Trưng, Q1, TP.HCM', '/images/avatars/sv027.jpg'),
(48, N'Ông Thị Diễm', '2003-12-06', N'Nữ', 'sv028@student.university.edu.vn', '0923456728', N'285 Pasteur, Q1, TP.HCM', '/images/avatars/sv028.jpg'),
(49, N'Uông Văn Đức', '2003-06-18', N'Nam', 'sv029@student.university.edu.vn', '0923456729', N'396 Nguyễn Đình Chiểu, Q3, TP.HCM', '/images/avatars/sv029.jpg'),
(50, N'Từ Thị Linh', '2003-10-31', N'Nữ', 'sv030@student.university.edu.vn', '0923456730', N'507 Nam Kỳ Khởi Nghĩa, Q3, TP.HCM', '/images/avatars/sv030.jpg');

SET IDENTITY_INSERT nguoi OFF;
GO

-- =============================================
-- 2. BẢNG NGUOI_DUNG (50 người dùng)
-- =============================================
PRINT N'Đang chèn dữ liệu bảng nguoi_dung...';

SET IDENTITY_INSERT nguoi_dung ON;

INSERT INTO nguoi_dung (id_nguoi_dung, id_nguoi, ten_dang_nhap, mat_khau_hash, mat_khau_salt, email_da_xac_thuc, trang_thai) VALUES
-- Admins
(1, 1, 'admin01', 'hashed_password_1', 'salt_1', 1, 'active'),
(2, 2, 'admin02', 'hashed_password_2', 'salt_2', 1, 'active'),
(3, 3, 'admin03', 'hashed_password_3', 'salt_3', 1, 'active'),
(4, 4, 'admin04', 'hashed_password_4', 'salt_4', 1, 'active'),
(5, 5, 'admin05', 'hashed_password_5', 'salt_5', 1, 'active'),
-- Giảng viên
(6, 6, 'gv001', 'hashed_password_6', 'salt_6', 1, 'active'),
(7, 7, 'gv002', 'hashed_password_7', 'salt_7', 1, 'active'),
(8, 8, 'gv003', 'hashed_password_8', 'salt_8', 1, 'active'),
(9, 9, 'gv004', 'hashed_password_9', 'salt_9', 1, 'active'),
(10, 10, 'gv005', 'hashed_password_10', 'salt_10', 1, 'active'),
(11, 11, 'gv006', 'hashed_password_11', 'salt_11', 1, 'active'),
(12, 12, 'gv007', 'hashed_password_12', 'salt_12', 1, 'active'),
(13, 13, 'gv008', 'hashed_password_13', 'salt_13', 1, 'active'),
(14, 14, 'gv009', 'hashed_password_14', 'salt_14', 1, 'active'),
(15, 15, 'gv010', 'hashed_password_15', 'salt_15', 1, 'active'),
(16, 16, 'gv011', 'hashed_password_16', 'salt_16', 1, 'active'),
(17, 17, 'gv012', 'hashed_password_17', 'salt_17', 1, 'active'),
(18, 18, 'gv013', 'hashed_password_18', 'salt_18', 1, 'active'),
(19, 19, 'gv014', 'hashed_password_19', 'salt_19', 1, 'active'),
(20, 20, 'gv015', 'hashed_password_20', 'salt_20', 1, 'active'),
-- Sinh viên
(21, 21, 'sv001', 'hashed_password_21', 'salt_21', 1, 'active'),
(22, 22, 'sv002', 'hashed_password_22', 'salt_22', 1, 'active'),
(23, 23, 'sv003', 'hashed_password_23', 'salt_23', 1, 'active'),
(24, 24, 'sv004', 'hashed_password_24', 'salt_24', 1, 'active'),
(25, 25, 'sv005', 'hashed_password_25', 'salt_25', 1, 'active'),
(26, 26, 'sv006', 'hashed_password_26', 'salt_26', 1, 'active'),
(27, 27, 'sv007', 'hashed_password_27', 'salt_27', 1, 'active'),
(28, 28, 'sv008', 'hashed_password_28', 'salt_28', 1, 'active'),
(29, 29, 'sv009', 'hashed_password_29', 'salt_29', 1, 'active'),
(30, 30, 'sv010', 'hashed_password_30', 'salt_30', 1, 'active'),
(31, 31, 'sv011', 'hashed_password_31', 'salt_31', 1, 'active'),
(32, 32, 'sv012', 'hashed_password_32', 'salt_32', 1, 'active'),
(33, 33, 'sv013', 'hashed_password_33', 'salt_33', 1, 'active'),
(34, 34, 'sv014', 'hashed_password_34', 'salt_34', 1, 'active'),
(35, 35, 'sv015', 'hashed_password_35', 'salt_35', 1, 'active'),
(36, 36, 'sv016', 'hashed_password_36', 'salt_36', 1, 'active'),
(37, 37, 'sv017', 'hashed_password_37', 'salt_37', 1, 'active'),
(38, 38, 'sv018', 'hashed_password_38', 'salt_38', 1, 'active'),
(39, 39, 'sv019', 'hashed_password_39', 'salt_39', 1, 'active'),
(40, 40, 'sv020', 'hashed_password_40', 'salt_40', 1, 'active'),
(41, 41, 'sv021', 'hashed_password_41', 'salt_41', 1, 'active'),
(42, 42, 'sv022', 'hashed_password_42', 'salt_42', 1, 'active'),
(43, 43, 'sv023', 'hashed_password_43', 'salt_43', 1, 'active'),
(44, 44, 'sv024', 'hashed_password_44', 'salt_44', 1, 'active'),
(45, 45, 'sv025', 'hashed_password_45', 'salt_45', 1, 'active'),
(46, 46, 'sv026', 'hashed_password_46', 'salt_46', 1, 'active'),
(47, 47, 'sv027', 'hashed_password_47', 'salt_47', 1, 'active'),
(48, 48, 'sv028', 'hashed_password_48', 'salt_48', 1, 'active'),
(49, 49, 'sv029', 'hashed_password_49', 'salt_49', 1, 'active'),
(50, 50, 'sv030', 'hashed_password_50', 'salt_50', 1, 'active');

SET IDENTITY_INSERT nguoi_dung OFF;
GO

-- =============================================
-- 3. BẢNG PHIEN_DANG_NHAP (Mẫu phiên)
-- =============================================
PRINT N'Đang chèn dữ liệu bảng phien_dang_nhap...';

INSERT INTO phien_dang_nhap (id_nguoi_dung, ma_phien, dia_chi_ip, thong_tin_trinh_duyet, ngay_het_han, hoat_dong_cuoi) VALUES
(1, 'session_token_admin01_abc123', '192.168.1.101', 'Mozilla/5.0 Chrome/120.0', DATEADD(DAY, 7, GETDATE()), GETDATE()),
(21, 'session_token_sv001_def456', '192.168.1.201', 'Mozilla/5.0 Chrome/120.0', DATEADD(DAY, 7, GETDATE()), GETDATE()),
(22, 'session_token_sv002_ghi789', '192.168.1.202', 'Mozilla/5.0 Firefox/120.0', DATEADD(DAY, 7, GETDATE()), GETDATE()),
(6, 'session_token_gv001_jkl012', '192.168.1.106', 'Mozilla/5.0 Safari/17.0', DATEADD(DAY, 7, GETDATE()), GETDATE());
GO

-- =============================================
-- 4. BẢNG NAM_HOC (3 năm học)
-- =============================================
PRINT N'Đang chèn dữ liệu bảng nam_hoc...';

SET IDENTITY_INSERT nam_hoc ON;

INSERT INTO nam_hoc (id_nam_hoc, ngay_bat_dau, ngay_ket_thuc) VALUES
(1, '2023-09-01', '2024-06-30'),
(2, '2024-09-01', '2025-06-30'),
(3, '2025-09-01', '2026-06-30');

SET IDENTITY_INSERT nam_hoc OFF;
GO

-- =============================================
-- 5. BẢNG LOP (10 lớp)
-- =============================================
PRINT N'Đang chèn dữ liệu bảng lop...';

SET IDENTITY_INSERT lop ON;

INSERT INTO lop (id_lop, ma_lop, ten_lop, id_nam_hoc_bat_dau) VALUES
(1, 'CNTT01-2023', N'Công Nghệ Thông Tin 01 - Khóa 2023', 1),
(2, 'CNTT02-2023', N'Công Nghệ Thông Tin 02 - Khóa 2023', 1),
(3, 'KHTN01-2023', N'Khoa Học Tự Nhiên 01 - Khóa 2023', 1),
(4, 'KT01-2023', N'Kinh Tế 01 - Khóa 2023', 1),
(5, 'KHXH01-2023', N'Khoa Học Xã Hội 01 - Khóa 2023', 1),
(6, 'CNTT01-2024', N'Công Nghệ Thông Tin 01 - Khóa 2024', 2),
(7, 'CNTT02-2024', N'Công Nghệ Thông Tin 02 - Khóa 2024', 2),
(8, 'KHTN01-2024', N'Khoa Học Tự Nhiên 01 - Khóa 2024', 2),
(9, 'KT01-2024', N'Kinh Tế 01 - Khóa 2024', 2),
(10, 'KThuat01-2024', N'Kỹ Thuật 01 - Khóa 2024', 2);

SET IDENTITY_INSERT lop OFF;
GO

-- =============================================
-- 6. BẢNG KHOA (5 khoa)
-- =============================================
PRINT N'Đang chèn dữ liệu bảng khoa...';

SET IDENTITY_INSERT khoa ON;

INSERT INTO khoa (id_khoa, ten_khoa, ma_khoa) VALUES
(1, N'Khoa Công Nghệ Thông Tin', 'CNTT'),
(2, N'Khoa Khoa Học Tự Nhiên', 'KHTN'),
(3, N'Khoa Kinh Tế', 'KT'),
(4, N'Khoa Khoa Học Xã Hội', 'KHXH'),
(5, N'Khoa Kỹ Thuật', 'KThuat');

SET IDENTITY_INSERT khoa OFF;
GO

-- =============================================
-- 7. BẢNG ADMIN (5 admin)
-- =============================================
PRINT N'Đang chèn dữ liệu bảng admin...';

SET IDENTITY_INSERT admin ON;

INSERT INTO admin (id_admin, id_nguoi, ma_admin, chuc_vu, trang_thai) VALUES
(1, 1, 'ADM001', N'Giám đốc hệ thống', 'active'),
(2, 2, 'ADM002', N'Phó giám đốc', 'active'),
(3, 3, 'ADM003', N'Trưởng phòng đào tạo', 'active'),
(4, 4, 'ADM004', N'Trưởng phòng tài chính', 'active'),
(5, 5, 'ADM005', N'Trưởng phòng công nghệ', 'active');

SET IDENTITY_INSERT admin OFF;
GO

-- =============================================
-- 8. BẢNG GIANG_VIEN (15 giảng viên)
-- =============================================
PRINT N'Đang chèn dữ liệu bảng giang_vien...';

SET IDENTITY_INSERT giang_vien ON;

INSERT INTO giang_vien (id_giang_vien, id_nguoi, ma_giang_vien, bang_cap, chuyen_mon, id_khoa, ngay_vao_lam, trang_thai) VALUES
(1, 6, 'GV001', N'Tiến sĩ', N'Lập trình Web, Cơ sở dữ liệu', 1, '2015-09-01', 'active'),
(2, 7, 'GV002', N'Thạc sĩ', N'Trí tuệ nhân tạo, Machine Learning', 1, '2016-03-15', 'active'),
(3, 8, 'GV003', N'Tiến sĩ', N'Mạng máy tính, An ninh mạng', 1, '2014-08-20', 'active'),
(4, 9, 'GV004', N'Thạc sĩ', N'Toán học ứng dụng, Xác suất thống kê', 2, '2017-01-10', 'active'),
(5, 10, 'GV005', N'Tiến sĩ', N'Vật lý lý thuyết, Cơ học lượng tử', 2, '2013-09-01', 'active'),
(6, 11, 'GV006', N'Thạc sĩ', N'Hóa học hữu cơ, Hóa sinh', 2, '2018-02-15', 'active'),
(7, 12, 'GV007', N'Tiến sĩ', N'Kinh tế vi mô, Kinh tế vĩ mô', 3, '2015-07-01', 'active'),
(8, 13, 'GV008', N'Thạc sĩ', N'Quản trị kinh doanh, Marketing', 3, '2016-09-01', 'active'),
(9, 14, 'GV009', N'Tiến sĩ', N'Tài chính ngân hàng, Kế toán', 3, '2014-03-15', 'active'),
(10, 15, 'GV010', N'Thạc sĩ', N'Xã hội học, Tâm lý học xã hội', 4, '2017-08-01', 'active'),
(11, 16, 'GV011', N'Tiến sĩ', N'Lịch sử Việt Nam, Văn hóa học', 4, '2013-09-01', 'active'),
(12, 17, 'GV012', N'Thạc sĩ', N'Ngôn ngữ học, Văn học Việt Nam', 4, '2018-01-15', 'active'),
(13, 18, 'GV013', N'Tiến sĩ', N'Kỹ thuật điện, Tự động hóa', 5, '2015-02-01', 'active'),
(14, 19, 'GV014', N'Thạc sĩ', N'Kỹ thuật cơ khí, CAD/CAM', 5, '2016-07-15', 'active'),
(15, 20, 'GV015', N'Tiến sĩ', N'Kỹ thuật xây dựng, Kết cấu công trình', 5, '2014-09-01', 'active');

SET IDENTITY_INSERT giang_vien OFF;

-- Cập nhật trưởng khoa
UPDATE khoa SET id_truong_khoa = 1 WHERE id_khoa = 1;
UPDATE khoa SET id_truong_khoa = 4 WHERE id_khoa = 2;
UPDATE khoa SET id_truong_khoa = 7 WHERE id_khoa = 3;
UPDATE khoa SET id_truong_khoa = 10 WHERE id_khoa = 4;
UPDATE khoa SET id_truong_khoa = 13 WHERE id_khoa = 5;
GO

-- =============================================
-- 9. BẢNG SINH_VIEN (30 sinh viên)
-- =============================================
PRINT N'Đang chèn dữ liệu bảng sinh_vien...';

SET IDENTITY_INSERT sinh_vien ON;

INSERT INTO sinh_vien (id_sinh_vien, id_nguoi, ma_sinh_vien, id_lop, so_tin_chi_tich_luy, trang_thai_hoc_tap, trang_thai) VALUES
-- Lớp CNTT01-2023 (6 sinh viên)
(1, 21, 'SV001', 1, 45, 'good_standing', 'active'),
(2, 22, 'SV002', 1, 42, 'good_standing', 'active'),
(3, 23, 'SV003', 1, 38, 'good_standing', 'active'),
(4, 24, 'SV004', 1, 40, 'good_standing', 'active'),
(5, 25, 'SV005', 1, 43, 'good_standing', 'active'),
(6, 26, 'SV006', 1, 35, 'good_standing', 'active'),
-- Lớp CNTT02-2023 (6 sinh viên)
(7, 27, 'SV007', 2, 44, 'good_standing', 'active'),
(8, 28, 'SV008', 2, 41, 'good_standing', 'active'),
(9, 29, 'SV009', 2, 39, 'good_standing', 'active'),
(10, 30, 'SV010', 2, 37, 'good_standing', 'active'),
(11, 31, 'SV011', 2, 46, 'good_standing', 'active'),
(12, 32, 'SV012', 2, 40, 'good_standing', 'active'),
-- Lớp KHTN01-2023 (6 sinh viên)
(13, 33, 'SV013', 3, 42, 'good_standing', 'active'),
(14, 34, 'SV014', 3, 38, 'good_standing', 'active'),
(15, 35, 'SV015', 3, 44, 'good_standing', 'active'),
(16, 36, 'SV016', 3, 41, 'good_standing', 'active'),
(17, 37, 'SV017', 3, 36, 'good_standing', 'active'),
(18, 38, 'SV018', 3, 39, 'good_standing', 'active'),
-- Lớp KT01-2023 (6 sinh viên)
(19, 39, 'SV019', 4, 43, 'good_standing', 'active'),
(20, 40, 'SV020', 4, 40, 'good_standing', 'active'),
(21, 41, 'SV021', 4, 37, 'good_standing', 'active'),
(22, 42, 'SV022', 4, 42, 'good_standing', 'active'),
(23, 43, 'SV023', 4, 38, 'good_standing', 'active'),
(24, 44, 'SV024', 4, 41, 'good_standing', 'active'),
-- Lớp KHXH01-2023 (6 sinh viên)
(25, 45, 'SV025', 5, 40, 'good_standing', 'active'),
(26, 46, 'SV026', 5, 39, 'good_standing', 'active'),
(27, 47, 'SV027', 5, 42, 'good_standing', 'active'),
(28, 48, 'SV028', 5, 37, 'good_standing', 'active'),
(29, 49, 'SV029', 5, 44, 'good_standing', 'active'),
(30, 50, 'SV030', 5, 41, 'good_standing', 'active');

SET IDENTITY_INSERT sinh_vien OFF;
GO

-- =============================================
-- 10. BẢNG MON_HOC (25 môn học)
-- =============================================
PRINT N'Đang chèn dữ liệu bảng mon_hoc...';

SET IDENTITY_INSERT mon_hoc ON;

INSERT INTO mon_hoc (id_mon_hoc, ten_mon_hoc, ma_mon_hoc, so_tin_chi, gio_ly_thuyet, gio_thuc_hanh, id_khoa) VALUES
-- Khoa CNTT (5 môn)
(1, N'Lập trình căn bản', 'CNTT101', 3, 30, 30, 1),
(2, N'Cấu trúc dữ liệu và giải thuật', 'CNTT102', 4, 45, 15, 1),
(3, N'Cơ sở dữ liệu', 'CNTT201', 3, 30, 30, 1),
(4, N'Lập trình hướng đối tượng', 'CNTT202', 3, 30, 30, 1),
(5, N'Phát triển ứng dụng Web', 'CNTT301', 4, 30, 45, 1),
-- Khoa Khoa học tự nhiên (5 môn)
(6, N'Giải tích 1', 'KHTN101', 4, 60, 0, 2),
(7, N'Đại số tuyến tính', 'KHTN102', 3, 45, 0, 2),
(8, N'Vật lý đại cương 1', 'KHTN201', 3, 30, 30, 2),
(9, N'Hóa học đại cương', 'KHTN202', 3, 30, 30, 2),
(10, N'Xác suất thống kê', 'KHTN301', 3, 45, 0, 2),
-- Khoa Kinh tế (5 môn)
(11, N'Kinh tế vi mô', 'KT101', 3, 45, 0, 3),
(12, N'Kinh tế vĩ mô', 'KT102', 3, 45, 0, 3),
(13, N'Nguyên lý kế toán', 'KT201', 3, 30, 30, 3),
(14, N'Quản trị học', 'KT202', 3, 45, 0, 3),
(15, N'Marketing căn bản', 'KT301', 3, 30, 15, 3),
-- Khoa Khoa học xã hội (5 môn)
(16, N'Triết học Mác - Lênin', 'KHXH101', 3, 45, 0, 4),
(17, N'Kinh tế chính trị Mác - Lênin', 'KHXH102', 2, 30, 0, 4),
(18, N'Chủ nghĩa xã hội khoa học', 'KHXH103', 2, 30, 0, 4),
(19, N'Lịch sử Đảng Cộng sản Việt Nam', 'KHXH201', 2, 30, 0, 4),
(20, N'Tư tưởng Hồ Chí Minh', 'KHXH202', 2, 30, 0, 4),
-- Khoa Kỹ thuật (5 môn)
(21, N'Kỹ thuật điện cơ bản', 'KT101E', 3, 30, 30, 5),
(22, N'Vẽ kỹ thuật', 'KT102E', 2, 15, 30, 5),
(23, N'Cơ học kỹ thuật', 'KT201E', 4, 45, 15, 5),
(24, N'Kỹ thuật số', 'KT202E', 3, 30, 30, 5),
(25, N'Tự động hóa', 'KT301E', 4, 30, 45, 5);

SET IDENTITY_INSERT mon_hoc OFF;
GO

-- =============================================
-- 11. BẢNG MON_HOC_TIEN_QUYET (10 mối quan hệ)
-- =============================================
PRINT N'Đang chèn dữ liệu bảng mon_hoc_tien_quyet...';

SET IDENTITY_INSERT mon_hoc_tien_quyet ON;

INSERT INTO mon_hoc_tien_quyet (id_tien_quyet, id_mon_hoc, id_mon_hoc_can_truoc, diem_toi_thieu) VALUES
(1, 2, 1, 5.0),   -- Cấu trúc dữ liệu cần Lập trình căn bản
(2, 3, 1, 5.0),   -- Cơ sở dữ liệu cần Lập trình căn bản
(3, 4, 1, 5.0),   -- OOP cần Lập trình căn bản
(4, 5, 3, 6.0),   -- Web Dev cần Cơ sở dữ liệu
(5, 5, 4, 6.0),   -- Web Dev cần OOP
(6, 10, 6, 5.0),  -- Xác suất cần Giải tích 1
(7, 13, 11, 5.0), -- Kế toán cần Kinh tế vi mô
(8, 15, 14, 5.0), -- Marketing cần Quản trị học
(9, 23, 21, 5.0), -- Cơ học kỹ thuật cần Kỹ thuật điện cơ bản
(10, 25, 24, 6.0); -- Tự động hóa cần Kỹ thuật số

SET IDENTITY_INSERT mon_hoc_tien_quyet OFF;
GO

-- =============================================
-- 12. BẢNG HOC_KY (6 học kỳ)
-- =============================================
PRINT N'Đang chèn dữ liệu bảng hoc_ky...';

SET IDENTITY_INSERT hoc_ky ON;

INSERT INTO hoc_ky (id_hoc_ky, ten_hoc_ky, id_nam_hoc, loai_hoc_ky, ngay_bat_dau, ngay_ket_thuc, ngay_bat_dau_dang_ky, ngay_ket_thuc_dang_ky) VALUES
(1, N'Học kỳ 1 năm 2023-2024', 1, 'chinh', '2023-09-01', '2024-01-15', '2023-08-15', '2023-08-31'),
(2, N'Học kỳ 2 năm 2023-2024', 1, 'chinh', '2024-01-20', '2024-06-30', '2024-01-05', '2024-01-19'),
(3, N'Học kỳ 1 năm 2024-2025', 2, 'chinh', '2024-09-01', '2025-01-15', '2024-08-15', '2024-08-31'),
(4, N'Học kỳ 2 năm 2024-2025', 2, 'chinh', '2025-01-20', '2025-06-30', '2025-01-05', '2025-01-19'),
(5, N'Học kỳ 1 năm 2025-2026', 3, 'chinh', '2025-09-01', '2026-01-15', '2025-08-15', '2025-08-31'),
(6, N'Học kỳ 2 năm 2025-2026', 3, 'chinh', '2026-01-20', '2026-06-30', '2026-01-05', '2026-01-19');

SET IDENTITY_INSERT hoc_ky OFF;
GO

-- =============================================
-- 13. BẢNG TUAN (96 tuần - 16 tuần x 6 học kỳ)
-- =============================================
PRINT N'Đang chèn dữ liệu bảng tuan...';

DECLARE @hk INT = 1;
DECLARE @week INT;
DECLARE @startDate DATE;
DECLARE @weekStart DATE;
DECLARE @weekEnd DATE;

WHILE @hk <= 6
BEGIN
    SELECT @startDate = ngay_bat_dau FROM hoc_ky WHERE id_hoc_ky = @hk;
    SET @week = 1;
    
    WHILE @week <= 16
    BEGIN
        SET @weekStart = DATEADD(WEEK, @week - 1, @startDate);
        SET @weekEnd = DATEADD(DAY, 6, @weekStart);
        
        INSERT INTO tuan (id_hoc_ky, thu_tu_tuan, ngay_bat_dau, ngay_ket_thuc)
        VALUES (@hk, @week, @weekStart, @weekEnd);
        
        SET @week = @week + 1;
    END;
    
    SET @hk = @hk + 1;
END;
GO

-- =============================================
-- 14. BẢNG NGAY (672 ngày - 7 ngày x 96 tuần)
-- =============================================
PRINT N'Đang chèn dữ liệu bảng ngay...';

DECLARE @tuanId INT;
DECLARE @dayNum INT;
DECLARE @dayDate DATE;
DECLARE @dayName NVARCHAR(20);
DECLARE @tuanStart DATE;

DECLARE tuan_cursor CURSOR FOR SELECT id_tuan, ngay_bat_dau FROM tuan;
OPEN tuan_cursor;
FETCH NEXT FROM tuan_cursor INTO @tuanId, @tuanStart;

WHILE @@FETCH_STATUS = 0
BEGIN
    SET @dayNum = 1;
    WHILE @dayNum <= 7
    BEGIN
        SET @dayDate = DATEADD(DAY, @dayNum - 1, @tuanStart);
        SET @dayName = CASE @dayNum
            WHEN 1 THEN N'Thứ Hai'
            WHEN 2 THEN N'Thứ Ba'
            WHEN 3 THEN N'Thứ Tư'
            WHEN 4 THEN N'Thứ Năm'
            WHEN 5 THEN N'Thứ Sáu'
            WHEN 6 THEN N'Thứ Bảy'
            WHEN 7 THEN N'Chủ Nhật'
        END;
        
        INSERT INTO ngay (id_tuan, thu_tu_ngay, ngay_thang, ten_ngay)
        VALUES (@tuanId, @dayNum, @dayDate, @dayName);
        
        SET @dayNum = @dayNum + 1;
    END;
    
    FETCH NEXT FROM tuan_cursor INTO @tuanId, @tuanStart;
END;

CLOSE tuan_cursor;
DEALLOCATE tuan_cursor;
GO

-- =============================================
-- 15. BẢNG TOA_NHA (3 tòa nhà)
-- =============================================
PRINT N'Đang chèn dữ liệu bảng toa_nha...';

SET IDENTITY_INSERT toa_nha ON;

INSERT INTO toa_nha (id_toa_nha, ten_toa_nha, ma_toa_nha, dia_chi) VALUES
(1, N'Tòa Nhà A - Khoa Học Tự Nhiên', 'TNA', N'227 Nguyễn Văn Cừ, Quận 5, TP.HCM'),
(2, N'Tòa Nhà B - Công Nghệ Thông Tin', 'TNB', N'268 Lý Thường Kiệt, Quận 10, TP.HCM'),
(3, N'Tòa Nhà C - Khoa Học Xã Hội', 'TNC', N'273 An Dương Vương, Quận 5, TP.HCM');

SET IDENTITY_INSERT toa_nha OFF;
GO

-- =============================================
-- 16. BẢNG PHONG (20 phòng)
-- =============================================
PRINT N'Đang chèn dữ liệu bảng phong...';

SET IDENTITY_INSERT phong ON;

INSERT INTO phong (id_phong, ma_phong, ten_phong, suc_chua, loai, id_toa_nha) VALUES
-- Tòa nhà A
(1, 'A101', N'Phòng học A101', 50, 'phong_hoc', 1),
(2, 'A102', N'Phòng học A102', 50, 'phong_hoc', 1),
(3, 'A103', N'Phòng học A103', 40, 'phong_hoc', 1),
(4, 'A201', N'Phòng thực hành Vật lý A201', 30, 'phong_thuc_hanh', 1),
(5, 'A202', N'Phòng thực hành Hóa học A202', 30, 'phong_thuc_hanh', 1),
(6, 'A301', N'Giảng đường A301', 150, 'giang_duong', 1),
(7, 'A302', N'Giảng đường A302', 120, 'giang_duong', 1),
-- Tòa nhà B
(8, 'B101', N'Phòng máy B101', 40, 'phong_may', 2),
(9, 'B102', N'Phòng máy B102', 40, 'phong_may', 2),
(10, 'B103', N'Phòng máy B103', 35, 'phong_may', 2),
(11, 'B201', N'Phòng học B201', 45, 'phong_hoc', 2),
(12, 'B202', N'Phòng học B202', 45, 'phong_hoc', 2),
(13, 'B203', N'Phòng học B203', 40, 'phong_hoc', 2),
(14, 'B301', N'Giảng đường B301', 200, 'giang_duong', 2),
-- Tòa nhà C
(15, 'C101', N'Phòng học C101', 50, 'phong_hoc', 3),
(16, 'C102', N'Phòng học C102', 50, 'phong_hoc', 3),
(17, 'C103', N'Phòng học C103', 45, 'phong_hoc', 3),
(18, 'C201', N'Phòng học C201', 40, 'phong_hoc', 3),
(19, 'C301', N'Giảng đường C301', 180, 'giang_duong', 3),
(20, 'C302', N'Giảng đường C302', 150, 'giang_duong', 3);

SET IDENTITY_INSERT phong OFF;
GO

-- =============================================
-- 17. BẢNG KHOA_HOC (30 khóa học)
-- =============================================
PRINT N'Đang chèn dữ liệu bảng khoa_hoc...';

SET IDENTITY_INSERT khoa_hoc ON;

INSERT INTO khoa_hoc (id_khoa_hoc, id_mon_hoc, id_giang_vien, id_lop, id_hoc_ky, so_sinh_vien_toi_da, trang_thai) VALUES
-- Học kỳ 1, 2023-2024
(1, 1, 1, 1, 1, 40, 'completed'),
(2, 6, 4, 3, 1, 45, 'completed'),
(3, 11, 7, 4, 1, 40, 'completed'),
(4, 16, 10, 5, 1, 50, 'completed'),
(5, 21, 13, 10, 1, 35, 'completed'),
-- Học kỳ 2, 2023-2024
(6, 2, 1, 1, 2, 40, 'completed'),
(7, 3, 1, 2, 2, 35, 'completed'),
(8, 7, 4, 3, 2, 40, 'completed'),
(9, 12, 7, 4, 2, 40, 'completed'),
(10, 17, 10, 5, 2, 50, 'completed'),
-- Học kỳ 1, 2024-2025
(11, 1, 2, 6, 3, 40, 'active'),
(12, 4, 1, 1, 3, 35, 'active'),
(13, 8, 5, 8, 3, 35, 'active'),
(14, 13, 9, 9, 3, 40, 'active'),
(15, 22, 14, 10, 3, 30, 'active'),
-- Học kỳ 2, 2024-2025
(16, 5, 2, 1, 4, 35, 'active'),
(17, 3, 3, 7, 4, 40, 'active'),
(18, 9, 6, 8, 4, 35, 'active'),
(19, 14, 8, 9, 4, 40, 'active'),
(20, 23, 13, 10, 4, 35, 'active'),
-- Thêm các khóa học đa dạng
(21, 10, 4, 3, 3, 40, 'active'),
(22, 15, 8, 4, 3, 40, 'active'),
(23, 18, 11, 5, 3, 50, 'active'),
(24, 19, 11, 5, 4, 50, 'active'),
(25, 24, 14, 10, 3, 30, 'active'),
(26, 25, 13, 10, 4, 30, 'active'),
(27, 2, 2, 6, 3, 40, 'active'),
(28, 4, 2, 7, 4, 35, 'active'),
(29, 6, 5, 8, 3, 45, 'active'),
(30, 7, 5, 8, 4, 40, 'active');

SET IDENTITY_INSERT khoa_hoc OFF;
GO

-- =============================================
-- Hệ thống Quản lý Đại học - Dữ liệu Mẫu (Phần 2)
-- SQL Server Implementation
-- Tiếp tục từ bảng 18 trở đi
-- =============================================

USE UniversityManagement;
GO

PRINT N'==========================================';
PRINT N'Bắt đầu chèn dữ liệu mẫu (Phần 2)...';
PRINT N'==========================================';

-- =============================================
-- 18. BẢNG SINH_VIEN_KHOA_HOC (Đăng ký khóa học)
-- =============================================
PRINT N'Đang chèn dữ liệu bảng sinh_vien_khoa_hoc...';

-- Tạm thời tắt trigger để có thể chèn dữ liệu với IDENTITY_INSERT
ALTER TABLE sinh_vien_khoa_hoc DISABLE TRIGGER TR_sinh_vien_khoa_hoc_KIEM_TRA_SUC_CHUA;
GO

SET IDENTITY_INSERT sinh_vien_khoa_hoc ON;

DECLARE @svkh_id INT = 1;
DECLARE @sv_id INT;
DECLARE @kh_id INT;
DECLARE @random_val FLOAT;

-- Sinh viên lớp CNTT01-2023 (SV 1-6) đăng ký các khóa học của họ
DECLARE sv_cursor CURSOR FOR 
    SELECT id_sinh_vien FROM sinh_vien WHERE id_lop = 1;

OPEN sv_cursor;
FETCH NEXT FROM sv_cursor INTO @sv_id;

WHILE @@FETCH_STATUS = 0
BEGIN
    -- Đăng ký khóa học HK1 2023-2024
    SET @random_val = RAND();
    INSERT INTO sinh_vien_khoa_hoc (id_dang_ky, id_sinh_vien, id_khoa_hoc, ngay_dang_ky, trang_thai, diem_chuyen_can, diem_giua_ky, diem_cuoi_ky)
    VALUES (@svkh_id, @sv_id, 1, '2023-08-20', 'completed', 
            7.0 + (@random_val * 3.0), 
            6.0 + (@random_val * 4.0), 
            6.0 + (@random_val * 4.0));
    SET @svkh_id = @svkh_id + 1;
    
    -- Đăng ký khóa học HK2 2023-2024
    SET @random_val = RAND();
    INSERT INTO sinh_vien_khoa_hoc (id_dang_ky, id_sinh_vien, id_khoa_hoc, ngay_dang_ky, trang_thai, diem_chuyen_can, diem_giua_ky, diem_cuoi_ky)
    VALUES (@svkh_id, @sv_id, 6, '2024-01-10', 'completed',
            7.0 + (@random_val * 3.0), 
            6.0 + (@random_val * 4.0), 
            6.0 + (@random_val * 4.0));
    SET @svkh_id = @svkh_id + 1;
    
    -- Đăng ký khóa học HK1 2024-2025
    INSERT INTO sinh_vien_khoa_hoc (id_dang_ky, id_sinh_vien, id_khoa_hoc, ngay_dang_ky, trang_thai)
    VALUES (@svkh_id, @sv_id, 12, '2024-08-20', 'registered');
    SET @svkh_id = @svkh_id + 1;
    
    FETCH NEXT FROM sv_cursor INTO @sv_id;
END;

CLOSE sv_cursor;
DEALLOCATE sv_cursor;

-- Sinh viên lớp CNTT02-2023 (SV 7-12) đăng ký khóa học của họ
DECLARE sv_cursor2 CURSOR FOR 
    SELECT id_sinh_vien FROM sinh_vien WHERE id_lop = 2;

OPEN sv_cursor2;
FETCH NEXT FROM sv_cursor2 INTO @sv_id;

WHILE @@FETCH_STATUS = 0
BEGIN
    SET @random_val = RAND();
    INSERT INTO sinh_vien_khoa_hoc (id_dang_ky, id_sinh_vien, id_khoa_hoc, ngay_dang_ky, trang_thai, diem_chuyen_can, diem_giua_ky, diem_cuoi_ky)
    VALUES (@svkh_id, @sv_id, 7, '2024-01-10', 'completed',
            7.0 + (@random_val * 3.0), 
            6.0 + (@random_val * 4.0), 
            6.0 + (@random_val * 4.0));
    SET @svkh_id = @svkh_id + 1;
    
    FETCH NEXT FROM sv_cursor2 INTO @sv_id;
END;

CLOSE sv_cursor2;
DEALLOCATE sv_cursor2;

-- Sinh viên các lớp khác tương tự
DECLARE @lop_id INT = 3;
WHILE @lop_id <= 5
BEGIN
    DECLARE sv_lop_cursor CURSOR FOR 
        SELECT id_sinh_vien FROM sinh_vien WHERE id_lop = @lop_id;
    
    OPEN sv_lop_cursor;
    FETCH NEXT FROM sv_lop_cursor INTO @sv_id;
    
    WHILE @@FETCH_STATUS = 0
    BEGIN
        -- Chọn khóa học phù hợp với lớp
        SELECT @kh_id = id_khoa_hoc FROM khoa_hoc WHERE id_lop = @lop_id AND id_hoc_ky = 1;
        IF @kh_id IS NOT NULL
        BEGIN
            SET @random_val = RAND();
            INSERT INTO sinh_vien_khoa_hoc (id_dang_ky, id_sinh_vien, id_khoa_hoc, ngay_dang_ky, trang_thai, diem_chuyen_can, diem_giua_ky, diem_cuoi_ky)
            VALUES (@svkh_id, @sv_id, @kh_id, '2023-08-20', 'completed',
                    7.0 + (@random_val * 3.0), 
                    6.0 + (@random_val * 4.0), 
                    6.0 + (@random_val * 4.0));
            SET @svkh_id = @svkh_id + 1;
        END;
        
        FETCH NEXT FROM sv_lop_cursor INTO @sv_id;
    END;
    
    CLOSE sv_lop_cursor;
    DEALLOCATE sv_lop_cursor;
    
    SET @lop_id = @lop_id + 1;
END;

SET IDENTITY_INSERT sinh_vien_khoa_hoc OFF;

-- Bật lại trigger
ALTER TABLE sinh_vien_khoa_hoc ENABLE TRIGGER TR_sinh_vien_khoa_hoc_KIEM_TRA_SUC_CHUA;
GO

-- =============================================
-- 19. BẢNG LICH_HOC (Lịch học)
-- =============================================
PRINT N'Đang chèn dữ liệu bảng lich_hoc...';

SET IDENTITY_INSERT lich_hoc ON;

DECLARE @lh_id INT = 1;
DECLARE @khoa_hoc_id INT;
DECLARE @hoc_ky_id INT;
DECLARE @tuan_id INT;
DECLARE @ngay_id INT;
DECLARE @phong_id INT;

-- Duyệt qua các khóa học đang active
DECLARE kh_cursor CURSOR FOR 
    SELECT id_khoa_hoc, id_hoc_ky FROM khoa_hoc WHERE trang_thai = 'active';

OPEN kh_cursor;
FETCH NEXT FROM kh_cursor INTO @khoa_hoc_id, @hoc_ky_id;

WHILE @@FETCH_STATUS = 0
BEGIN
    -- Lấy tuần đầu tiên của học kỳ
    SELECT TOP 1 @tuan_id = id_tuan FROM tuan WHERE id_hoc_ky = @hoc_ky_id ORDER BY thu_tu_tuan;
    
    -- Lấy ngày thứ 2 và thứ 4 của tuần đó
    DECLARE ngay_cursor CURSOR FOR
        SELECT id_ngay FROM ngay WHERE id_tuan = @tuan_id AND thu_tu_ngay IN (1, 3);
    
    OPEN ngay_cursor;
    FETCH NEXT FROM ngay_cursor INTO @ngay_id;
    
    DECLARE @counter INT = 0;
    WHILE @@FETCH_STATUS = 0 AND @counter < 2
    BEGIN
        -- Chọn phòng ngẫu nhiên
        SELECT TOP 1 @phong_id = id_phong FROM phong ORDER BY NEWID();
        
        -- Tạo lịch học (tiết 1-3 buổi sáng)
        INSERT INTO lich_hoc (id_lich_hoc, id_khoa_hoc, id_ngay, tiet_bat_dau, tiet_ket_thuc, id_phong)
        VALUES (@lh_id, @khoa_hoc_id, @ngay_id, 1, 3, @phong_id);
        
        SET @lh_id = @lh_id + 1;
        SET @counter = @counter + 1;
        
        FETCH NEXT FROM ngay_cursor INTO @ngay_id;
    END;
    
    CLOSE ngay_cursor;
    DEALLOCATE ngay_cursor;
    
    FETCH NEXT FROM kh_cursor INTO @khoa_hoc_id, @hoc_ky_id;
END;

CLOSE kh_cursor;
DEALLOCATE kh_cursor;

SET IDENTITY_INSERT lich_hoc OFF;
GO

-- =============================================
-- 20. BẢNG DAT_PHONG (Đặt phòng)
-- =============================================
PRINT N'Đang chèn dữ liệu bảng dat_phong...';

SET IDENTITY_INSERT dat_phong ON;

DECLARE @dp_id INT = 1;
DECLARE @nguoi_dat_id INT;
DECLARE @phong_id_dp INT;

WHILE @dp_id <= 20
BEGIN
    -- Chọn giảng viên ngẫu nhiên
    SELECT TOP 1 @nguoi_dat_id = id_nguoi_dung FROM nguoi_dung WHERE id_nguoi_dung BETWEEN 6 AND 20 ORDER BY NEWID();
    SELECT TOP 1 @phong_id_dp = id_phong FROM phong ORDER BY NEWID();
    
    INSERT INTO dat_phong (id_dat_phong, id_phong, ngay_dat, tiet_bat_dau, tiet_ket_thuc, muc_dich, nguoi_dat, trang_thai, ngay_tao)
    VALUES (@dp_id, @phong_id_dp, 
            DATEADD(DAY, @dp_id, '2024-09-01'),
            6, 9,
            CASE (@dp_id % 4)
                WHEN 0 THEN N'Họp khoa'
                WHEN 1 THEN N'Seminar nghiên cứu'
                WHEN 2 THEN N'Thi vấn đáp'
                ELSE N'Bảo vệ đồ án'
            END,
            @nguoi_dat_id,
            CASE (@dp_id % 3)
                WHEN 0 THEN 'approved'
                WHEN 1 THEN 'pending'
                ELSE 'approved'
            END,
            GETDATE());
    
    SET @dp_id = @dp_id + 1;
END;

SET IDENTITY_INSERT dat_phong OFF;
GO

-- =============================================
-- 21. BẢNG HOC_PHI (Học phí)
-- =============================================
PRINT N'Đang chèn dữ liệu bảng hoc_phi...';

SET IDENTITY_INSERT hoc_phi ON;

DECLARE @hp_id INT = 1;
DECLARE @sv_id_hp INT;
DECLARE @hoc_ky_id_hp INT;

-- Tạo học phí cho tất cả sinh viên trong các học kỳ
WHILE @hp_id <= 180  -- 30 sinh viên x 6 học kỳ
BEGIN
    SET @sv_id_hp = ((@hp_id - 1) % 30) + 1;
    SET @hoc_ky_id_hp = ((@hp_id - 1) / 30) + 1;
    
    INSERT INTO hoc_phi (id_hoc_phi, id_sinh_vien, id_hoc_ky, so_tien, han_dong, da_dong, ngay_tao)
    VALUES (@hp_id, @sv_id_hp, @hoc_ky_id_hp,
            CASE 
                WHEN @hoc_ky_id_hp IN (1, 3, 5) THEN 15000000  -- Học kỳ chính
                ELSE 12000000  -- Học kỳ phụ
            END,
            DATEADD(MONTH, 1, (SELECT ngay_bat_dau FROM hoc_ky WHERE id_hoc_ky = @hoc_ky_id_hp)),
            CASE 
                WHEN @hoc_ky_id_hp <= 2 THEN 1  -- Học kỳ cũ đã đóng
                WHEN @hp_id % 3 = 0 THEN 1   -- 1/3 số học phí hiện tại đã đóng
                ELSE 0
            END,
            DATEADD(DAY, -30, (SELECT ngay_bat_dau FROM hoc_ky WHERE id_hoc_ky = @hoc_ky_id_hp)));
    
    SET @hp_id = @hp_id + 1;
END;

SET IDENTITY_INSERT hoc_phi OFF;
GO

-- =============================================
-- 22. BẢNG THANH_TOAN (Thanh toán)
-- =============================================
PRINT N'Đang chèn dữ liệu bảng thanh_toan...';

SET IDENTITY_INSERT thanh_toan ON;

DECLARE @tt_id INT = 1;
DECLARE @hp_id_tt INT;
DECLARE @so_tien_tt DECIMAL(15,2);
DECLARE @hoc_ky_id_tt INT;

-- Tạo thanh toán cho các học phí đã đóng
DECLARE hp_cursor CURSOR FOR 
    SELECT id_hoc_phi, so_tien, id_hoc_ky FROM hoc_phi WHERE da_dong = 1;

OPEN hp_cursor;
FETCH NEXT FROM hp_cursor INTO @hp_id_tt, @so_tien_tt, @hoc_ky_id_tt;

WHILE @@FETCH_STATUS = 0
BEGIN
    INSERT INTO thanh_toan (id_thanh_toan, id_hoc_phi, so_tien, ngay_thanh_toan, phuong_thuc_thanh_toan, so_bien_lai, trang_thai, ngay_tao)
    VALUES (@tt_id, @hp_id_tt, @so_tien_tt,
            DATEADD(DAY, -15, (SELECT ngay_bat_dau FROM hoc_ky WHERE id_hoc_ky = @hoc_ky_id_tt)),
            CASE (@tt_id % 3)
                WHEN 0 THEN N'Chuyển khoản'
                WHEN 1 THEN N'Tiền mặt'
                ELSE N'Ví điện tử'
            END,
            'BL' + RIGHT('000000' + CAST(@tt_id AS VARCHAR), 6),
            'completed',
            DATEADD(DAY, -15, (SELECT ngay_bat_dau FROM hoc_ky WHERE id_hoc_ky = @hoc_ky_id_tt)));
    
    SET @tt_id = @tt_id + 1;
    FETCH NEXT FROM hp_cursor INTO @hp_id_tt, @so_tien_tt, @hoc_ky_id_tt;
END;

CLOSE hp_cursor;
DEALLOCATE hp_cursor;

SET IDENTITY_INSERT thanh_toan OFF;
GO

-- =============================================
-- 23. BẢNG TAI_LIEU (Tài liệu)
-- =============================================
PRINT N'Đang chèn dữ liệu bảng tai_lieu...';

SET IDENTITY_INSERT tai_lieu ON;

DECLARE @tl_id INT = 1;
DECLARE @khoa_hoc_id_tl INT;
DECLARE @giang_vien_id_tl INT;
DECLARE @nguoi_id_tl INT;
DECLARE @nguoi_dung_id_tl INT;

-- Tạo tài liệu cho các khóa học
WHILE @tl_id <= 60
BEGIN
    SET @khoa_hoc_id_tl = ((@tl_id - 1) % 30) + 1;
    
    SELECT @giang_vien_id_tl = id_giang_vien FROM khoa_hoc WHERE id_khoa_hoc = @khoa_hoc_id_tl;
    SELECT @nguoi_id_tl = id_nguoi FROM giang_vien WHERE id_giang_vien = @giang_vien_id_tl;
    SELECT @nguoi_dung_id_tl = id_nguoi_dung FROM nguoi_dung WHERE id_nguoi = @nguoi_id_tl;
    
    INSERT INTO tai_lieu (id_tai_lieu, id_khoa_hoc, ten_file, duong_dan_file, loai_file, kich_thuoc_file, nguoi_upload, mo_ta, ngay_tao)
    VALUES (@tl_id, @khoa_hoc_id_tl,
            CASE (@tl_id % 4)
                WHEN 0 THEN N'Bài giảng tuần ' + CAST(((@tl_id % 10) + 1) AS NVARCHAR) + '.pdf'
                WHEN 1 THEN N'Bài tập ' + CAST(((@tl_id % 10) + 1) AS NVARCHAR) + '.docx'
                WHEN 2 THEN N'Slide bài giảng ' + CAST(((@tl_id % 10) + 1) AS NVARCHAR) + '.pptx'
                ELSE N'Tài liệu tham khảo ' + CAST(((@tl_id % 10) + 1) AS NVARCHAR) + '.pdf'
            END,
            '/uploads/courses/' + CAST(@khoa_hoc_id_tl AS NVARCHAR) + '/' + CAST(@tl_id AS NVARCHAR) + 
            CASE (@tl_id % 4)
                WHEN 0 THEN '.pdf'
                WHEN 1 THEN '.docx'
                WHEN 2 THEN '.pptx'
                ELSE '.pdf'
            END,
            CASE (@tl_id % 4)
                WHEN 0 THEN 'pdf'
                WHEN 1 THEN 'docx'
                WHEN 2 THEN 'pptx'
                ELSE 'pdf'
            END,
            (ABS(CHECKSUM(NEWID())) % 5000000) + 100000,
            @nguoi_dung_id_tl,
            N'Tài liệu học tập môn học',
            DATEADD(DAY, -(@tl_id % 30), GETDATE()));
    
    SET @tl_id = @tl_id + 1;
END;

SET IDENTITY_INSERT tai_lieu OFF;
GO

-- =============================================
-- 24. BẢNG THONG_BAO (Thông báo)
-- =============================================
PRINT N'Đang chèn dữ liệu bảng thong_bao...';

SET IDENTITY_INSERT thong_bao ON;

DECLARE @tb_id INT = 1;
DECLARE @nguoi_gui_id INT;
DECLARE @nguoi_nhan_id INT;

-- Tạo thông báo từ admin đến sinh viên
WHILE @tb_id <= 50
BEGIN
    -- Chọn admin ngẫu nhiên
    SELECT TOP 1 @nguoi_gui_id = id_nguoi_dung FROM nguoi_dung WHERE id_nguoi_dung BETWEEN 1 AND 5 ORDER BY NEWID();
    -- Chọn sinh viên ngẫu nhiên
    SELECT TOP 1 @nguoi_nhan_id = id_nguoi_dung FROM nguoi_dung WHERE id_nguoi_dung BETWEEN 21 AND 50 ORDER BY NEWID();
    
    INSERT INTO thong_bao (id_thong_bao, id_nguoi_gui, id_nguoi_nhan, loai_thong_bao, tieu_de, noi_dung, da_doc, ngay_tao)
    VALUES (@tb_id, @nguoi_gui_id, @nguoi_nhan_id,
            CASE (@tb_id % 5)
                WHEN 0 THEN 'diem_so'
                WHEN 1 THEN 'hoc_phi'
                WHEN 2 THEN 'lich_hoc'
                WHEN 3 THEN 'thong_bao_chung'
                ELSE 'he_thong'
            END,
            CASE (@tb_id % 5)
                WHEN 0 THEN N'Thông báo điểm thi'
                WHEN 1 THEN N'Nhắc nhở đóng học phí'
                WHEN 2 THEN N'Thay đổi lịch học'
                WHEN 3 THEN N'Thông báo chung từ nhà trường'
                ELSE N'Thông báo hệ thống'
            END,
            CASE (@tb_id % 5)
                WHEN 0 THEN N'Điểm thi học kỳ của bạn đã được cập nhật. Vui lòng kiểm tra.'
                WHEN 1 THEN N'Học phí học kỳ sắp đến hạn. Vui lòng thanh toán trước ngày ' + CONVERT(NVARCHAR, DATEADD(DAY, 7, GETDATE()), 103)
                WHEN 2 THEN N'Lịch học môn XYZ đã được thay đổi. Vui lòng kiểm tra lịch mới.'
                WHEN 3 THEN N'Nhà trường thông báo về lịch nghỉ lễ sắp tới.'
                ELSE N'Hệ thống sẽ bảo trì vào cuối tuần này.'
            END,
            CASE WHEN @tb_id % 3 = 0 THEN 1 ELSE 0 END,
            DATEADD(DAY, -(@tb_id % 30), GETDATE()));
    
    SET @tb_id = @tb_id + 1;
END;

-- Tạo thông báo từ giảng viên đến sinh viên
WHILE @tb_id <= 100
BEGIN
    -- Chọn giảng viên ngẫu nhiên
    SELECT TOP 1 @nguoi_gui_id = id_nguoi_dung FROM nguoi_dung WHERE id_nguoi_dung BETWEEN 6 AND 20 ORDER BY NEWID();
    -- Chọn sinh viên ngẫu nhiên
    SELECT TOP 1 @nguoi_nhan_id = id_nguoi_dung FROM nguoi_dung WHERE id_nguoi_dung BETWEEN 21 AND 50 ORDER BY NEWID();
    
    INSERT INTO thong_bao (id_thong_bao, id_nguoi_gui, id_nguoi_nhan, loai_thong_bao, tieu_de, noi_dung, da_doc, ngay_tao)
    VALUES (@tb_id, @nguoi_gui_id, @nguoi_nhan_id,
            CASE (@tb_id % 3)
                WHEN 0 THEN 'diem_so'
                WHEN 1 THEN 'lich_hoc'
                ELSE 'thong_bao_chung'
            END,
            CASE (@tb_id % 3)
                WHEN 0 THEN N'Thông báo điểm bài kiểm tra'
                WHEN 1 THEN N'Thông báo lịch thi'
                ELSE N'Thông báo về đồ án môn học'
            END,
            N'Nội dung thông báo từ giảng viên.',
            CASE WHEN @tb_id % 2 = 0 THEN 1 ELSE 0 END,
            DATEADD(DAY, -(@tb_id % 20), GETDATE()));
    
    SET @tb_id = @tb_id + 1;
END;

SET IDENTITY_INSERT thong_bao OFF;
GO

PRINT N'==========================================';
PRINT N'Hoàn thành chèn dữ liệu mẫu (Phần 2)!';
PRINT N'==========================================';
PRINT N'Tổng kết:';
PRINT N'- Bảng sinh_vien_khoa_hoc: ~100+ bản ghi';
PRINT N'- Bảng lich_hoc: ~60+ bản ghi';
PRINT N'- Bảng dat_phong: 20 bản ghi';
PRINT N'- Bảng hoc_phi: 180 bản ghi';
PRINT N'- Bảng thanh_toan: ~120+ bản ghi';
PRINT N'- Bảng tai_lieu: 60 bản ghi';
PRINT N'- Bảng thong_bao: 100 bản ghi';
PRINT N'==========================================';
GO