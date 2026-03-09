-- For each department, calculate the number of enrolments in its courses.
-- Expected Columns:
-- DepartmentName, TotalEnrolments

-- SELECT DepartmentName, COUNT(*) AS TotalEnrolments FROM Department JOIN Course on Department.DepartmentId=Course.DepartmentId GROUP BY DepartmentName

SELECT DepartmentName, COUNT(*) AS TotalEnrolments FROM Course JOIN Department on Course.DepartmentId=Department.DepartmentId JOIN Enrolment on Enrolment.CourseId=Course.CourseId GROUP BY Course.DepartmentId