using System;
using System.Collections.Generic;

namespace UniversityManagementSystem.Models;

public partial class NguoiDung
{
    public int IdNguoiDung { get; set; }

    public string TenDangNhap { get; set; } = null!;

    public string MatKhauHash { get; set; } = null!;

    public string Email { get; set; } = null!;

    public string? SoDienThoai { get; set; }

    public string VaiTro { get; set; } = null!;

    public string TrangThai { get; set; } = null!;

    public string? AnhDaiDien { get; set; }

    public DateTime NgayTao { get; set; }

    public DateTime NgayCapNhat { get; set; }

    public virtual ICollection<DatPhong> DatPhongs { get; set; } = new List<DatPhong>();

    public virtual GiangVien? GiangVien { get; set; }

    public virtual SinhVien? SinhVien { get; set; }

    public virtual ICollection<ThongBao> ThongBaoIdNguoiGuiNavigations { get; set; } = new List<ThongBao>();

    public virtual ICollection<ThongBao> ThongBaoIdNguoiNhanNavigations { get; set; } = new List<ThongBao>();
}
