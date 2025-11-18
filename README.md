Student–Course Enrollment SQL Project

This project is a complete beginner-friendly SQL database system built using three core tables: Students, Courses, and Enrollments.
It demonstrates how relational databases work and includes:

Table creation

Inserting sample data

Primary and foreign keys

JOIN operations

GROUP BY and HAVING

Subqueries

Views for simplified querying

Analytical queries such as top performers and average marks

Database Structure
1. Students Table

Stores basic student information.

student_id (Primary Key)

name

age

city

2. Courses Table

Stores course details.

course_id (Primary Key)

course_name

instructor

3. Enrollments Table

Links students and courses.

enroll_id (Primary Key)

student_id (Foreign Key to Students)

course_id (Foreign Key to Courses)

marks

ER Diagram (Conceptual)
 Students      Enrollments       Courses
----------    -------------     ----------
student_id → student_id         course_id
name          course_id  ←      course_name
age           marks             instructor
city

Tasks Performed
Basic Queries

Filter students by city

Filter courses by instructor

Sort students by age

Retrieve top 3 marks

JOIN Queries

Used to combine data from all three tables (Students, Courses, Enrollments).

Views

info: student–course mapping

sub: students with marks

sub2: combined student, course, and marks view

GROUP BY Queries

Count number of students per course

Filter courses with more than two enrollments

Subqueries

Students scoring above average

Highest-scoring student

Department or course-based filtering

Technologies Used

MySQL (compatible with XAMPP, WAMP, MySQL Workbench)
