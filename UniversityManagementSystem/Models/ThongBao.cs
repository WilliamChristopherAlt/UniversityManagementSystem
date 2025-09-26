using System;
using System.Collections.Generic;

namespace UniversityManagementSystem.Models;

public partial class ThongBao
{
    public int IdThongBao { get; set; }

    public int IdNguoiGui { get; set; }

    public int IdNguoiNhan { get; set; }

    public bool TuHeThong { get; set; }

    public string TieuDe { get; set; } = null!;

    public string? NoiDung { get; set; }

    public string TrangThai { get; set; } = null!;

    public DateTime NgayTao { get; set; }

    public virtual NguoiDung IdNguoiGuiNavigation { get; set; } = null!;

    public virtual NguoiDung IdNguoiNhanNavigation { get; set; } = null!;
}
