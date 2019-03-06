\copy Degrees FROM '/mnt/ramdisk/tables/Degrees.table' DELIMITER ',' CSV HEADER;
\copy Students FROM '/mnt/ramdisk/tables/Students.table' DELIMITER ',' CSV HEADER;
\copy StudentRegistrationsToDegrees FROM '/mnt/ramdisk/tables/StudentRegistrationsToDegrees.table' DELIMITER ',' CSV HEADER;
\copy Teachers FROM '/mnt/ramdisk/tables/Teachers.table' DELIMITER ',' CSV HEADER;
\copy Courses FROM '/mnt/ramdisk/tables/Courses.table' DELIMITER ',' CSV HEADER;
\copy CourseOffers FROM '/mnt/ramdisk/tables/CourseOffers.table' DELIMITER ',' CSV HEADER;
\copy TeacherAssignmentsToCourses FROM '/mnt/ramdisk/tables/TeacherAssignmentsToCourses.table' DELIMITER ',' CSV HEADER;
\copy StudentAssistants FROM '/mnt/ramdisk/tables/StudentAssistants.table' DELIMITER ',' CSV HEADER;
\copy CourseRegistrations FROM '/mnt/ramdisk/tables/CourseRegistrations.table' DELIMITER ',' CSV HEADER NULL AS 'null';
