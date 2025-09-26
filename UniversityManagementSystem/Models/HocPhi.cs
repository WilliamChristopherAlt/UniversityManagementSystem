using System;
using System.Collections.Generic;

namespace UniversityManagementSystem.Models;

public partial class HocPhi
{
    public int IdHocPhi { get; set; }

    public int IdSinhVien { get; set; }

    public int IdHocKy { get; set; }

    public decimal SoTien { get; set; }

    public DateOnly HanDong { get; set; }

    public bool DaDong { get; set; }

    public DateTime NgayTao { get; set; }

    public virtual HocKy IdHocKyNavigation { get; set; } = null!;

    public virtual SinhVien IdSinhVienNavigation { get; set; } = null!;

    public virtual ICollection<ThanhToan> ThanhToans { get; set; } = new List<ThanhToan>();
}
