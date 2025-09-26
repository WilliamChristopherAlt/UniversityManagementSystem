using System;
using System.Collections.Generic;

namespace UniversityManagementSystem.Models;

public partial class GiangVien
{
    public int IdGiangVien { get; set; }

    public int IdNguoiDung { get; set; }

    public string MaGiangVien { get; set; } = null!;

    public string HoTen { get; set; } = null!;

    public string? BangCap { get; set; }

    public string? ChuyenMon { get; set; }

    public int IdKhoa { get; set; }

    public DateOnly? NgayVaoLam { get; set; }

    public string TrangThai { get; set; } = null!;

    public virtual Khoa IdKhoaNavigation { get; set; } = null!;

    public virtual NguoiDung IdNguoiDungNavigation { get; set; } = null!;

    public virtual Khoa? Khoa { get; set; }

    public virtual ICollection<KhoaHoc> KhoaHocs { get; set; } = new List<KhoaHoc>();
}
