```sql
CREATE DATABASE university;

-- Create Table

-- 1. Student Table
CREATE TABLE student (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    email VARCHAR(40),
    department VARCHAR(30)
);

-- 2. Instructor Table
CREATE TABLE instructor (
    instructor_id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(30)
);

-- 3. Course Table
CREATE TABLE course (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(40),
    credits INT
);

-- 4. Session Table
CREATE TABLE session (
    session_id INT PRIMARY KEY,
    course_id INT,
    FOREIGN KEY (course_id) REFERENCES Course(course_id),
    instructor_id INT,
    FOREIGN KEY (instructor_id) REFERENCES Instructor(instructor_id),
    session_date DATE,
    topic VARCHAR(100),
    noise_level INT CHECK (noise_level BETWEEN 1 AND 10)
);

-- 5. Attendance Table
CREATE TABLE attendance (
    attendance_id INT PRIMARY KEY,
    student_id INT,
    FOREIGN KEY (student_id) REFERENCES Student(student_id),
    session_id INT,
    FOREIGN KEY (session_id) REFERENCES Session(session_id),
    status VARCHAR(10) CHECK (status IN ('Present', 'Absent'))
);

-- 6. Engagement Table
CREATE TABLE Engagement (
    engagement_id INT,
    student_id INT,
    FOREIGN KEY (student_id) REFERENCES Student(student_id),
    session_id INT,
    FOREIGN KEY (session_id) REFERENCES Session(session_id),
    engagement_score INT CHECK (engagement_score BETWEEN 0 AND 100),
    participation_count INT,
    interaction_level INT
);
```
