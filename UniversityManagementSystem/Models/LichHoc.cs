using System;
using System.Collections.Generic;

namespace UniversityManagementSystem.Models;

public partial class LichHoc
{
    public int IdLichHoc { get; set; }

    public int IdKhoaHoc { get; set; }

    public int IdNgay { get; set; }

    public TimeOnly GioBatDau { get; set; }

    public TimeOnly GioKetThuc { get; set; }

    public int IdPhong { get; set; }

    public virtual KhoaHoc IdKhoaHocNavigation { get; set; } = null!;

    public virtual Ngay IdNgayNavigation { get; set; } = null!;

    public virtual Phong IdPhongNavigation { get; set; } = null!;
}
