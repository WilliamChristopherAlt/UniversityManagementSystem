using System;
using System.Collections.Generic;

namespace UniversityManagementSystem.Models;

public partial class SinhVienKhoaHoc
{
    public int IdDangKy { get; set; }

    public int IdSinhVien { get; set; }

    public int IdKhoaHoc { get; set; }

    public DateOnly NgayDangKy { get; set; }

    public string TrangThai { get; set; } = null!;

    public decimal? DiemChuyenCan { get; set; }

    public decimal? DiemGiuaKy { get; set; }

    public decimal? DiemCuoiKy { get; set; }

    public string? DiemChuCuoiCung { get; set; }

    public virtual KhoaHoc IdKhoaHocNavigation { get; set; } = null!;

    public virtual SinhVien IdSinhVienNavigation { get; set; } = null!;
}
