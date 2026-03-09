-- List all students along with the names of the courses they are enrolled in.
-- Expected Columns:
-- StudentId, FirstName, LastName, CourseName

SELECT Student.StudentId, FirstName, LastName, CourseName FROM Enrolment JOIN Student on Student.StudentId=Enrolment.StudentId JOIN Course on Enrolment.CourseId=Course.CourseId