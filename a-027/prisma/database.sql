use db_027; 
create table courses
(
    id tinyint
    unsigned auto_increment primary key, 
    subject_id int  not null, 
    year       year not null, 
    constraint courses_id_key unique
    (id) 
);

    create index idx_fk_subject_id 
    on courses (subject_id);

    create table students
    (
        id tinyint
        unsigned auto_increment primary key, 
    name varchar
        (40) not null, 
    constraint students_id_key unique
        (id) 
);

        create table course_student
        (
            course_id tinyint
            unsigned not null, 
    student_id tinyint unsigned not null, 
    grade      double           not null, 
    primary key
            (course_id, student_id), 
    constraint course_student_courses_id_fk 
        foreign key
            (course_id) references courses
            (id), 
    constraint course_student_students_id_fk 
        foreign key
            (student_id) references students
            (id) 
);

            create index idx_fk_course_id 
    on course_student (course_id);

            create index idx_fk_student_id 
    on course_student (student_id);

            create table subjects
            (
                id tinyint
                unsigned auto_increment primary key, 
    subject_code char
                (6)          not null, 
    title        varchar
                (40)      not null, 
    credit       double default 3 not null, 
    constraint subjects_id_key unique
                (id), 
    constraint subjects_subject_code_key unique
                (subject_code) 
);


                insert into subjects
                    (subject_code, title, credit)
                values
                    ('INT101', 'Computer Programming I', 1),
                    ('INT202', 'Computer Programming 2', 2),
                    ('INT303', 'Computer Programming 3', 3),
                    ('INT404', 'Computer Programming 4', 4),
                    ('INT105', 'Computer Programming 5', 5),
                    ('INT206', 'Backend Dev 1', 2),
                    ('INT307', 'Backend Dev 2', 3),
                    ('INT408', 'Frontend Dev 1', 6),
                    ('INT109', 'Frontend Dev 2', 3) ,
                    ('INT210', 'Information Management 1', 3),
                    ('INT310', 'Information Management 2', 3);

                insert into courses
                    (id, subject_id,year)
                values
                    (1, 1, YEAR(NOW())-1),
                    (2, 1, YEAR(NOW())),
                    (3, 2, YEAR(NOW())),
                    (4, 3, YEAR(NOW())),
                    (5, 4, YEAR(NOW())),
                    (6, 7, YEAR(NOW())),
                    (7, 7, YEAR(NOW())-2),
                    (8, 7, YEAR(NOW())-1),
                    (9, 10, YEAR(NOW())-2),
                    (10, 10, YEAR(NOW())-1),
                    (11, 8, YEAR(NOW()));

                insert into students
                values
                    (101, 'Somchai'),
                    (102, 'Apichart'),
                    (103, 'Preeda'),
                    (104, 'Kitichai'),
                    (105, 'Satiya'),
                    (106, 'Meechai'),
                    (107, 'Srisupa'),
                    (108, 'Daranee'),
                    (109, 'Nittaya');




                insert into course_student
                    (course_id, student_id, grade)
                values
                    (1, 101, 3.5),
                    (1, 103, 2.5),
                    (1, 104, 4.0),
                    (2, 102, 2.5),
                    (2, 105, 2.0),
                    (3, 106, 2.5),
                    (3, 107, 3.5),
                    (3, 108, 1.5),
                    (3, 109, 2.0),
                    (4, 106, 2.5),
                    (4, 107, 3.5),
                    (5, 108, 1.5),
                    (6, 101, 2.5),
                    (6, 107, 3.5),
                    (6, 102, 1.5),
                    (5, 109, 2.0); 