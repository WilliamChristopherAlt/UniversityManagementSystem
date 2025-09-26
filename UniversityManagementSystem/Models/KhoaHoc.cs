using System;
using System.Collections.Generic;

namespace UniversityManagementSystem.Models;

public partial class KhoaHoc
{
    public int IdKhoaHoc { get; set; }

    public int IdMonHoc { get; set; }

    public int IdGiangVien { get; set; }

    public int IdLop { get; set; }

    public int IdHocKy { get; set; }

    public int SoSinhVienToiDa { get; set; }

    public int SoSinhVienHienTai { get; set; }

    public string TrangThai { get; set; } = null!;

    public virtual GiangVien IdGiangVienNavigation { get; set; } = null!;

    public virtual HocKy IdHocKyNavigation { get; set; } = null!;

    public virtual Lop IdLopNavigation { get; set; } = null!;

    public virtual MonHoc IdMonHocNavigation { get; set; } = null!;

    public virtual ICollection<LichHoc> LichHocs { get; set; } = new List<LichHoc>();

    public virtual ICollection<SinhVienKhoaHoc> SinhVienKhoaHocs { get; set; } = new List<SinhVienKhoaHoc>();
}
