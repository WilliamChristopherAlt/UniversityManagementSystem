1. Mở SQL Server, tạo một CSDL tên UniversityManagement, chạy các file sau trong SQL Code:
     UniversityManagement - Design.sql
     UniversityManagement - Entries.sql
     Check kết quả với bằng cách chạy file UniversityManagement - See Entries.sql
     Reset lại database bằng cách xóa toàn bộ bảng: UniversityManagement - Delete.sql

3. Mở file UniversityManagementSystem.sln với Visual Studio 2022

4. Mở file appsetting.json trong Visual Studio 2022
     Tại code: 
       "ConnectionStrings": {
        "DefaultConnection": "Server=WILLIAMCHRIS;Database=UniversityManagement;Trusted_Connection=True;MultipleActiveResultSets=true"
      }
     Đổi Server=WILLIAMCHRIS thành server của máy
