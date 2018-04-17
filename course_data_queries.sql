SELECT 'course_id', 'cat_num', 'year', 'term', 'Enrollment', 'Evaluations', 'ResponseRate', 'CourseOverall', 'Materials', 'Assignments', 'Feedback', 'Section', 'Workload', 'Difficulty', 'WouldYouRecommend', 'qcourse_id' 
UNION ALL 
SELECT course_id, cat_num, year, term, Enrollment, Evaluations, ResponseRate, CourseOverall, Materials, Assignments, Feedback, Section, Workload, Difficulty, WouldYouRecommend, qcourse_id 
FROM Qcourses 
INTO OUTFILE '/tmp/qcourses.csv' FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' LINES TERMINATED BY '\n';

SELECT 'id', 'year', 'cat_num', 'title', 'meets', 'location', 'description', 'notes', 'prerequisites', 'level_code', 'website', 'num_int', 'num_char', 'fall', 'spring', 'next_year_offered', 'department_id'
UNION ALL
SELECT id, year, cat_num, title, meets, location, description, notes, prerequisites, level_code, website, num_int, num_char, fall, spring, next_year_offered, department_id
FROM courses
INTO OUTFILE '/tmp/courses.csv' FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' LINES TERMINATED BY '\n';

SELECT 'id', 'course_group', 'short_name', 'long_name', 'course_group_code'
UNION ALL
SELECT id, course_group, short_name, long_name, course_group_code
FROM departments
INTO OUTFILE '/tmp/departments.csv' FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' LINES TERMINATED BY '\n';