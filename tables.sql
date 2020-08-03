DELETE FROM Exercises;
DELETE FROM Student_Exercises;
DELETE FROM Cohorts;
DELETE FROM Instructors;
DELETE FROM Students;

DROP TABLE IF EXISTS Cohorts;
DROP TABLE IF EXISTS Students;
DROP TABLE IF EXISTS Instructors;
DROP TABLE IF EXISTS Exercises;
DROP TABLE IF EXISTS Student_Exercises;


CREATE TABLE Cohorts (
    cohort_id	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    name   TEXT NOT NULL UNIQUE
);

CREATE TABLE Students (
    student_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    first_name TEXT NOT NULL, 
    last_name TEXT NOT NULL, 
    slack_handle TEXT UNIQUE,
    cohort_id INTEGER NOT NULL,
    FOREIGN KEY(cohort_id) REFERENCES Cohorts(cohort_id)
);

CREATE TABLE Instructors (
    instructor_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    first_name TEXT NOT NULL, 
    last_name TEXT NOT NULL, 
    slack_handle TEXT UNIQUE,
    cohort_id INTEGER NOT NULL,
    specialty TEXT NOT NULL,
    FOREIGN KEY(cohort_id) REFERENCES Cohorts(cohort_id)
);

CREATE TABLE Exercises (
    exercise_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    language TEXT NOT NULL
);

CREATE TABlE Student_Exercises (
    student_exercise_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    student_id INTEGER NOT NULL, 
    exercise_id INTEGER NOT NULL,
    FOREIGN KEY(student_id) REFERENCES Students(student_id),
    FOREIGN KEY(exercise_id) REFERENCES Exercises(exercise_id)
);

INSERT INTO Exercises ('name', 'language')
VALUES ('Kandy Korner', 'JavaScript');

INSERT INTO Exercises ('name', 'language')
VALUES ('Mushroom Picker', 'React');

INSERT INTO Exercises ('name', 'language')
VALUES ('Arboretum', 'Python');

INSERT INTO Exercises ('name', 'language')
VALUES ('Pinterest', 'React');

INSERT INTO Exercises ('name', 'language')
VALUES ('Critters and Croquettes', 'Python');


INSERT INTO Cohorts ('name')
VALUES ('Night E10');

INSERT INTO Cohorts ('name')
VALUES ('Day E42');

INSERT INTO Cohorts ('name')
VALUES ('Night E11');

INSERT INTO Instructors('first_name', 'last_name', 'slack_handle', 'cohort_id', 'specialty')
VALUES ('Zoe', 'Ames', 'zozo_ames', 1, 'shooting it straight from the hip hence the last name');

INSERT INTO Instructors('first_name', 'last_name', 'slack_handle', 'cohort_id', 'specialty')
VALUES ('Joe', 'Shepherd', 'lil_shep', 2, 'not leaving from his computer during our classes breaks');

INSERT INTO Instructors('first_name', 'last_name', 'slack_handle', 'cohort_id', 'specialty')
VALUES ('Bryan', 'Nilsen', 'jokes4life', 3, 'giving ');

INSERT INTO Students('first_name', 'last_name', 'slack_handle', 'cohort_id')
VALUES ('Stephen', 'Castaneda', 'proliphic_06', 1);

INSERT INTO Students('first_name', 'last_name', 'slack_handle', 'cohort_id')
VALUES ('Sarah', 'Holder', 'holditdown99', 2);

INSERT INTO Students('first_name', 'last_name', 'slack_handle', 'cohort_id')
VALUES ('Roxanne', 'Nasraty', 'masarati_rox', 3);

INSERT INTO Students('first_name', 'last_name', 'slack_handle', 'cohort_id')
VALUES ('Davis', 'Lindell', 'd_lind', 1);

INSERT INTO Students('first_name', 'last_name', 'slack_handle', 'cohort_id')
VALUES ('Leigha', 'Vaughn', 'maestro_crosscheck', 4);

INSERT INTO Students('first_name', 'last_name', 'slack_handle', 'cohort_id')
VALUES ('Tom', 'Strother', 'tstrot', 4);

INSERT INTO Students('first_name', 'last_name', 'slack_handle', 'cohort_id')
VALUES ('Hank', 'Aaron', 'big_bomber', 3);

INSERT INTO Student_Exercises('student_id', 'exercise_id')
VALUES (1, 1);

INSERT INTO Student_Exercises('student_id', 'exercise_id')
VALUES (1, 2);

INSERT INTO Student_Exercises('student_id', 'exercise_id')
VALUES (2, 2);

INSERT INTO Student_Exercises('student_id', 'exercise_id')
VALUES (2, 3);

INSERT INTO Student_Exercises('student_id', 'exercise_id')
VALUES (3, 3);

INSERT INTO Student_Exercises('student_id', 'exercise_id')
VALUES (3, 4);

INSERT INTO Student_Exercises('student_id', 'exercise_id')
VALUES (4, 1);

INSERT INTO Student_Exercises('student_id', 'exercise_id')
VALUES (4, 5);

INSERT INTO Student_Exercises('student_id', 'exercise_id')
VALUES (5, 2);

INSERT INTO Student_Exercises('student_id', 'exercise_id')
VALUES (5, 3);

INSERT INTO Student_Exercises('student_id', 'exercise_id')
VALUES (6, 2);

INSERT INTO Student_Exercises('student_id', 'exercise_id')
VALUES (6, 4);

INSERT INTO Student_Exercises('student_id', 'exercise_id')
VALUES (7, 3);

INSERT INTO Student_Exercises('student_id', 'exercise_id')
VALUES (7, 4);





















