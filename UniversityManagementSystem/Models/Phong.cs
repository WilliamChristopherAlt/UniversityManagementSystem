using System;
using System.Collections.Generic;

namespace UniversityManagementSystem.Models;

public partial class Phong
{
    public int IdPhong { get; set; }

    public string MaPhong { get; set; } = null!;

    public string TenPhong { get; set; } = null!;

    public int SucChua { get; set; }

    public string Loai { get; set; } = null!;

    public int IdToaNha { get; set; }

    public virtual ICollection<DatPhong> DatPhongs { get; set; } = new List<DatPhong>();

    public virtual ToaNha IdToaNhaNavigation { get; set; } = null!;

    public virtual ICollection<LichHoc> LichHocs { get; set; } = new List<LichHoc>();
}
