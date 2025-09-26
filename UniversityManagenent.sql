-- =============================================
-- University Management System Database Schema
-- SQL Server Implementation
-- =============================================

-- Create Database
-- CREATE DATABASE UniversityManagement;
-- GO

USE UniversityManagement;
GO

-- =============================================
-- User Management Tables
-- =============================================

-- Users table
CREATE TABLE nguoi_dung (
    id_nguoi_dung INT IDENTITY(1,1) PRIMARY KEY,
    ten_dang_nhap NVARCHAR(100) NOT NULL UNIQUE,
    mat_khau_hash NVARCHAR(255) NOT NULL,
    email NVARCHAR(255) NOT NULL UNIQUE,
    so_dien_thoai NVARCHAR(20),
    vai_tro NVARCHAR(20) NOT NULL CHECK (vai_tro IN ('admin', 'giang_vien', 'sinh_vien')),
    trang_thai NVARCHAR(20) NOT NULL DEFAULT 'active' CHECK (trang_thai IN ('active', 'inactive', 'suspended')),
    anh_dai_dien NVARCHAR(500),
    ngay_tao DATETIME2 NOT NULL DEFAULT GETDATE(),
    ngay_cap_nhat DATETIME2 NOT NULL DEFAULT GETDATE()
);

-- Academic Years table
CREATE TABLE nam_hoc (
    id_nam_hoc INT IDENTITY(1,1) PRIMARY KEY,
    ngay_bat_dau DATE NOT NULL,
    ngay_ket_thuc DATE NOT NULL
);

-- Classes table
CREATE TABLE lop (
    id_lop INT IDENTITY(1,1) PRIMARY KEY,
    ma_lop NVARCHAR(50) NOT NULL UNIQUE,
    ten_lop NVARCHAR(200) NOT NULL,
    id_nam_hoc_bat_dau INT NOT NULL,
    id_nam_hoc_ket_thuc INT,
    FOREIGN KEY (id_nam_hoc_bat_dau) REFERENCES nam_hoc(id_nam_hoc),
    FOREIGN KEY (id_nam_hoc_ket_thuc) REFERENCES nam_hoc(id_nam_hoc)
);

-- Departments table
CREATE TABLE khoa (
    id_khoa INT IDENTITY(1,1) PRIMARY KEY,
    ten_khoa NVARCHAR(200) NOT NULL,
    ma_khoa NVARCHAR(50) NOT NULL UNIQUE,
    id_truong_khoa INT UNIQUE
);

-- Teachers table
CREATE TABLE giang_vien (
    id_giang_vien INT IDENTITY(1,1) PRIMARY KEY,
    id_nguoi_dung INT NOT NULL UNIQUE,
    ma_giang_vien NVARCHAR(50) NOT NULL UNIQUE,
    ho_ten NVARCHAR(200) NOT NULL,
    bang_cap NVARCHAR(200),
    chuyen_mon NVARCHAR(500),
    id_khoa INT NOT NULL,
    ngay_vao_lam DATE,
    trang_thai NVARCHAR(20) NOT NULL DEFAULT 'active' CHECK (trang_thai IN ('active', 'inactive', 'retired')),
    FOREIGN KEY (id_nguoi_dung) REFERENCES nguoi_dung(id_nguoi_dung),
    FOREIGN KEY (id_khoa) REFERENCES khoa(id_khoa)
);

-- Add foreign key constraint for department head
ALTER TABLE khoa ADD FOREIGN KEY (id_truong_khoa) REFERENCES giang_vien(id_giang_vien);

-- Students table
CREATE TABLE sinh_vien (
    id_sinh_vien INT IDENTITY(1,1) PRIMARY KEY,
    id_nguoi_dung INT NOT NULL UNIQUE,
    ma_sinh_vien NVARCHAR(50) NOT NULL UNIQUE,
    ho_ten NVARCHAR(200) NOT NULL,
    ngay_sinh DATE,
    gioi_tinh NVARCHAR(10) CHECK (gioi_tinh IN ('Nam', 'Nữ', 'Khác')),
    dia_chi NVARCHAR(500),
    trang_thai NVARCHAR(20) NOT NULL DEFAULT 'active' CHECK (trang_thai IN ('active', 'inactive', 'graduated', 'dropped_out')),
    FOREIGN KEY (id_nguoi_dung) REFERENCES nguoi_dung(id_nguoi_dung)
);

-- =============================================
-- Academic Structure Tables
-- =============================================

-- Subjects table
CREATE TABLE mon_hoc (
    id_mon_hoc INT IDENTITY(1,1) PRIMARY KEY,
    ten_mon_hoc NVARCHAR(200) NOT NULL,
    ma_mon_hoc NVARCHAR(50) NOT NULL UNIQUE,
    so_tin_chi INT NOT NULL CHECK (so_tin_chi > 0),
    gio_ly_thuyet INT NOT NULL DEFAULT 0,
    gio_thuc_hanh INT NOT NULL DEFAULT 0,
    id_khoa INT NOT NULL,
    FOREIGN KEY (id_khoa) REFERENCES khoa(id_khoa)
);

-- Prerequisites table
CREATE TABLE mon_hoc_tien_quyet (
    id_tien_quyet INT IDENTITY(1,1) PRIMARY KEY,
    id_mon_hoc INT NOT NULL,
    id_mon_hoc_can_truoc INT NOT NULL,
    diem_toi_thieu NVARCHAR(5) NOT NULL,
    FOREIGN KEY (id_mon_hoc) REFERENCES mon_hoc(id_mon_hoc),
    FOREIGN KEY (id_mon_hoc_can_truoc) REFERENCES mon_hoc(id_mon_hoc),
    UNIQUE (id_mon_hoc, id_mon_hoc_can_truoc)
);

-- =============================================
-- Schedule Management Tables
-- =============================================

-- Semesters table
CREATE TABLE hoc_ky (
    id_hoc_ky INT IDENTITY(1,1) PRIMARY KEY,
    ten_hoc_ky NVARCHAR(100) NOT NULL,
    id_nam_hoc INT NOT NULL,
    loai_hoc_ky NVARCHAR(20) NOT NULL CHECK (loai_hoc_ky IN ('chinh', 'phu', 'he')),
    ngay_bat_dau DATE NOT NULL,
    ngay_ket_thuc DATE NOT NULL,
    ngay_bat_dau_dang_ky DATE NOT NULL,
    ngay_ket_thuc_dang_ky DATE NOT NULL,
    FOREIGN KEY (id_nam_hoc) REFERENCES nam_hoc(id_nam_hoc)
);

-- Weeks table
CREATE TABLE tuan (
    id_tuan INT IDENTITY(1,1) PRIMARY KEY,
    id_hoc_ky INT NOT NULL,
    thu_tu_tuan INT NOT NULL,
    ngay_bat_dau DATE NOT NULL,
    ngay_ket_thuc DATE NOT NULL,
    FOREIGN KEY (id_hoc_ky) REFERENCES hoc_ky(id_hoc_ky),
    UNIQUE (id_hoc_ky, thu_tu_tuan)
);

-- Days table
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
-- Course Management Tables
-- =============================================

-- Courses table
CREATE TABLE khoa_hoc (
    id_khoa_hoc INT IDENTITY(1,1) PRIMARY KEY,
    id_mon_hoc INT NOT NULL,
    id_giang_vien INT NOT NULL,
    id_lop INT NOT NULL,
    id_hoc_ky INT NOT NULL,
    so_sinh_vien_toi_da INT NOT NULL CHECK (so_sinh_vien_toi_da > 0),
    so_sinh_vien_hien_tai INT NOT NULL DEFAULT 0 CHECK (so_sinh_vien_hien_tai >= 0),
    trang_thai NVARCHAR(20) NOT NULL DEFAULT 'active' CHECK (trang_thai IN ('active', 'inactive', 'completed', 'cancelled')),
    FOREIGN KEY (id_mon_hoc) REFERENCES mon_hoc(id_mon_hoc),
    FOREIGN KEY (id_giang_vien) REFERENCES giang_vien(id_giang_vien),
    FOREIGN KEY (id_lop) REFERENCES lop(id_lop),
    FOREIGN KEY (id_hoc_ky) REFERENCES hoc_ky(id_hoc_ky)
);

-- Student Course Registration table
CREATE TABLE sinh_vien_khoa_hoc (
    id_dang_ky INT IDENTITY(1,1) PRIMARY KEY,
    id_sinh_vien INT NOT NULL,
    id_khoa_hoc INT NOT NULL,
    ngay_dang_ky DATE NOT NULL DEFAULT GETDATE(),
    trang_thai NVARCHAR(20) NOT NULL DEFAULT 'registered' CHECK (trang_thai IN ('registered', 'dropped', 'completed')),
    diem_chuyen_can DECIMAL(4,2) CHECK (diem_chuyen_can BETWEEN 0 AND 10),
    diem_giua_ky DECIMAL(4,2) CHECK (diem_giua_ky BETWEEN 0 AND 10),
    diem_cuoi_ky DECIMAL(4,2) CHECK (diem_cuoi_ky BETWEEN 0 AND 10),
    diem_chu_cuoi_cung NVARCHAR(5),
    FOREIGN KEY (id_sinh_vien) REFERENCES sinh_vien(id_sinh_vien),
    FOREIGN KEY (id_khoa_hoc) REFERENCES khoa_hoc(id_khoa_hoc),
    UNIQUE (id_sinh_vien, id_khoa_hoc)
);

-- =============================================
-- Facility Management Tables
-- =============================================

-- Buildings table
CREATE TABLE toa_nha (
    id_toa_nha INT IDENTITY(1,1) PRIMARY KEY,
    ten_toa_nha NVARCHAR(200) NOT NULL,
    ma_toa_nha NVARCHAR(50) NOT NULL UNIQUE,
    dia_chi NVARCHAR(500)
);

-- Rooms table
CREATE TABLE phong (
    id_phong INT IDENTITY(1,1) PRIMARY KEY,
    ma_phong NVARCHAR(50) NOT NULL UNIQUE,
    ten_phong NVARCHAR(200) NOT NULL,
    suc_chua INT NOT NULL CHECK (suc_chua > 0),
    loai NVARCHAR(20) NOT NULL CHECK (loai IN ('giang_duong', 'phong_hoc', 'phong_may', 'phong_thuc_hanh')),
    id_toa_nha INT NOT NULL,
    FOREIGN KEY (id_toa_nha) REFERENCES toa_nha(id_toa_nha)
);

-- Schedule table
CREATE TABLE lich_hoc (
    id_lich_hoc INT IDENTITY(1,1) PRIMARY KEY,
    id_khoa_hoc INT NOT NULL,
    id_ngay INT NOT NULL,
    gio_bat_dau TIME NOT NULL,
    gio_ket_thuc TIME NOT NULL,
    id_phong INT NOT NULL,
    FOREIGN KEY (id_khoa_hoc) REFERENCES khoa_hoc(id_khoa_hoc),
    FOREIGN KEY (id_ngay) REFERENCES ngay(id_ngay),
    FOREIGN KEY (id_phong) REFERENCES phong(id_phong),
    CHECK (gio_ket_thuc > gio_bat_dau)
);

-- Room Booking table
CREATE TABLE dat_phong (
    id_dat_phong INT IDENTITY(1,1) PRIMARY KEY,
    id_phong INT NOT NULL,
    ngay_dat DATE NOT NULL,
    gio_bat_dau TIME NOT NULL,
    gio_ket_thuc TIME NOT NULL,
    muc_dich NVARCHAR(500),
    nguoi_dat INT NOT NULL,
    trang_thai NVARCHAR(20) NOT NULL DEFAULT 'pending' CHECK (trang_thai IN ('pending', 'approved', 'rejected', 'cancelled')),
    FOREIGN KEY (id_phong) REFERENCES phong(id_phong),
    FOREIGN KEY (nguoi_dat) REFERENCES nguoi_dung(id_nguoi_dung),
    CHECK (gio_ket_thuc > gio_bat_dau)
);

-- =============================================
-- Financial Management Tables
-- =============================================

-- Tuition Fees table
CREATE TABLE hoc_phi (
    id_hoc_phi INT IDENTITY(1,1) PRIMARY KEY,
    id_sinh_vien INT NOT NULL,
    id_hoc_ky INT NOT NULL,
    so_tien DECIMAL(15,2) NOT NULL CHECK (so_tien >= 0),
    han_dong DATE NOT NULL,
    da_dong BIT NOT NULL DEFAULT 0,
    ngay_tao DATETIME2 NOT NULL DEFAULT GETDATE(),
    FOREIGN KEY (id_sinh_vien) REFERENCES sinh_vien(id_sinh_vien),
    FOREIGN KEY (id_hoc_ky) REFERENCES hoc_ky(id_hoc_ky),
    UNIQUE (id_sinh_vien, id_hoc_ky)
);

-- Payments table
CREATE TABLE thanh_toan (
    id_thanh_toan INT IDENTITY(1,1) PRIMARY KEY,
    id_hoc_phi INT NOT NULL,
    so_tien DECIMAL(15,2) NOT NULL CHECK (so_tien > 0),
    ngay_thanh_toan DATE NOT NULL,
    phuong_thuc_thanh_toan NVARCHAR(50) NOT NULL,
    so_bien_lai NVARCHAR(100) NOT NULL UNIQUE,
    trang_thai NVARCHAR(20) NOT NULL DEFAULT 'completed' CHECK (trang_thai IN ('pending', 'completed', 'failed', 'refunded')),
    FOREIGN KEY (id_hoc_phi) REFERENCES hoc_phi(id_hoc_phi)
);

-- =============================================
-- Communication Tables
-- =============================================

-- Notifications table
CREATE TABLE thong_bao (
    id_thong_bao INT IDENTITY(1,1) PRIMARY KEY,
    id_nguoi_gui INT NOT NULL,
    id_nguoi_nhan INT NOT NULL,
    tu_he_thong BIT NOT NULL DEFAULT 0,
    tieu_de NVARCHAR(500) NOT NULL,
    noi_dung NTEXT,
    trang_thai NVARCHAR(20) NOT NULL DEFAULT 'unread' CHECK (trang_thai IN ('unread', 'read', 'archived')),
    ngay_tao DATETIME2 NOT NULL DEFAULT GETDATE(),
    FOREIGN KEY (id_nguoi_gui) REFERENCES nguoi_dung(id_nguoi_dung),
    FOREIGN KEY (id_nguoi_nhan) REFERENCES nguoi_dung(id_nguoi_dung)
);

-- =============================================
-- Indexes for Performance
-- =============================================

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
-- Triggers for Business Logic
-- =============================================

-- Trigger to update course student count when student registers
CREATE TRIGGER TR_sinh_vien_khoa_hoc_INSERT
ON sinh_vien_khoa_hoc
AFTER INSERT
AS
BEGIN
    UPDATE khoa_hoc 
    SET so_sinh_vien_hien_tai = so_sinh_vien_hien_tai + 1
    FROM khoa_hoc k
    INNER JOIN inserted i ON k.id_khoa_hoc = i.id_khoa_hoc
    WHERE i.trang_thai = 'registered';
END;

GO

-- Trigger to update course student count when student drops
CREATE TRIGGER TR_sinh_vien_khoa_hoc_UPDATE
ON sinh_vien_khoa_hoc
AFTER UPDATE
AS
BEGIN
    -- Decrease count when status changes to dropped
    UPDATE khoa_hoc 
    SET so_sinh_vien_hien_tai = so_sinh_vien_hien_tai - 1
    FROM khoa_hoc k
    INNER JOIN inserted i ON k.id_khoa_hoc = i.id_khoa_hoc
    INNER JOIN deleted d ON i.id_dang_ky = d.id_dang_ky
    WHERE d.trang_thai = 'registered' AND i.trang_thai = 'dropped';
    
    -- Increase count when status changes back to registered
    UPDATE khoa_hoc 
    SET so_sinh_vien_hien_tai = so_sinh_vien_hien_tai + 1
    FROM khoa_hoc k
    INNER JOIN inserted i ON k.id_khoa_hoc = i.id_khoa_hoc
    INNER JOIN deleted d ON i.id_dang_ky = d.id_dang_ky
    WHERE d.trang_thai = 'dropped' AND i.trang_thai = 'registered';
END;

GO

-- Trigger to update fee payment status
CREATE TRIGGER TR_thanh_toan_INSERT
ON thanh_toan
AFTER INSERT
AS
BEGIN
    UPDATE hoc_phi
    SET da_dong = 1
    FROM hoc_phi h
    INNER JOIN inserted i ON h.id_hoc_phi = i.id_hoc_phi
    WHERE i.trang_thai = 'completed'
    AND (SELECT SUM(so_tien) FROM thanh_toan WHERE id_hoc_phi = h.id_hoc_phi AND trang_thai = 'completed') >= h.so_tien;
END;

GO

-- Trigger to update last modified timestamp
CREATE TRIGGER TR_nguoi_dung_UPDATE
ON nguoi_dung
AFTER UPDATE
AS
BEGIN
    UPDATE nguoi_dung
    SET ngay_cap_nhat = GETDATE()
    FROM nguoi_dung n
    INNER JOIN inserted i ON n.id_nguoi_dung = i.id_nguoi_dung;
END;

PRINT 'University Management System database schema created successfully!';
PRINT 'Database includes: User Management, Academic Structure, Course Management, Financial Management, Communication, and Facility Management modules.';