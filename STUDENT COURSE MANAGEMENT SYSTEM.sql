create database project_db
use project_db

create table students(
student_id	INT PRIMARY KEY,
name VARCHAR(50),
age	INT,
city VARCHAR(50)
);

create table courses(
course_id	INT PRIMARY KEY,
course_name	VARCHAR(50),
instructor	VARCHAR(50)
);

CREATE TABLE enrollments (
    enroll_id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    marks INT,

    -- Foreign Keys
    CONSTRAINT fk_student
        FOREIGN KEY (student_id)
        REFERENCES students(student_id),

    CONSTRAINT fk_course
        FOREIGN KEY (course_id)
        REFERENCES courses(course_id)
);


INSERT INTO students (student_id, name, age, city) VALUES
(1, 'Rahul', 20, 'Mumbai'),
(2, 'Priya', 22, 'Delhi'),
(3, 'Arjun', 21, 'Bangalore'),
(4, 'Sara', 23, 'Mumbai'),
(5, 'Kabir', 20, 'Chennai');

INSERT INTO courses (course_id, course_name, instructor) VALUES
(101, 'SQL Basics', 'Mr. Sharma'),
(102, 'Python', 'Ms. Nisha'),
(103, 'Data Analytics', 'Mr. Amit');


INSERT INTO enrollments (enroll_id, student_id, course_id, marks) VALUES
(1, 1, 101, 85),
(2, 1, 102, 78),
(3, 2, 101, 92),
(4, 3, 103, 67),
(5, 4, 102, 88),
(6, 5, 101, 73);

	TASKS TO PERFROM:

select name,city from students where city="Mumbai" 
select course_name,instructor from courses where instructor="Mr. Amit"
select student_id,marks from enrollments order by marks desc limit 3
select name,age from students order by age asc
select s.name,c.course_name,e.marks from enrollments e 
join students s on e.student_id=s.student_id
join courses c on  e.course_id=c.course_id
create view  info as
select c.course_name,s.name from enrollments e join students s on e.student_id=s.student_id
join courses c on  e.course_id=c.course_id 

select course_name,count(*) as students_enrolled from info group by course_name

select course_name,count(*) as students_enrolled from info group by course_name having employees_enrolled>2
select name,length(name) as length from students

create view sub as 
select s.name,e.marks from students s
join enrollments e 
on 
s.student_id=e.student_id

select * from sub

select name,marks from sub where marks>(select avg(marks) from sub)
create view sub2 as
select s.name,c.course_name,e.marks from enrollments e
join courses c on e.course_id=c.course_id
join students s on e.student_id=s.student_id

select * from sub2

select name,course_name,marks from sub2 where marks>(select avg(marks) as avg from sub2) order by marks desc limit 1