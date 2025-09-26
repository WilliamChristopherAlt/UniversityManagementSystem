using System;
using System.Collections.Generic;

namespace UniversityManagementSystem.Models;

public partial class MonHocTienQuyet
{
    public int IdTienQuyet { get; set; }

    public int IdMonHoc { get; set; }

    public int IdMonHocCanTruoc { get; set; }

    public string DiemToiThieu { get; set; } = null!;

    public virtual MonHoc IdMonHocCanTruocNavigation { get; set; } = null!;

    public virtual MonHoc IdMonHocNavigation { get; set; } = null!;
}
