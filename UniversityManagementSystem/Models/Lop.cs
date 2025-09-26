using System;
using System.Collections.Generic;

namespace UniversityManagementSystem.Models;

public partial class Lop
{
    public int IdLop { get; set; }

    public string MaLop { get; set; } = null!;

    public string TenLop { get; set; } = null!;

    public int IdNamHocBatDau { get; set; }

    public int? IdNamHocKetThuc { get; set; }

    public virtual NamHoc IdNamHocBatDauNavigation { get; set; } = null!;

    public virtual NamHoc? IdNamHocKetThucNavigation { get; set; }

    public virtual ICollection<KhoaHoc> KhoaHocs { get; set; } = new List<KhoaHoc>();
}
