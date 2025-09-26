using System;
using System.Collections.Generic;

namespace UniversityManagementSystem.Models;

public partial class Ngay
{
    public int IdNgay { get; set; }

    public int IdTuan { get; set; }

    public int ThuTuNgay { get; set; }

    public DateOnly NgayThang { get; set; }

    public string TenNgay { get; set; } = null!;

    public virtual Tuan IdTuanNavigation { get; set; } = null!;

    public virtual ICollection<LichHoc> LichHocs { get; set; } = new List<LichHoc>();
}
