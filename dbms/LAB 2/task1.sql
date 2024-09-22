use newdata;

CREATE TABLE STUDENT (
    ID CHAR(5) PRIMARY KEY,
    NAME VARCHAR(20),
    DEPT_NAME VARCHAR(20),
    TOT_CRED INT CHECK (TOT_CRED <= 180)
);


INSERT INTO STUDENT (ID, NAME, DEPT_NAME, TOT_CRED) VALUES
('00128', 'Zhang', 'Comp. Sci.', 102),
('12345', 'Shankar', 'Comp. Sci.', 32),
('19991', 'Brandt', 'History', 80),
('23121', 'Chavez', 'Finance', 110),
('44553', 'Peltier', 'Physics', 56),
('45678', 'Levy', 'Physics', 46),
('54321', 'Williams', 'Comp. Sci.', 5),
('55739', 'Sanchez', 'Music', 38),
('70557', 'Snow', 'Physics', 0),
('76543', 'Brown', 'Comp. Sci.', 58),
('76653', 'Aoi', 'Elec. Eng.', 60),
('98765', 'Bourikas', 'Elec. Eng.', 9),
('98988', 'Tanaka', 'Biology', 120);

SELECT * FROM STUDENT;

SELECT ID, NAME FROM STUDENT;

SELECT NAME, DEPT_NAME FROM STUDENT WHERE TOT_CRED > 100;

SELECT ID, NAME FROM STUDENT WHERE DEPT_NAME = 'Comp. Sci.';
SELECT NAME, TOT_CRED FROM STUDENT WHERE DEPT_NAME = 'Physics';
SELECT ID, NAME FROM STUDENT WHERE DEPT_NAME = 'Comp. Sci.' OR TOT_CRED < 10;
SELECT DISTINCT DEPT_NAME FROM STUDENT;

DROP TABLE student;



