select c.coursename, cr.grade from courseoffers co, courses c, courseregistrations cr, studentregistrationstodegrees sr where sr.studentid = %1% AND sr.degreeid = %2% AND cr.grade >= 5 AND co.courseid = c.courseid AND sr.studentregistrationid = cr.studentregistrationid AND co.courseofferid = cr.courseofferid ORDER BY co.year, co.quartile, co.courseofferid;
SELECT 0;
select degreeid, 1.0*sum(case when gender='F' THEN 1 ELSE 0 END)/count(*) as percentage from studentregistrationstodegrees sr, students s, activestudents ac where  s.studentid = sr.studentid AND AC.studentregistrationid = sr.studentregistrationid GROUP BY degreeid ORDER BY DEGREEID;
select 1.0*sum(case when gender='F' THEN 1 ELSE 0 END)/count(*) as percentage from studentregistrationstodegrees srtd, students s, degrees d where dept = %1% AND srtd.studentid = s.studentid AND srtd.degreeid = d.degreeid;
SELECT 0;
select * from studentsCourseOfExcellence where numberCourses >= %1%;
select 0;
select coursename, year, quartile from ((select courseofferid, count(*) as numstudents from courseregistrations group by courseofferid) as foo natural join (select courseofferid, count(*) as numassistants from studentassistants group by courseofferid) as foo2) natural join courseoffers natural join courses where foo.numstudents > 50 * foo2.numassistants ORDER BY COURSEOFFERID;
