SELECT distinct CourseOfferRegistrations.CourseOfferId, CourseOfferRegistrations.CourseId, CourseOfferRegistrations.Year, CourseOfferRegistrations.Quartile, Courses.CourseName, Courses.CourseDescription, Courses.DegreeId, Courses.ECTS, Degrees.Dept, Degrees.DegreeDescription, Degrees.TotalECTS, Teachers.TeacherId, Teachers.TeacherName, Teachers.Address, Teachers.BirthyearTeacher, Teachers.Gender FROM Courses, Degrees, Teachers, TeacherAssignmentsToCourses, CourseOfferRegistrations WHERE CourseOfferRegistrations.CourseOfferId = 1 AND CourseOfferRegistrations.CourseId = Courses.CourseId AND Courses.DegreeId = Degrees.DegreeId AND CourseOfferRegistrations.CourseOfferId = TeacherAssignmentsToCourses.CourseOfferId AND TeacherAssignmentsToCourses.TeacherId = Teachers.TeacherId;
SELECT distinct StudentAssistants.CourseOfferId, CourseOfferRegistrations.CourseId, CourseOfferRegistrations.Year, CourseOfferRegistrations.Quartile, Students.StudentId, Students.StudentName, Students.Address, Students.BirthyearStudent, Students.Gender, StudentRegistrationsToDegrees.DegreeId, Degrees.Dept, Degrees.DegreeDescription, Degrees.TotalECTS FROM StudentAssistants, CourseOfferRegistrations, Students, StudentRegistrationsToDegrees, Degrees WHERE StudentRegistrationsToDegrees.StudentRegistrationId = 3 AND StudentAssistants.CourseOfferId = CourseOfferRegistrations.CourseOfferId AND StudentAssistants.StudentRegistrationId = StudentRegistrationsToDegrees.StudentRegistrationId AND StudentRegistrationsToDegrees.StudentId = Students.StudentId AND StudentRegistrationsToDegrees.DegreeId = Degrees.DegreeId;
SELECT AVG(Grade) as avg FROM CourseOfferRegistrations WHERE StudentRegistrationId = 3 GROUP BY StudentRegistrationId;
