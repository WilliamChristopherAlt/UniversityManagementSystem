using System;
using System.Collections.Generic;

namespace UniversityManagementSystem.Models;

public partial class MonHoc
{
    public int IdMonHoc { get; set; }

    public string TenMonHoc { get; set; } = null!;

    public string MaMonHoc { get; set; } = null!;

    public int SoTinChi { get; set; }

    public int GioLyThuyet { get; set; }

    public int GioThucHanh { get; set; }

    public int IdKhoa { get; set; }

    public virtual Khoa IdKhoaNavigation { get; set; } = null!;

    public virtual ICollection<KhoaHoc> KhoaHocs { get; set; } = new List<KhoaHoc>();

    public virtual ICollection<MonHocTienQuyet> MonHocTienQuyetIdMonHocCanTruocNavigations { get; set; } = new List<MonHocTienQuyet>();

    public virtual ICollection<MonHocTienQuyet> MonHocTienQuyetIdMonHocNavigations { get; set; } = new List<MonHocTienQuyet>();
}
