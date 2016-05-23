-- PERSONS
INSERT INTO PERSON(ID, SSN, ADDRESS, EMAIL, FIRST_NAME, LAST_NAME, PHONE_NUMBER)
 VALUES(1, '1940826160041','Bulevardul Bibescu, bloc A13', 'vladutu_georgian_4d@yahoo.com','Georgian','Vladutu','0770835787');
INSERT INTO PERSON(ID, SSN, ADDRESS, EMAIL, FIRST_NAME, LAST_NAME, PHONE_NUMBER)
 VALUES(2, '1870812160054','Craiova', 'marius_brezovan@yahoo.com','Brezovan','Marius','0774824952');
INSERT INTO PERSON(ID, SSN, ADDRESS, EMAIL, FIRST_NAME, LAST_NAME, PHONE_NUMBER)
 VALUES(3, '1830801160012','Craiova', 'mihaescu_cristian@yahoo.com','Cristian','Mihaescu','0779632558');
INSERT INTO PERSON(ID, SSN, ADDRESS, EMAIL, FIRST_NAME, LAST_NAME, PHONE_NUMBER)
 VALUES(4, '1820811160065','Craiova', 'petre_nicolae@yahoo.com','Nicolae','Petre','0775235226');
INSERT INTO PERSON(ID, SSN, ADDRESS, EMAIL, FIRST_NAME, LAST_NAME, PHONE_NUMBER)
 VALUES(5, '1830811160047','Craiova', 'admin@yahoo.com','Admin','Admin','0775062514');
 INSERT INTO PERSON(ID, SSN, ADDRESS, EMAIL, FIRST_NAME, LAST_NAME, PHONE_NUMBER)
 VALUES(6, '1890811160031','Craiova', 'diana@yahoo.com','Diana','Micu','0778521542');

 -- USERS
INSERT INTO USER (ID, PASSWORD, STATE, TYPE_U, USERNAME) VALUES (5,'$2a$10$/pP9Za47JA15z2zs3.afW.a9Rq9qdJn3DBIzPHoPUjM5XBCT/auIi', 'Active', 'ADMIN', 'admin');
INSERT INTO USER (ID, PASSWORD, STATE, TYPE_U, USERNAME) VALUES (1,'$2a$10$5ysE1CvqJLSXL5hFChyhFO4gwGIgYjaprBIcrxAgSfgJVhs0UVoTS', 'Active', 'STUDENT', 'georgian.vladutu');
INSERT INTO USER (ID, PASSWORD, STATE, TYPE_U, USERNAME) VALUES (2,'$2a$10$ICaKq1zZgCXmId310qxxhujA0P0V43ggkcdHMHjS4QPMY0GynswwG', 'Active', 'PROFESSOR', 'marius.brezovan');
INSERT INTO USER (ID, PASSWORD, STATE, TYPE_U, USERNAME) VALUES (3,'$2a$10$ICaKq1zZgCXmId310qxxhujA0P0V43ggkcdHMHjS4QPMY0GynswwG', 'Active', 'PROFESSOR', 'cristian.mihaescu');
INSERT INTO USER (ID, PASSWORD, STATE, TYPE_U, USERNAME) VALUES (4,'$2a$10$ICaKq1zZgCXmId310qxxhujA0P0V43ggkcdHMHjS4QPMY0GynswwG', 'Active', 'PROFESSOR', 'nicolae.petre');
INSERT INTO USER (ID, PASSWORD, STATE, TYPE_U, USERNAME) VALUES (6,'$2a$10$/S3ThIuzyw/UPGzmPXbmTeaYja6KEw8v2g1HBXF8LMAjAFFWSjx32', 'Active', 'SECRETARY', 'diana.micu');


-- GROUPS
INSERT INTO GROUP_T(ID, NAME, SPECIALIZATION, YEAR) VALUES(1, '10305S','C.E.',3);

-- STUDENTS
INSERT INTO STUDENT(ID, GROUP_ID, SUBGROUP, PAID) VALUES (1, 1, 'B', 0);

-- SUBJECTS
INSERT INTO SUBJECT(ID, NAME, CREDITS) VALUES (1, 'Operating Systems', 5);
INSERT INTO SUBJECT(ID, NAME, CREDITS) VALUES (2, 'Software Engineering', 3);

--STUDENT_SUBJECTS
INSERT INTO STUDENT_SUBJECT(ID, GRADE, STUDENT_ID, SUBJECT_ID) VALUES (1,10,1,1);
INSERT INTO STUDENT_SUBJECT(ID, GRADE, STUDENT_ID, SUBJECT_ID) VALUES (2,9,1,2);

--DEPARTMENTS
INSERT INTO DEPARTMENT(ID, NAME,DIRECTOR_ID) VALUES (1, "Inginerie Software", NULL);
INSERT INTO DEPARTMENT(ID, NAME,DIRECTOR_ID) VALUES (2, "Inginerie Electrica", NULL);

--PROFESSORS
INSERT INTO PROFESSOR(ID, OFFICE, POSITION, DEPARTMENT_ID) VALUES (2,'303','Prof.',1);
INSERT INTO PROFESSOR(ID, OFFICE, POSITION, DEPARTMENT_ID) VALUES (3,'113','Asist.',1);
INSERT INTO PROFESSOR(ID, OFFICE, POSITION, DEPARTMENT_ID) VALUES (4,'113','Prof.',2);

--DEPARTMENTS DIRECTOR
UPDATE DEPARTMENT SET DIRECTOR_ID = 2 WHERE ID = 1;
UPDATE DEPARTMENT SET DIRECTOR_ID = 4 WHERE ID = 2;

--SCHEDULES
INSERT INTO SCHEDULE(ID, PROFESSOR_ID, SUBJECT_ID, DAY, HOUR, ROOM) VALUES (1,2,1,1,10,'C11');
INSERT INTO SCHEDULE(ID, PROFESSOR_ID, SUBJECT_ID, DAY, HOUR, ROOM) VALUES (2,3,2,3,12,'L1');
INSERT INTO SCHEDULE(ID, PROFESSOR_ID, SUBJECT_ID, DAY, HOUR, ROOM) VALUES (3,4,2,5,18,'C4');

--EDUCATION PLANS
INSERT INTO EDUCATION_PLAN(ID, GROUP_ID, SUBJECT_ID) VALUE (1, 1, 1);
INSERT INTO EDUCATION_PLAN(ID, GROUP_ID, SUBJECT_ID) VALUE (2, 1, 2);

--PROFESSOR_SUBJECTS
INSERT INTO PROFESSOR_SUBJECT(ID, GROUP_ID, PROFESSOR_ID, SUBJECT_ID, EVALUATION_METHOD) VALUES(1, 1, 2, 1, 'Evaluation method 1');
INSERT INTO PROFESSOR_SUBJECT(ID, GROUP_ID, PROFESSOR_ID, SUBJECT_ID, EVALUATION_METHOD) VALUES(2, 1, 3, 2, 'Evaluation method 2');