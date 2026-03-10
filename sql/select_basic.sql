-- Active: 1773131018720@@127.0.0.1@3306@employeedb
-- 1. 모든 사원의 모든 컬럼 조회
SELECT * FROM employee;

-- 2. 사원들의 사번(사원번호), 이름 조회
SELECT emp_id, emp_name FROM employee;

-- 3. 201번 사번의 사번 및 이름 조회
SELECT emp_id, emp_name FROM employee 
WHERE emp_id = '201';

-- 4. 부서 코드가 'D9'인 사원의 이름과 부서코드 조회
SELECT dept_code, emp_name FROM employee
WHERE dept_code ='D9';

-- 5. 직급 코드가 'J1'인 사원 조회
SELECT * FROM employee
WHERE job_code ='J1';

-- 6. 급여가 300만원 이상(>=)인 사원의 사번, 이름, 급여를 조회
SELECT emp_id, emp_name, salary FROM employee
WHERE salary >= 3000000;

-- 7. 부서코드가 'D6'이고 급여를 300만원보다 많이 받는 사원의 이름, 급여 조회
SELECT emp_name, salary FROM employee
WHERE dept_code ='D6' and salary >= 3000000;

-- 8. 보너스를 받지 않는 사원의 사번, 이름, 급여, 보너스 조회
SELECT dept_code, emp_name, salary, bonus FROM employee
WHERE bonus IS NULL;

-- 9. 'D9' 부서에서 근무하지 않는 사원의 사번, 이름 조회
SELECT dept_code, emp_name FROM employee
WHERE dept_code !='D9';

-- 10. 퇴사 여부가 N인 직원의 사번, 이름, 입사일 조회 (별칭 사용)
SELECT dept_code, emp_name, hire_date FROM employee
WHERE ent_yn ='N';

-- 11. 급여가 350만원 이상 550만원 이하를 받는 직원의 사번, 이름, 급여 조회
SELECT dept_code, emp_name, salary FROM employee
WHERE salary BETWEEN 3500000 and 5500000;

-- 12. '성이 김씨'인 직원의 사번, 이름, 입사일 조회
SELECT dept_code, emp_name, hire_date FROM employee
WHERE emp_name LIKE '김%';

-- 13. '성이 김씨'가 아닌 직원의 사번, 이름, 입사일 조회
SELECT dept_code, emp_name, hire_date FROM employee
WHERE emp_name NOT LIKE '김%';

-- 14. 이름에 '하' 문자가 포함된 직원의 이름, 주민번호, 부서코드 조회
SELECT dept_code, emp_name, emp_no FROM employee
WHERE emp_name LIKE '%하%';

-- 15. 'J2'직급이거나 'J7'직급인 직원들 중 급여가 200만원 이상인 직원의 이름, 급여 조회
SELECT emp_name, salary,job_code FROM employee
WHERE (job_code ='J1' or 'J7') and salary>=2000000

-- 16. 급여가 높은 순서대로 사원의 이름, 급여 조회 (상위 5명만)
SELECT emp_name, salary FROM employee
ORDER BY salary DESC
LIMIT 5;

-- 17. 중복된 급여 범위를 제거하고 급여 조회
SELECT DISTINCT salary
FROM employee;

-- 18. 사원들의 이름을 사전 순서대로 정렬하고 상위 10명 조회
SELECT emp_name FROM employee
ORDER BY emp_name
LIMIT 10;