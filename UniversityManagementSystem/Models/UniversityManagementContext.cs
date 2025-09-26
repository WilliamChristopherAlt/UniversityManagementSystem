using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;

namespace UniversityManagementSystem.Models;

public partial class UniversityManagementContext : DbContext
{
    public UniversityManagementContext()
    {
    }

    public UniversityManagementContext(DbContextOptions<UniversityManagementContext> options)
        : base(options)
    {
    }

    public virtual DbSet<DatPhong> DatPhongs { get; set; }

    public virtual DbSet<GiangVien> GiangViens { get; set; }

    public virtual DbSet<HocKy> HocKies { get; set; }

    public virtual DbSet<HocPhi> HocPhis { get; set; }

    public virtual DbSet<Khoa> Khoas { get; set; }

    public virtual DbSet<KhoaHoc> KhoaHocs { get; set; }

    public virtual DbSet<LichHoc> LichHocs { get; set; }

    public virtual DbSet<Lop> Lops { get; set; }

    public virtual DbSet<MonHoc> MonHocs { get; set; }

    public virtual DbSet<MonHocTienQuyet> MonHocTienQuyets { get; set; }

    public virtual DbSet<NamHoc> NamHocs { get; set; }

    public virtual DbSet<Ngay> Ngays { get; set; }

    public virtual DbSet<NguoiDung> NguoiDungs { get; set; }

    public virtual DbSet<Phong> Phongs { get; set; }

    public virtual DbSet<SinhVien> SinhViens { get; set; }

    public virtual DbSet<SinhVienKhoaHoc> SinhVienKhoaHocs { get; set; }

    public virtual DbSet<ThanhToan> ThanhToans { get; set; }

    public virtual DbSet<ThongBao> ThongBaos { get; set; }

    public virtual DbSet<ToaNha> ToaNhas { get; set; }

    public virtual DbSet<Tuan> Tuans { get; set; }

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. You can avoid scaffolding the connection string by using the Name= syntax to read it from configuration - see https://go.microsoft.com/fwlink/?linkid=2131148. For more guidance on storing connection strings, see https://go.microsoft.com/fwlink/?LinkId=723263.
        => optionsBuilder.UseSqlServer("Server=WILLIAMCHRIS;Database=UniversityManagement;Trusted_Connection=True;MultipleActiveResultSets=true;TrustServerCertificate=True");

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<DatPhong>(entity =>
        {
            entity.HasKey(e => e.IdDatPhong).HasName("PK__dat_phon__E507868FC32E2343");

            entity.ToTable("dat_phong");

            entity.Property(e => e.IdDatPhong).HasColumnName("id_dat_phong");
            entity.Property(e => e.GioBatDau).HasColumnName("gio_bat_dau");
            entity.Property(e => e.GioKetThuc).HasColumnName("gio_ket_thuc");
            entity.Property(e => e.IdPhong).HasColumnName("id_phong");
            entity.Property(e => e.MucDich)
                .HasMaxLength(500)
                .HasColumnName("muc_dich");
            entity.Property(e => e.NgayDat).HasColumnName("ngay_dat");
            entity.Property(e => e.NguoiDat).HasColumnName("nguoi_dat");
            entity.Property(e => e.TrangThai)
                .HasMaxLength(20)
                .HasDefaultValue("pending")
                .HasColumnName("trang_thai");

            entity.HasOne(d => d.IdPhongNavigation).WithMany(p => p.DatPhongs)
                .HasForeignKey(d => d.IdPhong)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__dat_phong__id_ph__17F790F9");

            entity.HasOne(d => d.NguoiDatNavigation).WithMany(p => p.DatPhongs)
                .HasForeignKey(d => d.NguoiDat)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__dat_phong__nguoi__18EBB532");
        });

        modelBuilder.Entity<GiangVien>(entity =>
        {
            entity.HasKey(e => e.IdGiangVien).HasName("PK__giang_vi__2DBD5DECF29A1891");

            entity.ToTable("giang_vien");

            entity.HasIndex(e => e.MaGiangVien, "IX_giang_vien_ma");

            entity.HasIndex(e => e.MaGiangVien, "UQ__giang_vi__49A11F3DFEFE243E").IsUnique();

            entity.HasIndex(e => e.IdNguoiDung, "UQ__giang_vi__75D6A11F4915C107").IsUnique();

            entity.Property(e => e.IdGiangVien).HasColumnName("id_giang_vien");
            entity.Property(e => e.BangCap)
                .HasMaxLength(200)
                .HasColumnName("bang_cap");
            entity.Property(e => e.ChuyenMon)
                .HasMaxLength(500)
                .HasColumnName("chuyen_mon");
            entity.Property(e => e.HoTen)
                .HasMaxLength(200)
                .HasColumnName("ho_ten");
            entity.Property(e => e.IdKhoa).HasColumnName("id_khoa");
            entity.Property(e => e.IdNguoiDung).HasColumnName("id_nguoi_dung");
            entity.Property(e => e.MaGiangVien)
                .HasMaxLength(50)
                .HasColumnName("ma_giang_vien");
            entity.Property(e => e.NgayVaoLam).HasColumnName("ngay_vao_lam");
            entity.Property(e => e.TrangThai)
                .HasMaxLength(20)
                .HasDefaultValue("active")
                .HasColumnName("trang_thai");

            entity.HasOne(d => d.IdKhoaNavigation).WithMany(p => p.GiangViens)
                .HasForeignKey(d => d.IdKhoa)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__giang_vie__id_kh__4F7CD00D");

            entity.HasOne(d => d.IdNguoiDungNavigation).WithOne(p => p.GiangVien)
                .HasForeignKey<GiangVien>(d => d.IdNguoiDung)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__giang_vie__id_ng__4E88ABD4");
        });

        modelBuilder.Entity<HocKy>(entity =>
        {
            entity.HasKey(e => e.IdHocKy).HasName("PK__hoc_ky__525521E09396EB01");

            entity.ToTable("hoc_ky");

            entity.Property(e => e.IdHocKy).HasColumnName("id_hoc_ky");
            entity.Property(e => e.IdNamHoc).HasColumnName("id_nam_hoc");
            entity.Property(e => e.LoaiHocKy)
                .HasMaxLength(20)
                .HasColumnName("loai_hoc_ky");
            entity.Property(e => e.NgayBatDau).HasColumnName("ngay_bat_dau");
            entity.Property(e => e.NgayBatDauDangKy).HasColumnName("ngay_bat_dau_dang_ky");
            entity.Property(e => e.NgayKetThuc).HasColumnName("ngay_ket_thuc");
            entity.Property(e => e.NgayKetThucDangKy).HasColumnName("ngay_ket_thuc_dang_ky");
            entity.Property(e => e.TenHocKy)
                .HasMaxLength(100)
                .HasColumnName("ten_hoc_ky");

            entity.HasOne(d => d.IdNamHocNavigation).WithMany(p => p.HocKies)
                .HasForeignKey(d => d.IdNamHoc)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__hoc_ky__id_nam_h__6754599E");
        });

        modelBuilder.Entity<HocPhi>(entity =>
        {
            entity.HasKey(e => e.IdHocPhi).HasName("PK__hoc_phi__552E0DD9B99AC8F9");

            entity.ToTable("hoc_phi");

            entity.HasIndex(e => e.HanDong, "IX_hoc_phi_han_dong");

            entity.HasIndex(e => e.IdSinhVien, "IX_hoc_phi_sinh_vien");

            entity.HasIndex(e => new { e.IdSinhVien, e.IdHocKy }, "UQ__hoc_phi__73C9E62A0E3081C3").IsUnique();

            entity.Property(e => e.IdHocPhi).HasColumnName("id_hoc_phi");
            entity.Property(e => e.DaDong).HasColumnName("da_dong");
            entity.Property(e => e.HanDong).HasColumnName("han_dong");
            entity.Property(e => e.IdHocKy).HasColumnName("id_hoc_ky");
            entity.Property(e => e.IdSinhVien).HasColumnName("id_sinh_vien");
            entity.Property(e => e.NgayTao)
                .HasDefaultValueSql("(getdate())")
                .HasColumnName("ngay_tao");
            entity.Property(e => e.SoTien)
                .HasColumnType("decimal(15, 2)")
                .HasColumnName("so_tien");

            entity.HasOne(d => d.IdHocKyNavigation).WithMany(p => p.HocPhis)
                .HasForeignKey(d => d.IdHocKy)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__hoc_phi__id_hoc___2180FB33");

            entity.HasOne(d => d.IdSinhVienNavigation).WithMany(p => p.HocPhis)
                .HasForeignKey(d => d.IdSinhVien)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__hoc_phi__id_sinh__208CD6FA");
        });

        modelBuilder.Entity<Khoa>(entity =>
        {
            entity.HasKey(e => e.IdKhoa).HasName("PK__khoa__AD2771B25ED85F7F");

            entity.ToTable("khoa");

            entity.HasIndex(e => e.IdTruongKhoa, "UQ__khoa__7DD23CE14A5FDD23").IsUnique();

            entity.HasIndex(e => e.MaKhoa, "UQ__khoa__B2C5324F37F64BC0").IsUnique();

            entity.Property(e => e.IdKhoa).HasColumnName("id_khoa");
            entity.Property(e => e.IdTruongKhoa).HasColumnName("id_truong_khoa");
            entity.Property(e => e.MaKhoa)
                .HasMaxLength(50)
                .HasColumnName("ma_khoa");
            entity.Property(e => e.TenKhoa)
                .HasMaxLength(200)
                .HasColumnName("ten_khoa");

            entity.HasOne(d => d.IdTruongKhoaNavigation).WithOne(p => p.Khoa)
                .HasForeignKey<Khoa>(d => d.IdTruongKhoa)
                .HasConstraintName("FK__khoa__id_truong___5070F446");
        });

        modelBuilder.Entity<KhoaHoc>(entity =>
        {
            entity.HasKey(e => e.IdKhoaHoc).HasName("PK__khoa_hoc__FBFA895060621EA4");

            entity.ToTable("khoa_hoc");

            entity.HasIndex(e => e.IdHocKy, "IX_khoa_hoc_hoc_ky");

            entity.Property(e => e.IdKhoaHoc).HasColumnName("id_khoa_hoc");
            entity.Property(e => e.IdGiangVien).HasColumnName("id_giang_vien");
            entity.Property(e => e.IdHocKy).HasColumnName("id_hoc_ky");
            entity.Property(e => e.IdLop).HasColumnName("id_lop");
            entity.Property(e => e.IdMonHoc).HasColumnName("id_mon_hoc");
            entity.Property(e => e.SoSinhVienHienTai).HasColumnName("so_sinh_vien_hien_tai");
            entity.Property(e => e.SoSinhVienToiDa).HasColumnName("so_sinh_vien_toi_da");
            entity.Property(e => e.TrangThai)
                .HasMaxLength(20)
                .HasDefaultValue("active")
                .HasColumnName("trang_thai");

            entity.HasOne(d => d.IdGiangVienNavigation).WithMany(p => p.KhoaHocs)
                .HasForeignKey(d => d.IdGiangVien)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__khoa_hoc__id_gia__787EE5A0");

            entity.HasOne(d => d.IdHocKyNavigation).WithMany(p => p.KhoaHocs)
                .HasForeignKey(d => d.IdHocKy)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__khoa_hoc__id_hoc__7A672E12");

            entity.HasOne(d => d.IdLopNavigation).WithMany(p => p.KhoaHocs)
                .HasForeignKey(d => d.IdLop)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__khoa_hoc__id_lop__797309D9");

            entity.HasOne(d => d.IdMonHocNavigation).WithMany(p => p.KhoaHocs)
                .HasForeignKey(d => d.IdMonHoc)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__khoa_hoc__id_mon__778AC167");
        });

        modelBuilder.Entity<LichHoc>(entity =>
        {
            entity.HasKey(e => e.IdLichHoc).HasName("PK__lich_hoc__7E740D65DF9145F1");

            entity.ToTable("lich_hoc");

            entity.HasIndex(e => e.IdKhoaHoc, "IX_lich_hoc_khoa_hoc");

            entity.HasIndex(e => new { e.IdPhong, e.IdNgay }, "IX_lich_hoc_phong_ngay");

            entity.Property(e => e.IdLichHoc).HasColumnName("id_lich_hoc");
            entity.Property(e => e.GioBatDau).HasColumnName("gio_bat_dau");
            entity.Property(e => e.GioKetThuc).HasColumnName("gio_ket_thuc");
            entity.Property(e => e.IdKhoaHoc).HasColumnName("id_khoa_hoc");
            entity.Property(e => e.IdNgay).HasColumnName("id_ngay");
            entity.Property(e => e.IdPhong).HasColumnName("id_phong");

            entity.HasOne(d => d.IdKhoaHocNavigation).WithMany(p => p.LichHocs)
                .HasForeignKey(d => d.IdKhoaHoc)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__lich_hoc__id_kho__10566F31");

            entity.HasOne(d => d.IdNgayNavigation).WithMany(p => p.LichHocs)
                .HasForeignKey(d => d.IdNgay)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__lich_hoc__id_nga__114A936A");

            entity.HasOne(d => d.IdPhongNavigation).WithMany(p => p.LichHocs)
                .HasForeignKey(d => d.IdPhong)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__lich_hoc__id_pho__123EB7A3");
        });

        modelBuilder.Entity<Lop>(entity =>
        {
            entity.HasKey(e => e.IdLop).HasName("PK__lop__6CC85187F89D01B4");

            entity.ToTable("lop");

            entity.HasIndex(e => e.MaLop, "UQ__lop__0B8BCDEF82A075BE").IsUnique();

            entity.Property(e => e.IdLop).HasColumnName("id_lop");
            entity.Property(e => e.IdNamHocBatDau).HasColumnName("id_nam_hoc_bat_dau");
            entity.Property(e => e.IdNamHocKetThuc).HasColumnName("id_nam_hoc_ket_thuc");
            entity.Property(e => e.MaLop)
                .HasMaxLength(50)
                .HasColumnName("ma_lop");
            entity.Property(e => e.TenLop)
                .HasMaxLength(200)
                .HasColumnName("ten_lop");

            entity.HasOne(d => d.IdNamHocBatDauNavigation).WithMany(p => p.LopIdNamHocBatDauNavigations)
                .HasForeignKey(d => d.IdNamHocBatDau)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__lop__id_nam_hoc___4316F928");

            entity.HasOne(d => d.IdNamHocKetThucNavigation).WithMany(p => p.LopIdNamHocKetThucNavigations)
                .HasForeignKey(d => d.IdNamHocKetThuc)
                .HasConstraintName("FK__lop__id_nam_hoc___440B1D61");
        });

        modelBuilder.Entity<MonHoc>(entity =>
        {
            entity.HasKey(e => e.IdMonHoc).HasName("PK__mon_hoc__D7AD79B5CB982A6C");

            entity.ToTable("mon_hoc");

            entity.HasIndex(e => e.MaMonHoc, "UQ__mon_hoc__2FB404016814D95E").IsUnique();

            entity.Property(e => e.IdMonHoc).HasColumnName("id_mon_hoc");
            entity.Property(e => e.GioLyThuyet).HasColumnName("gio_ly_thuyet");
            entity.Property(e => e.GioThucHanh).HasColumnName("gio_thuc_hanh");
            entity.Property(e => e.IdKhoa).HasColumnName("id_khoa");
            entity.Property(e => e.MaMonHoc)
                .HasMaxLength(50)
                .HasColumnName("ma_mon_hoc");
            entity.Property(e => e.SoTinChi).HasColumnName("so_tin_chi");
            entity.Property(e => e.TenMonHoc)
                .HasMaxLength(200)
                .HasColumnName("ten_mon_hoc");

            entity.HasOne(d => d.IdKhoaNavigation).WithMany(p => p.MonHocs)
                .HasForeignKey(d => d.IdKhoa)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__mon_hoc__id_khoa__5EBF139D");
        });

        modelBuilder.Entity<MonHocTienQuyet>(entity =>
        {
            entity.HasKey(e => e.IdTienQuyet).HasName("PK__mon_hoc___2F30A9698440EE45");

            entity.ToTable("mon_hoc_tien_quyet");

            entity.HasIndex(e => new { e.IdMonHoc, e.IdMonHocCanTruoc }, "UQ__mon_hoc___FCAF1F04F6C732AD").IsUnique();

            entity.Property(e => e.IdTienQuyet).HasColumnName("id_tien_quyet");
            entity.Property(e => e.DiemToiThieu)
                .HasMaxLength(5)
                .HasColumnName("diem_toi_thieu");
            entity.Property(e => e.IdMonHoc).HasColumnName("id_mon_hoc");
            entity.Property(e => e.IdMonHocCanTruoc).HasColumnName("id_mon_hoc_can_truoc");

            entity.HasOne(d => d.IdMonHocNavigation).WithMany(p => p.MonHocTienQuyetIdMonHocNavigations)
                .HasForeignKey(d => d.IdMonHoc)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__mon_hoc_t__id_mo__628FA481");

            entity.HasOne(d => d.IdMonHocCanTruocNavigation).WithMany(p => p.MonHocTienQuyetIdMonHocCanTruocNavigations)
                .HasForeignKey(d => d.IdMonHocCanTruoc)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__mon_hoc_t__id_mo__6383C8BA");
        });

        modelBuilder.Entity<NamHoc>(entity =>
        {
            entity.HasKey(e => e.IdNamHoc).HasName("PK__nam_hoc__17BE95B988C8EE77");

            entity.ToTable("nam_hoc");

            entity.Property(e => e.IdNamHoc).HasColumnName("id_nam_hoc");
            entity.Property(e => e.NgayBatDau).HasColumnName("ngay_bat_dau");
            entity.Property(e => e.NgayKetThuc).HasColumnName("ngay_ket_thuc");
        });

        modelBuilder.Entity<Ngay>(entity =>
        {
            entity.HasKey(e => e.IdNgay).HasName("PK__ngay__391BDEA0F7EC5810");

            entity.ToTable("ngay");

            entity.HasIndex(e => new { e.IdTuan, e.ThuTuNgay }, "UQ__ngay__9CAFA7895266CA85").IsUnique();

            entity.Property(e => e.IdNgay).HasColumnName("id_ngay");
            entity.Property(e => e.IdTuan).HasColumnName("id_tuan");
            entity.Property(e => e.NgayThang).HasColumnName("ngay_thang");
            entity.Property(e => e.TenNgay)
                .HasMaxLength(20)
                .HasColumnName("ten_ngay");
            entity.Property(e => e.ThuTuNgay).HasColumnName("thu_tu_ngay");

            entity.HasOne(d => d.IdTuanNavigation).WithMany(p => p.Ngays)
                .HasForeignKey(d => d.IdTuan)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__ngay__id_tuan__6FE99F9F");
        });

        modelBuilder.Entity<NguoiDung>(entity =>
        {
            entity.HasKey(e => e.IdNguoiDung).HasName("PK__nguoi_du__75D6A11E9220FD0A");

            entity.ToTable("nguoi_dung", tb => tb.HasTrigger("TR_nguoi_dung_UPDATE"));

            entity.HasIndex(e => e.Email, "IX_nguoi_dung_email");

            entity.HasIndex(e => e.VaiTro, "IX_nguoi_dung_vai_tro");

            entity.HasIndex(e => e.TenDangNhap, "UQ__nguoi_du__363698B305BEFA41").IsUnique();

            entity.HasIndex(e => e.Email, "UQ__nguoi_du__AB6E61645D44C089").IsUnique();

            entity.Property(e => e.IdNguoiDung).HasColumnName("id_nguoi_dung");
            entity.Property(e => e.AnhDaiDien)
                .HasMaxLength(500)
                .HasColumnName("anh_dai_dien");
            entity.Property(e => e.Email)
                .HasMaxLength(255)
                .HasColumnName("email");
            entity.Property(e => e.MatKhauHash)
                .HasMaxLength(255)
                .HasColumnName("mat_khau_hash");
            entity.Property(e => e.NgayCapNhat)
                .HasDefaultValueSql("(getdate())")
                .HasColumnName("ngay_cap_nhat");
            entity.Property(e => e.NgayTao)
                .HasDefaultValueSql("(getdate())")
                .HasColumnName("ngay_tao");
            entity.Property(e => e.SoDienThoai)
                .HasMaxLength(20)
                .HasColumnName("so_dien_thoai");
            entity.Property(e => e.TenDangNhap)
                .HasMaxLength(100)
                .HasColumnName("ten_dang_nhap");
            entity.Property(e => e.TrangThai)
                .HasMaxLength(20)
                .HasDefaultValue("active")
                .HasColumnName("trang_thai");
            entity.Property(e => e.VaiTro)
                .HasMaxLength(20)
                .HasColumnName("vai_tro");
        });

        modelBuilder.Entity<Phong>(entity =>
        {
            entity.HasKey(e => e.IdPhong).HasName("PK__phong__599EC1F8593C4E12");

            entity.ToTable("phong");

            entity.HasIndex(e => e.MaPhong, "UQ__phong__1BD319C8BBDD0BB7").IsUnique();

            entity.Property(e => e.IdPhong).HasColumnName("id_phong");
            entity.Property(e => e.IdToaNha).HasColumnName("id_toa_nha");
            entity.Property(e => e.Loai)
                .HasMaxLength(20)
                .HasColumnName("loai");
            entity.Property(e => e.MaPhong)
                .HasMaxLength(50)
                .HasColumnName("ma_phong");
            entity.Property(e => e.SucChua).HasColumnName("suc_chua");
            entity.Property(e => e.TenPhong)
                .HasMaxLength(200)
                .HasColumnName("ten_phong");

            entity.HasOne(d => d.IdToaNhaNavigation).WithMany(p => p.Phongs)
                .HasForeignKey(d => d.IdToaNha)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__phong__id_toa_nh__0D7A0286");
        });

        modelBuilder.Entity<SinhVien>(entity =>
        {
            entity.HasKey(e => e.IdSinhVien).HasName("PK__sinh_vie__66ECB4351D41F3AE");

            entity.ToTable("sinh_vien");

            entity.HasIndex(e => e.MaSinhVien, "IX_sinh_vien_ma");

            entity.HasIndex(e => e.IdNguoiDung, "UQ__sinh_vie__75D6A11F94916CC0").IsUnique();

            entity.HasIndex(e => e.MaSinhVien, "UQ__sinh_vie__A8B3B55768E533A4").IsUnique();

            entity.Property(e => e.IdSinhVien).HasColumnName("id_sinh_vien");
            entity.Property(e => e.DiaChi)
                .HasMaxLength(500)
                .HasColumnName("dia_chi");
            entity.Property(e => e.GioiTinh)
                .HasMaxLength(10)
                .HasColumnName("gioi_tinh");
            entity.Property(e => e.HoTen)
                .HasMaxLength(200)
                .HasColumnName("ho_ten");
            entity.Property(e => e.IdNguoiDung).HasColumnName("id_nguoi_dung");
            entity.Property(e => e.MaSinhVien)
                .HasMaxLength(50)
                .HasColumnName("ma_sinh_vien");
            entity.Property(e => e.NgaySinh).HasColumnName("ngay_sinh");
            entity.Property(e => e.TrangThai)
                .HasMaxLength(20)
                .HasDefaultValue("active")
                .HasColumnName("trang_thai");

            entity.HasOne(d => d.IdNguoiDungNavigation).WithOne(p => p.SinhVien)
                .HasForeignKey<SinhVien>(d => d.IdNguoiDung)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__sinh_vien__id_ng__5812160E");
        });

        modelBuilder.Entity<SinhVienKhoaHoc>(entity =>
        {
            entity.HasKey(e => e.IdDangKy).HasName("PK__sinh_vie__79E6435DC05285D6");

            entity.ToTable("sinh_vien_khoa_hoc", tb =>
                {
                    tb.HasTrigger("TR_sinh_vien_khoa_hoc_INSERT");
                    tb.HasTrigger("TR_sinh_vien_khoa_hoc_UPDATE");
                });

            entity.HasIndex(e => e.IdSinhVien, "IX_sinh_vien_khoa_hoc_sinh_vien");

            entity.HasIndex(e => new { e.IdSinhVien, e.IdKhoaHoc }, "UQ__sinh_vie__79531CA10EAC1B66").IsUnique();

            entity.Property(e => e.IdDangKy).HasColumnName("id_dang_ky");
            entity.Property(e => e.DiemChuCuoiCung)
                .HasMaxLength(5)
                .HasColumnName("diem_chu_cuoi_cung");
            entity.Property(e => e.DiemChuyenCan)
                .HasColumnType("decimal(4, 2)")
                .HasColumnName("diem_chuyen_can");
            entity.Property(e => e.DiemCuoiKy)
                .HasColumnType("decimal(4, 2)")
                .HasColumnName("diem_cuoi_ky");
            entity.Property(e => e.DiemGiuaKy)
                .HasColumnType("decimal(4, 2)")
                .HasColumnName("diem_giua_ky");
            entity.Property(e => e.IdKhoaHoc).HasColumnName("id_khoa_hoc");
            entity.Property(e => e.IdSinhVien).HasColumnName("id_sinh_vien");
            entity.Property(e => e.NgayDangKy)
                .HasDefaultValueSql("(getdate())")
                .HasColumnName("ngay_dang_ky");
            entity.Property(e => e.TrangThai)
                .HasMaxLength(20)
                .HasDefaultValue("registered")
                .HasColumnName("trang_thai");

            entity.HasOne(d => d.IdKhoaHocNavigation).WithMany(p => p.SinhVienKhoaHocs)
                .HasForeignKey(d => d.IdKhoaHoc)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__sinh_vien__id_kh__04E4BC85");

            entity.HasOne(d => d.IdSinhVienNavigation).WithMany(p => p.SinhVienKhoaHocs)
                .HasForeignKey(d => d.IdSinhVien)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__sinh_vien__id_si__03F0984C");
        });

        modelBuilder.Entity<ThanhToan>(entity =>
        {
            entity.HasKey(e => e.IdThanhToan).HasName("PK__thanh_to__339F533DF277F4D6");

            entity.ToTable("thanh_toan", tb => tb.HasTrigger("TR_thanh_toan_INSERT"));

            entity.HasIndex(e => e.NgayThanhToan, "IX_thanh_toan_ngay");

            entity.HasIndex(e => e.SoBienLai, "UQ__thanh_to__71A447C69B69D453").IsUnique();

            entity.Property(e => e.IdThanhToan).HasColumnName("id_thanh_toan");
            entity.Property(e => e.IdHocPhi).HasColumnName("id_hoc_phi");
            entity.Property(e => e.NgayThanhToan).HasColumnName("ngay_thanh_toan");
            entity.Property(e => e.PhuongThucThanhToan)
                .HasMaxLength(50)
                .HasColumnName("phuong_thuc_thanh_toan");
            entity.Property(e => e.SoBienLai)
                .HasMaxLength(100)
                .HasColumnName("so_bien_lai");
            entity.Property(e => e.SoTien)
                .HasColumnType("decimal(15, 2)")
                .HasColumnName("so_tien");
            entity.Property(e => e.TrangThai)
                .HasMaxLength(20)
                .HasDefaultValue("completed")
                .HasColumnName("trang_thai");

            entity.HasOne(d => d.IdHocPhiNavigation).WithMany(p => p.ThanhToans)
                .HasForeignKey(d => d.IdHocPhi)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__thanh_toa__id_ho__282DF8C2");
        });

        modelBuilder.Entity<ThongBao>(entity =>
        {
            entity.HasKey(e => e.IdThongBao).HasName("PK__thong_ba__19725B85C2607F29");

            entity.ToTable("thong_bao");

            entity.HasIndex(e => e.IdNguoiNhan, "IX_thong_bao_nguoi_nhan");

            entity.HasIndex(e => e.TrangThai, "IX_thong_bao_trang_thai");

            entity.Property(e => e.IdThongBao).HasColumnName("id_thong_bao");
            entity.Property(e => e.IdNguoiGui).HasColumnName("id_nguoi_gui");
            entity.Property(e => e.IdNguoiNhan).HasColumnName("id_nguoi_nhan");
            entity.Property(e => e.NgayTao)
                .HasDefaultValueSql("(getdate())")
                .HasColumnName("ngay_tao");
            entity.Property(e => e.NoiDung)
                .HasColumnType("ntext")
                .HasColumnName("noi_dung");
            entity.Property(e => e.TieuDe)
                .HasMaxLength(500)
                .HasColumnName("tieu_de");
            entity.Property(e => e.TrangThai)
                .HasMaxLength(20)
                .HasDefaultValue("unread")
                .HasColumnName("trang_thai");
            entity.Property(e => e.TuHeThong).HasColumnName("tu_he_thong");

            entity.HasOne(d => d.IdNguoiGuiNavigation).WithMany(p => p.ThongBaoIdNguoiGuiNavigations)
                .HasForeignKey(d => d.IdNguoiGui)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__thong_bao__id_ng__2EDAF651");

            entity.HasOne(d => d.IdNguoiNhanNavigation).WithMany(p => p.ThongBaoIdNguoiNhanNavigations)
                .HasForeignKey(d => d.IdNguoiNhan)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__thong_bao__id_ng__2FCF1A8A");
        });

        modelBuilder.Entity<ToaNha>(entity =>
        {
            entity.HasKey(e => e.IdToaNha).HasName("PK__toa_nha__A9C6A406B8EB0AFE");

            entity.ToTable("toa_nha");

            entity.HasIndex(e => e.MaToaNha, "UQ__toa_nha__496A9F4623E9FDF6").IsUnique();

            entity.Property(e => e.IdToaNha).HasColumnName("id_toa_nha");
            entity.Property(e => e.DiaChi)
                .HasMaxLength(500)
                .HasColumnName("dia_chi");
            entity.Property(e => e.MaToaNha)
                .HasMaxLength(50)
                .HasColumnName("ma_toa_nha");
            entity.Property(e => e.TenToaNha)
                .HasMaxLength(200)
                .HasColumnName("ten_toa_nha");
        });

        modelBuilder.Entity<Tuan>(entity =>
        {
            entity.HasKey(e => e.IdTuan).HasName("PK__tuan__CAB3C6CF415B590D");

            entity.ToTable("tuan");

            entity.HasIndex(e => new { e.IdHocKy, e.ThuTuTuan }, "UQ__tuan__CC43C41E38CB2C21").IsUnique();

            entity.Property(e => e.IdTuan).HasColumnName("id_tuan");
            entity.Property(e => e.IdHocKy).HasColumnName("id_hoc_ky");
            entity.Property(e => e.NgayBatDau).HasColumnName("ngay_bat_dau");
            entity.Property(e => e.NgayKetThuc).HasColumnName("ngay_ket_thuc");
            entity.Property(e => e.ThuTuTuan).HasColumnName("thu_tu_tuan");

            entity.HasOne(d => d.IdHocKyNavigation).WithMany(p => p.Tuans)
                .HasForeignKey(d => d.IdHocKy)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__tuan__id_hoc_ky__6B24EA82");
        });

        OnModelCreatingPartial(modelBuilder);
    }

    partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
}
