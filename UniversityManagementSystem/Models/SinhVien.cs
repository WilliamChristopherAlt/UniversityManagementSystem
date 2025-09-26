using System;
using System.Collections.Generic;

namespace UniversityManagementSystem.Models;

public partial class SinhVien
{
    public int IdSinhVien { get; set; }

    public int IdNguoiDung { get; set; }

    public string MaSinhVien { get; set; } = null!;

    public string HoTen { get; set; } = null!;

    public DateOnly? NgaySinh { get; set; }

    public string? GioiTinh { get; set; }

    public string? DiaChi { get; set; }

    public string TrangThai { get; set; } = null!;

    public virtual ICollection<HocPhi> HocPhis { get; set; } = new List<HocPhi>();

    public virtual NguoiDung IdNguoiDungNavigation { get; set; } = null!;

    public virtual ICollection<SinhVienKhoaHoc> SinhVienKhoaHocs { get; set; } = new List<SinhVienKhoaHoc>();
}
