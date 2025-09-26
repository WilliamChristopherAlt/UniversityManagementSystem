using System;
using System.Collections.Generic;

namespace UniversityManagementSystem.Models;

public partial class NamHoc
{
    public int IdNamHoc { get; set; }

    public DateOnly NgayBatDau { get; set; }

    public DateOnly NgayKetThuc { get; set; }

    public virtual ICollection<HocKy> HocKies { get; set; } = new List<HocKy>();

    public virtual ICollection<Lop> LopIdNamHocBatDauNavigations { get; set; } = new List<Lop>();

    public virtual ICollection<Lop> LopIdNamHocKetThucNavigations { get; set; } = new List<Lop>();
}
