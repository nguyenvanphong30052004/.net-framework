USE QLSinhVien
GO
CREATE TABLE Lop
(
    MaLop INT IDENTITY PRIMARY KEY,
    TenLop NVARCHAR(50)
)

CREATE TABLE SinhVien
(
    MaSV INT PRIMARY KEY,
    TenSV NVARCHAR(100),
    NgaySinh DATE,
    MaLop INT,
    CONSTRAINT FK_SV_Lop FOREIGN KEY (MaLop) REFERENCES Lop(MaLop)
)
INSERT INTO Lop(TenLop)
VALUES 
(N'Công nghệ thông tin'),
(N'Kế toán'),
(N'Quản trị kinh doanh')
INSERT INTO SinhVien(MaSV, TenSV, NgaySinh, MaLop)
VALUES
(1, N'Nguyễn Văn A', '2003-01-01', 1),
(2, N'Trần Thị B', '2003-05-10', 2)
GO
SELECT sv.MaSV, sv.TenSV, sv.NgaySinh, l.TenLop
FROM SinhVien sv
JOIN Lop l ON sv.MaLop = l.MaLop


