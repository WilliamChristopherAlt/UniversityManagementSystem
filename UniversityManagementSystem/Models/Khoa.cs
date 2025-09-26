using System;
using System.Collections.Generic;

namespace UniversityManagementSystem.Models;

public partial class Khoa
{
    public int IdKhoa { get; set; }

    public string TenKhoa { get; set; } = null!;

    public string MaKhoa { get; set; } = null!;

    public int? IdTruongKhoa { get; set; }

    public virtual ICollection<GiangVien> GiangViens { get; set; } = new List<GiangVien>();

    public virtual GiangVien? IdTruongKhoaNavigation { get; set; }

    public virtual ICollection<MonHoc> MonHocs { get; set; } = new List<MonHoc>();
}
