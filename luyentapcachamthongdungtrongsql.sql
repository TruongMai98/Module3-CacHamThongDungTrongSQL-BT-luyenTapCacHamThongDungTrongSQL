use quanlysinhvien;
-- Hiển thị tất cả các thông tin môn học (bảng subject) có credit lớn nhất.
select * from `subject`
having max(credit); 
-- Hiển thị các thông tin môn học có điểm thi lớn nhất.
select *
from `subject` s
join `mark` m on s.subid = m.subid
having max(m.mark);
-- Hiển thị các thông tin sinh viên và điểm trung bình của mỗi sinh viên, xếp hạng theo thứ tự điểm giảm dần
select s.studentid, s.studentname, m.mark diem
from `student` s
join `mark` m on m.studentid = s.studentid
order by diem desc;