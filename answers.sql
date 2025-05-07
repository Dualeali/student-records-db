-- ===============================
-- STUDENT RECORDS DATABASE SCRIPT
-- Created for Week 8 Assignment
-- ===============================

-- Create the student table
CREATE TABLE student (
    studentID INT PRIMARY KEY AUTO_INCREMENT,
    firstname VARCHAR(50) NOT NULL,
    lastname VARCHAR(50) NOT NULL,
    gender ENUM('Male', 'Female') NOT NULL
);

-- Create the lecturers table
CREATE TABLE lecturers (
    lecturerID INT PRIMARY KEY AUTO_INCREMENT,
    firstname VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    gender ENUM('Male', 'Female') NOT NULL
);

-- Create the courses table
CREATE TABLE courses (
    courseID INT PRIMARY KEY AUTO_INCREMENT,
    coursename VARCHAR(100) NOT NULL,
    coursecode VARCHAR(10) UNIQUE NOT NULL,
    credit INT NOT NULL,
    lecturerID INT,
    FOREIGN KEY (lecturerID) REFERENCES lecturers(lecturerID)
);

-- Create the enrollment table (many-to-many between students and courses)
CREATE TABLE enrollment (
    enrollmentID INT PRIMARY KEY AUTO_INCREMENT,
    studentID INT NOT NULL,
    courseID INT NOT NULL,
    Enrollment_date DATE NOT NULL,
    FOREIGN KEY (studentID) REFERENCES student(studentID),
    FOREIGN KEY (courseID) REFERENCES courses(courseID)
);
