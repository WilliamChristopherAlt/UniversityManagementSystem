using System;
using System.Collections.Generic;

namespace UniversityManagementSystem.Models;

public partial class Tuan
{
    public int IdTuan { get; set; }

    public int IdHocKy { get; set; }

    public int ThuTuTuan { get; set; }

    public DateOnly NgayBatDau { get; set; }

    public DateOnly NgayKetThuc { get; set; }

    public virtual HocKy IdHocKyNavigation { get; set; } = null!;

    public virtual ICollection<Ngay> Ngays { get; set; } = new List<Ngay>();
}
