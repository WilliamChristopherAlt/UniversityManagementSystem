using System;
using System.Collections.Generic;

namespace UniversityManagementSystem.Models;

public partial class ThanhToan
{
    public int IdThanhToan { get; set; }

    public int IdHocPhi { get; set; }

    public decimal SoTien { get; set; }

    public DateOnly NgayThanhToan { get; set; }

    public string PhuongThucThanhToan { get; set; } = null!;

    public string SoBienLai { get; set; } = null!;

    public string TrangThai { get; set; } = null!;

    public virtual HocPhi IdHocPhiNavigation { get; set; } = null!;
}
