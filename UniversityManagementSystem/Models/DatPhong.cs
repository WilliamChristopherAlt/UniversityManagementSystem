using System;
using System.Collections.Generic;

namespace UniversityManagementSystem.Models;

public partial class DatPhong
{
    public int IdDatPhong { get; set; }

    public int IdPhong { get; set; }

    public DateOnly NgayDat { get; set; }

    public TimeOnly GioBatDau { get; set; }

    public TimeOnly GioKetThuc { get; set; }

    public string? MucDich { get; set; }

    public int NguoiDat { get; set; }

    public string TrangThai { get; set; } = null!;

    public virtual Phong IdPhongNavigation { get; set; } = null!;

    public virtual NguoiDung NguoiDatNavigation { get; set; } = null!;
}
