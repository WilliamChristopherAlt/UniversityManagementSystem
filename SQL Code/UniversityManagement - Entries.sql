USE UniversityManagement;
GO

-- =============================================
-- INSERT SAMPLE DATA
-- =============================================

PRINT '==========================================';
PRINT 'Starting data insertion...';
PRINT '==========================================';

-- =============================================
-- 1. ACADEMIC YEARS (3 entries)
-- =============================================
PRINT 'Inserting Academic Years...';

INSERT INTO nam_hoc (ngay_bat_dau, ngay_ket_thuc) VALUES
('2023-09-01', '2024-06-30'),
('2024-09-01', '2025-06-30'),
('2025-09-01', '2026-06-30');

-- =============================================
-- 2. BUILDINGS (3 entries)
-- =============================================
PRINT 'Inserting Buildings...';

INSERT INTO toa_nha (ten_toa_nha, ma_toa_nha, dia_chi) VALUES
(N'Tòa Nhà A - Khoa Học Tự Nhiên', 'TNA', N'227 Nguyễn Văn Cừ, Quận 5, TP.HCM'),
(N'Tòa Nhà B - Công Nghệ Thông Tin', 'TNB', N'268 Lý Thường Kiệt, Quận 10, TP.HCM'),
(N'Tòa Nhà C - Khoa Học Xã Hội', 'TNC', N'273 An Dương Vương, Quận 5, TP.HCM');

-- =============================================
-- 3. USERS (50 entries)
-- =============================================
PRINT 'Inserting Users...';

-- 5 Admin Users
INSERT INTO nguoi_dung (ten_dang_nhap, mat_khau_hash, email, so_dien_thoai, vai_tro, trang_thai, anh_dai_dien) VALUES
('admin01', 'hash_admin01_password', 'admin01@university.edu.vn', '0901234501', 'admin', 'active', '/images/avatars/admin01.jpg'),
('admin02', 'hash_admin02_password', 'admin02@university.edu.vn', '0901234502', 'admin', 'active', '/images/avatars/admin02.jpg'),
('admin03', 'hash_admin03_password', 'admin03@university.edu.vn', '0901234503', 'admin', 'active', '/images/avatars/admin03.jpg'),
('admin04', 'hash_admin04_password', 'admin04@university.edu.vn', '0901234504', 'admin', 'active', '/images/avatars/admin04.jpg'),
('admin05', 'hash_admin05_password', 'admin05@university.edu.vn', '0901234505', 'admin', 'active', '/images/avatars/admin05.jpg');
GO
-- 15 Teacher Users
INSERT INTO nguoi_dung (ten_dang_nhap, mat_khau_hash, email, so_dien_thoai, vai_tro, trang_thai, anh_dai_dien) VALUES
('gv001', 'hash_gv001_password', 'nguyen.van.a@university.edu.vn', '0912345601', 'giang_vien', 'active', '/images/avatars/gv001.jpg'),
('gv002', 'hash_gv002_password', 'tran.thi.b@university.edu.vn', '0912345602', 'giang_vien', 'active', '/images/avatars/gv002.jpg'),
('gv003', 'hash_gv003_password', 'le.van.c@university.edu.vn', '0912345603', 'giang_vien', 'active', '/images/avatars/gv003.jpg'),
('gv004', 'hash_gv004_password', 'pham.thi.d@university.edu.vn', '0912345604', 'giang_vien', 'active', '/images/avatars/gv004.jpg'),
('gv005', 'hash_gv005_password', 'hoang.van.e@university.edu.vn', '0912345605', 'giang_vien', 'active', '/images/avatars/gv005.jpg'),
('gv006', 'hash_gv006_password', 'vo.thi.f@university.edu.vn', '0912345606', 'giang_vien', 'active', '/images/avatars/gv006.jpg'),
('gv007', 'hash_gv007_password', 'dang.van.g@university.edu.vn', '0912345607', 'giang_vien', 'active', '/images/avatars/gv007.jpg'),
('gv008', 'hash_gv008_password', 'bui.thi.h@university.edu.vn', '0912345608', 'giang_vien', 'active', '/images/avatars/gv008.jpg'),
('gv009', 'hash_gv009_password', 'do.van.i@university.edu.vn', '0912345609', 'giang_vien', 'active', '/images/avatars/gv009.jpg'),
('gv010', 'hash_gv010_password', 'ho.thi.k@university.edu.vn', '0912345610', 'giang_vien', 'active', '/images/avatars/gv010.jpg'),
('gv011', 'hash_gv011_password', 'ngo.van.l@university.edu.vn', '0912345611', 'giang_vien', 'active', '/images/avatars/gv011.jpg'),
('gv012', 'hash_gv012_password', 'duong.thi.m@university.edu.vn', '0912345612', 'giang_vien', 'active', '/images/avatars/gv012.jpg'),
('gv013', 'hash_gv013_password', 'ly.van.n@university.edu.vn', '0912345613', 'giang_vien', 'active', '/images/avatars/gv013.jpg'),
('gv014', 'hash_gv014_password', 'truong.thi.o@university.edu.vn', '0912345614', 'giang_vien', 'active', '/images/avatars/gv014.jpg'),
('gv015', 'hash_gv015_password', 'phan.van.p@university.edu.vn', '0912345615', 'giang_vien', 'active', '/images/avatars/gv015.jpg');
GO
-- 30 Student Users
INSERT INTO nguoi_dung (ten_dang_nhap, mat_khau_hash, email, so_dien_thoai, vai_tro, trang_thai, anh_dai_dien) VALUES
('sv001', 'hash_sv001_password', 'sv001@student.university.edu.vn', '0923456701', 'sinh_vien', 'active', '/images/avatars/sv001.jpg'),
('sv002', 'hash_sv002_password', 'sv002@student.university.edu.vn', '0923456702', 'sinh_vien', 'active', '/images/avatars/sv002.jpg'),
('sv003', 'hash_sv003_password', 'sv003@student.university.edu.vn', '0923456703', 'sinh_vien', 'active', '/images/avatars/sv003.jpg'),
('sv004', 'hash_sv004_password', 'sv004@student.university.edu.vn', '0923456704', 'sinh_vien', 'active', '/images/avatars/sv004.jpg'),
('sv005', 'hash_sv005_password', 'sv005@student.university.edu.vn', '0923456705', 'sinh_vien', 'active', '/images/avatars/sv005.jpg'),
('sv006', 'hash_sv006_password', 'sv006@student.university.edu.vn', '0923456706', 'sinh_vien', 'active', '/images/avatars/sv006.jpg'),
('sv007', 'hash_sv007_password', 'sv007@student.university.edu.vn', '0923456707', 'sinh_vien', 'active', '/images/avatars/sv007.jpg'),
('sv008', 'hash_sv008_password', 'sv008@student.university.edu.vn', '0923456708', 'sinh_vien', 'active', '/images/avatars/sv008.jpg'),
('sv009', 'hash_sv009_password', 'sv009@student.university.edu.vn', '0923456709', 'sinh_vien', 'active', '/images/avatars/sv009.jpg'),
('sv010', 'hash_sv010_password', 'sv010@student.university.edu.vn', '0923456710', 'sinh_vien', 'active', '/images/avatars/sv010.jpg'),
('sv011', 'hash_sv011_password', 'sv011@student.university.edu.vn', '0923456711', 'sinh_vien', 'active', '/images/avatars/sv011.jpg'),
('sv012', 'hash_sv012_password', 'sv012@student.university.edu.vn', '0923456712', 'sinh_vien', 'active', '/images/avatars/sv012.jpg'),
('sv013', 'hash_sv013_password', 'sv013@student.university.edu.vn', '0923456713', 'sinh_vien', 'active', '/images/avatars/sv013.jpg'),
('sv014', 'hash_sv014_password', 'sv014@student.university.edu.vn', '0923456714', 'sinh_vien', 'active', '/images/avatars/sv014.jpg'),
('sv015', 'hash_sv015_password', 'sv015@student.university.edu.vn', '0923456715', 'sinh_vien', 'active', '/images/avatars/sv015.jpg'),
('sv016', 'hash_sv016_password', 'sv016@student.university.edu.vn', '0923456716', 'sinh_vien', 'active', '/images/avatars/sv016.jpg'),
('sv017', 'hash_sv017_password', 'sv017@student.university.edu.vn', '0923456717', 'sinh_vien', 'active', '/images/avatars/sv017.jpg'),
('sv018', 'hash_sv018_password', 'sv018@student.university.edu.vn', '0923456718', 'sinh_vien', 'active', '/images/avatars/sv018.jpg'),
('sv019', 'hash_sv019_password', 'sv019@student.university.edu.vn', '0923456719', 'sinh_vien', 'active', '/images/avatars/sv019.jpg'),
('sv020', 'hash_sv020_password', 'sv020@student.university.edu.vn', '0923456720', 'sinh_vien', 'active', '/images/avatars/sv020.jpg'),
('sv021', 'hash_sv021_password', 'sv021@student.university.edu.vn', '0923456721', 'sinh_vien', 'active', '/images/avatars/sv021.jpg'),
('sv022', 'hash_sv022_password', 'sv022@student.university.edu.vn', '0923456722', 'sinh_vien', 'active', '/images/avatars/sv022.jpg'),
('sv023', 'hash_sv023_password', 'sv023@student.university.edu.vn', '0923456723', 'sinh_vien', 'active', '/images/avatars/sv023.jpg'),
('sv024', 'hash_sv024_password', 'sv024@student.university.edu.vn', '0923456724', 'sinh_vien', 'active', '/images/avatars/sv024.jpg'),
('sv025', 'hash_sv025_password', 'sv025@student.university.edu.vn', '0923456725', 'sinh_vien', 'active', '/images/avatars/sv025.jpg'),
('sv026', 'hash_sv026_password', 'sv026@student.university.edu.vn', '0923456726', 'sinh_vien', 'active', '/images/avatars/sv026.jpg'),
('sv027', 'hash_sv027_password', 'sv027@student.university.edu.vn', '0923456727', 'sinh_vien', 'active', '/images/avatars/sv027.jpg'),
('sv028', 'hash_sv028_password', 'sv028@student.university.edu.vn', '0923456728', 'sinh_vien', 'active', '/images/avatars/sv028.jpg'),
('sv029', 'hash_sv029_password', 'sv029@student.university.edu.vn', '0923456729', 'sinh_vien', 'active', '/images/avatars/sv029.jpg'),
('sv030', 'hash_sv030_password', 'sv030@student.university.edu.vn', '0923456730', 'sinh_vien', 'active', '/images/avatars/sv030.jpg');
GO
-- =============================================
-- 4. DEPARTMENTS (5 entries)
-- =============================================
PRINT 'Inserting Departments...';

INSERT INTO khoa (ten_khoa, ma_khoa) VALUES
(N'Khoa Công Nghệ Thông Tin', 'CNTT'),
(N'Khoa Khoa Học Tự Nhiên', 'KHTN'),
(N'Khoa Kinh Tế', 'KT'),
(N'Khoa Khoa Học Xã Hội', 'KHXH'),
(N'Khoa Kỹ Thuật', 'KThuat');
GO
-- =============================================
-- 5. TEACHERS (15 entries)
-- =============================================
PRINT 'Inserting Teachers...';

INSERT INTO giang_vien (id_nguoi_dung, ma_giang_vien, ho_ten, bang_cap, chuyen_mon, id_khoa, ngay_vao_lam, trang_thai) VALUES
(6, 'GV001', N'Nguyễn Văn An', N'Tiến sĩ', N'Lập trình Web, Cơ sở dữ liệu', 1, '2015-09-01', 'active'),
(7, 'GV002', N'Trần Thị Bình', N'Thạc sĩ', N'Trí tuệ nhân tạo, Machine Learning', 1, '2016-03-15', 'active'),
(8, 'GV003', N'Lê Văn Cường', N'Tiến sĩ', N'Mạng máy tính, An ninh mạng', 1, '2014-08-20', 'active'),
(9, 'GV004', N'Phạm Thị Dung', N'Thạc sĩ', N'Toán học ứng dụng, Xác suất thống kê', 2, '2017-01-10', 'active'),
(10, 'GV005', N'Hoàng Văn Em', N'Tiến sĩ', N'Vật lý lý thuyết, Cơ học lượng tử', 2, '2013-09-01', 'active'),
(11, 'GV006', N'Võ Thị Phượng', N'Thạc sĩ', N'Hóa học hữu cơ, Hóa sinh', 2, '2018-02-15', 'active'),
(12, 'GV007', N'Đặng Văn Giang', N'Tiến sĩ', N'Kinh tế vi mô, Kinh tế vĩ mô', 3, '2015-07-01', 'active'),
(13, 'GV008', N'Bùi Thị Hà', N'Thạc sĩ', N'Quản trị kinh doanh, Marketing', 3, '2016-09-01', 'active'),
(14, 'GV009', N'Đỗ Văn Ích', N'Tiến sĩ', N'Tài chính ngân hàng, Kế toán', 3, '2014-03-15', 'active'),
(15, 'GV010', N'Hồ Thị Kim', N'Thạc sĩ', N'Xã hội học, Tâm lý học xã hội', 4, '2017-08-01', 'active'),
(16, 'GV011', N'Ngô Văn Long', N'Tiến sĩ', N'Lịch sử Việt Nam, Văn hóa học', 4, '2013-09-01', 'active'),
(17, 'GV012', N'Dương Thị Mai', N'Thạc sĩ', N'Ngôn ngữ học, Văn học Việt Nam', 4, '2018-01-15', 'active'),
(18, 'GV013', N'Lý Văn Nam', N'Tiến sĩ', N'Kỹ thuật điện, Tự động hóa', 5, '2015-02-01', 'active'),
(19, 'GV014', N'Trương Thị Oanh', N'Thạc sĩ', N'Kỹ thuật cơ khí, CAD/CAM', 5, '2016-07-15', 'active'),
(20, 'GV015', N'Phan Văn Phúc', N'Tiến sĩ', N'Kỹ thuật xây dựng, Kết cấu công trình', 5, '2014-09-01', 'active');

-- Update department heads
UPDATE khoa SET id_truong_khoa = 1 WHERE ma_khoa = 'CNTT';
UPDATE khoa SET id_truong_khoa = 4 WHERE ma_khoa = 'KHTN';
UPDATE khoa SET id_truong_khoa = 7 WHERE ma_khoa = 'KT';
UPDATE khoa SET id_truong_khoa = 10 WHERE ma_khoa = 'KHXH';
UPDATE khoa SET id_truong_khoa = 13 WHERE ma_khoa = 'KThuat';

-- =============================================
-- 6. STUDENTS (30 entries)
-- =============================================
PRINT 'Inserting Students...';

INSERT INTO sinh_vien (id_nguoi_dung, ma_sinh_vien, ho_ten, ngay_sinh, gioi_tinh, dia_chi, trang_thai) VALUES
(21, 'SV001', N'Nguyễn Văn Anh', '2003-05-15', N'Nam', N'123 Nguyễn Thị Minh Khai, Q1, TP.HCM', 'active'),
(22, 'SV002', N'Trần Thị Bảo', '2003-08-20', N'Nữ', N'456 Lê Văn Sỹ, Q3, TP.HCM', 'active'),
(23, 'SV003', N'Lê Văn Cường', '2003-03-10', N'Nam', N'789 Võ Văn Tần, Q3, TP.HCM', 'active'),
(24, 'SV004', N'Phạm Thị Duyên', '2003-11-25', N'Nữ', N'321 Điện Biên Phủ, Q10, TP.HCM', 'active'),
(25, 'SV005', N'Hoàng Văn Em', '2003-07-08', N'Nam', N'654 Cách Mạng Tháng 8, Q10, TP.HCM', 'active'),
(26, 'SV006', N'Võ Thị Phương', '2003-12-30', N'Nữ', N'987 Trần Hưng Đạo, Q5, TP.HCM', 'active'),
(27, 'SV007', N'Đặng Văn Giang', '2003-04-18', N'Nam', N'147 Nguyễn Trãi, Q5, TP.HCM', 'active'),
(28, 'SV008', N'Bùi Thị Hồng', '2003-09-05', N'Nữ', N'258 Lý Chính Thắng, Q3, TP.HCM', 'active'),
(29, 'SV009', N'Đỗ Văn Ích', '2003-06-22', N'Nam', N'369 Hoàng Văn Thụ, Tân Bình, TP.HCM', 'active'),
(30, 'SV010', N'Hồ Thị Khánh', '2003-10-14', N'Nữ', N'741 Cộng Hòa, Tân Bình, TP.HCM', 'active'),
(31, 'SV011', N'Ngô Văn Linh', '2003-02-28', N'Nam', N'852 Phan Văn Trị, Gò Vấp, TP.HCM', 'active'),
(32, 'SV012', N'Dương Thị My', '2003-08-17', N'Nữ', N'963 Quang Trung, Gò Vấp, TP.HCM', 'active'),
(33, 'SV013', N'Lý Văn Nghĩa', '2003-05-09', N'Nam', N'159 Phan Huy Ích, Tân Bình, TP.HCM', 'active'),
(34, 'SV014', N'Trương Thị Oanh', '2003-11-03', N'Nữ', N'357 Lạc Long Quân, Q11, TP.HCM', 'active'),
(35, 'SV015', N'Phan Văn Phong', '2003-07-26', N'Nam', N'486 Âu Cơ, Tân Phú, TP.HCM', 'active'),
(36, 'SV016', N'Mai Thị Quỳnh', '2003-03-19', N'Nữ', N'753 Lũy Bán Bích, Tân Phú, TP.HCM', 'active'),
(37, 'SV017', N'Trịnh Văn Rồng', '2003-09-12', N'Nam', N'864 Tân Kỳ Tân Quý, Tân Phú, TP.HCM', 'active'),
(38, 'SV018', N'Vũ Thị Sang', '2003-12-07', N'Nữ', N'975 Hòa Bình, Tân Phú, TP.HCM', 'active'),
(39, 'SV019', N'Đinh Văn Tài', '2003-06-01', N'Nam', N'186 Hậu Giang, Q6, TP.HCM', 'active'),
(40, 'SV020', N'Cao Thị Uyên', '2003-10-23', N'Nữ', N'297 Minh Phụng, Q6, TP.HCM', 'active'),
(41, 'SV021', N'Huỳnh Văn Vũ', '2003-04-16', N'Nam', N'408 Bình Thới, Q11, TP.HCM', 'active'),
(42, 'SV022', N'Đoàn Thị Xuân', '2003-08-29', N'Nữ', N'519 Lê Đại Hành, Q11, TP.HCM', 'active'),
(43, 'SV023', N'Lương Văn Yên', '2003-05-11', N'Nam', N'630 Đường 3/2, Q10, TP.HCM', 'active'),
(44, 'SV024', N'Tô Thị Zoan', '2003-11-24', N'Nữ', N'741 Sư Vạn Hạnh, Q10, TP.HCM', 'active'),
(45, 'SV025', N'Quách Văn An', '2003-07-07', N'Nam', N'852 Nguyễn Chí Thanh, Q5, TP.HCM', 'active'),
(46, 'SV026', N'Tăng Thị Bích', '2003-02-20', N'Nữ', N'963 Trần Bình Trọng, Q5, TP.HCM', 'active'),
(47, 'SV027', N'Âu Văn Cảnh', '2003-09-13', N'Nam', N'174 Hai Bà Trưng, Q1, TP.HCM', 'active'),
(48, 'SV028', N'Ông Thị Diễm', '2003-12-06', N'Nữ', N'285 Pasteur, Q1, TP.HCM', 'active'),
(49, 'SV029', N'Uông Văn Đức', '2003-06-18', N'Nam', N'396 Nguyễn Đình Chiểu, Q3, TP.HCM', 'active'),
(50, 'SV030', N'Từ Thị Linh', '2003-10-31', N'Nữ', N'507 Nam Kỳ Khởi Nghĩa, Q3, TP.HCM', 'active');

-- =============================================
-- 7. CLASSES (10 entries)
-- =============================================
PRINT 'Inserting Classes...';

INSERT INTO lop (ma_lop, ten_lop, id_nam_hoc_bat_dau, id_nam_hoc_ket_thuc) VALUES
('CNTT01-2023', N'Công Nghệ Thông Tin 01 - Khóa 2023', 1, NULL),
('CNTT02-2023', N'Công Nghệ Thông Tin 02 - Khóa 2023', 1, NULL),
('KHTN01-2023', N'Khoa Học Tự Nhiên 01 - Khóa 2023', 1, NULL),
('KT01-2023', N'Kinh Tế 01 - Khóa 2023', 1, NULL),
('KHXH01-2023', N'Khoa Học Xã Hội 01 - Khóa 2023', 1, NULL),
('CNTT01-2024', N'Công Nghệ Thông Tin 01 - Khóa 2024', 2, NULL),
('CNTT02-2024', N'Công Nghệ Thông Tin 02 - Khóa 2024', 2, NULL),
('KHTN01-2024', N'Khoa Học Tự Nhiên 01 - Khóa 2024', 2, NULL),
('KT01-2024', N'Kinh Tế 01 - Khóa 2024', 2, NULL),
('KThuat01-2024', N'Kỹ Thuật 01 - Khóa 2024', 2, NULL);

-- =============================================
-- 8. SUBJECTS (25 entries)
-- =============================================
PRINT 'Inserting Subjects...';

INSERT INTO mon_hoc (ten_mon_hoc, ma_mon_hoc, so_tin_chi, gio_ly_thuyet, gio_thuc_hanh, id_khoa) VALUES
-- IT Department
(N'Lập trình căn bản', 'CNTT101', 3, 30, 30, 1),
(N'Cấu trúc dữ liệu và giải thuật', 'CNTT102', 4, 45, 15, 1),
(N'Cơ sở dữ liệu', 'CNTT201', 3, 30, 30, 1),
(N'Lập trình hướng đối tượng', 'CNTT202', 3, 30, 30, 1),
(N'Phát triển ứng dụng Web', 'CNTT301', 4, 30, 45, 1),
-- Natural Science Department
(N'Giải tích 1', 'KHTN101', 4, 60, 0, 2),
(N'Đại số tuyến tính', 'KHTN102', 3, 45, 0, 2),
(N'Vật lý đại cương 1', 'KHTN201', 3, 30, 30, 2),
(N'Hóa học đại cương', 'KHTN202', 3, 30, 30, 2),
(N'Xác suất thống kê', 'KHTN301', 3, 45, 0, 2),
-- Economics Department
(N'Kinh tế vi mô', 'KT101', 3, 45, 0, 3),
(N'Kinh tế vĩ mô', 'KT102', 3, 45, 0, 3),
(N'Nguyên lý kế toán', 'KT201', 3, 30, 30, 3),
(N'Quản trị học', 'KT202', 3, 45, 0, 3),
(N'Marketing căn bản', 'KT301', 3, 30, 15, 3),
-- Social Science Department
(N'Triết học Mác - Lênin', 'KHXH101', 3, 45, 0, 4),
(N'Kinh tế chính trị Mác - Lênin', 'KHXH102', 2, 30, 0, 4),
(N'Chủ nghĩa xã hội khoa học', 'KHXH103', 2, 30, 0, 4),
(N'Lịch sử Đảng Cộng sản Việt Nam', 'KHXH201', 2, 30, 0, 4),
(N'Tư tưởng Hồ Chí Minh', 'KHXH202', 2, 30, 0, 4),
-- Engineering Department
(N'Kỹ thuật điện cơ bản', 'KT101E', 3, 30, 30, 5),
(N'Vẽ kỹ thuật', 'KT102E', 2, 15, 30, 5),
(N'Cơ học kỹ thuật', 'KT201E', 4, 45, 15, 5),
(N'Kỹ thuật số', 'KT202E', 3, 30, 30, 5),
(N'Tự động hóa', 'KT301E', 4, 30, 45, 5);

-- =============================================
-- 9. PREREQUISITES (10 entries)
-- =============================================
PRINT 'Inserting Prerequisites...';

INSERT INTO mon_hoc_tien_quyet (id_mon_hoc, id_mon_hoc_can_truoc, diem_toi_thieu) VALUES
(2, 1, 'D'),   -- Data Structures requires Basic Programming
(3, 1, 'D'),   -- Database requires Basic Programming
(4, 1, 'D'),   -- OOP requires Basic Programming
(5, 3, 'C'),   -- Web Dev requires Database
(5, 4, 'C'),   -- Web Dev requires OOP
(10, 6, 'D'),  -- Probability requires Calculus 1
(13, 11, 'D'), -- Accounting requires Microeconomics
(15, 14, 'D'), -- Marketing requires Management
(23, 21, 'D'), -- Mechanical Engineering requires Basic Electrical
(25, 24, 'C'); -- Automation requires Digital Engineering

-- =============================================
-- 10. SEMESTERS (6 entries)
-- =============================================
PRINT 'Inserting Semesters...';

INSERT INTO hoc_ky (ten_hoc_ky, id_nam_hoc, loai_hoc_ky, ngay_bat_dau, ngay_ket_thuc, ngay_bat_dau_dang_ky, ngay_ket_thuc_dang_ky) VALUES
(N'Học kỳ 1 năm 2023-2024', 1, 'chinh', '2023-09-01', '2024-01-15', '2023-08-15', '2023-08-31'),
(N'Học kỳ 2 năm 2023-2024', 1, 'chinh', '2024-01-20', '2024-06-30', '2024-01-05', '2024-01-19'),
(N'Học kỳ 1 năm 2024-2025', 2, 'chinh', '2024-09-01', '2025-01-15', '2024-08-15', '2024-08-31'),
(N'Học kỳ 2 năm 2024-2025', 2, 'chinh', '2025-01-20', '2025-06-30', '2025-01-05', '2025-01-19'),
(N'Học kỳ 1 năm 2025-2026', 3, 'chinh', '2025-09-01', '2026-01-15', '2025-08-15', '2025-08-31'),
(N'Học kỳ 2 năm 2025-2026', 3, 'chinh', '2026-01-20', '2026-06-30', '2026-01-05', '2026-01-19');

-- =============================================
-- 11. WEEKS AND DAYS (Generated with loop)
-- =============================================
PRINT 'Generating Weeks and Days...';

-- Generate weeks for each semester (16 weeks per semester)
DECLARE @semId INT = 1;
DECLARE @weekNum INT;
DECLARE @startDate DATE;
DECLARE @endDate DATE;
DECLARE @dayOfWeek INT;
DECLARE @currentDate DATE;
DECLARE @dayName NVARCHAR(20);
DECLARE @weekId INT;

WHILE @semId <= 6
BEGIN
    -- Get semester start date
    SELECT @startDate = ngay_bat_dau FROM hoc_ky WHERE id_hoc_ky = @semId;
    
    -- Generate 16 weeks
    SET @weekNum = 1;
    WHILE @weekNum <= 16
    BEGIN
        SET @currentDate = DATEADD(WEEK, @weekNum - 1, @startDate);
        SET @endDate = DATEADD(DAY, 6, @currentDate);
        
        INSERT INTO tuan (id_hoc_ky, thu_tu_tuan, ngay_bat_dau, ngay_ket_thuc)
        VALUES (@semId, @weekNum, @currentDate, @endDate);
        
        SET @weekId = SCOPE_IDENTITY();
        
        -- Generate 7 days for this week
        SET @dayOfWeek = 1;
        WHILE @dayOfWeek <= 7
        BEGIN
            SET @currentDate = DATEADD(DAY, @dayOfWeek - 1, DATEADD(WEEK, @weekNum - 1, @startDate));
            
            SET @dayName = CASE @dayOfWeek
                WHEN 1 THEN N'Thứ Hai'
                WHEN 2 THEN N'Thứ Ba'
                WHEN 3 THEN N'Thứ Tư'
                WHEN 4 THEN N'Thứ Năm'
                WHEN 5 THEN N'Thứ Sáu'
                WHEN 6 THEN N'Thứ Bảy'
                WHEN 7 THEN N'Chủ Nhật'
            END;
            
            INSERT INTO ngay (id_tuan, thu_tu_ngay, ngay_thang, ten_ngay)
            VALUES (@weekId, @dayOfWeek, @currentDate, @dayName);
            
            SET @dayOfWeek = @dayOfWeek + 1;
        END;
        
        SET @weekNum = @weekNum + 1;
    END;
    
    SET @semId = @semId + 1;
END;

-- =============================================
-- 12. ROOMS (20 entries)
-- =============================================
PRINT 'Inserting Rooms...';

INSERT INTO phong (ma_phong, ten_phong, suc_chua, loai, id_toa_nha) VALUES
-- Building A rooms
('A101', N'Phòng học A101', 50, 'phong_hoc', 1),
('A102', N'Phòng học A102', 50, 'phong_hoc', 1),
('A103', N'Phòng học A103', 40, 'phong_hoc', 1),
('A201', N'Phòng thực hành Vật lý A201', 30, 'phong_thuc_hanh', 1),
('A202', N'Phòng thực hành Hóa học A202', 30, 'phong_thuc_hanh', 1),
('A301', N'Giảng đường A301', 150, 'giang_duong', 1),
('A302', N'Giảng đường A302', 120, 'giang_duong', 1),
-- Building B rooms
('B101', N'Phòng máy B101', 40, 'phong_may', 2),
('B102', N'Phòng máy B102', 40, 'phong_may', 2),
('B103', N'Phòng máy B103', 35, 'phong_may', 2),
('B201', N'Phòng học B201', 45, 'phong_hoc', 2),
('B202', N'Phòng học B202', 45, 'phong_hoc', 2),
('B203', N'Phòng học B203', 40, 'phong_hoc', 2),
('B301', N'Giảng đường B301', 200, 'giang_duong', 2),
-- Building C rooms
('C101', N'Phòng học C101', 50, 'phong_hoc', 3),
('C102', N'Phòng học C102', 50, 'phong_hoc', 3),
('C103', N'Phòng học C103', 45, 'phong_hoc', 3),
('C201', N'Phòng học C201', 40, 'phong_hoc', 3),
('C301', N'Giảng đường C301', 180, 'giang_duong', 3),
('C302', N'Giảng đường C302', 150, 'giang_duong', 3);

-- =============================================
-- 13. COURSES (30 entries)
-- =============================================
PRINT 'Inserting Courses...';

INSERT INTO khoa_hoc (id_mon_hoc, id_giang_vien, id_lop, id_hoc_ky, so_sinh_vien_toi_da, so_sinh_vien_hien_tai, trang_thai) VALUES
-- Semester 1, 2023-2024
(1, 1, 1, 1, 40, 0, 'active'),  -- Basic Programming
(6, 4, 3, 1, 45, 0, 'active'),  -- Calculus 1
(11, 7, 4, 1, 40, 0, 'active'), -- Microeconomics
(16, 10, 5, 1, 50, 0, 'active'), -- Philosophy
(21, 13, 10, 1, 35, 0, 'active'), -- Basic Electrical
-- Semester 2, 2023-2024
(2, 1, 1, 2, 40, 0, 'active'),  -- Data Structures
(3, 1, 2, 2, 35, 0, 'active'),  -- Database
(7, 4, 3, 2, 40, 0, 'active'),  -- Linear Algebra
(12, 7, 4, 2, 40, 0, 'active'), -- Macroeconomics
(17, 10, 5, 2, 50, 0, 'active'), -- Political Economy
-- Semester 1, 2024-2025
(1, 2, 6, 3, 40, 0, 'active'),  -- Basic Programming
(4, 1, 1, 3, 35, 0, 'active'),  -- OOP
(8, 5, 8, 3, 35, 0, 'active'),  -- Physics 1
(13, 9, 9, 3, 40, 0, 'active'), -- Accounting
(22, 14, 10, 3, 30, 0, 'active'), -- Technical Drawing
-- Semester 2, 2024-2025
(5, 2, 1, 4, 35, 0, 'active'),  -- Web Development
(3, 3, 7, 4, 40, 0, 'active'),  -- Database
(9, 6, 8, 4, 35, 0, 'active'),  -- Chemistry
(14, 8, 9, 4, 40, 0, 'active'), -- Management
(23, 13, 10, 4, 35, 0, 'active'), -- Mechanical Engineering
-- Additional courses for variety
(10, 4, 3, 3, 40, 0, 'active'), -- Probability
(15, 8, 4, 3, 40, 0, 'active'), -- Marketing
(18, 11, 5, 3, 50, 0, 'active'), -- Social Science
(19, 11, 5, 4, 50, 0, 'active'), -- Party History
(24, 14, 10, 3, 30, 0, 'active'), -- Digital Engineering
(25, 13, 10, 4, 30, 0, 'active'), -- Automation
(2, 2, 6, 3, 40, 0, 'active'),  -- Data Structures
(4, 2, 7, 4, 35, 0, 'active'),  -- OOP
(6, 5, 8, 3, 45, 0, 'active'),  -- Calculus 1
(7, 5, 8, 4, 40, 0, 'active');  -- Linear Algebra

-- =============================================
-- 14. SCHEDULE (90+ entries - 3 sessions per course)
-- =============================================
PRINT 'Inserting Schedules...';

-- Generate schedules for courses (each course meets 3 times per week)
DECLARE @courseId INT = 1;
DECLARE @totalCourses INT;
DECLARE @sessionDay INT;
DECLARE @roomId INT;
DECLARE @startTime TIME;
DECLARE @endTime TIME;
DECLARE @dayId INT;

SELECT @totalCourses = COUNT(*) FROM khoa_hoc;

WHILE @courseId <= @totalCourses
BEGIN
    -- Course meets Mon, Wed, Fri or Tue, Thu, Sat
    SET @sessionDay = 1; -- Start with session 1
    
    WHILE @sessionDay <= 3
    BEGIN
        -- Assign different days based on course ID
        IF @courseId % 2 = 1 -- Odd courses: Mon, Wed, Fri
        BEGIN
            SET @dayId = CASE @sessionDay
                WHEN 1 THEN 1  -- Monday (week 1, day 1)
                WHEN 2 THEN 3  -- Wednesday (week 1, day 3)
                WHEN 3 THEN 5  -- Friday (week 1, day 5)
            END;
        END
        ELSE -- Even courses: Tue, Thu, Sat
        BEGIN
            SET @dayId = CASE @sessionDay
                WHEN 1 THEN 2  -- Tuesday (week 1, day 2)
                WHEN 2 THEN 4  -- Thursday (week 1, day 4)
                WHEN 3 THEN 6  -- Saturday (week 1, day 6)
            END;
        END;
        
        -- Assign time slots based on course ID
        IF @courseId % 3 = 1
        BEGIN
            SET @startTime = '07:00';
            SET @endTime = '09:00';
        END
        ELSE IF @courseId % 3 = 2
        BEGIN
            SET @startTime = '09:15';
            SET @endTime = '11:15';
        END
        ELSE
        BEGIN
            SET @startTime = '13:00';
            SET @endTime = '15:00';
        END;
        
        -- Assign room based on course
        SET @roomId = ((@courseId - 1) % 20) + 1;
        
        INSERT INTO lich_hoc (id_khoa_hoc, id_ngay, gio_bat_dau, gio_ket_thuc, id_phong)
        VALUES (@courseId, @dayId, @startTime, @endTime, @roomId);
        
        SET @sessionDay = @sessionDay + 1;
    END;
    
    SET @courseId = @courseId + 1;
END;

-- =============================================
-- 15. STUDENT COURSE REGISTRATIONS (120 entries)
-- =============================================
PRINT 'Inserting Student Course Registrations...';

-- Register students to courses (4 courses per student on average)
DECLARE @studentId INT = 1;
DECLARE @totalStudents INT = 30;
DECLARE @courseCount INT;
DECLARE @randomCourse INT;

WHILE @studentId <= @totalStudents
BEGIN
    SET @courseCount = 1;
    
    -- Each student registers for 4-5 courses
    WHILE @courseCount <= 4
    BEGIN
        -- Assign courses based on student ID to ensure variety
        SET @randomCourse = ((@studentId - 1) * 4 + @courseCount) % 30 + 1;
        
        -- Check if registration already exists
        IF NOT EXISTS (SELECT 1 FROM sinh_vien_khoa_hoc WHERE id_sinh_vien = @studentId AND id_khoa_hoc = @randomCourse)
        BEGIN
            INSERT INTO sinh_vien_khoa_hoc (id_sinh_vien, id_khoa_hoc, ngay_dang_ky, trang_thai, diem_chuyen_can, diem_giua_ky, diem_cuoi_ky, diem_chu_cuoi_cung)
            VALUES (
                @studentId, 
                @randomCourse, 
                DATEADD(DAY, -30, GETDATE()), 
                'registered',
                -- Some courses have grades (completed), others don't (in progress)
                CASE WHEN @randomCourse <= 10 THEN 8.5 + (@studentId % 3) * 0.5 ELSE NULL END,
                CASE WHEN @randomCourse <= 10 THEN 7.0 + (@studentId % 4) * 0.75 ELSE NULL END,
                CASE WHEN @randomCourse <= 10 THEN 7.5 + (@studentId % 5) * 0.6 ELSE NULL END,
                CASE WHEN @randomCourse <= 10 THEN 
                    CASE 
                        WHEN (7.5 + (@studentId % 5) * 0.6) >= 8.5 THEN 'A'
                        WHEN (7.5 + (@studentId % 5) * 0.6) >= 7.0 THEN 'B'
                        WHEN (7.5 + (@studentId % 5) * 0.6) >= 5.5 THEN 'C'
                        WHEN (7.5 + (@studentId % 5) * 0.6) >= 4.0 THEN 'D'
                        ELSE 'F'
                    END
                ELSE NULL END
            );
        END;
        
        SET @courseCount = @courseCount + 1;
    END;
    
    SET @studentId = @studentId + 1;
END;

-- Update course student counts based on registrations
UPDATE khoa_hoc
SET so_sinh_vien_hien_tai = (
    SELECT COUNT(*) 
    FROM sinh_vien_khoa_hoc 
    WHERE id_khoa_hoc = khoa_hoc.id_khoa_hoc AND trang_thai = 'registered'
);

-- =============================================
-- 16. TUITION FEES (60 entries - all students for 2 semesters)
-- =============================================
PRINT 'Inserting Tuition Fees...';

-- Generate tuition fees for students
DECLARE @student INT = 1;
DECLARE @semester INT;
DECLARE @feeAmount DECIMAL(15,2);
DECLARE @dueDate DATE;
DECLARE @isPaid BIT;

WHILE @student <= 30
BEGIN
    -- Fees for semester 1 (2024-2025)
    SET @semester = 3;
    SET @feeAmount = 15000000.00; -- 15 million VND
    SET @dueDate = '2024-10-15';
    SET @isPaid = CASE WHEN @student % 3 = 0 THEN 0 ELSE 1 END; -- 2/3 paid
    
    INSERT INTO hoc_phi (id_sinh_vien, id_hoc_ky, so_tien, han_dong, da_dong, ngay_tao)
    VALUES (@student, @semester, @feeAmount, @dueDate, @isPaid, DATEADD(DAY, -60, GETDATE()));
    
    -- Fees for semester 2 (2024-2025)
    SET @semester = 4;
    SET @feeAmount = 15000000.00;
    SET @dueDate = '2025-02-15';
    SET @isPaid = CASE WHEN @student % 4 = 0 THEN 0 ELSE 1 END; -- 3/4 paid
    
    INSERT INTO hoc_phi (id_sinh_vien, id_hoc_ky, so_tien, han_dong, da_dong, ngay_tao)
    VALUES (@student, @semester, @feeAmount, @dueDate, @isPaid, DATEADD(DAY, -30, GETDATE()));
    
    SET @student = @student + 1;
END;

-- =============================================
-- 17. PAYMENTS (45 entries - for paid tuition fees)
-- =============================================
PRINT 'Inserting Payments...';

-- Generate payments for paid fees
DECLARE @feeId INT;
DECLARE @paymentAmount DECIMAL(15,2);
DECLARE @paymentDate DATE;
DECLARE @paymentMethod NVARCHAR(50);
DECLARE @receiptNum NVARCHAR(100);

DECLARE fee_cursor CURSOR FOR 
SELECT id_hoc_phi, so_tien FROM hoc_phi WHERE da_dong = 1;

OPEN fee_cursor;
FETCH NEXT FROM fee_cursor INTO @feeId, @paymentAmount;

WHILE @@FETCH_STATUS = 0
BEGIN
    SET @paymentDate = DATEADD(DAY, -(@feeId % 30), GETDATE());
    SET @paymentMethod = CASE (@feeId % 3)
        WHEN 0 THEN N'Chuyển khoản'
        WHEN 1 THEN N'Tiền mặt'
        ELSE N'Thẻ tín dụng'
    END;
    SET @receiptNum = 'BL' + RIGHT('000000' + CAST(@feeId AS VARCHAR), 6);
    
    INSERT INTO thanh_toan (id_hoc_phi, so_tien, ngay_thanh_toan, phuong_thuc_thanh_toan, so_bien_lai, trang_thai)
    VALUES (@feeId, @paymentAmount, @paymentDate, @paymentMethod, @receiptNum, 'completed');
    
    FETCH NEXT FROM fee_cursor INTO @feeId, @paymentAmount;
END;

CLOSE fee_cursor;
DEALLOCATE fee_cursor;

-- =============================================
-- 18. ROOM BOOKINGS (20 entries)
-- =============================================
PRINT 'Inserting Room Bookings...';

INSERT INTO dat_phong (id_phong, ngay_dat, gio_bat_dau, gio_ket_thuc, muc_dich, nguoi_dat, trang_thai) VALUES
(6, '2024-10-15', '08:00', '12:00', N'Hội thảo khoa học về AI', 6, 'approved'),
(14, '2024-10-20', '13:00', '17:00', N'Họp phụ huynh học sinh', 7, 'approved'),
(19, '2024-10-25', '09:00', '11:00', N'Thi Olympic Toán học', 10, 'approved'),
(1, '2024-11-01', '07:00', '09:00', N'Lớp học bổ túng', 8, 'approved'),
(8, '2024-11-05', '14:00', '16:00', N'Workshop lập trình', 6, 'approved'),
(12, '2024-11-10', '10:00', '12:00', N'Seminar kinh doanh', 12, 'pending'),
(15, '2024-11-15', '13:00', '15:00', N'Câu lạc bộ tiếng Anh', 11, 'approved'),
(3, '2024-11-20', '08:00', '10:00', N'Thảo luận nhóm', 21, 'approved'),
(20, '2024-11-25', '15:00', '18:00', N'Sự kiện văn hóa', 13, 'pending'),
(9, '2024-12-01', '09:00', '11:00', N'Khóa học ngắn hạn', 9, 'approved'),
(5, '2024-12-05', '13:00', '16:00', N'Thực hành thí nghiệm', 5, 'approved'),
(11, '2024-12-10', '08:00', '12:00', N'Thi học kỳ', 1, 'approved'),
(16, '2024-12-15', '14:00', '17:00', N'Buổi tư vấn tuyển sinh', 14, 'pending'),
(7, '2024-12-20', '09:00', '12:00', N'Họp khoa', 10, 'approved'),
(13, '2025-01-05', '10:00', '12:00', N'Orientation sinh viên mới', 15, 'approved'),
(18, '2025-01-10', '13:00', '15:00', N'Workshop nghề nghiệp', 8, 'pending'),
(2, '2025-01-15', '08:00', '10:00', N'Luyện thi TOEIC', 7, 'approved'),
(10, '2025-01-20', '14:00', '16:00', N'Cuộc thi lập trình', 2, 'approved'),
(4, '2025-01-25', '09:00', '11:00', N'Thực hành hóa học', 6, 'cancelled'),
(17, '2025-02-01', '13:00', '17:00', N'Hội chợ việc làm', 1, 'pending');

-- =============================================
-- 19. NOTIFICATIONS (50 entries)
-- =============================================
PRINT 'Inserting Notifications...';

-- System notifications to all students about fees
DECLARE @recipientId INT = 21; -- Start from first student
WHILE @recipientId <= 50
BEGIN
    INSERT INTO thong_bao (id_nguoi_gui, id_nguoi_nhan, tu_he_thong, tieu_de, noi_dung, trang_thai, ngay_tao)
    VALUES (
        1, -- Admin
        @recipientId,
        1, -- From system
        N'Thông báo về học phí học kỳ 1',
        N'Kính gửi sinh viên, Nhà trường thông báo về việc nộp học phí học kỳ 1 năm học 2024-2025. Hạn nộp: 15/10/2024. Vui lòng nộp đúng hạn để tránh bị khóa tài khoản học tập.',
        CASE WHEN @recipientId % 2 = 0 THEN 'read' ELSE 'unread' END,
        DATEADD(DAY, -15, GETDATE())
    );
    
    SET @recipientId = @recipientId + 1;
END;

-- Notifications from teachers to students about assignments
INSERT INTO thong_bao (id_nguoi_gui, id_nguoi_nhan, tu_he_thong, tieu_de, noi_dung, trang_thai, ngay_tao) VALUES
(6, 21, 0, N'Bài tập về nhà môn Lập trình căn bản', N'Các em nộp bài tập chương 3 trước ngày 20/10. File nộp định dạng .zip', 'read', DATEADD(DAY, -10, GETDATE())),
(6, 22, 0, N'Bài tập về nhà môn Lập trình căn bản', N'Các em nộp bài tập chương 3 trước ngày 20/10. File nộp định dạng .zip', 'unread', DATEADD(DAY, -10, GETDATE())),
(7, 23, 0, N'Thông báo nghỉ học bù', N'Lớp học ngày 25/10 sẽ được dời sang ngày 27/10 do giảng viên có công tác.', 'read', DATEADD(DAY, -8, GETDATE())),
(10, 24, 0, N'Điểm kiểm tra giữa kỳ', N'Điểm kiểm tra giữa kỳ môn Triết học đã được cập nhật. Xem chi tiết trên hệ thống.', 'unread', DATEADD(DAY, -5, GETDATE())),
(12, 25, 0, N'Thông báo về bài thuyết trình nhóm', N'Các nhóm chuẩn bị thuyết trình đề tài cuối kỳ vào tuần sau.', 'read', DATEADD(DAY, -3, GETDATE()));

-- Notifications about schedule changes
INSERT INTO thong_bao (id_nguoi_gui, id_nguoi_nhan, tu_he_thong, tieu_de, noi_dung, trang_thai, ngay_tao) VALUES
(1, 21, 1, N'Thay đổi lịch học', N'Lịch học môn Cơ sở dữ liệu chuyển từ phòng B201 sang A301.', 'unread', DATEADD(DAY, -2, GETDATE())),
(1, 22, 1, N'Thay đổi lịch học', N'Lịch học môn Cơ sở dữ liệu chuyển từ phòng B201 sang A301.', 'read', DATEADD(DAY, -2, GETDATE())),
(1, 23, 1, N'Thay đổi lịch thi', N'Lịch thi cuối kỳ đã được cập nhật. Vui lòng kiểm tra lịch thi mới.', 'unread', DATEADD(DAY, -1, GETDATE()));

-- Notifications between students and admin
INSERT INTO thong_bao (id_nguoi_gui, id_nguoi_nhan, tu_he_thong, tieu_de, noi_dung, trang_thai, ngay_tao) VALUES
(21, 1, 0, N'Đơn xin cấp bảng điểm', N'Em xin cấp bảng điểm học kỳ 1 để nộp hồ sơ xin học bổng.', 'read', DATEADD(DAY, -7, GETDATE())),
(1, 21, 0, N'Re: Đơn xin cấp bảng điểm', N'Đơn của bạn đã được xử lý. Vui lòng đến phòng Đào tạo để nhận.', 'unread', DATEADD(DAY, -6, GETDATE())),
(22, 1, 0, N'Đơn xin hoãn thi', N'Em xin phép được hoãn thi môn Giải tích do lý do sức khỏe.', 'unread', DATEADD(DAY, -4, GETDATE()));

GO

-- =============================================
-- CREATE INDEXES FOR PERFORMANCE
-- =============================================
PRINT 'Creating Indexes...';

-- User management indexes
CREATE INDEX IX_nguoi_dung_email ON nguoi_dung(email);
CREATE INDEX IX_nguoi_dung_vai_tro ON nguoi_dung(vai_tro);
CREATE INDEX IX_sinh_vien_ma ON sinh_vien(ma_sinh_vien);
CREATE INDEX IX_giang_vien_ma ON giang_vien(ma_giang_vien);

-- Course and schedule indexes
CREATE INDEX IX_khoa_hoc_hoc_ky ON khoa_hoc(id_hoc_ky);
CREATE INDEX IX_sinh_vien_khoa_hoc_sinh_vien ON sinh_vien_khoa_hoc(id_sinh_vien);
CREATE INDEX IX_lich_hoc_khoa_hoc ON lich_hoc(id_khoa_hoc);
CREATE INDEX IX_lich_hoc_phong_ngay ON lich_hoc(id_phong, id_ngay);

-- Financial indexes
CREATE INDEX IX_hoc_phi_sinh_vien ON hoc_phi(id_sinh_vien);
CREATE INDEX IX_hoc_phi_han_dong ON hoc_phi(han_dong);
CREATE INDEX IX_thanh_toan_ngay ON thanh_toan(ngay_thanh_toan);

-- Communication indexes
CREATE INDEX IX_thong_bao_nguoi_nhan ON thong_bao(id_nguoi_nhan);
CREATE INDEX IX_thong_bao_trang_thai ON thong_bao(trang_thai);

GO

-- =============================================
-- VERIFICATION AND SUMMARY
-- =============================================

PRINT '';
PRINT '==========================================';
PRINT 'DATA INSERTION COMPLETED SUCCESSFULLY!';
PRINT '==========================================';
PRINT '';

-- Count records in each table
PRINT 'Record Counts by Table:';
PRINT '----------------------------------------';
SELECT 'nguoi_dung' AS TableName, COUNT(*) AS RecordCount FROM nguoi_dung
UNION ALL
SELECT 'nam_hoc', COUNT(*) FROM nam_hoc
UNION ALL
SELECT 'toa_nha', COUNT(*) FROM toa_nha
UNION ALL
SELECT 'khoa', COUNT(*) FROM khoa
UNION ALL
SELECT 'giang_vien', COUNT(*) FROM giang_vien
UNION ALL
SELECT 'sinh_vien', COUNT(*) FROM sinh_vien
UNION ALL
SELECT 'lop', COUNT(*) FROM lop
UNION ALL
SELECT 'mon_hoc', COUNT(*) FROM mon_hoc
UNION ALL
SELECT 'mon_hoc_tien_quyet', COUNT(*) FROM mon_hoc_tien_quyet
UNION ALL
SELECT 'hoc_ky', COUNT(*) FROM hoc_ky
UNION ALL
SELECT 'tuan', COUNT(*) FROM tuan
UNION ALL
SELECT 'ngay', COUNT(*) FROM ngay
UNION ALL
SELECT 'phong', COUNT(*) FROM phong
UNION ALL
SELECT 'khoa_hoc', COUNT(*) FROM khoa_hoc
UNION ALL
SELECT 'lich_hoc', COUNT(*) FROM lich_hoc
UNION ALL
SELECT 'sinh_vien_khoa_hoc', COUNT(*) FROM sinh_vien_khoa_hoc
UNION ALL
SELECT 'dat_phong', COUNT(*) FROM dat_phong
UNION ALL
SELECT 'hoc_phi', COUNT(*) FROM hoc_phi
UNION ALL
SELECT 'thanh_toan', COUNT(*) FROM thanh_toan
UNION ALL
SELECT 'thong_bao', COUNT(*) FROM thong_bao;

PRINT '';
PRINT 'Users by Role:';
SELECT vai_tro AS [Role], COUNT(*) AS [Count]
FROM nguoi_dung
GROUP BY vai_tro
ORDER BY vai_tro;

PRINT '';
PRINT 'Students by Gender:';
SELECT gioi_tinh AS [Gender], COUNT(*) AS [Count]
FROM sinh_vien
GROUP BY gioi_tinh;

PRINT '';
PRINT 'Courses by Status:';
SELECT trang_thai AS [Status], COUNT(*) AS [Count]
FROM khoa_hoc
GROUP BY trang_thai;

PRINT '';
PRINT 'Tuition Payment Status:';
SELECT 
    CASE WHEN da_dong = 1 THEN 'Paid' ELSE 'Unpaid' END AS [Status],
    COUNT(*) AS [Count],
    SUM(so_tien) AS [Total Amount]
FROM hoc_phi
GROUP BY da_dong;

PRINT '';
PRINT 'Room Booking Status:';
SELECT trang_thai AS [Status], COUNT(*) AS [Count]
FROM dat_phong
GROUP BY trang_thai;

PRINT '';
PRINT 'Notification Status:';
SELECT trang_thai AS [Status], COUNT(*) AS [Count]
FROM thong_bao
GROUP BY trang_thai;

PRINT '';
PRINT '==========================================';
PRINT 'DATABASE READY FOR USE!';
PRINT '==========================================';

GO