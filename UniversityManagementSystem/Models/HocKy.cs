using System;
using System.Collections.Generic;

namespace UniversityManagementSystem.Models;

public partial class HocKy
{
    public int IdHocKy { get; set; }

    public string TenHocKy { get; set; } = null!;

    public int IdNamHoc { get; set; }

    public string LoaiHocKy { get; set; } = null!;

    public DateOnly NgayBatDau { get; set; }

    public DateOnly NgayKetThuc { get; set; }

    public DateOnly NgayBatDauDangKy { get; set; }

    public DateOnly NgayKetThucDangKy { get; set; }

    public virtual ICollection<HocPhi> HocPhis { get; set; } = new List<HocPhi>();

    public virtual NamHoc IdNamHocNavigation { get; set; } = null!;

    public virtual ICollection<KhoaHoc> KhoaHocs { get; set; } = new List<KhoaHoc>();

    public virtual ICollection<Tuan> Tuans { get; set; } = new List<Tuan>();
}
