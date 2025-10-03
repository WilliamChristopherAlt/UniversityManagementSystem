-- =============================================
-- Hệ thống Quản lý Đại học - Cấu trúc Cơ sở dữ liệu
-- SQL Server Implementation - Phiên bản Tiếng Việt
-- =============================================

-- CREATE DATABASE UniversityManagement;
-- GO

USE UniversityManagement;
GO

-- =============================================
-- Bảng Người dùng & Xác thực
-- =============================================

-- Bảng Người (chứa tất cả thông tin cá nhân)
CREATE TABLE nguoi (
    id_nguoi INT IDENTITY(1,1) PRIMARY KEY,
    ho_ten NVARCHAR(200) NOT NULL,
    ngay_sinh DATE,
    gioi_tinh NVARCHAR(10) CHECK (gioi_tinh IN (N'Nam', N'Nữ', N'Khác')),
    email NVARCHAR(255) NOT NULL UNIQUE,
    so_dien_thoai NVARCHAR(20),
    dia_chi NVARCHAR(500),
    anh_dai_dien NVARCHAR(500),
    ngay_tao DATETIME2 NOT NULL DEFAULT GETDATE(),
    ngay_cap_nhat DATETIME2 NOT NULL DEFAULT GETDATE(),
    ngay_xoa DATETIME2 NULL
);

-- Bảng Người dùng (chứa dữ liệu xác thực)
CREATE TABLE nguoi_dung (
    id_nguoi_dung INT IDENTITY(1,1) PRIMARY KEY,
    id_nguoi INT NOT NULL UNIQUE,
    ten_dang_nhap NVARCHAR(100) NOT NULL UNIQUE,
    mat_khau_hash NVARCHAR(255) NOT NULL,
    mat_khau_salt NVARCHAR(255) NOT NULL,
    email_da_xac_thuc BIT NOT NULL DEFAULT 0,
    ma_xac_thuc_email NVARCHAR(255),
    trang_thai NVARCHAR(20) NOT NULL DEFAULT 'active' CHECK (trang_thai IN ('active', 'inactive', 'suspended')),
    ngay_tao DATETIME2 NOT NULL DEFAULT GETDATE(),
    ngay_cap_nhat DATETIME2 NOT NULL DEFAULT GETDATE(),
    ngay_xoa DATETIME2 NULL,
    FOREIGN KEY (id_nguoi) REFERENCES nguoi(id_nguoi)
);

-- Bảng Phiên đăng nhập (theo dõi phiên người dùng)
CREATE TABLE phien_dang_nhap (
    id_phien INT IDENTITY(1,1) PRIMARY KEY,
    id_nguoi_dung INT NOT NULL,
    ma_phien NVARCHAR(255) NOT NULL UNIQUE,
    dia_chi_ip NVARCHAR(45) NOT NULL,
    thong_tin_trinh_duyet NVARCHAR(500),
    la_thiet_bi_moi BIT NOT NULL DEFAULT 0,
    ngay_tao DATETIME2 NOT NULL DEFAULT GETDATE(),
    ngay_het_han DATETIME2 NOT NULL,
    hoat_dong_cuoi DATETIME2 NOT NULL DEFAULT GETDATE(),
    FOREIGN KEY (id_nguoi_dung) REFERENCES nguoi_dung(id_nguoi_dung)
);

-- =============================================
-- Bảng Cấu trúc Học thuật
-- =============================================

-- Bảng Năm học
CREATE TABLE nam_hoc (
    id_nam_hoc INT IDENTITY(1,1) PRIMARY KEY,
    ngay_bat_dau DATE NOT NULL,
    ngay_ket_thuc DATE NOT NULL,
    ngay_xoa DATETIME2 NULL
);

-- Bảng Lớp
CREATE TABLE lop (
    id_lop INT IDENTITY(1,1) PRIMARY KEY,
    ma_lop NVARCHAR(50) NOT NULL UNIQUE,
    ten_lop NVARCHAR(200) NOT NULL,
    id_nam_hoc_bat_dau INT NOT NULL,
    id_nam_hoc_ket_thuc INT,
    ngay_xoa DATETIME2 NULL,
    FOREIGN KEY (id_nam_hoc_bat_dau) REFERENCES nam_hoc(id_nam_hoc),
    FOREIGN KEY (id_nam_hoc_ket_thuc) REFERENCES nam_hoc(id_nam_hoc)
);

-- Bảng Khoa
CREATE TABLE khoa (
    id_khoa INT IDENTITY(1,1) PRIMARY KEY,
    ten_khoa NVARCHAR(200) NOT NULL,
    ma_khoa NVARCHAR(50) NOT NULL UNIQUE,
    id_truong_khoa INT NULL,
    ngay_xoa DATETIME2 NULL
);

-- =============================================
-- Bảng Vai trò
-- =============================================

-- Bảng Quản trị viên
CREATE TABLE admin (
    id_admin INT IDENTITY(1,1) PRIMARY KEY,
    id_nguoi INT NOT NULL UNIQUE,
    ma_admin NVARCHAR(50) NOT NULL UNIQUE,
    chuc_vu NVARCHAR(200),
    trang_thai NVARCHAR(20) NOT NULL DEFAULT 'active' CHECK (trang_thai IN ('active', 'inactive')),
    ngay_tao DATETIME2 NOT NULL DEFAULT GETDATE(),
    ngay_xoa DATETIME2 NULL,
    FOREIGN KEY (id_nguoi) REFERENCES nguoi(id_nguoi)
);

-- Bảng Giảng viên
CREATE TABLE giang_vien (
    id_giang_vien INT IDENTITY(1,1) PRIMARY KEY,
    id_nguoi INT NOT NULL UNIQUE,
    ma_giang_vien NVARCHAR(50) NOT NULL UNIQUE,
    bang_cap NVARCHAR(200),
    chuyen_mon NVARCHAR(500),
    id_khoa INT NOT NULL,
    ngay_vao_lam DATE,
    trang_thai NVARCHAR(20) NOT NULL DEFAULT 'active' CHECK (trang_thai IN ('active', 'inactive', 'retired')),
    ngay_tao DATETIME2 NOT NULL DEFAULT GETDATE(),
    ngay_xoa DATETIME2 NULL,
    FOREIGN KEY (id_nguoi) REFERENCES nguoi(id_nguoi),
    FOREIGN KEY (id_khoa) REFERENCES khoa(id_khoa)
);

-- Thêm ràng buộc khóa ngoại cho trưởng khoa
ALTER TABLE khoa ADD FOREIGN KEY (id_truong_khoa) REFERENCES giang_vien(id_giang_vien);

-- Bảng Sinh viên
CREATE TABLE sinh_vien (
    id_sinh_vien INT IDENTITY(1,1) PRIMARY KEY,
    id_nguoi INT NOT NULL UNIQUE,
    ma_sinh_vien NVARCHAR(50) NOT NULL UNIQUE,
    id_lop INT,
    so_tin_chi_tich_luy INT DEFAULT 0 CHECK (so_tin_chi_tich_luy >= 0),
    trang_thai_hoc_tap NVARCHAR(20) NOT NULL DEFAULT 'good_standing' 
        CHECK (trang_thai_hoc_tap IN ('good_standing', 'probation', 'suspended')),
    trang_thai NVARCHAR(20) NOT NULL DEFAULT 'active' 
        CHECK (trang_thai IN ('active', 'inactive', 'graduated', 'dropped_out')),
    ngay_tao DATETIME2 NOT NULL DEFAULT GETDATE(),
    ngay_xoa DATETIME2 NULL,
    FOREIGN KEY (id_nguoi) REFERENCES nguoi(id_nguoi),
    FOREIGN KEY (id_lop) REFERENCES lop(id_lop)
);

-- =============================================
-- Bảng Môn học & Khóa học
-- =============================================

-- Bảng Môn học
CREATE TABLE mon_hoc (
    id_mon_hoc INT IDENTITY(1,1) PRIMARY KEY,
    ten_mon_hoc NVARCHAR(200) NOT NULL,
    ma_mon_hoc NVARCHAR(50) NOT NULL UNIQUE,
    so_tin_chi INT NOT NULL CHECK (so_tin_chi > 0),
    gio_ly_thuyet INT NOT NULL DEFAULT 0,
    gio_thuc_hanh INT NOT NULL DEFAULT 0,
    id_khoa INT NOT NULL,
    ngay_xoa DATETIME2 NULL,
    FOREIGN KEY (id_khoa) REFERENCES khoa(id_khoa)
);

-- Bảng Môn học tiên quyết
CREATE TABLE mon_hoc_tien_quyet (
    id_tien_quyet INT IDENTITY(1,1) PRIMARY KEY,
    id_mon_hoc INT NOT NULL,
    id_mon_hoc_can_truoc INT NOT NULL,
    diem_toi_thieu DECIMAL(4,2) NOT NULL CHECK (diem_toi_thieu BETWEEN 0 AND 10),
    FOREIGN KEY (id_mon_hoc) REFERENCES mon_hoc(id_mon_hoc),
    FOREIGN KEY (id_mon_hoc_can_truoc) REFERENCES mon_hoc(id_mon_hoc),
    UNIQUE (id_mon_hoc, id_mon_hoc_can_truoc)
);

-- =============================================
-- Bảng Quản lý Lịch trình
-- =============================================

-- Bảng Học kỳ
CREATE TABLE hoc_ky (
    id_hoc_ky INT IDENTITY(1,1) PRIMARY KEY,
    ten_hoc_ky NVARCHAR(100) NOT NULL,
    id_nam_hoc INT NOT NULL,
    loai_hoc_ky NVARCHAR(20) NOT NULL CHECK (loai_hoc_ky IN ('chinh', 'phu', 'he')),
    ngay_bat_dau DATE NOT NULL,
    ngay_ket_thuc DATE NOT NULL,
    ngay_bat_dau_dang_ky DATE NOT NULL,
    ngay_ket_thuc_dang_ky DATE NOT NULL,
    ngay_xoa DATETIME2 NULL,
    FOREIGN KEY (id_nam_hoc) REFERENCES nam_hoc(id_nam_hoc)
);

-- Bảng Tuần
CREATE TABLE tuan (
    id_tuan INT IDENTITY(1,1) PRIMARY KEY,
    id_hoc_ky INT NOT NULL,
    thu_tu_tuan INT NOT NULL,
    ngay_bat_dau DATE NOT NULL,
    ngay_ket_thuc DATE NOT NULL,
    FOREIGN KEY (id_hoc_ky) REFERENCES hoc_ky(id_hoc_ky),
    UNIQUE (id_hoc_ky, thu_tu_tuan)
);

-- Bảng Ngày
CREATE TABLE ngay (
    id_ngay INT IDENTITY(1,1) PRIMARY KEY,
    id_tuan INT NOT NULL,
    thu_tu_ngay INT NOT NULL CHECK (thu_tu_ngay BETWEEN 1 AND 7),
    ngay_thang DATE NOT NULL,
    ten_ngay NVARCHAR(20) NOT NULL,
    FOREIGN KEY (id_tuan) REFERENCES tuan(id_tuan),
    UNIQUE (id_tuan, thu_tu_ngay)
);

-- =============================================
-- Bảng Quản lý Khóa học
-- =============================================

-- Bảng Khóa học
CREATE TABLE khoa_hoc (
    id_khoa_hoc INT IDENTITY(1,1) PRIMARY KEY,
    id_mon_hoc INT NOT NULL,
    id_giang_vien INT NOT NULL,
    id_lop INT NOT NULL,
    id_hoc_ky INT NOT NULL,
    so_sinh_vien_toi_da INT NOT NULL CHECK (so_sinh_vien_toi_da > 0),
    trang_thai NVARCHAR(20) NOT NULL DEFAULT 'active' 
        CHECK (trang_thai IN ('active', 'inactive', 'completed', 'cancelled')),
    ngay_tao DATETIME2 NOT NULL DEFAULT GETDATE(),
    ngay_xoa DATETIME2 NULL,
    FOREIGN KEY (id_mon_hoc) REFERENCES mon_hoc(id_mon_hoc),
    FOREIGN KEY (id_giang_vien) REFERENCES giang_vien(id_giang_vien),
    FOREIGN KEY (id_lop) REFERENCES lop(id_lop),
    FOREIGN KEY (id_hoc_ky) REFERENCES hoc_ky(id_hoc_ky)
);

-- Bảng Sinh viên đăng ký Khóa học
CREATE TABLE sinh_vien_khoa_hoc (
    id_dang_ky INT IDENTITY(1,1) PRIMARY KEY,
    id_sinh_vien INT NOT NULL,
    id_khoa_hoc INT NOT NULL,
    ngay_dang_ky DATE NOT NULL DEFAULT GETDATE(),
    trang_thai NVARCHAR(20) NOT NULL DEFAULT 'registered' 
        CHECK (trang_thai IN ('registered', 'dropped', 'completed')),
    diem_chuyen_can DECIMAL(4,2) CHECK (diem_chuyen_can BETWEEN 0 AND 10),
    diem_giua_ky DECIMAL(4,2) CHECK (diem_giua_ky BETWEEN 0 AND 10),
    diem_cuoi_ky DECIMAL(4,2) CHECK (diem_cuoi_ky BETWEEN 0 AND 10),
    ngay_xoa DATETIME2 NULL,
    FOREIGN KEY (id_sinh_vien) REFERENCES sinh_vien(id_sinh_vien),
    FOREIGN KEY (id_khoa_hoc) REFERENCES khoa_hoc(id_khoa_hoc),
    UNIQUE (id_sinh_vien, id_khoa_hoc)
);

-- =============================================
-- Bảng Quản lý Cơ sở vật chất
-- =============================================

-- Bảng Tòa nhà
CREATE TABLE toa_nha (
    id_toa_nha INT IDENTITY(1,1) PRIMARY KEY,
    ten_toa_nha NVARCHAR(200) NOT NULL,
    ma_toa_nha NVARCHAR(50) NOT NULL UNIQUE,
    dia_chi NVARCHAR(500),
    ngay_xoa DATETIME2 NULL
);

-- Bảng Phòng
CREATE TABLE phong (
    id_phong INT IDENTITY(1,1) PRIMARY KEY,
    ma_phong NVARCHAR(50) NOT NULL UNIQUE,
    ten_phong NVARCHAR(200) NOT NULL,
    suc_chua INT NOT NULL CHECK (suc_chua > 0),
    loai NVARCHAR(20) NOT NULL 
        CHECK (loai IN ('giang_duong', 'phong_hoc', 'phong_may', 'phong_thuc_hanh')),
    id_toa_nha INT NOT NULL,
    ngay_xoa DATETIME2 NULL,
    FOREIGN KEY (id_toa_nha) REFERENCES toa_nha(id_toa_nha)
);

-- Bảng Lịch học
CREATE TABLE lich_hoc (
    id_lich_hoc INT IDENTITY(1,1) PRIMARY KEY,
    id_khoa_hoc INT NOT NULL,
    id_ngay INT NOT NULL,
    tiet_bat_dau TINYINT NOT NULL CHECK (tiet_bat_dau BETWEEN 1 AND 9),
    tiet_ket_thuc TINYINT NOT NULL CHECK (tiet_ket_thuc BETWEEN 1 AND 9),
    id_phong INT NOT NULL,
    ngay_xoa DATETIME2 NULL,
    FOREIGN KEY (id_khoa_hoc) REFERENCES khoa_hoc(id_khoa_hoc),
    FOREIGN KEY (id_ngay) REFERENCES ngay(id_ngay),
    FOREIGN KEY (id_phong) REFERENCES phong(id_phong),
    CHECK (tiet_ket_thuc > tiet_bat_dau),
    -- Đảm bảo tiết học nằm trong cùng buổi (sáng 1-5 hoặc chiều 6-9)
    CHECK (
        (tiet_bat_dau BETWEEN 1 AND 5 AND tiet_ket_thuc BETWEEN 1 AND 5) OR
        (tiet_bat_dau BETWEEN 6 AND 9 AND tiet_ket_thuc BETWEEN 6 AND 9)
    )
);

-- Bảng Đặt phòng
CREATE TABLE dat_phong (
    id_dat_phong INT IDENTITY(1,1) PRIMARY KEY,
    id_phong INT NOT NULL,
    ngay_dat DATE NOT NULL,
    tiet_bat_dau TINYINT NOT NULL CHECK (tiet_bat_dau BETWEEN 1 AND 9),
    tiet_ket_thuc TINYINT NOT NULL CHECK (tiet_ket_thuc BETWEEN 1 AND 9),
    muc_dich NVARCHAR(500),
    nguoi_dat INT NOT NULL,
    trang_thai NVARCHAR(20) NOT NULL DEFAULT 'pending' 
        CHECK (trang_thai IN ('pending', 'approved', 'rejected', 'cancelled')),
    ngay_tao DATETIME2 NOT NULL DEFAULT GETDATE(),
    ngay_xoa DATETIME2 NULL,
    FOREIGN KEY (id_phong) REFERENCES phong(id_phong),
    FOREIGN KEY (nguoi_dat) REFERENCES nguoi_dung(id_nguoi_dung),
    CHECK (tiet_ket_thuc > tiet_bat_dau),
    CHECK (
        (tiet_bat_dau BETWEEN 1 AND 5 AND tiet_ket_thuc BETWEEN 1 AND 5) OR
        (tiet_bat_dau BETWEEN 6 AND 9 AND tiet_ket_thuc BETWEEN 6 AND 9)
    )
);

-- =============================================
-- Bảng Quản lý Tài chính
-- =============================================

-- Bảng Học phí
CREATE TABLE hoc_phi (
    id_hoc_phi INT IDENTITY(1,1) PRIMARY KEY,
    id_sinh_vien INT NOT NULL,
    id_hoc_ky INT NOT NULL,
    so_tien DECIMAL(15,2) NOT NULL CHECK (so_tien >= 0),
    han_dong DATE NOT NULL,
    da_dong BIT NOT NULL DEFAULT 0,
    ngay_tao DATETIME2 NOT NULL DEFAULT GETDATE(),
    ngay_xoa DATETIME2 NULL,
    FOREIGN KEY (id_sinh_vien) REFERENCES sinh_vien(id_sinh_vien),
    FOREIGN KEY (id_hoc_ky) REFERENCES hoc_ky(id_hoc_ky),
    UNIQUE (id_sinh_vien, id_hoc_ky)
);

-- Bảng Thanh toán
CREATE TABLE thanh_toan (
    id_thanh_toan INT IDENTITY(1,1) PRIMARY KEY,
    id_hoc_phi INT NOT NULL,
    so_tien DECIMAL(15,2) NOT NULL CHECK (so_tien > 0),
    ngay_thanh_toan DATE NOT NULL,
    phuong_thuc_thanh_toan NVARCHAR(50) NOT NULL,
    so_bien_lai NVARCHAR(100) NOT NULL UNIQUE,
    trang_thai NVARCHAR(20) NOT NULL DEFAULT 'completed' 
        CHECK (trang_thai IN ('pending', 'completed', 'failed', 'refunded')),
    ngay_tao DATETIME2 NOT NULL DEFAULT GETDATE(),
    FOREIGN KEY (id_hoc_phi) REFERENCES hoc_phi(id_hoc_phi)
);

-- =============================================
-- Bảng Giao tiếp
-- =============================================

-- Bảng Tài liệu
CREATE TABLE tai_lieu (
    id_tai_lieu INT IDENTITY(1,1) PRIMARY KEY,
    id_khoa_hoc INT NOT NULL,
    ten_file NVARCHAR(500) NOT NULL,
    duong_dan_file NVARCHAR(1000) NOT NULL,
    loai_file NVARCHAR(20) NOT NULL 
        CHECK (loai_file IN ('pdf', 'docx', 'doc', 'pptx', 'ppt', 'xlsx', 'xls', 'jpg', 'jpeg', 'png', 'zip', 'rar')),
    kich_thuoc_file BIGINT NOT NULL CHECK (kich_thuoc_file > 0),
    nguoi_upload INT NOT NULL,
    mo_ta NVARCHAR(1000),
    ngay_tao DATETIME2 NOT NULL DEFAULT GETDATE(),
    ngay_xoa DATETIME2 NULL,
    FOREIGN KEY (id_khoa_hoc) REFERENCES khoa_hoc(id_khoa_hoc),
    FOREIGN KEY (nguoi_upload) REFERENCES nguoi_dung(id_nguoi_dung)
);

-- Bảng Thông báo
CREATE TABLE thong_bao (
    id_thong_bao INT IDENTITY(1,1) PRIMARY KEY,
    id_nguoi_gui INT NOT NULL,
    id_nguoi_nhan INT NOT NULL,
    loai_thong_bao NVARCHAR(50) NOT NULL 
        CHECK (loai_thong_bao IN ('diem_so', 'hoc_phi', 'lich_hoc', 'thong_bao_chung', 'he_thong')),
    tieu_de NVARCHAR(500) NOT NULL,
    noi_dung NTEXT,
    da_doc BIT NOT NULL DEFAULT 0,
    ngay_tao DATETIME2 NOT NULL DEFAULT GETDATE(),
    ngay_xoa DATETIME2 NULL,
    FOREIGN KEY (id_nguoi_gui) REFERENCES nguoi_dung(id_nguoi_dung),
    FOREIGN KEY (id_nguoi_nhan) REFERENCES nguoi_dung(id_nguoi_dung)
);

-- =============================================
-- Chỉ mục để tối ưu hiệu suất
-- =============================================

-- Chỉ mục cho bảng nguoi và nguoi_dung
CREATE INDEX IX_nguoi_email ON nguoi(email) WHERE ngay_xoa IS NULL;
CREATE INDEX IX_nguoi_dung_nguoi ON nguoi_dung(id_nguoi);
CREATE INDEX IX_phien_nguoi_dung ON phien_dang_nhap(id_nguoi_dung);
CREATE INDEX IX_phien_ma_phien ON phien_dang_nhap(ma_phien);

-- Chỉ mục cho vai trò
CREATE INDEX IX_sinh_vien_ma ON sinh_vien(ma_sinh_vien) WHERE ngay_xoa IS NULL;
CREATE INDEX IX_giang_vien_ma ON giang_vien(ma_giang_vien) WHERE ngay_xoa IS NULL;
CREATE INDEX IX_admin_ma ON admin(ma_admin) WHERE ngay_xoa IS NULL;

-- Chỉ mục cho khóa học và lịch học
CREATE INDEX IX_khoa_hoc_hoc_ky ON khoa_hoc(id_hoc_ky) WHERE ngay_xoa IS NULL;
CREATE INDEX IX_khoa_hoc_composite ON khoa_hoc(id_hoc_ky, id_mon_hoc) WHERE ngay_xoa IS NULL;
CREATE INDEX IX_sinh_vien_khoa_hoc_sinh_vien ON sinh_vien_khoa_hoc(id_sinh_vien, trang_thai) WHERE ngay_xoa IS NULL;
CREATE INDEX IX_lich_hoc_khoa_hoc ON lich_hoc(id_khoa_hoc) WHERE ngay_xoa IS NULL;
CREATE INDEX IX_lich_hoc_phong_ngay ON lich_hoc(id_phong, id_ngay) WHERE ngay_xoa IS NULL;

-- Chỉ mục cho tài chính
CREATE INDEX IX_hoc_phi_sinh_vien ON hoc_phi(id_sinh_vien) WHERE ngay_xoa IS NULL;
CREATE INDEX IX_hoc_phi_han_dong ON hoc_phi(han_dong) WHERE ngay_xoa IS NULL;
CREATE INDEX IX_thanh_toan_ngay ON thanh_toan(ngay_thanh_toan);

-- Chỉ mục cho giao tiếp
CREATE INDEX IX_tai_lieu_khoa_hoc ON tai_lieu(id_khoa_hoc) WHERE ngay_xoa IS NULL;
CREATE INDEX IX_tai_lieu_nguoi_upload ON tai_lieu(nguoi_upload) WHERE ngay_xoa IS NULL;
CREATE INDEX IX_thong_bao_nguoi_nhan ON thong_bao(id_nguoi_nhan, da_doc) WHERE ngay_xoa IS NULL;
CREATE INDEX IX_thong_bao_loai ON thong_bao(loai_thong_bao) WHERE ngay_xoa IS NULL;

GO

-- =============================================
-- Trigger cho Logic nghiệp vụ
-- =============================================

-- Trigger kiểm tra sức chứa khóa học trước khi đăng ký
CREATE TRIGGER TR_sinh_vien_khoa_hoc_KIEM_TRA_SUC_CHUA
ON sinh_vien_khoa_hoc
INSTEAD OF INSERT
AS
BEGIN
    DECLARE @id_khoa_hoc INT, @so_luong_hien_tai INT, @suc_chua_toi_da INT;
    
    SELECT @id_khoa_hoc = id_khoa_hoc FROM inserted;
    
    SELECT @suc_chua_toi_da = so_sinh_vien_toi_da 
    FROM khoa_hoc 
    WHERE id_khoa_hoc = @id_khoa_hoc;
    
    SELECT @so_luong_hien_tai = COUNT(*) 
    FROM sinh_vien_khoa_hoc 
    WHERE id_khoa_hoc = @id_khoa_hoc 
    AND trang_thai = 'registered'
    AND ngay_xoa IS NULL;
    
    IF @so_luong_hien_tai >= @suc_chua_toi_da
    BEGIN
        RAISERROR (N'Khóa học đã đạt sức chứa tối đa', 16, 1);
        ROLLBACK TRANSACTION;
        RETURN;
    END
    
    INSERT INTO sinh_vien_khoa_hoc (id_sinh_vien, id_khoa_hoc, ngay_dang_ky, trang_thai)
    SELECT id_sinh_vien, id_khoa_hoc, ngay_dang_ky, trang_thai
    FROM inserted;
END;

GO

-- Trigger cập nhật trạng thái thanh toán học phí
CREATE TRIGGER TR_thanh_toan_CAP_NHAT_HOC_PHI
ON thanh_toan
AFTER INSERT
AS
BEGIN
    UPDATE hoc_phi
    SET da_dong = 1
    FROM hoc_phi h
    INNER JOIN inserted i ON h.id_hoc_phi = i.id_hoc_phi
    WHERE i.trang_thai = 'completed'
    AND (
        SELECT SUM(so_tien) 
        FROM thanh_toan 
        WHERE id_hoc_phi = h.id_hoc_phi 
        AND trang_thai = 'completed'
    ) >= h.so_tien;
END;

GO

-- Trigger cập nhật timestamp cho bảng nguoi
CREATE TRIGGER TR_nguoi_CAP_NHAT_THOI_GIAN
ON nguoi
AFTER UPDATE
AS
BEGIN
    UPDATE nguoi
    SET ngay_cap_nhat = GETDATE()
    FROM nguoi n
    INNER JOIN inserted i ON n.id_nguoi = i.id_nguoi;
END;

GO

-- Trigger cập nhật timestamp cho bảng nguoi_dung
CREATE TRIGGER TR_nguoi_dung_CAP_NHAT_THOI_GIAN
ON nguoi_dung
AFTER UPDATE
AS
BEGIN
    UPDATE nguoi_dung
    SET ngay_cap_nhat = GETDATE()
    FROM nguoi_dung nd
    INNER JOIN inserted i ON nd.id_nguoi_dung = i.id_nguoi_dung;
END;

GO

-- Trigger kiểm tra thiết bị mới khi đăng nhập
CREATE TRIGGER TR_phien_KIEM_TRA_THIET_BI_MOI
ON phien_dang_nhap
AFTER INSERT
AS
BEGIN
    UPDATE p
    SET la_thiet_bi_moi = 1
    FROM phien_dang_nhap p
    INNER JOIN inserted i ON p.id_phien = i.id_phien
    WHERE NOT EXISTS (
        SELECT 1 
        FROM phien_dang_nhap phien_cu
        WHERE phien_cu.id_nguoi_dung = i.id_nguoi_dung
        AND phien_cu.dia_chi_ip = i.dia_chi_ip
        AND phien_cu.id_phien != i.id_phien
        AND phien_cu.ngay_tao < i.ngay_tao
    );
END;

GO

PRINT N'Cơ sở dữ liệu Hệ thống Quản lý Đại học đã được tạo thành công!';