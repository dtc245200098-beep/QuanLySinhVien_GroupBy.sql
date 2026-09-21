USE quanlysinhvien;
GO
SELECT Address,
       COUNT(StudentId) AS N'SoLuongHocVien'
FROM Student
GROUP BY Address;
SELECT
    S.StudentId,
    S.StudentName,
    AVG(M.Mark) AS DiemTrungBinh
FROM Student S
JOIN Mark M
    ON S.StudentId = M.StudentId
GROUP BY
    S.StudentId,
    S.StudentName;
    SELECT
    S.StudentId,
    S.StudentName,
    AVG(M.Mark) AS DiemTrungBinh
FROM Student S
JOIN Mark M
    ON S.StudentId = M.StudentId
GROUP BY
    S.StudentId,
    S.StudentName
HAVING AVG(M.Mark) > 15;
SELECT
    S.StudentId,
    S.StudentName,
    AVG(M.Mark) AS DiemTrungBinh
FROM Student S
JOIN Mark M
    ON S.StudentId = M.StudentId
GROUP BY
    S.StudentId,
    S.StudentName
HAVING AVG(M.Mark) >= ALL
(
    SELECT AVG(Mark)
    FROM Mark
    GROUP BY StudentId
);
