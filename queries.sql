---SQL Queries
--- Calculate student attendance percentage for each course and identify students with irregular attendance.
SELECT Student.student_id, Student.name,Course.course_name,
SUM(CASE WHEN Attendance.status = 'Present' THEN 1 ELSE 0 END) * 100.0 / COUNT(Attendance.attendance_id)
AS attendance_percentage
FROM Attendance
INNER JOIN Student
ON Attendance.student_id = Student.student_id
INNER JOIN Session
ON Attendance.session_id = Session.session_id
INNER JOIN Course
ON Session.course_id = Course.course_id
GROUP BY Student.student_id,Student.name,Course.course_name
HAVING attendance_percentage < 75; 


-- Analyze average engagement per session and determine which sessions are highly interactive or low in participation.

SELECT session.session_id, session.course_id, AVG(engagement.engagement_score) AS Average_Engagement
FROM Session
LEFT OUTER JOIN engagement
ON session.session_id = engagement.session_id
GROUP BY session.session_id, session.course_id;


-- Compare attendance and engagement to find mismatched cases (e.g., high attendance but low engagement)

SELECT session.session_id, course.course_name,session.topic, attendance.attendance_rate, engagement.avg_engagement
FROM Session
JOIN Course
ON session.course_id = course.course_id
JOIN
(    SELECT session_id,
    (SUM(IF(attendance.status = 'Present', 1, 0)) * 100 / COUNT(*)) AS attendance_rate
    FROM Attendance
    GROUP BY session_id
) attendance
ON attendance.session_id = session.session_id
JOIN
(   SELECT session_id,
    (SUM(engagement_score) / COUNT(engagement_score)) AS avg_engagement
    FROM Engagement
    GROUP BY session_id
) engagement
ON engagement.session_id = session.session_id
WHERE attendance.attendance_rate > 80 AND engagement.avg_engagement < 60;


-- Evaluate instructor performance by analyzing how student engagement varies across their sessions.
SELECT instructor.instructor_id,instructor.name AS instructor_name,COUNT(DISTINCT session.session_id) AS sessions_conducted,AVG(engagement.engagement_score) AS avg_engagement_score,MAX(engagement.engagement_score) AS max_engagement,MIN(engagement.engagement_score) AS min_engagement
FROM instructor
LEFT JOIN session 
ON session.instructor_id=instructor.instructor_id
LEFT JOIN Engagement 
ON engagement.session_id=session.session_id
GROUP BY instructor.instructor_id,instructor.name;
Interpretation : Among the instructors who conducted sessions, their performance is reflected through student engagement scores. They have non-zero session counts and valid engagement values, showing active teaching. The average, maximum, and minimum scores indicate how engagement varied across their sessions, with differences suggesting variation in how effectively each instructor maintained student interaction.

--Examine the relationship between noise level and participation to identify balanced vs problematic sessions.
SELECT session.session_id,course.course_name,session.topic,session.noise_level,
(SUM(engagement.engagement_score) / COUNT(engagement.engagement_score)) AS avg_engagement
FROM Session 
JOIN Course 
ON session.course_id = course.course_id
JOIN Engagement 
ON engagement.session_id = session.session_id
GROUP BY session.session_id, course.course_name, session.topic, session.noise_level;


-- Identify sessions where high engagement is associated with high noise or where low noise reduces participation
SELECT session.session_id,AVG(engagement.engagement_score) AS avg_participation,AVG(session.noise_level) AS avg_noise_level,
CASE
WHEN AVG(engagement.engagement_score)>=70 AND AVG(session.noise_level)>=7 THEN 'High engagement + high noise'
WHEN AVG(session.noise_level)<=3 AND AVG(engagement.engagement_score)<70 THEN 'Low noise reduces participation'
END AS session_type
FROM session
JOIN engagement ON engagement.session_id=session.session_id
GROUP BY session.session_id
HAVING (AVG(engagement.engagement_score)>=70 AND AVG(session.noise_level)>=7)
OR (AVG(session.noise_level)<=3 AND AVG(engagement.engagement_score)<70);

--Propose at least one improvement strategy (e.g., increasing engagement or controlling noise)and support it using query results.
SELECT * FROM (
SELECT Session.session_id,Course.course_name,Session.topic,Instructor.name AS instructor_name,eng.avg_engage,att.attendance_rate
FROM Session
JOIN Course ON Session.course_id=Course.course_id
JOIN Instructor ON Session.instructor_id=Instructor.instructor_id
JOIN (
SELECT session_id,AVG(engagement_score) AS avg_engage
FROM Engagement
GROUP BY session_id
) eng ON eng.session_id=Session.session_id
JOIN (
SELECT session_id,(SUM(CASE WHEN status='Present' THEN 1 ELSE 0 END)*100/COUNT(*)) AS attendance_rate
FROM Attendance
GROUP BY session_id
) att ON att.session_id=Session.session_id
) AS target_sessions
WHERE avg_engage<60 AND attendance_rate>80;

--Perform a simple what-if analysis by adjusting one factor (e.g., increase engagement scores or reduce noise levels) and compare the results before and after.
--Comparing before after of 30% increase in engagement : 
SELECT 'BEFORE' AS period,(SUM(engagement_score)/COUNT(*)) AS avg_engagement
FROM Engagement
UNION ALL
SELECT 'AFTER' AS period,(SUM(engagement_score*1.30)/COUNT(*)) AS avg_engagement
FROM Engagement;

