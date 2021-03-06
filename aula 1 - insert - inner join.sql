DECLARE
VD DEPARTMENTS.DEPARTMENT_NAME%TYPE;
BEGIN
DELETE  FROM LISTFUNCDEPT;
FOR RS IN (SELECT FIRST_NAME, DEPARTMENT_NAME
           FROM EMPLOYEES EMP
           INNER JOIN DEPARTMENTS DEPT
           ON EMP.DEPARTMENT_ID = DEPT.DEPARTMENT_ID
           WHERE EMPLOYEE_ID > 105
           )
LOOP
 VD := RS.DEPARTMENT_NAME;
 INSERT INTO LISTFUNCDEPT  (ID, NOME, DEPARTAMENTO, DATA_HORA)
 VALUES (SEQ_LFD.NEXTVAL, RS.FIRST_NAME, VD, SYSDATE);
END LOOP;
COMMIT;
END;