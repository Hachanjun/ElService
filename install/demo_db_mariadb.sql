/*
DROP TABLE IF EXISTS EMP
;
DROP TABLE IF EXISTS DEPT
;
DROP TABLE IF EXISTS EMP_FILE
;
DROP TABLE IF EXISTS EMP2
;
*/

CREATE TABLE EMP
(
   EMPNO    INTEGER(4)   NOT NULL     COMMENT '사번',
   ENAME    VARCHAR(10)  DEFAULT NULL COMMENT '성명',
   JOB      VARCHAR(9)   DEFAULT NULL COMMENT '직업',
   MGR      INTEGER(4)   DEFAULT NULL COMMENT '직속상관',
   HIREDATE DATETIME     DEFAULT NULL COMMENT '입사일',
   SAL      DECIMAL(7,2) DEFAULT NULL COMMENT '설명',
   COMM     DECIMAL(7,2) DEFAULT NULL COMMENT '상여',
   DEPTNO   INTEGER(2)   DEFAULT NULL COMMENT '부서번호',
   ACCOUNT  LONGTEXT     DEFAULT NULL COMMENT '설명',
   PRIMARY KEY (EMPNO),
   UNIQUE KEY PK_EMP (EMPNO)
) ENGINE=InnoDB
;

CREATE TABLE DEPT (
  DEPTNO INTEGER(2)  NOT NULL     COMMENT '부서번호',
  DNAME  VARCHAR(14) DEFAULT NULL COMMENT '부서명',
  LOC    VARCHAR(13) DEFAULT NULL COMMENT '부서위치',
  PRIMARY KEY (DEPTNO),
  UNIQUE KEY PK_DEPT (DEPTNO)
) ENGINE=InnoDB
;

CREATE TABLE EMP_FILE (
  EMPNO     VARCHAR(4)  NOT NULL,
  FILE_NAME VARCHAR(50) DEFAULT NULL,
  FILE_DATA LONGBLOB    DEFAULT NULL,
  PRIMARY KEY (EMPNO),
  UNIQUE KEY EMP_FILE_PK (EMPNO)
) ENGINE=InnoDB
;

CREATE TABLE EMP2 (
  EMPNO    INTEGER(4)   DEFAULT NULL,
  ENAME    VARCHAR(10)  DEFAULT NULL,
  JOB      VARCHAR(9)   DEFAULT NULL,
  MGR      INTEGER(4)   DEFAULT NULL,
  HIREDATE DATETIME     DEFAULT NULL,
  SAL      DECIMAL(7,2) DEFAULT NULL,
  COMM     DECIMAL(7,2) DEFAULT NULL,
  DEPTNO   INTEGER(2)   DEFAULT NULL,
  ACCOUNT  LONGTEXT     DEFAULT NULL
) ENGINE=InnoDB
;

Insert into DEPT
   (DEPTNO, DNAME, LOC)
 Values
   (10, 'ACCOUNTING', 'NEW YORK');
Insert into DEPT
   (DEPTNO, DNAME, LOC)
 Values
   (20, 'RESEARCH', 'DALLAS');
Insert into DEPT
   (DEPTNO, DNAME, LOC)
 Values
   (30, 'SALES', 'CHICAGO');
Insert into DEPT
   (DEPTNO, DNAME, LOC)
 Values
   (40, 'OPERATIONS', 'BOSTON');

Insert into EMP
   (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, DEPTNO)
 Values
   (1111, '홍길동', '총무', 22, STR_TO_DATE('2012-01-02 00:00:00', '%Y-%m-%d %H:%i:%s'), 5555, 10);
Insert into EMP
   (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, DEPTNO)
 Values
   (7369, 'SMITH', 'CLERK', 7902, STR_TO_DATE('1980-12-17 00:00:00', '%Y-%m-%d %H:%i:%s'), 4157.28, 30);
Insert into EMP
   (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, DEPTNO)
 Values
   (7499, 'ALLEN', 'SALESMAN', 7698, STR_TO_DATE('1981-02-20 00:00:00', '%Y-%m-%d %H:%i:%s'), 1607, 30);
Insert into EMP
   (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO)
 Values
   (7521, 'WARD', 'SALESMAN', 7698, STR_TO_DATE('1981-02-22 00:00:00', '%Y-%m-%d %H:%i:%s'), 1250, 500, 30);
Insert into EMP
   (EMPNO, ENAME, JOB, MGR, HIREDATE, DEPTNO)
 Values
   (7566, 'JONES', 'MANAGER', 7839, STR_TO_DATE('1981-04-02 00:00:00', '%Y-%m-%d %H:%i:%s'), 20);
Insert into EMP
   (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO)
 Values
   (7654, 'MARTIN', 'SALESMAN', 7698, STR_TO_DATE('1981-09-28 00:00:00', '%Y-%m-%d %H:%i:%s'), 1250, 1400, 10);
Insert into EMP
   (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, DEPTNO)
 Values
   (7698, 'BLAKE', 'MANAGER', 7839, STR_TO_DATE('1981-05-01 00:00:00', '%Y-%m-%d %H:%i:%s'), 2850, 30);
Insert into EMP
   (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, DEPTNO)
 Values
   (7782, 'CLARK', 'MANAGER', 7839, STR_TO_DATE('1981-06-09 00:00:00', '%Y-%m-%d %H:%i:%s'), 2450, 10);
Insert into EMP
   (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, DEPTNO)
 Values
   (7788, 'SCOTT', 'ANALYST', 7566, STR_TO_DATE('1987-04-19 00:00:00', '%Y-%m-%d %H:%i:%s'), 3000, 20);
Insert into EMP
   (EMPNO, ENAME, JOB, HIREDATE, SAL, DEPTNO)
 Values
   (7839, 'KING', 'PRESIDENT', STR_TO_DATE('1981-11-17 00:00:00', '%Y-%m-%d %H:%i:%s'), 5000, 10);
Insert into EMP
   (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO)
 Values
   (7844, 'TURNER', 'SALESMAN', 7698, STR_TO_DATE('1981-09-08 00:00:00', '%Y-%m-%d %H:%i:%s'), 1500, 0, 30);
Insert into EMP
   (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, DEPTNO)
 Values
   (7876, 'ADAMS', 'CLERK', 7788, STR_TO_DATE('1987-05-23 00:00:00', '%Y-%m-%d %H:%i:%s'), 1100, 20);
Insert into EMP
   (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, DEPTNO)
 Values
   (7900, 'JAMES', 'CLERK', 7698, STR_TO_DATE('1981-12-03 00:00:00', '%Y-%m-%d %H:%i:%s'), 950, 30);
Insert into EMP
   (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, DEPTNO)
 Values
   (7902, 'FORD', 'ANALYST', 7566, STR_TO_DATE('1981-12-03 00:00:00', '%Y-%m-%d %H:%i:%s'), 3000, 20);
Insert into EMP
   (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, DEPTNO)
 Values
   (7934, 'MILLER', 'CLERK', 7782, STR_TO_DATE('1982-01-23 00:00:00', '%Y-%m-%d %H:%i:%s'), 1300, 10);
