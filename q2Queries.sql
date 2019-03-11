select c.coursename, cr.grade from courseoffers co, courses c, courseregistrations cr, studentregistrationstodegrees sr where sr.studentid = %1% AND sr.degreeid = %2% AND cr.grade >= 5 AND co.courseid = c.courseid AND sr.studentregistrationid = cr.studentregistrationid AND co.courseofferid = cr.courseofferid ORDER BY co.year, co.quartile, co.courseofferid;
select distinct studentid from PassedCreditsPerRegistration pc, studentregistrationstodegrees sr where pc.studentregistrationid = sr.studentregistrationid AND passedCredits >= (select totalects from degrees where sr.degreeid = degreeid) AND (SELECT COUNT(*) FROM courseregistrations where grade < 5 and pc.studentregistrationid = studentregistrationid) < 1 AND (pc.avgMark) > %1% ORDER BY studentid;
 select degreeid, 1.0*sum(case when gender='F' THEN 1 ELSE 0 END)/count(*) as percentage from studentregistrationstodegrees sr, students s, ActiveRegistrations ar where s.studentid = sr.studentid AND ar.studentregistrationid = sr.studentregistrationid GROUP BY degreeid ORDER BY degreeid;
select 1.0*sum(case when gender='F' THEN 1 ELSE 0 END)/count(*)::float as percentage from studentregistrationstodegrees srtd, students s, degrees d where dept = %1% AND srtd.studentid = s.studentid AND srtd.degreeid = d.degreeid;
select courseid, 1.0*sum(case when grade>=%1% THEN 1 ELSE 0 END)/count(*) as percentage from courseregistrations cr, courseoffers co where grade IS NOT NULL AND cr.courseofferid = co.courseofferid group by courseid order by courseid;
select * from studentsCourseOfExcellence where numberCourses >= %1% ORDER BY studentid;
SELECT sr.degreeid, birthyearstudent, gender, avg(avgMark)::float as avgGrade FROM students s, passedcreditsperregistration pc, studentregistrationstodegrees sr, activeregistrations ar, courseregistrations cr, courseoffers co, courses c WHERE co.courseid = c.courseid AND co.courseofferid = cr.courseofferid  AND cr.studentregistrationid = sr.studentregistrationid AND ar.studentregistrationid = sr.studentregistrationid AND sr.studentid = s.studentid AND sr.studentregistrationid = pc.studentregistrationid GROUP BY CUBE(sr.degreeid, birthyearstudent, gender)  ORDER BY sr.degreeid, birthyearstudent, gender;
select 0;
