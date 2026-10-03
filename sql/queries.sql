CREATE DATABASE AB;
USE AB;
CREATE TABLE courses (
    course_id VARCHAR(3) PRIMARY KEY,
    course TEXT NOT NULL,
    department TEXT NOT NULL
);

CREATE TABLE assessments (
    assessment_id INTEGER PRIMARY KEY,
    month TEXT NOT NULL,
    course_id VARCHAR(3) NOT NULL,
    batch TEXT NOT NULL,
    score REAL NOT NULL,
    attendance_pct REAL NOT NULL,
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

INSERT INTO courses (course_id, course, department)
VALUES
('C1', 'Excel', 'Business'),
('C2', 'PowerBI', 'Business'),
('C3', 'SQL', 'Technology'),
('C4', 'Python', 'Technology');

INSERT INTO assessments
(assessment_id, month, course_id, batch, score, attendance_pct)
VALUES
(1, 'Jan', 'C1', 'Morning', 72, 90),
(2, 'Jan', 'C2', 'Evening', 45, 70),
(3, 'Jan', 'C3', 'Morning', 65, 85),
(4, 'Jan', 'C4', 'Weekend', 38, 60),
(5, 'Feb', 'C1', 'Evening', 80, 95),
(6, 'Feb', 'C2', 'Weekend', 55, 80),
(7, 'Feb', 'C3', 'Morning', 48, 75),
(8, 'Feb', 'C4', 'Evening', 68, 88),
(9, 'Mar', 'C1', 'Weekend', 90, 98),
(10, 'Mar', 'C2', 'Morning', 60, 82),
(11, 'Mar', 'C3', 'Evening', 75, 92),
(12, 'Mar', 'C4', 'Weekend', 42, 65);

SELECT c.department,ROUND(AVG(a.score),2) AS avg_score FROM assessments AS a JOIN courses AS c ON a.course_id=c.course_id GROUP BY c.department ORDER BY avg_score ASC;

SELECT c.course,ROUND(AVG(a.score),2) AS avg_score FROM assessments AS a JOIN courses AS c ON a.course_id=c.course_id GROUP BY c.course HAVING AVG(a.score)<60 ORDER BY avg_score ASC;

SELECT batch,ROUND(AVG(score),2) AS avg_score FROM assessments GROUP BY batch ORDER BY avg_score DESC ,batch ASC LIMIT 2;

SELECT c.course_id,c.course, COUNT(a.assessment_id) AS assessment_count FROM courses AS c LEFT JOIN assessments AS a ON c.course_id = a.course_id GROUP BY c.course_id,c.course ORDER BY c.course_id;

