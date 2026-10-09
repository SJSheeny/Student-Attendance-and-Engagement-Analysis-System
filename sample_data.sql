```sql
-- Students
INSERT INTO student
VALUES
(1, 'Sushmoy Jr.', 'sushmoyjr@email.edu', 'CSE'),
(2, 'Samia Jahan', 'samiajahan@email.edu', 'CSE'),
(3, 'Dipro Ahmed', 'diproahmed@email.edu', 'MATH'),
(4, 'Nabiha Nowshin', 'nabiha@email.edu', 'MATH'),
(5, 'Mahin Hasan', 'mahin@email.edu', 'CSE'),
(6, 'Raidha Akhter', 'raidha@email.edu', 'CSE'),
(7, 'Farhan Hossain', 'farhan@email.edu', 'CSE'),
(8, 'Nabila Tasfia', 'nabila@email.edu', 'MATH'),
(9, 'Rafin Rahman', 'rafin@email.edu', 'MATH'),
(10, 'Arpita Islam', 'arpita@email.edu', 'CSE');


-- Instructors
INSERT INTO instructor
VALUES
(101, 'Masuma Akter', 'CSE'),
(102, 'Faniyam Maria Mansia', 'CSE'),
(103, 'Helal Uddin', 'CSE'),
(104, 'Anwar Hossain', 'MATH');


-- Courses
INSERT INTO course
VALUES
(201, 'Database Management System', 3),
(202, 'Data Structures', 3),
(203, 'Discrete Mathematics', 2),
(204, 'C programming', 3);


-- Sessions
INSERT INTO Session
VALUES
(1, 201, 102, '2026-05-01', 'Normalization', 3),
(2, 201, 102, '2026-05-03', 'SQL Joins', 5),
(3, 202, 101, '2026-05-02', 'Arrays and Linked Lists', 4),
(4, 202, 101, '2026-05-04', 'Stacks and Queues', 5),
(5, 202, 101, '2026-05-06', 'Graph Algorithms', 8),
(6, 203, 101, '2026-05-03', 'Propositional Logic', 5),
(7, 203, 101, '2026-05-07', 'Graph Theory (Mathematical)', 3),
(8, 204, 103, '2026-05-02', 'C Basics: Variables and Data Types', 2),
(9, 204, 103, '2026-05-04', 'Control Structures', 4),
(10, 204, 103, '2026-05-06', 'Functions and Pointers', 7);


-- Attendance
INSERT INTO Attendance
VALUES
(1,1,1,'Present'), (2,2,1,'Present'), (3,3,1,'Present'), (4,4,1,'Absent'), (5,5,1,'Present'),
(6,6,1,'Present'), (7,7,1,'Present'), (8,8,1,'Absent'), (9,9,1,'Present'), (10,10,1,'Present'),
(11,1,2,'Present'), (12,2,2,'Present'), (13,3,2,'Present'), (14,4,2,'Present'), (15,5,2,'Absent'),
(16,6,2,'Present'), (17,7,2,'Present'), (18,8,2,'Present'), (19,9,2,'Present'), (20,10,2,'Present'),
(21,1,3,'Present'), (22,2,3,'Present'), (23,3,3,'Absent'), (24,4,3,'Present'), (25,5,3,'Present'),
(26,6,3,'Present'), (27,7,3,'Present'), (28,8,3,'Present'), (29,9,3,'Present'), (30,10,3,'Present'),
(31,1,4,'Present'), (32,2,4,'Present'), (33,3,4,'Present'), (34,4,4,'Present'), (35,5,4,'Present'),
(36,6,4,'Absent'), (37,7,4,'Present'), (38,8,4,'Present'), (39,9,4,'Present'), (40,10,4,'Present'),
(41,1,5,'Present'), (42,2,5,'Present'), (43,3,5,'Absent'), (44,4,5,'Present'), (45,5,5,'Present'),
(46,6,5,'Present'), (47,7,5,'Present'), (48,8,5,'Present'), (49,9,5,'Present'), (50,10,5,'Present'),
(51,1,6,'Present'), (52,2,6,'Present'), (53,3,6,'Present'), (54,4,6,'Present'), (55,5,6,'Present'),
(56,6,6,'Present'), (57,7,6,'Absent'), (58,8,6,'Present'), (59,9,6,'Present'), (60,10,6,'Absent'),
(61,1,7,'Present'), (62,2,7,'Present'), (63,3,7,'Present'), (64,4,7,'Present'), (65,5,7,'Present'),
(66,6,7,'Present'), (67,7,7,'Present'), (68,8,7,'Absent'), (69,9,7,'Present'), (70,10,7,'Present'),
(71,1,8,'Present'), (72,2,8,'Present'), (73,3,8,'Absent'), (74,4,8,'Present'), (75,5,8,'Present'),
(76,6,8,'Present'), (77,7,8,'Present'), (78,8,8,'Present'), (79,9,8,'Present'), (80,10,8,'Present'),
(81,1,9,'Present'), (82,2,9,'Present'), (83,3,9,'Present'), (84,4,9,'Present'), (85,5,9,'Absent'),
(86,6,9,'Present'), (87,7,9,'Present'), (88,8,9,'Present'), (89,9,9,'Present'), (90,10,9,'Present'),
(91,1,10,'Present'), (92,2,10,'Present'), (93,3,10,'Present'), (94,4,10,'Present'), (95,5,10,'Present'),
(96,6,10,'Present'), (97,7,10,'Present'), (98,8,10,'Absent'), (99,9,10,'Present'), (100,10,10,'Present ');


-- Engagement
INSERT INTO engagement
VALUES
(1,1,1,85,3,2), (2,2,1,78,2,1), (3,3,1,92,5,3), (4,4,1,65,1,0), (5,5,1,70,2,1),
(6,6,1,88,4,2), (7,7,1,75,2,1), (8,8,1,60,1,0), (9,9,1,82,3,2), (10,10,1,80,2,1),
(11,1,2,90,5,3), (12,2,2,85,3,2), (13,3,2,95,6,4), (14,4,2,75,2,1), (15,5,2,30,0,0),
(16,6,2,88,4,2), (17,7,2,82,3,2), (18,8,2,78,2,1), (19,9,2,85,3,2), (20,10,2,80,2,1),
(21,1,3,75,2,1), (22,2,3,70,2,1), (23,3,3,45,0,0), (24,4,3,72,2,1), (25,5,3,68,1,3),
(26,6,3,80,3,2), (27,7,3,78,2,1), (28,8,3,65,1,0), (29,9,3,70,2,1), (30,10,3,75,2,1),
(31,1,4,65,1,1), (32,2,4,70,2,1), (33,3,4,60,1,0), (34,4,4,68,1,1), (35,5,4,72,2,1),
(36,6,4,40,0,0), (37,7,4,75,2,1), (38,8,4,70,2,1), (39,9,4,68,1,1), (40,10,4,72,2,1),
(41,1,5,88,4,3), (42,2,5,85,3,2), (43,3,5,45,0,0), (44,4,5,75,2,1), (45,5,5,80,3,2),
(46,6,5,82,3,2), (47,7,5,78,2,1), (48,8,5,72,2,1), (49,9,5,85,3,2), (50,10,5,80,2,1),
(51,1,6,92,6,4), (52,2,6,88,4,3), (53,3,6,85,3,2), (54,4,6,78,2,1), (55,5,6,82,3,2),
(56,6,6,80,2,1), (57,7,6,35,0,0), (58,8,6,75,2,1), (59,9,6,85,3,2), (60,10,6,80,2,1),
(61,1,7,80,3,2), (62,2,7,78,2,1), (63,3,7,75,2,1), (64,4,7,72,2,1), (65,5,7,70,2,1),
(66,6,7,68,1,1), (67,7,7,82,3,2), (68,8,7,40,0,0), (69,9,7,76,2,1), (70,10,7,74,2,1),
(71,1,8,70,2,1), (72,2,8,68,1,1), (73,3,8,35,0,0), (74,4,8,72,2,1), (75,5,8,75,2,1),
(76,6,8,78,2,1), (77,7,8,80,3,2), (78,8,8,70,2,1), (79,9,8,72,2,1), (80,10,8,68,1,1),
(81,1,9,85,3,2), (82,2,9,80,2,1), (83,3,9,78,2,1), (84,4,9,82,3,2), (85,5,9,30,0,0),
(86,6,9,75,2,1), (87,7,9,88,4,3), (88,8,9,72,2,1), (89,9,9,78,2,1), (90,10,9,80,2,1),
(91,1,10,40,0,0), (92,2,10,45,0,0), (93,3,10,50,0,0), (94,4,10,48,0,0), (95,5,10,42,0,3),
(96,6,10,55,1,0), (97,7,10,52,0,0), (98,8,10,30,0,0), (99,9,10,44,0,0), (100,10,10,48,4,0);
```
