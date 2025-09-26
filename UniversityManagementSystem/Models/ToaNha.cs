using System;
using System.Collections.Generic;

namespace UniversityManagementSystem.Models;

public partial class ToaNha
{
    public int IdToaNha { get; set; }

    public string TenToaNha { get; set; } = null!;

    public string MaToaNha { get; set; } = null!;

    public string? DiaChi { get; set; }

    public virtual ICollection<Phong> Phongs { get; set; } = new List<Phong>();
}
