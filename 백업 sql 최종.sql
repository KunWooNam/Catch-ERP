--------------------------------------------------------
--  파일이 생성됨 - 화요일-12월-17-2024   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Type ALLOWANCE_HISTORY_TABLE
--------------------------------------------------------

  CREATE OR REPLACE TYPE "ALLOWANCE_HISTORY_TABLE" as table of ALLOWANCE_HISTORY_VO;

/
--------------------------------------------------------
--  DDL for Type ALLOWANCE_HISTORY_VO
--------------------------------------------------------

  CREATE OR REPLACE TYPE "ALLOWANCE_HISTORY_VO" AS OBJECT
(
    awhi_no VARCHAR2(20),
    allowance_price NUMBER(10,0)
);

/
--------------------------------------------------------
--  DDL for Type ATTARRAY
--------------------------------------------------------

  CREATE OR REPLACE TYPE "ATTARRAY" AS TABLE OF ATTELE;

/
--------------------------------------------------------
--  DDL for Type ATTELE
--------------------------------------------------------

  CREATE OR REPLACE TYPE "ATTELE" AS OBJECT
( employee_code VARCHAR2(20),
  attendance_date DATE,
  attendance_time DATE,
  leave_time DATE,
  att_code VARCHAR2(45)
  );

/
--------------------------------------------------------
--  DDL for Type EMPLOYEE_HISTORY
--------------------------------------------------------

  CREATE OR REPLACE TYPE "EMPLOYEE_HISTORY" AS OBJECT
( 
 EH_NO	VARCHAR2(20 BYTE)
,EH_DATE	DATE
,EH_TYPE	VARCHAR2(4 BYTE)
,EMPLOYEE_CODE	VARCHAR2(20 BYTE)
,PREV_POSITION	VARCHAR2(30 BYTE)
,ASSIGNED_POSITION	VARCHAR2(30 BYTE)
,PREV_DEPARTMENT	VARCHAR2(30 BYTE)
,ASSIGNED_DEPARTMENT	VARCHAR2(30 BYTE)
,STANDARD_DATE	DATE  
);

/
--------------------------------------------------------
--  DDL for Type EMPLOYEE_HISTORY_ARRAY
--------------------------------------------------------

  CREATE OR REPLACE TYPE "EMPLOYEE_HISTORY_ARRAY" as table of employee_history;

/
--------------------------------------------------------
--  DDL for Type EMPLOYEE_HISTORY_TABLE
--------------------------------------------------------

  CREATE OR REPLACE TYPE "EMPLOYEE_HISTORY_TABLE" as table of employee_history_vo;

/
--------------------------------------------------------
--  DDL for Type EMPLOYEE_HISTORY_VO
--------------------------------------------------------

  CREATE OR REPLACE TYPE "EMPLOYEE_HISTORY_VO" AS OBJECT
( 
 EH_NO	VARCHAR2(20 BYTE)
,EH_DATE	DATE
,EH_TYPE	VARCHAR2(4 BYTE)
,EMPLOYEE_CODE	VARCHAR2(20 BYTE)
,PREV_POSITION	VARCHAR2(30 BYTE)
,ASSIGNED_POSITION	VARCHAR2(30 BYTE)
,PREV_DEPARTMENT	VARCHAR2(30 BYTE)
,ASSIGNED_DEPARTMENT	VARCHAR2(30 BYTE)
,STANDARD_DATE	DATE  
);

/
--------------------------------------------------------
--  DDL for Type FIXEDARRAY
--------------------------------------------------------

  CREATE OR REPLACE TYPE "FIXEDARRAY" as table of FIXEDVO;

/
--------------------------------------------------------
--  DDL for Type FIXEDVO
--------------------------------------------------------

  CREATE OR REPLACE TYPE "FIXEDVO" AS OBJECT
(
    employee_code VARCHAR2(20),
    fixed_no VARCHAR(20),
    allowance_price NUMBER(10,0),
    allowance_code VARCHAR(20),
    allowance_check VARCHAR(20)
);

/
--------------------------------------------------------
--  DDL for Type STOCKADJUSTVO
--------------------------------------------------------

  CREATE OR REPLACE TYPE "STOCKADJUSTVO" AS OBJECT 
(   pur_no NUMBER,
    sales_no	NUMBER,
    employee_code	VARCHAR2(20),
    stocks_stocks NUMBER,
    item_code VARCHAR2(100),
    update_reason VARCHAR2(100),
    current_quantity NUMBER
);

/
--------------------------------------------------------
--  DDL for Type STOCKADJUSTVOARRAY
--------------------------------------------------------

  CREATE OR REPLACE TYPE "STOCKADJUSTVOARRAY" as table of STOCKADJUSTVO;

/
--------------------------------------------------------
--  DDL for Sequence ATT_HISTORY_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "ATT_HISTORY_SEQ"  MINVALUE 1 MAXVALUE 99999 INCREMENT BY 1 START WITH 292 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence AWHI_NO_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "AWHI_NO_SEQ"  MINVALUE 1 MAXVALUE 9999 INCREMENT BY 1 START WITH 837 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence CLIENT_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "CLIENT_SEQ"  MINVALUE 1 MAXVALUE 9999 INCREMENT BY 1 START WITH 82 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence CONTRACT_NO_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "CONTRACT_NO_SEQ"  MINVALUE 1 MAXVALUE 999 INCREMENT BY 1 START WITH 60 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence CONTRACT_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "CONTRACT_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999 INCREMENT BY 1 START WITH 8 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence CUSTOMER_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "CUSTOMER_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 50 START WITH 1001 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence DEDUCTIONS_ITEM_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "DEDUCTIONS_ITEM_SEQ"  MINVALUE 1 MAXVALUE 9999 INCREMENT BY 1 START WITH 77 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence EMPLOYEE_CODE_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "EMPLOYEE_CODE_SEQ"  MINVALUE 0 MAXVALUE 9999 INCREMENT BY 1 START WITH 284 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence EMPLOYEE_HISTORY_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "EMPLOYEE_HISTORY_SEQ"  MINVALUE 1 MAXVALUE 9999 INCREMENT BY 1 START WITH 31 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence EMPLOYEE_HISTROY_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "EMPLOYEE_HISTROY_SEQ"  MINVALUE 1 MAXVALUE 9999 INCREMENT BY 1 START WITH 25 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence EMPLOYEE_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "EMPLOYEE_ID_SEQ"  MINVALUE 0 MAXVALUE 9999 INCREMENT BY 1 START WITH 6 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence EMPLOYEE_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "EMPLOYEE_SEQ"  MINVALUE 0 MAXVALUE 9999 INCREMENT BY 1 START WITH 284 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence FIXED_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "FIXED_SEQ"  MINVALUE 1 MAXVALUE 9999 INCREMENT BY 1 START WITH 204 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence INVOICE_NO_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "INVOICE_NO_SEQ"  MINVALUE 1 MAXVALUE 9999 INCREMENT BY 1 START WITH 133 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence ITEM_NO_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "ITEM_NO_SEQ"  MINVALUE 1 MAXVALUE 99999 INCREMENT BY 1 START WITH 74 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence PAYABLES_LOG_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "PAYABLES_LOG_SEQ"  MINVALUE 1 MAXVALUE 9999 INCREMENT BY 1 START WITH 67 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence PURCHASE_NO_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "PURCHASE_NO_SEQ"  MINVALUE 1 MAXVALUE 999 INCREMENT BY 1 START WITH 39 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence PURCSLIP_NO_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "PURCSLIP_NO_SEQ"  MINVALUE 1 MAXVALUE 9999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence PUR_NO_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "PUR_NO_SEQ"  MINVALUE 1 MAXVALUE 9999 INCREMENT BY 1 START WITH 145 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence RECEIVABLES_LOG_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "RECEIVABLES_LOG_SEQ"  MINVALUE 1 MAXVALUE 9999 INCREMENT BY 1 START WITH 117 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SALARY_NUMBER_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SALARY_NUMBER_SEQ"  MINVALUE 1 MAXVALUE 9999 INCREMENT BY 1 START WITH 916 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SALESLIP_NO_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SALESLIP_NO_SEQ"  MINVALUE 1 MAXVALUE 999 INCREMENT BY 1 START WITH 220 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SALES_CHIT_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SALES_CHIT_SEQ"  MINVALUE 1 MAXVALUE 9999 INCREMENT BY 1 START WITH 151 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SALES_NO_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SALES_NO_SEQ"  MINVALUE 1 MAXVALUE 999999 INCREMENT BY 1 START WITH 180 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence STOCKS_ADJUST_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "STOCKS_ADJUST_SEQ"  MINVALUE 1 MAXVALUE 999 INCREMENT BY 1 START WITH 280 NOCACHE  ORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence STOCKS_ORDER_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "STOCKS_ORDER_SEQ"  MINVALUE 1 MAXVALUE 999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence STOCKS_RESTOCKING_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "STOCKS_RESTOCKING_SEQ"  MINVALUE 1 MAXVALUE 999 INCREMENT BY 1 START WITH 758 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence STOCKS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "STOCKS_SEQ"  MINVALUE 1 MAXVALUE 99999999 INCREMENT BY 1 START WITH 662 NOCACHE  ORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table ACNT_ACCT
--------------------------------------------------------

  CREATE TABLE "ACNT_ACCT" 
   (	"ACCT_CODE" NUMBER, 
	"ACCT_NAME" VARCHAR2(50), 
	"DEBIT_SIDE" VARCHAR2(100)
   ) ;

   COMMENT ON COLUMN "ACNT_ACCT"."ACCT_CODE" IS '계정 코드';
   COMMENT ON COLUMN "ACNT_ACCT"."ACCT_NAME" IS '계정 과목';
   COMMENT ON COLUMN "ACNT_ACCT"."DEBIT_SIDE" IS '차변 대변';
   COMMENT ON TABLE "ACNT_ACCT"  IS '회계 계정';
--------------------------------------------------------
--  DDL for Table ALLOWANCE_HISTORY
--------------------------------------------------------

  CREATE TABLE "ALLOWANCE_HISTORY" 
   (	"AWHI_NO" VARCHAR2(20), 
	"ALLOWANCE_PRICE" NUMBER(10,0), 
	"EMPLOYEE_CODE" VARCHAR2(20), 
	"SALARY_NUMBER" VARCHAR2(20), 
	"ALLOWANCE_NAME" VARCHAR2(30), 
	"ALLOWANCE_CHECK" VARCHAR2(10)
   ) ;

   COMMENT ON COLUMN "ALLOWANCE_HISTORY"."AWHI_NO" IS '수당기록 번호';
   COMMENT ON COLUMN "ALLOWANCE_HISTORY"."ALLOWANCE_PRICE" IS '수당 액';
   COMMENT ON COLUMN "ALLOWANCE_HISTORY"."EMPLOYEE_CODE" IS '사원 코드';
   COMMENT ON COLUMN "ALLOWANCE_HISTORY"."SALARY_NUMBER" IS '급여명세 번호';
   COMMENT ON COLUMN "ALLOWANCE_HISTORY"."ALLOWANCE_NAME" IS '수당 명';
   COMMENT ON COLUMN "ALLOWANCE_HISTORY"."ALLOWANCE_CHECK" IS '과세 여부
';
   COMMENT ON TABLE "ALLOWANCE_HISTORY"  IS '수당 기록';
--------------------------------------------------------
--  DDL for Table ALLOWANCE_ITEM
--------------------------------------------------------

  CREATE TABLE "ALLOWANCE_ITEM" 
   (	"ALLOWANCE_CODE" VARCHAR2(20), 
	"ALLOWANCE_NAME" VARCHAR2(30), 
	"ALLOWANCE_CHECK" VARCHAR2(10)
   ) ;

   COMMENT ON COLUMN "ALLOWANCE_ITEM"."ALLOWANCE_CODE" IS '수당 코드';
   COMMENT ON COLUMN "ALLOWANCE_ITEM"."ALLOWANCE_NAME" IS '수당 명';
   COMMENT ON COLUMN "ALLOWANCE_ITEM"."ALLOWANCE_CHECK" IS '과세 여부';
   COMMENT ON TABLE "ALLOWANCE_ITEM"  IS '수당 항목';
--------------------------------------------------------
--  DDL for Table ATT_HISTORY
--------------------------------------------------------

  CREATE TABLE "ATT_HISTORY" 
   (	"EMPLOYEE_CODE" VARCHAR2(20), 
	"ATTENDANCE_DATE" DATE, 
	"ATTENDANCE_TIME" DATE, 
	"LEAVE_TIME" DATE, 
	"TOTAL_WORKTIME" NUMBER, 
	"OVERTIME_WORKTIME" NUMBER, 
	"NIGHT_WORKTIME" NUMBER, 
	"WEEKEND_WORKTIME" NUMBER, 
	"ATT_CODE" VARCHAR2(45), 
	"ATT_HISTORY_CODE" VARCHAR2(20)
   ) ;

   COMMENT ON COLUMN "ATT_HISTORY"."EMPLOYEE_CODE" IS '사원 코드';
   COMMENT ON COLUMN "ATT_HISTORY"."ATTENDANCE_DATE" IS '출근 일';
   COMMENT ON COLUMN "ATT_HISTORY"."ATTENDANCE_TIME" IS '출근 시간';
   COMMENT ON COLUMN "ATT_HISTORY"."LEAVE_TIME" IS '퇴근 시간';
   COMMENT ON COLUMN "ATT_HISTORY"."TOTAL_WORKTIME" IS '총 근로시간';
   COMMENT ON COLUMN "ATT_HISTORY"."OVERTIME_WORKTIME" IS '연장 근로시간';
   COMMENT ON COLUMN "ATT_HISTORY"."NIGHT_WORKTIME" IS '야간 근로시간';
   COMMENT ON COLUMN "ATT_HISTORY"."WEEKEND_WORKTIME" IS '주말 근로시간';
   COMMENT ON COLUMN "ATT_HISTORY"."ATT_CODE" IS '근태 코드';
   COMMENT ON COLUMN "ATT_HISTORY"."ATT_HISTORY_CODE" IS '근태 기록 코드';
   COMMENT ON TABLE "ATT_HISTORY"  IS '근무 태도';
--------------------------------------------------------
--  DDL for Table ATT_ITEM
--------------------------------------------------------

  CREATE TABLE "ATT_ITEM" 
   (	"ATT_CODE" VARCHAR2(45), 
	"ATT_STATUS" VARCHAR2(20), 
	"ATT_NAME" VARCHAR2(45)
   ) ;

   COMMENT ON COLUMN "ATT_ITEM"."ATT_CODE" IS '근태 코드';
   COMMENT ON COLUMN "ATT_ITEM"."ATT_STATUS" IS '근태 상태';
   COMMENT ON COLUMN "ATT_ITEM"."ATT_NAME" IS '근태 명';
   COMMENT ON TABLE "ATT_ITEM"  IS '근태 항목';
--------------------------------------------------------
--  DDL for Table BACCT
--------------------------------------------------------

  CREATE TABLE "BACCT" 
   (	"BACCT_CODE" NUMBER(10,0), 
	"BACCT_NO" VARCHAR2(40), 
	"BACCT_NAME" VARCHAR2(45), 
	"BANK_NAME" VARCHAR2(45), 
	"SUMMARY" VARCHAR2(1000)
   ) ;

   COMMENT ON COLUMN "BACCT"."BACCT_CODE" IS '계좌 코드';
   COMMENT ON COLUMN "BACCT"."BACCT_NO" IS '계좌 번호';
   COMMENT ON COLUMN "BACCT"."BACCT_NAME" IS '계좌 명';
   COMMENT ON COLUMN "BACCT"."BANK_NAME" IS '은행 명';
   COMMENT ON COLUMN "BACCT"."SUMMARY" IS '적요';
   COMMENT ON TABLE "BACCT"  IS '계좌';
--------------------------------------------------------
--  DDL for Table BACKUP_AWHI
--------------------------------------------------------

  CREATE TABLE "BACKUP_AWHI" 
   (	"AWHI_NO" VARCHAR2(20), 
	"ALLOWANCE_PRICE" NUMBER, 
	"EMPLOYEE_CODE" VARCHAR2(20), 
	"SALARY_NUMBER" VARCHAR2(20), 
	"ALLOWANCE_NAME" VARCHAR2(20), 
	"ALLOWANCE_CHECK" VARCHAR2(4), 
	"BACKUP_DATE" DATE DEFAULT SYSDATE
   ) ;
--------------------------------------------------------
--  DDL for Table BACKUP_PAYROLL
--------------------------------------------------------

  CREATE TABLE "BACKUP_PAYROLL" 
   (	"SALARY_NUMBER" VARCHAR2(20), 
	"PAYROLL_YDATE" DATE, 
	"MONTHLY_SALARY" NUMBER, 
	"OVERTIME_ALLOWANCE" NUMBER, 
	"NIGHT_ALLOWANCE" NUMBER, 
	"WEEKEND_ALLOWANCE" NUMBER, 
	"PAYMENT_TOTAL" NUMBER, 
	"INCOME_TAX" NUMBER, 
	"LOCAL_TAX" NUMBER, 
	"NATIONAL_INSURANCE" NUMBER, 
	"HEALTH_INSURANCE" NUMBER, 
	"EMPLOYMENT_INSURANCE" NUMBER, 
	"LEAVE_RATE" NUMBER, 
	"DEDUCTIONS_TOTAL" NUMBER, 
	"REAL_PAY" NUMBER, 
	"PAYROLL_SDATE" DATE, 
	"PAYROLL_EDATE" DATE, 
	"EMPLOYEE_CODE" VARCHAR2(20), 
	"NOTAX_PAYMENT" NUMBER, 
	"PAYROLL_CHECK" VARCHAR2(20), 
	"NAME" VARCHAR2(60), 
	"EMPLOYEE_ID" VARCHAR2(40), 
	"BACKUP_DATE" DATE DEFAULT SYSDATE
   ) ;
--------------------------------------------------------
--  DDL for Table CLIENT
--------------------------------------------------------

  CREATE TABLE "CLIENT" 
   (	"CLIENT_CODE" VARCHAR2(100), 
	"CLIENT_NAME" VARCHAR2(40), 
	"CEO_NAME" VARCHAR2(30), 
	"TRADE_TYPE" VARCHAR2(15), 
	"COMPANY_TEL" VARCHAR2(20), 
	"FAX" VARCHAR2(25), 
	"ADDRESS" VARCHAR2(100), 
	"EMPLOYEE_NAME" VARCHAR2(30), 
	"EMPLOYEE_TEL" VARCHAR2(30), 
	"EMPLOYEE_EMAIL" VARCHAR2(30), 
	"CLIENT_BACCT" VARCHAR2(40), 
	"CLIENT_DATE" DATE, 
	"BALANCEK" NUMBER DEFAULT 0, 
	"BALANCEM" NUMBER DEFAULT 0, 
	"STATE" VARCHAR2(45), 
	"EVENT" VARCHAR2(45), 
	"SUMMARY" VARCHAR2(200), 
	"ZIPCODE" VARCHAR2(10), 
	"TRADE_STATUS" VARCHAR2(12), 
	"DETAIL_ADDRESS" VARCHAR2(200)
   ) ;

   COMMENT ON COLUMN "CLIENT"."CLIENT_CODE" IS '거래처 코드';
   COMMENT ON COLUMN "CLIENT"."CLIENT_NAME" IS '거래처 명';
   COMMENT ON COLUMN "CLIENT"."CEO_NAME" IS '대표자 명';
   COMMENT ON COLUMN "CLIENT"."TRADE_TYPE" IS '거래 유형';
   COMMENT ON COLUMN "CLIENT"."COMPANY_TEL" IS '회사 전화';
   COMMENT ON COLUMN "CLIENT"."FAX" IS '팩스';
   COMMENT ON COLUMN "CLIENT"."ADDRESS" IS '주소';
   COMMENT ON COLUMN "CLIENT"."EMPLOYEE_NAME" IS '담당자 이름';
   COMMENT ON COLUMN "CLIENT"."EMPLOYEE_TEL" IS '담당자 연락처';
   COMMENT ON COLUMN "CLIENT"."EMPLOYEE_EMAIL" IS '담당자 메일';
   COMMENT ON COLUMN "CLIENT"."CLIENT_BACCT" IS '거래처 계좌';
   COMMENT ON COLUMN "CLIENT"."CLIENT_DATE" IS '거래처 등록날짜';
   COMMENT ON COLUMN "CLIENT"."BALANCEK" IS '채권총잔액';
   COMMENT ON COLUMN "CLIENT"."BALANCEM" IS '채무총잔액';
   COMMENT ON COLUMN "CLIENT"."STATE" IS '업태';
   COMMENT ON COLUMN "CLIENT"."EVENT" IS '종목';
   COMMENT ON COLUMN "CLIENT"."SUMMARY" IS '적요';
   COMMENT ON COLUMN "CLIENT"."ZIPCODE" IS '우편 번호';
   COMMENT ON COLUMN "CLIENT"."TRADE_STATUS" IS '거래 상태';
   COMMENT ON COLUMN "CLIENT"."DETAIL_ADDRESS" IS '상세 주소';
   COMMENT ON TABLE "CLIENT"  IS '거래처';
--------------------------------------------------------
--  DDL for Table COMMON_CODE
--------------------------------------------------------

  CREATE TABLE "COMMON_CODE" 
   (	"CODE_RULE" VARCHAR2(4), 
	"COMMON_NAME" VARCHAR2(60), 
	"UPDATE_DATE" DATE, 
	"COMMON_CODE" VARCHAR2(4)
   ) ;

   COMMENT ON COLUMN "COMMON_CODE"."CODE_RULE" IS '부여 규칙';
   COMMENT ON COLUMN "COMMON_CODE"."COMMON_NAME" IS '공통 코드명';
   COMMENT ON COLUMN "COMMON_CODE"."UPDATE_DATE" IS '수정 일자';
   COMMENT ON COLUMN "COMMON_CODE"."COMMON_CODE" IS '공통 코드';
   COMMENT ON TABLE "COMMON_CODE"  IS '공통 코드';
--------------------------------------------------------
--  DDL for Table COMPANY
--------------------------------------------------------

  CREATE TABLE "COMPANY" 
   (	"CO_NO" VARCHAR2(40), 
	"COMPANY_NAME" VARCHAR2(45), 
	"COMPANY_OPENDATE" DATE, 
	"ADDRESS" VARCHAR2(100), 
	"STATE" VARCHAR2(45), 
	"EVENT" VARCHAR2(45), 
	"CEO_NAME" VARCHAR2(15), 
	"CEO_BIRTHDATE" VARCHAR2(45)
   ) ;

   COMMENT ON COLUMN "COMPANY"."CO_NO" IS '사업자등록 번호';
   COMMENT ON COLUMN "COMPANY"."COMPANY_NAME" IS '회사 상호';
   COMMENT ON COLUMN "COMPANY"."COMPANY_OPENDATE" IS '회사 개업일자';
   COMMENT ON COLUMN "COMPANY"."ADDRESS" IS '주소';
   COMMENT ON COLUMN "COMPANY"."STATE" IS '업태';
   COMMENT ON COLUMN "COMPANY"."EVENT" IS '종목';
   COMMENT ON COLUMN "COMPANY"."CEO_NAME" IS '대표자 명';
   COMMENT ON COLUMN "COMPANY"."CEO_BIRTHDATE" IS '대표자 생년월일';
   COMMENT ON TABLE "COMPANY"  IS '회사';
--------------------------------------------------------
--  DDL for Table CONTRACT
--------------------------------------------------------

  CREATE TABLE "CONTRACT" 
   (	"CON_NO" VARCHAR2(20), 
	"CLIENT_CODE" VARCHAR2(100), 
	"EMOLOYEE_NAME" VARCHAR2(30), 
	"CON_NAME" VARCHAR2(1000), 
	"CON_SDATE" DATE, 
	"CON_EDATE" DATE, 
	"CON_DATE" DATE, 
	"TOTAL_AMOUNT" NUMBER(15,0) DEFAULT 0, 
	"STATUS" VARCHAR2(4) DEFAULT 'g1', 
	"URL" VARCHAR2(3000), 
	"WRITER" VARCHAR2(300), 
	"EMOPLOYEE_CODE" VARCHAR2(20), 
	"SUMMARY" VARCHAR2(1000), 
	"UPDATE_URL" VARCHAR2(3000) DEFAULT NULL
   ) ;

   COMMENT ON COLUMN "CONTRACT"."CON_NO" IS '계약 번호';
   COMMENT ON COLUMN "CONTRACT"."CLIENT_CODE" IS '거래처';
   COMMENT ON COLUMN "CONTRACT"."EMOLOYEE_NAME" IS '영업 담당자';
   COMMENT ON COLUMN "CONTRACT"."CON_NAME" IS '계약 명';
   COMMENT ON COLUMN "CONTRACT"."CON_SDATE" IS '계약 시작일';
   COMMENT ON COLUMN "CONTRACT"."CON_EDATE" IS '계약 종료일';
   COMMENT ON COLUMN "CONTRACT"."CON_DATE" IS '계약 일자';
   COMMENT ON COLUMN "CONTRACT"."TOTAL_AMOUNT" IS '총 계약금액';
   COMMENT ON COLUMN "CONTRACT"."STATUS" IS '계약상태';
   COMMENT ON COLUMN "CONTRACT"."URL" IS '첨부파일경로';
   COMMENT ON COLUMN "CONTRACT"."WRITER" IS '작성자';
   COMMENT ON TABLE "CONTRACT"  IS '매입계약관리';
--------------------------------------------------------
--  DDL for Table CONTRACT_ITEM
--------------------------------------------------------

  CREATE TABLE "CONTRACT_ITEM" 
   (	"ITEM_NAME" VARCHAR2(300), 
	"PRICE" NUMBER(15,0), 
	"STOCKS_QUANTITY" NUMBER(20,0) DEFAULT 0, 
	"SUPPLY_PRICE" NUMBER(15,0), 
	"VAT" NUMBER(15,0), 
	"CON_NO" VARCHAR2(20), 
	"ITEM_CODE" VARCHAR2(100), 
	"TOTAL_PRICE" NUMBER(20,0), 
	"IMAGE" VARCHAR2(3000)
   ) ;

   COMMENT ON COLUMN "CONTRACT_ITEM"."ITEM_NAME" IS '품목';
   COMMENT ON COLUMN "CONTRACT_ITEM"."PRICE" IS '단가';
   COMMENT ON COLUMN "CONTRACT_ITEM"."STOCKS_QUANTITY" IS '재고 수량';
   COMMENT ON COLUMN "CONTRACT_ITEM"."SUPPLY_PRICE" IS '공급가 액';
   COMMENT ON COLUMN "CONTRACT_ITEM"."VAT" IS '부가세';
   COMMENT ON COLUMN "CONTRACT_ITEM"."CON_NO" IS '계약 번호';
   COMMENT ON COLUMN "CONTRACT_ITEM"."ITEM_CODE" IS '품목 코드';
   COMMENT ON COLUMN "CONTRACT_ITEM"."TOTAL_PRICE" IS '총 금액';
   COMMENT ON COLUMN "CONTRACT_ITEM"."IMAGE" IS '이미지';
   COMMENT ON TABLE "CONTRACT_ITEM"  IS '매입계약 품목';
--------------------------------------------------------
--  DDL for Table DEDUCTIONS_ITEM
--------------------------------------------------------

  CREATE TABLE "DEDUCTIONS_ITEM" 
   (	"DEDUCTIONS_CODE" VARCHAR2(45), 
	"DEDUCTIONS_NAME" VARCHAR2(45), 
	"DEDUCTIONS_DEDUCTIBLE" NUMBER(12,4), 
	"MINVAL" NUMBER(11,0), 
	"MAXVAL" NUMBER(11,0), 
	"INCOME_TAX" NUMBER(11,0)
   ) ;

   COMMENT ON COLUMN "DEDUCTIONS_ITEM"."DEDUCTIONS_CODE" IS '공제 코드';
   COMMENT ON COLUMN "DEDUCTIONS_ITEM"."DEDUCTIONS_NAME" IS '공제 명';
   COMMENT ON COLUMN "DEDUCTIONS_ITEM"."DEDUCTIONS_DEDUCTIBLE" IS '공제 율';
   COMMENT ON COLUMN "DEDUCTIONS_ITEM"."MINVAL" IS '최소값';
   COMMENT ON COLUMN "DEDUCTIONS_ITEM"."MAXVAL" IS '최대값';
   COMMENT ON COLUMN "DEDUCTIONS_ITEM"."INCOME_TAX" IS '누진 세';
   COMMENT ON TABLE "DEDUCTIONS_ITEM"  IS '공제 항목';
--------------------------------------------------------
--  DDL for Table DEPARTMENT
--------------------------------------------------------

  CREATE TABLE "DEPARTMENT" 
   (	"DEPARTMENT_CODE" VARCHAR2(20), 
	"DEPARTMENT_NAME" VARCHAR2(30), 
	"MANAGER_CODE" VARCHAR2(20)
   ) ;

   COMMENT ON COLUMN "DEPARTMENT"."DEPARTMENT_CODE" IS '부서 코드';
   COMMENT ON COLUMN "DEPARTMENT"."DEPARTMENT_NAME" IS '부서 명';
   COMMENT ON COLUMN "DEPARTMENT"."MANAGER_CODE" IS '부서 장';
   COMMENT ON TABLE "DEPARTMENT"  IS '부서';
--------------------------------------------------------
--  DDL for Table EMPLOYEES
--------------------------------------------------------

  CREATE TABLE "EMPLOYEES" 
   (	"EMPLOYEE_CODE" VARCHAR2(20), 
	"EMPLOYEE_ID" VARCHAR2(40), 
	"NAME" VARCHAR2(60), 
	"HIRE_DATE" DATE, 
	"PASSWORD" VARCHAR2(100), 
	"EMPLOYEE_POSITION" VARCHAR2(30), 
	"STATUS_TYPE" VARCHAR2(10), 
	"RESIGNATION_DATE" DATE, 
	"HIRE_TYPE" VARCHAR2(10), 
	"DEPARTMENT_CODE" VARCHAR2(20)
   ) ;

   COMMENT ON COLUMN "EMPLOYEES"."EMPLOYEE_CODE" IS '사원 코드';
   COMMENT ON COLUMN "EMPLOYEES"."EMPLOYEE_ID" IS '사원 아이디';
   COMMENT ON COLUMN "EMPLOYEES"."NAME" IS '성명';
   COMMENT ON COLUMN "EMPLOYEES"."HIRE_DATE" IS '입사 일자';
   COMMENT ON COLUMN "EMPLOYEES"."PASSWORD" IS '패스워드';
   COMMENT ON COLUMN "EMPLOYEES"."EMPLOYEE_POSITION" IS '직위 직책';
   COMMENT ON COLUMN "EMPLOYEES"."STATUS_TYPE" IS '재직 구분';
   COMMENT ON COLUMN "EMPLOYEES"."RESIGNATION_DATE" IS '퇴사 일';
   COMMENT ON COLUMN "EMPLOYEES"."HIRE_TYPE" IS '입사 구분';
   COMMENT ON COLUMN "EMPLOYEES"."DEPARTMENT_CODE" IS '부서 코드';
   COMMENT ON TABLE "EMPLOYEES"  IS '인사';
--------------------------------------------------------
--  DDL for Table EMPLOYEES_DETAIL
--------------------------------------------------------

  CREATE TABLE "EMPLOYEES_DETAIL" 
   (	"ENG_NAME" VARCHAR2(60), 
	"IDENTITY_NO" VARCHAR2(100), 
	"HEAD_CHECK" VARCHAR2(2), 
	"DUTY" VARCHAR2(4), 
	"TEL" VARCHAR2(60), 
	"PHONE" VARCHAR2(60), 
	"EMAIL" VARCHAR2(200), 
	"EMP_STATUS" VARCHAR2(4), 
	"ZIPCODE" NUMBER, 
	"ADDRESS" VARCHAR2(300), 
	"DETAIL_ADDRESS" VARCHAR2(300), 
	"BACCT" VARCHAR2(120), 
	"DEPOSITOR" VARCHAR2(60), 
	"EMPLOYEE_IMAGE" VARCHAR2(2000), 
	"BANK" VARCHAR2(30), 
	"EMPLOYEE_CODE" VARCHAR2(20), 
	"EMPLOYEE_ROLE" NUMBER(2,0) DEFAULT 0
   ) ;

   COMMENT ON COLUMN "EMPLOYEES_DETAIL"."ENG_NAME" IS '외국어 성명';
   COMMENT ON COLUMN "EMPLOYEES_DETAIL"."IDENTITY_NO" IS '주민등록 번호';
   COMMENT ON COLUMN "EMPLOYEES_DETAIL"."HEAD_CHECK" IS '세대주 여부';
   COMMENT ON COLUMN "EMPLOYEES_DETAIL"."DUTY" IS '직책';
   COMMENT ON COLUMN "EMPLOYEES_DETAIL"."TEL" IS '전화';
   COMMENT ON COLUMN "EMPLOYEES_DETAIL"."PHONE" IS '모바일';
   COMMENT ON COLUMN "EMPLOYEES_DETAIL"."EMAIL" IS '이메일';
   COMMENT ON COLUMN "EMPLOYEES_DETAIL"."EMP_STATUS" IS '재직 상태';
   COMMENT ON COLUMN "EMPLOYEES_DETAIL"."ZIPCODE" IS '우편번호';
   COMMENT ON COLUMN "EMPLOYEES_DETAIL"."ADDRESS" IS '주소';
   COMMENT ON COLUMN "EMPLOYEES_DETAIL"."DETAIL_ADDRESS" IS '상세 주소';
   COMMENT ON COLUMN "EMPLOYEES_DETAIL"."BACCT" IS '계좌번호';
   COMMENT ON COLUMN "EMPLOYEES_DETAIL"."DEPOSITOR" IS '예금주';
   COMMENT ON COLUMN "EMPLOYEES_DETAIL"."EMPLOYEE_IMAGE" IS '증명 사진';
   COMMENT ON COLUMN "EMPLOYEES_DETAIL"."BANK" IS '은행';
   COMMENT ON COLUMN "EMPLOYEES_DETAIL"."EMPLOYEE_CODE" IS '사원 코드';
   COMMENT ON COLUMN "EMPLOYEES_DETAIL"."EMPLOYEE_ROLE" IS '사원 권한';
   COMMENT ON TABLE "EMPLOYEES_DETAIL"  IS '인사 세부정보';
--------------------------------------------------------
--  DDL for Table EMPLOYEES_HISTORY
--------------------------------------------------------

  CREATE TABLE "EMPLOYEES_HISTORY" 
   (	"EH_NO" VARCHAR2(20), 
	"EH_DATE" DATE, 
	"EH_TYPE" VARCHAR2(4), 
	"EMPLOYEE_CODE" VARCHAR2(20), 
	"PREV_POSITION" VARCHAR2(30), 
	"ASSIGNED_POSITION" VARCHAR2(30), 
	"PREV_DEPARTMENT" VARCHAR2(30), 
	"ASSIGNED_DEPARTMENT" VARCHAR2(30), 
	"STANDARD_DATE" DATE
   ) ;

   COMMENT ON COLUMN "EMPLOYEES_HISTORY"."EH_NO" IS '인사기록 번호';
   COMMENT ON COLUMN "EMPLOYEES_HISTORY"."EH_DATE" IS '발령 일자';
   COMMENT ON COLUMN "EMPLOYEES_HISTORY"."EH_TYPE" IS '발령 구분';
   COMMENT ON COLUMN "EMPLOYEES_HISTORY"."EMPLOYEE_CODE" IS '사원 코드';
   COMMENT ON COLUMN "EMPLOYEES_HISTORY"."PREV_POSITION" IS '이전 직위직급';
   COMMENT ON COLUMN "EMPLOYEES_HISTORY"."ASSIGNED_POSITION" IS '발령 직위직급';
   COMMENT ON COLUMN "EMPLOYEES_HISTORY"."PREV_DEPARTMENT" IS '이전 부서명';
   COMMENT ON COLUMN "EMPLOYEES_HISTORY"."ASSIGNED_DEPARTMENT" IS '발령 부서명';
   COMMENT ON COLUMN "EMPLOYEES_HISTORY"."STANDARD_DATE" IS '기준 일자';
   COMMENT ON TABLE "EMPLOYEES_HISTORY"  IS '인사 기록';
--------------------------------------------------------
--  DDL for Table EMPLOYEES_ROLE
--------------------------------------------------------

  CREATE TABLE "EMPLOYEES_ROLE" 
   (	"ID" NUMBER(2,0), 
	"ROLE_NAME" VARCHAR2(100), 
	"DESCRIPTION" VARCHAR2(100), 
	"PARENT_ROLE" NUMBER(2,0)
   ) ;
--------------------------------------------------------
--  DDL for Table EMPLOYEES_SALARY
--------------------------------------------------------

  CREATE TABLE "EMPLOYEES_SALARY" 
   (	"ANNUAL_SALARY" NUMBER(10,0), 
	"MONTHLY_SALARY" NUMBER(10,0), 
	"TIME_SALARY" NUMBER(10,0), 
	"INCOME_INVOICE" NUMBER(10,0), 
	"LEAVE_RATE" NUMBER(10,0), 
	"EMPLOYEE_CODE" VARCHAR2(20), 
	"HEALTH_INSURANCE" NUMBER(10,0)
   ) ;

   COMMENT ON COLUMN "EMPLOYEES_SALARY"."ANNUAL_SALARY" IS '연간 급여';
   COMMENT ON COLUMN "EMPLOYEES_SALARY"."MONTHLY_SALARY" IS '기본 급여';
   COMMENT ON COLUMN "EMPLOYEES_SALARY"."TIME_SALARY" IS '시간 급여';
   COMMENT ON COLUMN "EMPLOYEES_SALARY"."INCOME_INVOICE" IS '소득 세금';
   COMMENT ON COLUMN "EMPLOYEES_SALARY"."LEAVE_RATE" IS '무급 휴가비';
   COMMENT ON COLUMN "EMPLOYEES_SALARY"."EMPLOYEE_CODE" IS '사원 코드';
   COMMENT ON COLUMN "EMPLOYEES_SALARY"."HEALTH_INSURANCE" IS '건강 보험료';
   COMMENT ON TABLE "EMPLOYEES_SALARY"  IS '인사 급여정보';
--------------------------------------------------------
--  DDL for Table FIXED
--------------------------------------------------------

  CREATE TABLE "FIXED" 
   (	"FIXED_NO" VARCHAR2(20), 
	"ALLOWANCE_PRICE" NUMBER(10,0), 
	"ALLOWANCE_CODE" VARCHAR2(20), 
	"EMPLOYEE_CODE" VARCHAR2(20)
   ) ;

   COMMENT ON COLUMN "FIXED"."FIXED_NO" IS '고정수당 번호';
   COMMENT ON COLUMN "FIXED"."ALLOWANCE_PRICE" IS '수당 액';
   COMMENT ON COLUMN "FIXED"."ALLOWANCE_CODE" IS '수당 코드';
   COMMENT ON COLUMN "FIXED"."EMPLOYEE_CODE" IS '사원 코드';
   COMMENT ON TABLE "FIXED"  IS '고정수당';
--------------------------------------------------------
--  DDL for Table INVOICE
--------------------------------------------------------

  CREATE TABLE "INVOICE" 
   (	"INVOICE_NO" VARCHAR2(20), 
	"INVOICE_DATE" DATE, 
	"INVOICE_STATUS" VARCHAR2(20) DEFAULT 'f1', 
	"NTS_INVOICE_DATE" DATE, 
	"REF_TYPE" VARCHAR2(20), 
	"SALESLIP_NO" VARCHAR2(20)
   ) ;

   COMMENT ON COLUMN "INVOICE"."INVOICE_NO" IS '세금계산서 번호';
   COMMENT ON COLUMN "INVOICE"."INVOICE_DATE" IS '발송 일자';
   COMMENT ON COLUMN "INVOICE"."INVOICE_STATUS" IS '전송 상태';
   COMMENT ON COLUMN "INVOICE"."NTS_INVOICE_DATE" IS '국세청 전송 일자';
   COMMENT ON COLUMN "INVOICE"."REF_TYPE" IS '원세금계산서 유형';
   COMMENT ON COLUMN "INVOICE"."SALESLIP_NO" IS '매출전표 번호';
   COMMENT ON TABLE "INVOICE"  IS '전자세금계산서';
--------------------------------------------------------
--  DDL for Table MAIN
--------------------------------------------------------

  CREATE TABLE "MAIN" 
   (	"MAIN_NO" VARCHAR2(20), 
	"CODE_NAME" VARCHAR2(30), 
	"MAIN_COMMENT" VARCHAR2(30)
   ) ;

   COMMENT ON COLUMN "MAIN"."MAIN_NO" IS '주코드 번호';
   COMMENT ON COLUMN "MAIN"."CODE_NAME" IS '코드 명';
   COMMENT ON COLUMN "MAIN"."MAIN_COMMENT" IS '메인 비고';
   COMMENT ON TABLE "MAIN"  IS '주코드';
--------------------------------------------------------
--  DDL for Table ORDERS
--------------------------------------------------------

  CREATE TABLE "ORDERS" 
   (	"ORDER_NO" VARCHAR2(100), 
	"EMPLOYEE_CODE" VARCHAR2(20), 
	"SUMMARY" VARCHAR2(2000), 
	"ORDER_DATE" DATE, 
	"CLIENT_CODE" VARCHAR2(100), 
	"TOTAL_PRICE" NUMBER
   ) ;

   COMMENT ON COLUMN "ORDERS"."ORDER_NO" IS '발주 번호';
   COMMENT ON COLUMN "ORDERS"."EMPLOYEE_CODE" IS '사원 코드';
   COMMENT ON COLUMN "ORDERS"."SUMMARY" IS '적요';
   COMMENT ON COLUMN "ORDERS"."ORDER_DATE" IS '발주 일자';
   COMMENT ON COLUMN "ORDERS"."CLIENT_CODE" IS '거래처 코드';
   COMMENT ON TABLE "ORDERS"  IS '발주서';
--------------------------------------------------------
--  DDL for Table ORDER_ITEM
--------------------------------------------------------

  CREATE TABLE "ORDER_ITEM" 
   (	"ORDER_SUB_NO" VARCHAR2(100), 
	"ITEM_CODE" VARCHAR2(100), 
	"ITEM_NAME" VARCHAR2(300), 
	"QUANTITY" NUMBER(7,0), 
	"PRICE" NUMBER(7,0), 
	"ORDER_NO" VARCHAR2(100)
   ) ;

   COMMENT ON COLUMN "ORDER_ITEM"."ORDER_SUB_NO" IS '발주 세부 번호';
   COMMENT ON COLUMN "ORDER_ITEM"."ITEM_CODE" IS '품목 코드';
   COMMENT ON COLUMN "ORDER_ITEM"."ITEM_NAME" IS '품목 명';
   COMMENT ON COLUMN "ORDER_ITEM"."QUANTITY" IS '수량';
   COMMENT ON COLUMN "ORDER_ITEM"."PRICE" IS '단가';
   COMMENT ON COLUMN "ORDER_ITEM"."ORDER_NO" IS '발주 번호';
   COMMENT ON TABLE "ORDER_ITEM"  IS '발주 품목';
--------------------------------------------------------
--  DDL for Table PAYABLES_LOG
--------------------------------------------------------

  CREATE TABLE "PAYABLES_LOG" 
   (	"REC_LOG_ID" NUMBER, 
	"REC_DATE" DATE, 
	"DECREASE_PRICE" NUMBER(12,0) DEFAULT 0, 
	"BACCT_CODE" NUMBER(10,0), 
	"CLIENT_CODE" VARCHAR2(100), 
	"PURCHASE_CHIT_NO" VARCHAR2(20), 
	"INCREASE_PRICE" NUMBER(15,0) DEFAULT 0
   ) ;

   COMMENT ON COLUMN "PAYABLES_LOG"."REC_LOG_ID" IS '채권 로그 아이디';
   COMMENT ON COLUMN "PAYABLES_LOG"."REC_DATE" IS '거래발생 일자';
   COMMENT ON COLUMN "PAYABLES_LOG"."DECREASE_PRICE" IS '채무감소 금액';
   COMMENT ON COLUMN "PAYABLES_LOG"."BACCT_CODE" IS '계좌 코드';
   COMMENT ON COLUMN "PAYABLES_LOG"."CLIENT_CODE" IS '거래처';
   COMMENT ON COLUMN "PAYABLES_LOG"."PURCHASE_CHIT_NO" IS '매입 전표 번호';
   COMMENT ON TABLE "PAYABLES_LOG"  IS '채무거래 내역';
--------------------------------------------------------
--  DDL for Table PURCHASE
--------------------------------------------------------

  CREATE TABLE "PURCHASE" 
   (	"PURCHASE_CHIT_NO" VARCHAR2(20), 
	"CLIENT_CODE" VARCHAR2(100), 
	"ITEM_CODE" VARCHAR2(200), 
	"ACCT_NAME" VARCHAR2(45), 
	"CHIT_DATE" DATE, 
	"SUPPLY_PRICE" NUMBER, 
	"VAT" NUMBER, 
	"TOTAL_PRICE" NUMBER(10,0), 
	"INVOICE_CODE" VARCHAR2(300), 
	"DECREASE_BALANCE" NUMBER, 
	"DECREASE_STATUS" VARCHAR2(15) DEFAULT 'n1', 
	"SUMMARY" VARCHAR2(1000), 
	"PURCSLIP_NO" VARCHAR2(45), 
	"WRITER" VARCHAR2(300), 
	"INVOICE_STATUS" VARCHAR2(10) DEFAULT 'f3'
   ) ;

   COMMENT ON COLUMN "PURCHASE"."PURCHASE_CHIT_NO" IS '매입 전표 번호';
   COMMENT ON COLUMN "PURCHASE"."CLIENT_CODE" IS '거래처';
   COMMENT ON COLUMN "PURCHASE"."ITEM_CODE" IS '품목 코드';
   COMMENT ON COLUMN "PURCHASE"."ACCT_NAME" IS '계정 과목';
   COMMENT ON COLUMN "PURCHASE"."CHIT_DATE" IS '전표 일자';
   COMMENT ON COLUMN "PURCHASE"."SUPPLY_PRICE" IS '공급가 액';
   COMMENT ON COLUMN "PURCHASE"."VAT" IS '부가세';
   COMMENT ON COLUMN "PURCHASE"."TOTAL_PRICE" IS '총 금액';
   COMMENT ON COLUMN "PURCHASE"."INVOICE_CODE" IS '세금계산서 코드';
   COMMENT ON COLUMN "PURCHASE"."DECREASE_BALANCE" IS '채무 잔액';
   COMMENT ON COLUMN "PURCHASE"."DECREASE_STATUS" IS '채무 상태';
   COMMENT ON COLUMN "PURCHASE"."SUMMARY" IS '적요';
   COMMENT ON COLUMN "PURCHASE"."PURCSLIP_NO" IS '구매전표 번호';
   COMMENT ON COLUMN "PURCHASE"."WRITER" IS '작성자';
   COMMENT ON TABLE "PURCHASE"  IS '매입';
--------------------------------------------------------
--  DDL for Table PURCHASE_CHIT
--------------------------------------------------------

  CREATE TABLE "PURCHASE_CHIT" 
   (	"PURCSLIP_NO" VARCHAR2(45), 
	"INSERT_DATE" DATE, 
	"CLIENT_CODE" VARCHAR2(100), 
	"CLIENT_NAME" VARCHAR2(300), 
	"WIT_BACCT" VARCHAR2(40), 
	"SUPPLY_PRICE" NUMBER(15,0), 
	"PUR_SUMMARY" VARCHAR2(1000), 
	"EMPLOYEE_NAME" VARCHAR2(300), 
	"EMPLOYEE_CODE" VARCHAR2(20), 
	"VAT" NUMBER(15,0), 
	"SLIP_STATE" VARCHAR2(10) DEFAULT '미발행'
   ) ;

   COMMENT ON COLUMN "PURCHASE_CHIT"."PURCSLIP_NO" IS '구매전표 번호';
   COMMENT ON COLUMN "PURCHASE_CHIT"."INSERT_DATE" IS '입력 일자';
   COMMENT ON COLUMN "PURCHASE_CHIT"."CLIENT_CODE" IS '거래처 코드';
   COMMENT ON COLUMN "PURCHASE_CHIT"."CLIENT_NAME" IS '거래처 명';
   COMMENT ON COLUMN "PURCHASE_CHIT"."WIT_BACCT" IS '출금 계좌';
   COMMENT ON COLUMN "PURCHASE_CHIT"."SUPPLY_PRICE" IS '공급가 액';
   COMMENT ON COLUMN "PURCHASE_CHIT"."PUR_SUMMARY" IS '구매 적요';
   COMMENT ON COLUMN "PURCHASE_CHIT"."EMPLOYEE_NAME" IS '담당자 명';
   COMMENT ON COLUMN "PURCHASE_CHIT"."EMPLOYEE_CODE" IS '사원 코드';
   COMMENT ON COLUMN "PURCHASE_CHIT"."VAT" IS '부가세';
   COMMENT ON TABLE "PURCHASE_CHIT"  IS '구매 전표';
--------------------------------------------------------
--  DDL for Table PURCHASE_HISTORY
--------------------------------------------------------

  CREATE TABLE "PURCHASE_HISTORY" 
   (	"PUR_NO" NUMBER, 
	"WH_CODE" VARCHAR2(300), 
	"WH_NAME" VARCHAR2(100), 
	"ITEM_CODE" VARCHAR2(100), 
	"ITEM_NAME" VARCHAR2(300), 
	"QUANTITY" NUMBER(10,0), 
	"RESTOCKING_PRICE" NUMBER(15,0), 
	"RESTOCKING_STATUS" VARCHAR2(4) DEFAULT 'b1', 
	"RESTOCKING_DATE" DATE, 
	"PURCSLIP_NO" VARCHAR2(45), 
	"INCOMPLETE_QUANTITY" NUMBER(10,0)
   ) ;

   COMMENT ON COLUMN "PURCHASE_HISTORY"."PUR_NO" IS '구매 번호';
   COMMENT ON COLUMN "PURCHASE_HISTORY"."WH_CODE" IS '창고 코드';
   COMMENT ON COLUMN "PURCHASE_HISTORY"."WH_NAME" IS '창고 명';
   COMMENT ON COLUMN "PURCHASE_HISTORY"."ITEM_CODE" IS '품목 코드';
   COMMENT ON COLUMN "PURCHASE_HISTORY"."ITEM_NAME" IS '품목 명';
   COMMENT ON COLUMN "PURCHASE_HISTORY"."QUANTITY" IS '수량';
   COMMENT ON COLUMN "PURCHASE_HISTORY"."RESTOCKING_PRICE" IS '입고 단가';
   COMMENT ON COLUMN "PURCHASE_HISTORY"."RESTOCKING_STATUS" IS '입고 상태';
   COMMENT ON COLUMN "PURCHASE_HISTORY"."RESTOCKING_DATE" IS '입고 예정일';
   COMMENT ON COLUMN "PURCHASE_HISTORY"."PURCSLIP_NO" IS '구매전표 번호';
   COMMENT ON COLUMN "PURCHASE_HISTORY"."INCOMPLETE_QUANTITY" IS '미완료 수량';
   COMMENT ON TABLE "PURCHASE_HISTORY"  IS '구매 내역';
--------------------------------------------------------
--  DDL for Table QUALITY_TEST
--------------------------------------------------------

  CREATE TABLE "QUALITY_TEST" 
   (	"TEST_NO" NUMBER(15,0), 
	"TEST_RESULT" VARCHAR2(4), 
	"TEST_DATE" DATE, 
	"EMPLOYEE_CODE" NUMBER, 
	"ITEM_CODE" VARCHAR2(100), 
	"WH_CODE" VARCHAR2(300)
   ) ;

   COMMENT ON COLUMN "QUALITY_TEST"."TEST_NO" IS '검사 번호';
   COMMENT ON COLUMN "QUALITY_TEST"."TEST_RESULT" IS '검사 결과';
   COMMENT ON COLUMN "QUALITY_TEST"."TEST_DATE" IS '검사 날짜';
   COMMENT ON COLUMN "QUALITY_TEST"."EMPLOYEE_CODE" IS '사원 코드';
   COMMENT ON COLUMN "QUALITY_TEST"."ITEM_CODE" IS '품목 코드';
   COMMENT ON COLUMN "QUALITY_TEST"."WH_CODE" IS '창고 코드';
   COMMENT ON TABLE "QUALITY_TEST"  IS '품질 검사';
--------------------------------------------------------
--  DDL for Table RECEIVABLES_LOG
--------------------------------------------------------

  CREATE TABLE "RECEIVABLES_LOG" 
   (	"LOG_ID" NUMBER, 
	"REC_DATE" DATE, 
	"DECREASE_PRICE" NUMBER(15,0) DEFAULT 0, 
	"BACCT_CODE" NUMBER(10,0), 
	"CLIENT_CODE" VARCHAR2(100), 
	"SALES_CHIT_NO" VARCHAR2(20), 
	"INCREASE_PRICE" NUMBER(15,0) DEFAULT 0
   ) ;

   COMMENT ON COLUMN "RECEIVABLES_LOG"."LOG_ID" IS '로그 아이디';
   COMMENT ON COLUMN "RECEIVABLES_LOG"."REC_DATE" IS '거래발생 일자';
   COMMENT ON COLUMN "RECEIVABLES_LOG"."DECREASE_PRICE" IS '채권감소 금액';
   COMMENT ON COLUMN "RECEIVABLES_LOG"."BACCT_CODE" IS '계좌 코드';
   COMMENT ON COLUMN "RECEIVABLES_LOG"."CLIENT_CODE" IS '거래처';
   COMMENT ON COLUMN "RECEIVABLES_LOG"."SALES_CHIT_NO" IS '매출 전표 번호';
   COMMENT ON TABLE "RECEIVABLES_LOG"  IS '채권거래 내역';
--------------------------------------------------------
--  DDL for Table SALARY_PAYROLL
--------------------------------------------------------

  CREATE TABLE "SALARY_PAYROLL" 
   (	"SALARY_NUMBER" VARCHAR2(20), 
	"PAYROLL_YDATE" DATE, 
	"MONTHLY_SALARY" NUMBER(10,0), 
	"OVERTIME_ALLOWANCE" NUMBER(10,0), 
	"NIGHT_ALLOWANCE" NUMBER(10,0), 
	"WEEKEND_ALLOWANCE" NUMBER(10,0), 
	"PAYMENT_TOTAL" NUMBER(10,0), 
	"INCOME_TAX" NUMBER(10,0), 
	"LOCAL_TAX" NUMBER(10,0), 
	"NATIONAL_INSURANCE" NUMBER(10,0), 
	"HEALTH_INSURANCE" NUMBER(10,0), 
	"EMPLOYMENT_INSURANCE" NUMBER(10,0), 
	"LEAVE_RATE" NUMBER(10,0), 
	"DEDUCTIONS_TOTAL" NUMBER(10,0), 
	"REAL_PAY" NUMBER(10,0), 
	"PAYROLL_SDATE" DATE, 
	"PAYROLL_EDATE" DATE, 
	"EMPLOYEE_CODE" VARCHAR2(20), 
	"NOTAX_PAYMENT" NUMBER(10,0), 
	"PAYROLL_CHECK" VARCHAR2(20) DEFAULT '미검토', 
	"TIME_SALARY" NUMBER
   ) ;

   COMMENT ON COLUMN "SALARY_PAYROLL"."SALARY_NUMBER" IS '급여 명세번호';
   COMMENT ON COLUMN "SALARY_PAYROLL"."PAYROLL_YDATE" IS '귀속 연월';
   COMMENT ON COLUMN "SALARY_PAYROLL"."MONTHLY_SALARY" IS '기본 급여';
   COMMENT ON COLUMN "SALARY_PAYROLL"."OVERTIME_ALLOWANCE" IS '연장근로 수당';
   COMMENT ON COLUMN "SALARY_PAYROLL"."NIGHT_ALLOWANCE" IS '야간근로 수당';
   COMMENT ON COLUMN "SALARY_PAYROLL"."WEEKEND_ALLOWANCE" IS '주말근로 수당';
   COMMENT ON COLUMN "SALARY_PAYROLL"."PAYMENT_TOTAL" IS '지급 총액';
   COMMENT ON COLUMN "SALARY_PAYROLL"."INCOME_TAX" IS '소득 세';
   COMMENT ON COLUMN "SALARY_PAYROLL"."LOCAL_TAX" IS '지방 세';
   COMMENT ON COLUMN "SALARY_PAYROLL"."NATIONAL_INSURANCE" IS '국민연금 요금';
   COMMENT ON COLUMN "SALARY_PAYROLL"."HEALTH_INSURANCE" IS '건강보험 요금';
   COMMENT ON COLUMN "SALARY_PAYROLL"."EMPLOYMENT_INSURANCE" IS '고용보험 요금';
   COMMENT ON COLUMN "SALARY_PAYROLL"."LEAVE_RATE" IS '무급 휴가비';
   COMMENT ON COLUMN "SALARY_PAYROLL"."DEDUCTIONS_TOTAL" IS '공제 총액';
   COMMENT ON COLUMN "SALARY_PAYROLL"."REAL_PAY" IS '실 지급액';
   COMMENT ON COLUMN "SALARY_PAYROLL"."PAYROLL_SDATE" IS '근무 시작일';
   COMMENT ON COLUMN "SALARY_PAYROLL"."PAYROLL_EDATE" IS '근무 종료일';
   COMMENT ON COLUMN "SALARY_PAYROLL"."EMPLOYEE_CODE" IS '사원 코드';
   COMMENT ON COLUMN "SALARY_PAYROLL"."NOTAX_PAYMENT" IS '비과세 제외';
   COMMENT ON COLUMN "SALARY_PAYROLL"."PAYROLL_CHECK" IS '급여 검토상태';
   COMMENT ON COLUMN "SALARY_PAYROLL"."TIME_SALARY" IS '시급';
   COMMENT ON TABLE "SALARY_PAYROLL"  IS '급여 명세서';
--------------------------------------------------------
--  DDL for Table SALES
--------------------------------------------------------

  CREATE TABLE "SALES" 
   (	"SALES_CHIT_NO" VARCHAR2(20), 
	"CHIT_DATE" DATE, 
	"CLIENT_CODE" VARCHAR2(100), 
	"ACCT_NAME" VARCHAR2(100), 
	"SUPPLY_PRICE" NUMBER, 
	"VAT" NUMBER, 
	"TOTAL_PRICE" NUMBER, 
	"WRITER" VARCHAR2(300), 
	"REC_BALANCE" NUMBER, 
	"REC_STATUS" VARCHAR2(10) DEFAULT 'n1', 
	"SUMMARY" VARCHAR2(1000), 
	"SALESLIP_NO" VARCHAR2(45), 
	"INVOICE_NO" VARCHAR2(20)
   ) ;

   COMMENT ON COLUMN "SALES"."SALES_CHIT_NO" IS '매출 전표 번호';
   COMMENT ON COLUMN "SALES"."CHIT_DATE" IS '전표 일자';
   COMMENT ON COLUMN "SALES"."CLIENT_CODE" IS '거래처';
   COMMENT ON COLUMN "SALES"."ACCT_NAME" IS '계정 과목';
   COMMENT ON COLUMN "SALES"."SUPPLY_PRICE" IS '공급가 액';
   COMMENT ON COLUMN "SALES"."VAT" IS '부가가치세';
   COMMENT ON COLUMN "SALES"."TOTAL_PRICE" IS '총 금액';
   COMMENT ON COLUMN "SALES"."WRITER" IS '작성자';
   COMMENT ON COLUMN "SALES"."REC_BALANCE" IS '채권 잔액';
   COMMENT ON COLUMN "SALES"."REC_STATUS" IS '채권 상태';
   COMMENT ON COLUMN "SALES"."SUMMARY" IS '적요';
   COMMENT ON COLUMN "SALES"."SALESLIP_NO" IS '판매전표 번호';
   COMMENT ON COLUMN "SALES"."INVOICE_NO" IS '세금계산서 번호';
   COMMENT ON TABLE "SALES"  IS '매출';
--------------------------------------------------------
--  DDL for Table SALESLIP_HISTORY
--------------------------------------------------------

  CREATE TABLE "SALESLIP_HISTORY" 
   (	"SALES_NO" NUMBER, 
	"WH_CODE" VARCHAR2(300), 
	"WH_NAME" VARCHAR2(100), 
	"ITEM_CODE" VARCHAR2(100), 
	"ITEM_NAME" VARCHAR2(300), 
	"QUANTITY" NUMBER(10,0), 
	"DELIVERY_PRICE" NUMBER(15,0), 
	"DELIVERY_STATUS" VARCHAR2(4) DEFAULT 'b1', 
	"DELIVERY_DATE" DATE, 
	"SALESLIP_NO" VARCHAR2(45), 
	"INCOMPLETE_QUANTITY" NUMBER(10,0)
   ) ;

   COMMENT ON COLUMN "SALESLIP_HISTORY"."SALES_NO" IS '판매 번호';
   COMMENT ON COLUMN "SALESLIP_HISTORY"."WH_CODE" IS '창고 코드';
   COMMENT ON COLUMN "SALESLIP_HISTORY"."WH_NAME" IS '창고 명';
   COMMENT ON COLUMN "SALESLIP_HISTORY"."ITEM_CODE" IS '품목 코드';
   COMMENT ON COLUMN "SALESLIP_HISTORY"."ITEM_NAME" IS '품목 명';
   COMMENT ON COLUMN "SALESLIP_HISTORY"."QUANTITY" IS '수량';
   COMMENT ON COLUMN "SALESLIP_HISTORY"."DELIVERY_PRICE" IS '출고 단가';
   COMMENT ON COLUMN "SALESLIP_HISTORY"."DELIVERY_STATUS" IS '출고 상태';
   COMMENT ON COLUMN "SALESLIP_HISTORY"."DELIVERY_DATE" IS '출하 예정일';
   COMMENT ON COLUMN "SALESLIP_HISTORY"."SALESLIP_NO" IS '판매전표 번호';
   COMMENT ON COLUMN "SALESLIP_HISTORY"."INCOMPLETE_QUANTITY" IS '미완료 수량';
   COMMENT ON TABLE "SALESLIP_HISTORY"  IS '판매 내역';
--------------------------------------------------------
--  DDL for Table SALES_CHIT
--------------------------------------------------------

  CREATE TABLE "SALES_CHIT" 
   (	"SALESLIP_NO" VARCHAR2(45), 
	"INSERT_DATE" DATE, 
	"CLIENT_CODE" VARCHAR2(100), 
	"CLIENT_NAME" VARCHAR2(300), 
	"ACC_CODE" VARCHAR2(45), 
	"DEP_BACCT" VARCHAR2(40), 
	"SUPPLY_PRICE" NUMBER(15,0), 
	"SALES_SUMMARY" VARCHAR2(1000), 
	"EMPLOYEE_NAME" VARCHAR2(300), 
	"EMPLOYEE_CODE" VARCHAR2(20), 
	"VAT" NUMBER(15,0), 
	"SLIP_STATE" VARCHAR2(10) DEFAULT 'r1'
   ) ;

   COMMENT ON COLUMN "SALES_CHIT"."SALESLIP_NO" IS '판매전표 번호';
   COMMENT ON COLUMN "SALES_CHIT"."INSERT_DATE" IS '입력 일자';
   COMMENT ON COLUMN "SALES_CHIT"."CLIENT_CODE" IS '거래처 코드';
   COMMENT ON COLUMN "SALES_CHIT"."CLIENT_NAME" IS '거래처 명';
   COMMENT ON COLUMN "SALES_CHIT"."ACC_CODE" IS '매출계정 코드';
   COMMENT ON COLUMN "SALES_CHIT"."DEP_BACCT" IS '입금 계좌';
   COMMENT ON COLUMN "SALES_CHIT"."SUPPLY_PRICE" IS '공급가 액';
   COMMENT ON COLUMN "SALES_CHIT"."SALES_SUMMARY" IS '판매 적요';
   COMMENT ON COLUMN "SALES_CHIT"."EMPLOYEE_NAME" IS '담당자 명';
   COMMENT ON COLUMN "SALES_CHIT"."EMPLOYEE_CODE" IS '사원 코드';
   COMMENT ON COLUMN "SALES_CHIT"."VAT" IS '부가세';
   COMMENT ON COLUMN "SALES_CHIT"."SLIP_STATE" IS '발행상태';
   COMMENT ON TABLE "SALES_CHIT"  IS '판매 전표';
--------------------------------------------------------
--  DDL for Table SEQ
--------------------------------------------------------

  CREATE TABLE "SEQ" 
   (	"SEQ_NAME" VARCHAR2(30), 
	"SEQ" NUMBER
   ) ;

   COMMENT ON COLUMN "SEQ"."SEQ_NAME" IS '시퀀스_이름';
   COMMENT ON COLUMN "SEQ"."SEQ" IS '시퀀스';
   COMMENT ON TABLE "SEQ"  IS '시퀀스';
--------------------------------------------------------
--  DDL for Table STOCKS
--------------------------------------------------------

  CREATE TABLE "STOCKS" 
   (	"REAL_NO" NUMBER, 
	"STOCKS_STOCKS" NUMBER, 
	"UPDATE_REASON" VARCHAR2(100), 
	"WH_CODE" VARCHAR2(300), 
	"REG_DATE" DATE, 
	"ITEM_CODE" VARCHAR2(100), 
	"LOG_NO" VARCHAR2(21), 
	"STOCKS_STOCKS_CHECK" VARCHAR2(4), 
	"EMPLOYEE_CODE" VARCHAR2(20), 
	"STOCKS_QUANTITY" NUMBER, 
	"STOCKS_ADJUST_NO" NUMBER
   ) ;

   COMMENT ON COLUMN "STOCKS"."REAL_NO" IS '입출고 번호';
   COMMENT ON COLUMN "STOCKS"."STOCKS_STOCKS" IS '재고 증감';
   COMMENT ON COLUMN "STOCKS"."UPDATE_REASON" IS '재고변동 사유';
   COMMENT ON COLUMN "STOCKS"."WH_CODE" IS '창고 코드';
   COMMENT ON COLUMN "STOCKS"."REG_DATE" IS '등록 날짜';
   COMMENT ON COLUMN "STOCKS"."ITEM_CODE" IS '품목 코드';
   COMMENT ON COLUMN "STOCKS"."LOG_NO" IS '내역 번호(구매내역,판매내역)';
   COMMENT ON COLUMN "STOCKS"."STOCKS_STOCKS_CHECK" IS '재고 증감 여부 d1:증가, d2:감소';
   COMMENT ON COLUMN "STOCKS"."EMPLOYEE_CODE" IS '재고 조정사원';
   COMMENT ON COLUMN "STOCKS"."STOCKS_QUANTITY" IS '재고 수량(조정전수량을 의미)';
   COMMENT ON COLUMN "STOCKS"."STOCKS_ADJUST_NO" IS '재고 조정 번호';
   COMMENT ON TABLE "STOCKS"  IS '재고';
--------------------------------------------------------
--  DDL for Table STOCKS_ORDER
--------------------------------------------------------

  CREATE TABLE "STOCKS_ORDER" 
   (	"DELIVERY_CODE" VARCHAR2(21), 
	"DELIVERY_DATE" DATE, 
	"EMPLOYEE_CODE" VARCHAR2(20), 
	"DELIVERY_QUANTITY" NUMBER, 
	"SALES_NO" NUMBER
   ) ;

   COMMENT ON COLUMN "STOCKS_ORDER"."DELIVERY_CODE" IS '출하 코드';
   COMMENT ON COLUMN "STOCKS_ORDER"."DELIVERY_DATE" IS '출하 예정일';
   COMMENT ON COLUMN "STOCKS_ORDER"."EMPLOYEE_CODE" IS '사원 코드';
   COMMENT ON COLUMN "STOCKS_ORDER"."DELIVERY_QUANTITY" IS '출하 수량';
   COMMENT ON COLUMN "STOCKS_ORDER"."SALES_NO" IS '판매 번호';
   COMMENT ON TABLE "STOCKS_ORDER"  IS '재고 출고내역';
--------------------------------------------------------
--  DDL for Table STOCKS_RESTOCKING
--------------------------------------------------------

  CREATE TABLE "STOCKS_RESTOCKING" 
   (	"RESTOCKING_NO" VARCHAR2(21), 
	"RESTOCKING_DATE" DATE, 
	"EMPLOYEE_CODE" VARCHAR2(20), 
	"REAL_QUANTITY" NUMBER(10,0), 
	"PUR_NO" NUMBER
   ) ;

   COMMENT ON COLUMN "STOCKS_RESTOCKING"."RESTOCKING_NO" IS '입고내역 번호';
   COMMENT ON COLUMN "STOCKS_RESTOCKING"."RESTOCKING_DATE" IS '입고 일자';
   COMMENT ON COLUMN "STOCKS_RESTOCKING"."EMPLOYEE_CODE" IS '사원 코드';
   COMMENT ON COLUMN "STOCKS_RESTOCKING"."REAL_QUANTITY" IS '실입고 수량';
   COMMENT ON COLUMN "STOCKS_RESTOCKING"."PUR_NO" IS '구매 번호';
   COMMENT ON TABLE "STOCKS_RESTOCKING"  IS '재고 입고내역';
--------------------------------------------------------
--  DDL for Table SUB_CODE
--------------------------------------------------------

  CREATE TABLE "SUB_CODE" 
   (	"SUB_NO" VARCHAR2(20), 
	"CODE_NAME" VARCHAR2(30), 
	"MAIN_NO" VARCHAR2(20)
   ) ;

   COMMENT ON COLUMN "SUB_CODE"."SUB_NO" IS '세부코드 번호';
   COMMENT ON COLUMN "SUB_CODE"."CODE_NAME" IS '코드 명';
   COMMENT ON COLUMN "SUB_CODE"."MAIN_NO" IS '주코드 번호';
   COMMENT ON TABLE "SUB_CODE"  IS '세부 코드';
--------------------------------------------------------
--  DDL for Table WAREHOUSE
--------------------------------------------------------

  CREATE TABLE "WAREHOUSE" 
   (	"WH_CODE" VARCHAR2(300), 
	"WH_PLACE" VARCHAR2(1000), 
	"WH_NAME" VARCHAR2(100), 
	"WH_TYPE" VARCHAR2(30)
   ) ;

   COMMENT ON COLUMN "WAREHOUSE"."WH_CODE" IS '창고 코드';
   COMMENT ON COLUMN "WAREHOUSE"."WH_PLACE" IS '창고 위치';
   COMMENT ON COLUMN "WAREHOUSE"."WH_NAME" IS '창고 명';
   COMMENT ON COLUMN "WAREHOUSE"."WH_TYPE" IS '창고 구분';
   COMMENT ON TABLE "WAREHOUSE"  IS '창고';
REM INSERTING into ACNT_ACCT
SET DEFINE OFF;
Insert into ACNT_ACCT (ACCT_CODE,ACCT_NAME,DEBIT_SIDE) values (10100,'현금','o1');
Insert into ACNT_ACCT (ACCT_CODE,ACCT_NAME,DEBIT_SIDE) values (25100,'외상매입금','o2');
Insert into ACNT_ACCT (ACCT_CODE,ACCT_NAME,DEBIT_SIDE) values (10300,'보통예금','o1');
Insert into ACNT_ACCT (ACCT_CODE,ACCT_NAME,DEBIT_SIDE) values (10800,'외상매출금','o1');
Insert into ACNT_ACCT (ACCT_CODE,ACCT_NAME,DEBIT_SIDE) values (12000,'미수금','o1');
Insert into ACNT_ACCT (ACCT_CODE,ACCT_NAME,DEBIT_SIDE) values (14600,'상품','o1');
Insert into ACNT_ACCT (ACCT_CODE,ACCT_NAME,DEBIT_SIDE) values (14800,'매입할인(상품)','o1');
Insert into ACNT_ACCT (ACCT_CODE,ACCT_NAME,DEBIT_SIDE) values (25200,'지급어음','o2');
Insert into ACNT_ACCT (ACCT_CODE,ACCT_NAME,DEBIT_SIDE) values (15000,'제품','o1');
Insert into ACNT_ACCT (ACCT_CODE,ACCT_NAME,DEBIT_SIDE) values (13100,'선급금','o1');
Insert into ACNT_ACCT (ACCT_CODE,ACCT_NAME,DEBIT_SIDE) values (15300,'원재료','o1');
Insert into ACNT_ACCT (ACCT_CODE,ACCT_NAME,DEBIT_SIDE) values (25300,'미지급금','o2');
Insert into ACNT_ACCT (ACCT_CODE,ACCT_NAME,DEBIT_SIDE) values (25400,'예수금','o2');
Insert into ACNT_ACCT (ACCT_CODE,ACCT_NAME,DEBIT_SIDE) values (25900,'선수금','o2');
Insert into ACNT_ACCT (ACCT_CODE,ACCT_NAME,DEBIT_SIDE) values (26000,'단기차입금','o2');
REM INSERTING into ALLOWANCE_HISTORY
SET DEFINE OFF;
Insert into ALLOWANCE_HISTORY (AWHI_NO,ALLOWANCE_PRICE,EMPLOYEE_CODE,SALARY_NUMBER,ALLOWANCE_NAME,ALLOWANCE_CHECK) values ('470',100000,'150','2024120604','식대',null);
Insert into ALLOWANCE_HISTORY (AWHI_NO,ALLOWANCE_PRICE,EMPLOYEE_CODE,SALARY_NUMBER,ALLOWANCE_NAME,ALLOWANCE_CHECK) values ('476',25000000,'175','2024120610','성과급',null);
Insert into ALLOWANCE_HISTORY (AWHI_NO,ALLOWANCE_PRICE,EMPLOYEE_CODE,SALARY_NUMBER,ALLOWANCE_NAME,ALLOWANCE_CHECK) values ('477',250000,'175','2024120610','특별수당',null);
Insert into ALLOWANCE_HISTORY (AWHI_NO,ALLOWANCE_PRICE,EMPLOYEE_CODE,SALARY_NUMBER,ALLOWANCE_NAME,ALLOWANCE_CHECK) values ('491',25000000,'175','2024120624','성과급',null);
Insert into ALLOWANCE_HISTORY (AWHI_NO,ALLOWANCE_PRICE,EMPLOYEE_CODE,SALARY_NUMBER,ALLOWANCE_NAME,ALLOWANCE_CHECK) values ('492',250000,'175','2024120624','특별수당',null);
Insert into ALLOWANCE_HISTORY (AWHI_NO,ALLOWANCE_PRICE,EMPLOYEE_CODE,SALARY_NUMBER,ALLOWANCE_NAME,ALLOWANCE_CHECK) values ('485',100000,'150','2024120618','식대',null);
Insert into ALLOWANCE_HISTORY (AWHI_NO,ALLOWANCE_PRICE,EMPLOYEE_CODE,SALARY_NUMBER,ALLOWANCE_NAME,ALLOWANCE_CHECK) values ('826',100000,'161','2024120909','식대','비과세');
Insert into ALLOWANCE_HISTORY (AWHI_NO,ALLOWANCE_PRICE,EMPLOYEE_CODE,SALARY_NUMBER,ALLOWANCE_NAME,ALLOWANCE_CHECK) values ('827',100000,'161','2024120909','성과급','과세');
Insert into ALLOWANCE_HISTORY (AWHI_NO,ALLOWANCE_PRICE,EMPLOYEE_CODE,SALARY_NUMBER,ALLOWANCE_NAME,ALLOWANCE_CHECK) values ('828',1000000,'173','2024120910','복리후생비','비과세');
Insert into ALLOWANCE_HISTORY (AWHI_NO,ALLOWANCE_PRICE,EMPLOYEE_CODE,SALARY_NUMBER,ALLOWANCE_NAME,ALLOWANCE_CHECK) values ('829',1000000,'174','2024120911','성과급','과세');
Insert into ALLOWANCE_HISTORY (AWHI_NO,ALLOWANCE_PRICE,EMPLOYEE_CODE,SALARY_NUMBER,ALLOWANCE_NAME,ALLOWANCE_CHECK) values ('830',1000000,'174','2024120911','특별수당','과세');
Insert into ALLOWANCE_HISTORY (AWHI_NO,ALLOWANCE_PRICE,EMPLOYEE_CODE,SALARY_NUMBER,ALLOWANCE_NAME,ALLOWANCE_CHECK) values ('831',1000000,'176','2024120912','복리후생비','비과세');
Insert into ALLOWANCE_HISTORY (AWHI_NO,ALLOWANCE_PRICE,EMPLOYEE_CODE,SALARY_NUMBER,ALLOWANCE_NAME,ALLOWANCE_CHECK) values ('832',1000000,'176','2024120912','특별수당','과세');
Insert into ALLOWANCE_HISTORY (AWHI_NO,ALLOWANCE_PRICE,EMPLOYEE_CODE,SALARY_NUMBER,ALLOWANCE_NAME,ALLOWANCE_CHECK) values ('833',1000000,'176','2024120912','식대','비과세');
Insert into ALLOWANCE_HISTORY (AWHI_NO,ALLOWANCE_PRICE,EMPLOYEE_CODE,SALARY_NUMBER,ALLOWANCE_NAME,ALLOWANCE_CHECK) values ('834',100000,'231','2024120914','복리후생비','비과세');
Insert into ALLOWANCE_HISTORY (AWHI_NO,ALLOWANCE_PRICE,EMPLOYEE_CODE,SALARY_NUMBER,ALLOWANCE_NAME,ALLOWANCE_CHECK) values ('835',100000,'231','2024120914','성과급','과세');
Insert into ALLOWANCE_HISTORY (AWHI_NO,ALLOWANCE_PRICE,EMPLOYEE_CODE,SALARY_NUMBER,ALLOWANCE_NAME,ALLOWANCE_CHECK) values ('836',1000,'243','2024120915','성과급','과세');
REM INSERTING into ALLOWANCE_ITEM
SET DEFINE OFF;
Insert into ALLOWANCE_ITEM (ALLOWANCE_CODE,ALLOWANCE_NAME,ALLOWANCE_CHECK) values ('A001','식대','비과세');
Insert into ALLOWANCE_ITEM (ALLOWANCE_CODE,ALLOWANCE_NAME,ALLOWANCE_CHECK) values ('A002','자차비','비과세');
Insert into ALLOWANCE_ITEM (ALLOWANCE_CODE,ALLOWANCE_NAME,ALLOWANCE_CHECK) values ('A003','성과급','과세');
Insert into ALLOWANCE_ITEM (ALLOWANCE_CODE,ALLOWANCE_NAME,ALLOWANCE_CHECK) values ('A004','가족수당','과세');
Insert into ALLOWANCE_ITEM (ALLOWANCE_CODE,ALLOWANCE_NAME,ALLOWANCE_CHECK) values ('A005','복리후생비','비과세');
Insert into ALLOWANCE_ITEM (ALLOWANCE_CODE,ALLOWANCE_NAME,ALLOWANCE_CHECK) values ('A006','특별수당','과세');
REM INSERTING into ATT_HISTORY
SET DEFINE OFF;
Insert into ATT_HISTORY (EMPLOYEE_CODE,ATTENDANCE_DATE,ATTENDANCE_TIME,LEAVE_TIME,TOTAL_WORKTIME,OVERTIME_WORKTIME,NIGHT_WORKTIME,WEEKEND_WORKTIME,ATT_CODE,ATT_HISTORY_CODE) values ('160',to_date('24/12/03','RR/MM/DD'),null,null,null,null,null,0,'AT003','153');
Insert into ATT_HISTORY (EMPLOYEE_CODE,ATTENDANCE_DATE,ATTENDANCE_TIME,LEAVE_TIME,TOTAL_WORKTIME,OVERTIME_WORKTIME,NIGHT_WORKTIME,WEEKEND_WORKTIME,ATT_CODE,ATT_HISTORY_CODE) values ('160',to_date('24/12/04','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),840,182,2,0,'AT001','154');
Insert into ATT_HISTORY (EMPLOYEE_CODE,ATTENDANCE_DATE,ATTENDANCE_TIME,LEAVE_TIME,TOTAL_WORKTIME,OVERTIME_WORKTIME,NIGHT_WORKTIME,WEEKEND_WORKTIME,ATT_CODE,ATT_HISTORY_CODE) values ('159',to_date('24/12/03','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),901,244,64,0,'AT002','155');
Insert into ATT_HISTORY (EMPLOYEE_CODE,ATTENDANCE_DATE,ATTENDANCE_TIME,LEAVE_TIME,TOTAL_WORKTIME,OVERTIME_WORKTIME,NIGHT_WORKTIME,WEEKEND_WORKTIME,ATT_CODE,ATT_HISTORY_CODE) values ('160',to_date('24/11/04','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),60,0,0,0,'AT002','156');
Insert into ATT_HISTORY (EMPLOYEE_CODE,ATTENDANCE_DATE,ATTENDANCE_TIME,LEAVE_TIME,TOTAL_WORKTIME,OVERTIME_WORKTIME,NIGHT_WORKTIME,WEEKEND_WORKTIME,ATT_CODE,ATT_HISTORY_CODE) values ('160',to_date('24/11/06','RR/MM/DD'),null,null,null,null,null,0,'AT004','157');
Insert into ATT_HISTORY (EMPLOYEE_CODE,ATTENDANCE_DATE,ATTENDANCE_TIME,LEAVE_TIME,TOTAL_WORKTIME,OVERTIME_WORKTIME,NIGHT_WORKTIME,WEEKEND_WORKTIME,ATT_CODE,ATT_HISTORY_CODE) values ('160',to_date('24/11/07','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),1080,247,67,0,'AT002','158');
Insert into ATT_HISTORY (EMPLOYEE_CODE,ATTENDANCE_DATE,ATTENDANCE_TIME,LEAVE_TIME,TOTAL_WORKTIME,OVERTIME_WORKTIME,NIGHT_WORKTIME,WEEKEND_WORKTIME,ATT_CODE,ATT_HISTORY_CODE) values ('159',to_date('24/11/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),559,0,0,0,'001','159');
Insert into ATT_HISTORY (EMPLOYEE_CODE,ATTENDANCE_DATE,ATTENDANCE_TIME,LEAVE_TIME,TOTAL_WORKTIME,OVERTIME_WORKTIME,NIGHT_WORKTIME,WEEKEND_WORKTIME,ATT_CODE,ATT_HISTORY_CODE) values ('159',to_date('24/11/04','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),558,0,0,0,'001','160');
Insert into ATT_HISTORY (EMPLOYEE_CODE,ATTENDANCE_DATE,ATTENDANCE_TIME,LEAVE_TIME,TOTAL_WORKTIME,OVERTIME_WORKTIME,NIGHT_WORKTIME,WEEKEND_WORKTIME,ATT_CODE,ATT_HISTORY_CODE) values ('159',to_date('24/11/05','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),557,0,0,0,'001','161');
Insert into ATT_HISTORY (EMPLOYEE_CODE,ATTENDANCE_DATE,ATTENDANCE_TIME,LEAVE_TIME,TOTAL_WORKTIME,OVERTIME_WORKTIME,NIGHT_WORKTIME,WEEKEND_WORKTIME,ATT_CODE,ATT_HISTORY_CODE) values ('159',to_date('24/11/06','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),556,0,0,0,'001','162');
Insert into ATT_HISTORY (EMPLOYEE_CODE,ATTENDANCE_DATE,ATTENDANCE_TIME,LEAVE_TIME,TOTAL_WORKTIME,OVERTIME_WORKTIME,NIGHT_WORKTIME,WEEKEND_WORKTIME,ATT_CODE,ATT_HISTORY_CODE) values ('159',to_date('24/11/07','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),555,0,0,0,'001','163');
Insert into ATT_HISTORY (EMPLOYEE_CODE,ATTENDANCE_DATE,ATTENDANCE_TIME,LEAVE_TIME,TOTAL_WORKTIME,OVERTIME_WORKTIME,NIGHT_WORKTIME,WEEKEND_WORKTIME,ATT_CODE,ATT_HISTORY_CODE) values ('159',to_date('24/11/08','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),554,0,0,0,'001','164');
Insert into ATT_HISTORY (EMPLOYEE_CODE,ATTENDANCE_DATE,ATTENDANCE_TIME,LEAVE_TIME,TOTAL_WORKTIME,OVERTIME_WORKTIME,NIGHT_WORKTIME,WEEKEND_WORKTIME,ATT_CODE,ATT_HISTORY_CODE) values ('159',to_date('24/11/11','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),553,0,0,0,'001','165');
Insert into ATT_HISTORY (EMPLOYEE_CODE,ATTENDANCE_DATE,ATTENDANCE_TIME,LEAVE_TIME,TOTAL_WORKTIME,OVERTIME_WORKTIME,NIGHT_WORKTIME,WEEKEND_WORKTIME,ATT_CODE,ATT_HISTORY_CODE) values ('159',to_date('24/11/12','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),552,0,0,0,'001','166');
Insert into ATT_HISTORY (EMPLOYEE_CODE,ATTENDANCE_DATE,ATTENDANCE_TIME,LEAVE_TIME,TOTAL_WORKTIME,OVERTIME_WORKTIME,NIGHT_WORKTIME,WEEKEND_WORKTIME,ATT_CODE,ATT_HISTORY_CODE) values ('159',to_date('24/11/13','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),551,0,0,0,'001','167');
Insert into ATT_HISTORY (EMPLOYEE_CODE,ATTENDANCE_DATE,ATTENDANCE_TIME,LEAVE_TIME,TOTAL_WORKTIME,OVERTIME_WORKTIME,NIGHT_WORKTIME,WEEKEND_WORKTIME,ATT_CODE,ATT_HISTORY_CODE) values ('159',to_date('24/11/14','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),550,0,0,0,'001','168');
Insert into ATT_HISTORY (EMPLOYEE_CODE,ATTENDANCE_DATE,ATTENDANCE_TIME,LEAVE_TIME,TOTAL_WORKTIME,OVERTIME_WORKTIME,NIGHT_WORKTIME,WEEKEND_WORKTIME,ATT_CODE,ATT_HISTORY_CODE) values ('159',to_date('24/11/15','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),549,0,0,0,'001','169');
Insert into ATT_HISTORY (EMPLOYEE_CODE,ATTENDANCE_DATE,ATTENDANCE_TIME,LEAVE_TIME,TOTAL_WORKTIME,OVERTIME_WORKTIME,NIGHT_WORKTIME,WEEKEND_WORKTIME,ATT_CODE,ATT_HISTORY_CODE) values ('159',to_date('24/11/18','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),549,0,0,0,'001','170');
Insert into ATT_HISTORY (EMPLOYEE_CODE,ATTENDANCE_DATE,ATTENDANCE_TIME,LEAVE_TIME,TOTAL_WORKTIME,OVERTIME_WORKTIME,NIGHT_WORKTIME,WEEKEND_WORKTIME,ATT_CODE,ATT_HISTORY_CODE) values ('159',to_date('24/11/19','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),549,0,0,0,'001','171');
Insert into ATT_HISTORY (EMPLOYEE_CODE,ATTENDANCE_DATE,ATTENDANCE_TIME,LEAVE_TIME,TOTAL_WORKTIME,OVERTIME_WORKTIME,NIGHT_WORKTIME,WEEKEND_WORKTIME,ATT_CODE,ATT_HISTORY_CODE) values ('159',to_date('24/11/20','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),549,0,0,0,'001','172');
Insert into ATT_HISTORY (EMPLOYEE_CODE,ATTENDANCE_DATE,ATTENDANCE_TIME,LEAVE_TIME,TOTAL_WORKTIME,OVERTIME_WORKTIME,NIGHT_WORKTIME,WEEKEND_WORKTIME,ATT_CODE,ATT_HISTORY_CODE) values ('159',to_date('24/11/21','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),549,0,0,0,'001','173');
Insert into ATT_HISTORY (EMPLOYEE_CODE,ATTENDANCE_DATE,ATTENDANCE_TIME,LEAVE_TIME,TOTAL_WORKTIME,OVERTIME_WORKTIME,NIGHT_WORKTIME,WEEKEND_WORKTIME,ATT_CODE,ATT_HISTORY_CODE) values ('159',to_date('24/11/22','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),549,0,0,0,'001','174');
Insert into ATT_HISTORY (EMPLOYEE_CODE,ATTENDANCE_DATE,ATTENDANCE_TIME,LEAVE_TIME,TOTAL_WORKTIME,OVERTIME_WORKTIME,NIGHT_WORKTIME,WEEKEND_WORKTIME,ATT_CODE,ATT_HISTORY_CODE) values ('159',to_date('24/11/25','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),549,0,0,0,'001','175');
Insert into ATT_HISTORY (EMPLOYEE_CODE,ATTENDANCE_DATE,ATTENDANCE_TIME,LEAVE_TIME,TOTAL_WORKTIME,OVERTIME_WORKTIME,NIGHT_WORKTIME,WEEKEND_WORKTIME,ATT_CODE,ATT_HISTORY_CODE) values ('159',to_date('24/11/26','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),549,0,0,0,'001','176');
Insert into ATT_HISTORY (EMPLOYEE_CODE,ATTENDANCE_DATE,ATTENDANCE_TIME,LEAVE_TIME,TOTAL_WORKTIME,OVERTIME_WORKTIME,NIGHT_WORKTIME,WEEKEND_WORKTIME,ATT_CODE,ATT_HISTORY_CODE) values ('159',to_date('24/11/27','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),549,0,0,0,'001','177');
Insert into ATT_HISTORY (EMPLOYEE_CODE,ATTENDANCE_DATE,ATTENDANCE_TIME,LEAVE_TIME,TOTAL_WORKTIME,OVERTIME_WORKTIME,NIGHT_WORKTIME,WEEKEND_WORKTIME,ATT_CODE,ATT_HISTORY_CODE) values ('159',to_date('24/11/28','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),549,0,0,0,'001','178');
Insert into ATT_HISTORY (EMPLOYEE_CODE,ATTENDANCE_DATE,ATTENDANCE_TIME,LEAVE_TIME,TOTAL_WORKTIME,OVERTIME_WORKTIME,NIGHT_WORKTIME,WEEKEND_WORKTIME,ATT_CODE,ATT_HISTORY_CODE) values ('159',to_date('24/11/29','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),549,0,0,0,'001','179');
Insert into ATT_HISTORY (EMPLOYEE_CODE,ATTENDANCE_DATE,ATTENDANCE_TIME,LEAVE_TIME,TOTAL_WORKTIME,OVERTIME_WORKTIME,NIGHT_WORKTIME,WEEKEND_WORKTIME,ATT_CODE,ATT_HISTORY_CODE) values ('159',to_date('24/11/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),559,0,0,0,'001','180');
Insert into ATT_HISTORY (EMPLOYEE_CODE,ATTENDANCE_DATE,ATTENDANCE_TIME,LEAVE_TIME,TOTAL_WORKTIME,OVERTIME_WORKTIME,NIGHT_WORKTIME,WEEKEND_WORKTIME,ATT_CODE,ATT_HISTORY_CODE) values ('159',to_date('24/11/04','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),602,0,0,0,'AT001','181');
Insert into ATT_HISTORY (EMPLOYEE_CODE,ATTENDANCE_DATE,ATTENDANCE_TIME,LEAVE_TIME,TOTAL_WORKTIME,OVERTIME_WORKTIME,NIGHT_WORKTIME,WEEKEND_WORKTIME,ATT_CODE,ATT_HISTORY_CODE) values ('159',to_date('24/11/05','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),602,0,0,0,'AT001','182');
Insert into ATT_HISTORY (EMPLOYEE_CODE,ATTENDANCE_DATE,ATTENDANCE_TIME,LEAVE_TIME,TOTAL_WORKTIME,OVERTIME_WORKTIME,NIGHT_WORKTIME,WEEKEND_WORKTIME,ATT_CODE,ATT_HISTORY_CODE) values ('159',to_date('24/11/06','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),601,0,0,0,'AT001','183');
Insert into ATT_HISTORY (EMPLOYEE_CODE,ATTENDANCE_DATE,ATTENDANCE_TIME,LEAVE_TIME,TOTAL_WORKTIME,OVERTIME_WORKTIME,NIGHT_WORKTIME,WEEKEND_WORKTIME,ATT_CODE,ATT_HISTORY_CODE) values ('159',to_date('24/11/07','RR/MM/DD'),null,null,null,null,null,0,'AT003','184');
Insert into ATT_HISTORY (EMPLOYEE_CODE,ATTENDANCE_DATE,ATTENDANCE_TIME,LEAVE_TIME,TOTAL_WORKTIME,OVERTIME_WORKTIME,NIGHT_WORKTIME,WEEKEND_WORKTIME,ATT_CODE,ATT_HISTORY_CODE) values ('159',to_date('24/11/08','RR/MM/DD'),null,null,null,null,null,0,'AT003','185');
Insert into ATT_HISTORY (EMPLOYEE_CODE,ATTENDANCE_DATE,ATTENDANCE_TIME,LEAVE_TIME,TOTAL_WORKTIME,OVERTIME_WORKTIME,NIGHT_WORKTIME,WEEKEND_WORKTIME,ATT_CODE,ATT_HISTORY_CODE) values ('159',to_date('24/11/11','RR/MM/DD'),null,null,null,null,null,0,'AT003','186');
Insert into ATT_HISTORY (EMPLOYEE_CODE,ATTENDANCE_DATE,ATTENDANCE_TIME,LEAVE_TIME,TOTAL_WORKTIME,OVERTIME_WORKTIME,NIGHT_WORKTIME,WEEKEND_WORKTIME,ATT_CODE,ATT_HISTORY_CODE) values ('159',to_date('24/11/12','RR/MM/DD'),null,null,null,null,null,0,'AT005','187');
Insert into ATT_HISTORY (EMPLOYEE_CODE,ATTENDANCE_DATE,ATTENDANCE_TIME,LEAVE_TIME,TOTAL_WORKTIME,OVERTIME_WORKTIME,NIGHT_WORKTIME,WEEKEND_WORKTIME,ATT_CODE,ATT_HISTORY_CODE) values ('159',to_date('24/11/13','RR/MM/DD'),null,null,null,null,null,0,'AT004','188');
Insert into ATT_HISTORY (EMPLOYEE_CODE,ATTENDANCE_DATE,ATTENDANCE_TIME,LEAVE_TIME,TOTAL_WORKTIME,OVERTIME_WORKTIME,NIGHT_WORKTIME,WEEKEND_WORKTIME,ATT_CODE,ATT_HISTORY_CODE) values ('159',to_date('24/11/14','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),180,0,0,0,'AT006','189');
Insert into ATT_HISTORY (EMPLOYEE_CODE,ATTENDANCE_DATE,ATTENDANCE_TIME,LEAVE_TIME,TOTAL_WORKTIME,OVERTIME_WORKTIME,NIGHT_WORKTIME,WEEKEND_WORKTIME,ATT_CODE,ATT_HISTORY_CODE) values ('159',to_date('24/11/15','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),661,0,0,0,'AT001','190');
Insert into ATT_HISTORY (EMPLOYEE_CODE,ATTENDANCE_DATE,ATTENDANCE_TIME,LEAVE_TIME,TOTAL_WORKTIME,OVERTIME_WORKTIME,NIGHT_WORKTIME,WEEKEND_WORKTIME,ATT_CODE,ATT_HISTORY_CODE) values ('159',to_date('24/11/18','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),541,0,0,0,'AT001','191');
Insert into ATT_HISTORY (EMPLOYEE_CODE,ATTENDANCE_DATE,ATTENDANCE_TIME,LEAVE_TIME,TOTAL_WORKTIME,OVERTIME_WORKTIME,NIGHT_WORKTIME,WEEKEND_WORKTIME,ATT_CODE,ATT_HISTORY_CODE) values ('159',to_date('70/01/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),559,0,0,0,'AT001','192');
Insert into ATT_HISTORY (EMPLOYEE_CODE,ATTENDANCE_DATE,ATTENDANCE_TIME,LEAVE_TIME,TOTAL_WORKTIME,OVERTIME_WORKTIME,NIGHT_WORKTIME,WEEKEND_WORKTIME,ATT_CODE,ATT_HISTORY_CODE) values ('159',to_date('70/01/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),559,0,0,0,'AT001','193');
Insert into ATT_HISTORY (EMPLOYEE_CODE,ATTENDANCE_DATE,ATTENDANCE_TIME,LEAVE_TIME,TOTAL_WORKTIME,OVERTIME_WORKTIME,NIGHT_WORKTIME,WEEKEND_WORKTIME,ATT_CODE,ATT_HISTORY_CODE) values ('159',to_date('70/01/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),559,0,0,0,'AT001','194');
Insert into ATT_HISTORY (EMPLOYEE_CODE,ATTENDANCE_DATE,ATTENDANCE_TIME,LEAVE_TIME,TOTAL_WORKTIME,OVERTIME_WORKTIME,NIGHT_WORKTIME,WEEKEND_WORKTIME,ATT_CODE,ATT_HISTORY_CODE) values ('159',to_date('70/01/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),559,0,0,0,'AT001','195');
Insert into ATT_HISTORY (EMPLOYEE_CODE,ATTENDANCE_DATE,ATTENDANCE_TIME,LEAVE_TIME,TOTAL_WORKTIME,OVERTIME_WORKTIME,NIGHT_WORKTIME,WEEKEND_WORKTIME,ATT_CODE,ATT_HISTORY_CODE) values ('159',to_date('70/01/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),559,0,0,0,'AT001','196');
Insert into ATT_HISTORY (EMPLOYEE_CODE,ATTENDANCE_DATE,ATTENDANCE_TIME,LEAVE_TIME,TOTAL_WORKTIME,OVERTIME_WORKTIME,NIGHT_WORKTIME,WEEKEND_WORKTIME,ATT_CODE,ATT_HISTORY_CODE) values ('159',to_date('70/01/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),559,0,0,0,'AT001','197');
Insert into ATT_HISTORY (EMPLOYEE_CODE,ATTENDANCE_DATE,ATTENDANCE_TIME,LEAVE_TIME,TOTAL_WORKTIME,OVERTIME_WORKTIME,NIGHT_WORKTIME,WEEKEND_WORKTIME,ATT_CODE,ATT_HISTORY_CODE) values ('159',to_date('70/01/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),559,0,0,0,'AT001','198');
Insert into ATT_HISTORY (EMPLOYEE_CODE,ATTENDANCE_DATE,ATTENDANCE_TIME,LEAVE_TIME,TOTAL_WORKTIME,OVERTIME_WORKTIME,NIGHT_WORKTIME,WEEKEND_WORKTIME,ATT_CODE,ATT_HISTORY_CODE) values ('159',to_date('70/01/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),559,0,0,0,'AT001','199');
Insert into ATT_HISTORY (EMPLOYEE_CODE,ATTENDANCE_DATE,ATTENDANCE_TIME,LEAVE_TIME,TOTAL_WORKTIME,OVERTIME_WORKTIME,NIGHT_WORKTIME,WEEKEND_WORKTIME,ATT_CODE,ATT_HISTORY_CODE) values ('159',to_date('70/01/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),559,0,0,0,'AT001','200');
Insert into ATT_HISTORY (EMPLOYEE_CODE,ATTENDANCE_DATE,ATTENDANCE_TIME,LEAVE_TIME,TOTAL_WORKTIME,OVERTIME_WORKTIME,NIGHT_WORKTIME,WEEKEND_WORKTIME,ATT_CODE,ATT_HISTORY_CODE) values ('159',to_date('70/01/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),559,0,0,0,'AT001','201');
Insert into ATT_HISTORY (EMPLOYEE_CODE,ATTENDANCE_DATE,ATTENDANCE_TIME,LEAVE_TIME,TOTAL_WORKTIME,OVERTIME_WORKTIME,NIGHT_WORKTIME,WEEKEND_WORKTIME,ATT_CODE,ATT_HISTORY_CODE) values ('159',to_date('70/01/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),559,0,0,0,'AT001','202');
Insert into ATT_HISTORY (EMPLOYEE_CODE,ATTENDANCE_DATE,ATTENDANCE_TIME,LEAVE_TIME,TOTAL_WORKTIME,OVERTIME_WORKTIME,NIGHT_WORKTIME,WEEKEND_WORKTIME,ATT_CODE,ATT_HISTORY_CODE) values ('159',to_date('70/01/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),560,0,0,0,'AT001','203');
Insert into ATT_HISTORY (EMPLOYEE_CODE,ATTENDANCE_DATE,ATTENDANCE_TIME,LEAVE_TIME,TOTAL_WORKTIME,OVERTIME_WORKTIME,NIGHT_WORKTIME,WEEKEND_WORKTIME,ATT_CODE,ATT_HISTORY_CODE) values ('159',to_date('70/01/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),561,0,0,0,'AT001','204');
Insert into ATT_HISTORY (EMPLOYEE_CODE,ATTENDANCE_DATE,ATTENDANCE_TIME,LEAVE_TIME,TOTAL_WORKTIME,OVERTIME_WORKTIME,NIGHT_WORKTIME,WEEKEND_WORKTIME,ATT_CODE,ATT_HISTORY_CODE) values ('159',to_date('70/01/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),562,0,0,0,'AT001','205');
Insert into ATT_HISTORY (EMPLOYEE_CODE,ATTENDANCE_DATE,ATTENDANCE_TIME,LEAVE_TIME,TOTAL_WORKTIME,OVERTIME_WORKTIME,NIGHT_WORKTIME,WEEKEND_WORKTIME,ATT_CODE,ATT_HISTORY_CODE) values ('159',to_date('70/01/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),563,0,0,0,'AT001','206');
Insert into ATT_HISTORY (EMPLOYEE_CODE,ATTENDANCE_DATE,ATTENDANCE_TIME,LEAVE_TIME,TOTAL_WORKTIME,OVERTIME_WORKTIME,NIGHT_WORKTIME,WEEKEND_WORKTIME,ATT_CODE,ATT_HISTORY_CODE) values ('159',to_date('70/01/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),564,0,0,0,'AT001','207');
Insert into ATT_HISTORY (EMPLOYEE_CODE,ATTENDANCE_DATE,ATTENDANCE_TIME,LEAVE_TIME,TOTAL_WORKTIME,OVERTIME_WORKTIME,NIGHT_WORKTIME,WEEKEND_WORKTIME,ATT_CODE,ATT_HISTORY_CODE) values ('159',to_date('70/01/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),565,0,0,0,'AT001','208');
Insert into ATT_HISTORY (EMPLOYEE_CODE,ATTENDANCE_DATE,ATTENDANCE_TIME,LEAVE_TIME,TOTAL_WORKTIME,OVERTIME_WORKTIME,NIGHT_WORKTIME,WEEKEND_WORKTIME,ATT_CODE,ATT_HISTORY_CODE) values ('159',to_date('70/01/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),566,0,0,0,'AT001','209');
Insert into ATT_HISTORY (EMPLOYEE_CODE,ATTENDANCE_DATE,ATTENDANCE_TIME,LEAVE_TIME,TOTAL_WORKTIME,OVERTIME_WORKTIME,NIGHT_WORKTIME,WEEKEND_WORKTIME,ATT_CODE,ATT_HISTORY_CODE) values ('159',to_date('70/01/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),567,0,0,0,'AT001','210');
Insert into ATT_HISTORY (EMPLOYEE_CODE,ATTENDANCE_DATE,ATTENDANCE_TIME,LEAVE_TIME,TOTAL_WORKTIME,OVERTIME_WORKTIME,NIGHT_WORKTIME,WEEKEND_WORKTIME,ATT_CODE,ATT_HISTORY_CODE) values ('159',to_date('70/01/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),568,0,0,0,'AT001','211');
Insert into ATT_HISTORY (EMPLOYEE_CODE,ATTENDANCE_DATE,ATTENDANCE_TIME,LEAVE_TIME,TOTAL_WORKTIME,OVERTIME_WORKTIME,NIGHT_WORKTIME,WEEKEND_WORKTIME,ATT_CODE,ATT_HISTORY_CODE) values ('159',to_date('70/01/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),569,0,0,0,'AT001','212');
Insert into ATT_HISTORY (EMPLOYEE_CODE,ATTENDANCE_DATE,ATTENDANCE_TIME,LEAVE_TIME,TOTAL_WORKTIME,OVERTIME_WORKTIME,NIGHT_WORKTIME,WEEKEND_WORKTIME,ATT_CODE,ATT_HISTORY_CODE) values ('159',to_date('70/01/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),559,0,0,0,'AT001','213');
Insert into ATT_HISTORY (EMPLOYEE_CODE,ATTENDANCE_DATE,ATTENDANCE_TIME,LEAVE_TIME,TOTAL_WORKTIME,OVERTIME_WORKTIME,NIGHT_WORKTIME,WEEKEND_WORKTIME,ATT_CODE,ATT_HISTORY_CODE) values ('159',to_date('70/01/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),559,0,0,0,'AT001','214');
Insert into ATT_HISTORY (EMPLOYEE_CODE,ATTENDANCE_DATE,ATTENDANCE_TIME,LEAVE_TIME,TOTAL_WORKTIME,OVERTIME_WORKTIME,NIGHT_WORKTIME,WEEKEND_WORKTIME,ATT_CODE,ATT_HISTORY_CODE) values ('159',to_date('70/01/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),559,0,0,0,'AT001','215');
Insert into ATT_HISTORY (EMPLOYEE_CODE,ATTENDANCE_DATE,ATTENDANCE_TIME,LEAVE_TIME,TOTAL_WORKTIME,OVERTIME_WORKTIME,NIGHT_WORKTIME,WEEKEND_WORKTIME,ATT_CODE,ATT_HISTORY_CODE) values ('159',to_date('70/01/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),559,0,0,0,'AT001','216');
Insert into ATT_HISTORY (EMPLOYEE_CODE,ATTENDANCE_DATE,ATTENDANCE_TIME,LEAVE_TIME,TOTAL_WORKTIME,OVERTIME_WORKTIME,NIGHT_WORKTIME,WEEKEND_WORKTIME,ATT_CODE,ATT_HISTORY_CODE) values ('159',to_date('70/01/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),559,0,0,0,'AT001','217');
Insert into ATT_HISTORY (EMPLOYEE_CODE,ATTENDANCE_DATE,ATTENDANCE_TIME,LEAVE_TIME,TOTAL_WORKTIME,OVERTIME_WORKTIME,NIGHT_WORKTIME,WEEKEND_WORKTIME,ATT_CODE,ATT_HISTORY_CODE) values ('159',to_date('70/01/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),559,0,0,0,'AT001','218');
Insert into ATT_HISTORY (EMPLOYEE_CODE,ATTENDANCE_DATE,ATTENDANCE_TIME,LEAVE_TIME,TOTAL_WORKTIME,OVERTIME_WORKTIME,NIGHT_WORKTIME,WEEKEND_WORKTIME,ATT_CODE,ATT_HISTORY_CODE) values ('159',to_date('70/01/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),559,0,0,0,'AT001','219');
Insert into ATT_HISTORY (EMPLOYEE_CODE,ATTENDANCE_DATE,ATTENDANCE_TIME,LEAVE_TIME,TOTAL_WORKTIME,OVERTIME_WORKTIME,NIGHT_WORKTIME,WEEKEND_WORKTIME,ATT_CODE,ATT_HISTORY_CODE) values ('159',to_date('70/01/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),559,0,0,0,'AT001','220');
Insert into ATT_HISTORY (EMPLOYEE_CODE,ATTENDANCE_DATE,ATTENDANCE_TIME,LEAVE_TIME,TOTAL_WORKTIME,OVERTIME_WORKTIME,NIGHT_WORKTIME,WEEKEND_WORKTIME,ATT_CODE,ATT_HISTORY_CODE) values ('159',to_date('70/01/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),559,0,0,0,'AT001','221');
Insert into ATT_HISTORY (EMPLOYEE_CODE,ATTENDANCE_DATE,ATTENDANCE_TIME,LEAVE_TIME,TOTAL_WORKTIME,OVERTIME_WORKTIME,NIGHT_WORKTIME,WEEKEND_WORKTIME,ATT_CODE,ATT_HISTORY_CODE) values ('159',to_date('70/01/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),559,0,0,0,'AT001','222');
Insert into ATT_HISTORY (EMPLOYEE_CODE,ATTENDANCE_DATE,ATTENDANCE_TIME,LEAVE_TIME,TOTAL_WORKTIME,OVERTIME_WORKTIME,NIGHT_WORKTIME,WEEKEND_WORKTIME,ATT_CODE,ATT_HISTORY_CODE) values ('159',to_date('70/01/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),559,0,0,0,'AT001','223');
Insert into ATT_HISTORY (EMPLOYEE_CODE,ATTENDANCE_DATE,ATTENDANCE_TIME,LEAVE_TIME,TOTAL_WORKTIME,OVERTIME_WORKTIME,NIGHT_WORKTIME,WEEKEND_WORKTIME,ATT_CODE,ATT_HISTORY_CODE) values ('159',to_date('70/01/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),560,0,0,0,'AT001','224');
Insert into ATT_HISTORY (EMPLOYEE_CODE,ATTENDANCE_DATE,ATTENDANCE_TIME,LEAVE_TIME,TOTAL_WORKTIME,OVERTIME_WORKTIME,NIGHT_WORKTIME,WEEKEND_WORKTIME,ATT_CODE,ATT_HISTORY_CODE) values ('159',to_date('70/01/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),561,0,0,0,'AT001','225');
Insert into ATT_HISTORY (EMPLOYEE_CODE,ATTENDANCE_DATE,ATTENDANCE_TIME,LEAVE_TIME,TOTAL_WORKTIME,OVERTIME_WORKTIME,NIGHT_WORKTIME,WEEKEND_WORKTIME,ATT_CODE,ATT_HISTORY_CODE) values ('159',to_date('70/01/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),562,0,0,0,'AT001','226');
Insert into ATT_HISTORY (EMPLOYEE_CODE,ATTENDANCE_DATE,ATTENDANCE_TIME,LEAVE_TIME,TOTAL_WORKTIME,OVERTIME_WORKTIME,NIGHT_WORKTIME,WEEKEND_WORKTIME,ATT_CODE,ATT_HISTORY_CODE) values ('159',to_date('70/01/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),563,0,0,0,'AT001','227');
Insert into ATT_HISTORY (EMPLOYEE_CODE,ATTENDANCE_DATE,ATTENDANCE_TIME,LEAVE_TIME,TOTAL_WORKTIME,OVERTIME_WORKTIME,NIGHT_WORKTIME,WEEKEND_WORKTIME,ATT_CODE,ATT_HISTORY_CODE) values ('159',to_date('70/01/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),564,0,0,0,'AT001','228');
Insert into ATT_HISTORY (EMPLOYEE_CODE,ATTENDANCE_DATE,ATTENDANCE_TIME,LEAVE_TIME,TOTAL_WORKTIME,OVERTIME_WORKTIME,NIGHT_WORKTIME,WEEKEND_WORKTIME,ATT_CODE,ATT_HISTORY_CODE) values ('159',to_date('70/01/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),565,0,0,0,'AT001','229');
Insert into ATT_HISTORY (EMPLOYEE_CODE,ATTENDANCE_DATE,ATTENDANCE_TIME,LEAVE_TIME,TOTAL_WORKTIME,OVERTIME_WORKTIME,NIGHT_WORKTIME,WEEKEND_WORKTIME,ATT_CODE,ATT_HISTORY_CODE) values ('159',to_date('70/01/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),566,0,0,0,'AT001','230');
Insert into ATT_HISTORY (EMPLOYEE_CODE,ATTENDANCE_DATE,ATTENDANCE_TIME,LEAVE_TIME,TOTAL_WORKTIME,OVERTIME_WORKTIME,NIGHT_WORKTIME,WEEKEND_WORKTIME,ATT_CODE,ATT_HISTORY_CODE) values ('159',to_date('70/01/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),567,0,0,0,'AT001','231');
Insert into ATT_HISTORY (EMPLOYEE_CODE,ATTENDANCE_DATE,ATTENDANCE_TIME,LEAVE_TIME,TOTAL_WORKTIME,OVERTIME_WORKTIME,NIGHT_WORKTIME,WEEKEND_WORKTIME,ATT_CODE,ATT_HISTORY_CODE) values ('159',to_date('70/01/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),568,0,0,0,'AT001','232');
Insert into ATT_HISTORY (EMPLOYEE_CODE,ATTENDANCE_DATE,ATTENDANCE_TIME,LEAVE_TIME,TOTAL_WORKTIME,OVERTIME_WORKTIME,NIGHT_WORKTIME,WEEKEND_WORKTIME,ATT_CODE,ATT_HISTORY_CODE) values ('159',to_date('70/01/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),569,0,0,0,'AT001','233');
Insert into ATT_HISTORY (EMPLOYEE_CODE,ATTENDANCE_DATE,ATTENDANCE_TIME,LEAVE_TIME,TOTAL_WORKTIME,OVERTIME_WORKTIME,NIGHT_WORKTIME,WEEKEND_WORKTIME,ATT_CODE,ATT_HISTORY_CODE) values ('159',to_date('24/12/02','RR/MM/DD'),null,null,null,null,null,0,'AT003','234');
Insert into ATT_HISTORY (EMPLOYEE_CODE,ATTENDANCE_DATE,ATTENDANCE_TIME,LEAVE_TIME,TOTAL_WORKTIME,OVERTIME_WORKTIME,NIGHT_WORKTIME,WEEKEND_WORKTIME,ATT_CODE,ATT_HISTORY_CODE) values ('159',to_date('24/12/03','RR/MM/DD'),null,null,null,null,null,0,'AT003','235');
Insert into ATT_HISTORY (EMPLOYEE_CODE,ATTENDANCE_DATE,ATTENDANCE_TIME,LEAVE_TIME,TOTAL_WORKTIME,OVERTIME_WORKTIME,NIGHT_WORKTIME,WEEKEND_WORKTIME,ATT_CODE,ATT_HISTORY_CODE) values ('159',to_date('24/12/05','RR/MM/DD'),null,null,null,null,null,0,'AT003','236');
Insert into ATT_HISTORY (EMPLOYEE_CODE,ATTENDANCE_DATE,ATTENDANCE_TIME,LEAVE_TIME,TOTAL_WORKTIME,OVERTIME_WORKTIME,NIGHT_WORKTIME,WEEKEND_WORKTIME,ATT_CODE,ATT_HISTORY_CODE) values ('159',to_date('24/12/06','RR/MM/DD'),null,null,null,null,null,0,'AT003','237');
Insert into ATT_HISTORY (EMPLOYEE_CODE,ATTENDANCE_DATE,ATTENDANCE_TIME,LEAVE_TIME,TOTAL_WORKTIME,OVERTIME_WORKTIME,NIGHT_WORKTIME,WEEKEND_WORKTIME,ATT_CODE,ATT_HISTORY_CODE) values ('159',to_date('24/12/09','RR/MM/DD'),null,null,null,null,null,0,'AT003','238');
Insert into ATT_HISTORY (EMPLOYEE_CODE,ATTENDANCE_DATE,ATTENDANCE_TIME,LEAVE_TIME,TOTAL_WORKTIME,OVERTIME_WORKTIME,NIGHT_WORKTIME,WEEKEND_WORKTIME,ATT_CODE,ATT_HISTORY_CODE) values ('159',to_date('24/12/10','RR/MM/DD'),null,null,null,null,null,0,'AT003','239');
Insert into ATT_HISTORY (EMPLOYEE_CODE,ATTENDANCE_DATE,ATTENDANCE_TIME,LEAVE_TIME,TOTAL_WORKTIME,OVERTIME_WORKTIME,NIGHT_WORKTIME,WEEKEND_WORKTIME,ATT_CODE,ATT_HISTORY_CODE) values ('159',to_date('24/12/11','RR/MM/DD'),null,null,null,null,null,0,'AT003','240');
Insert into ATT_HISTORY (EMPLOYEE_CODE,ATTENDANCE_DATE,ATTENDANCE_TIME,LEAVE_TIME,TOTAL_WORKTIME,OVERTIME_WORKTIME,NIGHT_WORKTIME,WEEKEND_WORKTIME,ATT_CODE,ATT_HISTORY_CODE) values ('159',to_date('24/12/12','RR/MM/DD'),null,null,null,null,null,0,'AT003','241');
Insert into ATT_HISTORY (EMPLOYEE_CODE,ATTENDANCE_DATE,ATTENDANCE_TIME,LEAVE_TIME,TOTAL_WORKTIME,OVERTIME_WORKTIME,NIGHT_WORKTIME,WEEKEND_WORKTIME,ATT_CODE,ATT_HISTORY_CODE) values ('159',to_date('24/12/16','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),540,0,0,0,'AT001','242');
Insert into ATT_HISTORY (EMPLOYEE_CODE,ATTENDANCE_DATE,ATTENDANCE_TIME,LEAVE_TIME,TOTAL_WORKTIME,OVERTIME_WORKTIME,NIGHT_WORKTIME,WEEKEND_WORKTIME,ATT_CODE,ATT_HISTORY_CODE) values ('159',to_date('24/12/17','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),540,0,0,0,'AT001','243');
Insert into ATT_HISTORY (EMPLOYEE_CODE,ATTENDANCE_DATE,ATTENDANCE_TIME,LEAVE_TIME,TOTAL_WORKTIME,OVERTIME_WORKTIME,NIGHT_WORKTIME,WEEKEND_WORKTIME,ATT_CODE,ATT_HISTORY_CODE) values ('231',to_date('24/11/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),900,268,88,0,'AT002','280');
Insert into ATT_HISTORY (EMPLOYEE_CODE,ATTENDANCE_DATE,ATTENDANCE_TIME,LEAVE_TIME,TOTAL_WORKTIME,OVERTIME_WORKTIME,NIGHT_WORKTIME,WEEKEND_WORKTIME,ATT_CODE,ATT_HISTORY_CODE) values ('231',to_date('24/11/04','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),605,0,0,0,'AT001','281');
Insert into ATT_HISTORY (EMPLOYEE_CODE,ATTENDANCE_DATE,ATTENDANCE_TIME,LEAVE_TIME,TOTAL_WORKTIME,OVERTIME_WORKTIME,NIGHT_WORKTIME,WEEKEND_WORKTIME,ATT_CODE,ATT_HISTORY_CODE) values ('231',to_date('24/11/05','RR/MM/DD'),null,null,null,null,null,0,'AT005','282');
Insert into ATT_HISTORY (EMPLOYEE_CODE,ATTENDANCE_DATE,ATTENDANCE_TIME,LEAVE_TIME,TOTAL_WORKTIME,OVERTIME_WORKTIME,NIGHT_WORKTIME,WEEKEND_WORKTIME,ATT_CODE,ATT_HISTORY_CODE) values ('159',to_date('24/11/19','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),595,0,0,0,'AT001','283');
Insert into ATT_HISTORY (EMPLOYEE_CODE,ATTENDANCE_DATE,ATTENDANCE_TIME,LEAVE_TIME,TOTAL_WORKTIME,OVERTIME_WORKTIME,NIGHT_WORKTIME,WEEKEND_WORKTIME,ATT_CODE,ATT_HISTORY_CODE) values ('159',to_date('24/11/20','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),603,0,0,0,'AT001','284');
Insert into ATT_HISTORY (EMPLOYEE_CODE,ATTENDANCE_DATE,ATTENDANCE_TIME,LEAVE_TIME,TOTAL_WORKTIME,OVERTIME_WORKTIME,NIGHT_WORKTIME,WEEKEND_WORKTIME,ATT_CODE,ATT_HISTORY_CODE) values ('159',to_date('24/11/21','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),589,0,0,0,'AT001','285');
Insert into ATT_HISTORY (EMPLOYEE_CODE,ATTENDANCE_DATE,ATTENDANCE_TIME,LEAVE_TIME,TOTAL_WORKTIME,OVERTIME_WORKTIME,NIGHT_WORKTIME,WEEKEND_WORKTIME,ATT_CODE,ATT_HISTORY_CODE) values ('159',to_date('24/11/22','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),537,0,0,0,'AT001','286');
Insert into ATT_HISTORY (EMPLOYEE_CODE,ATTENDANCE_DATE,ATTENDANCE_TIME,LEAVE_TIME,TOTAL_WORKTIME,OVERTIME_WORKTIME,NIGHT_WORKTIME,WEEKEND_WORKTIME,ATT_CODE,ATT_HISTORY_CODE) values ('159',to_date('24/11/25','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),718,101,0,0,'AT002','287');
Insert into ATT_HISTORY (EMPLOYEE_CODE,ATTENDANCE_DATE,ATTENDANCE_TIME,LEAVE_TIME,TOTAL_WORKTIME,OVERTIME_WORKTIME,NIGHT_WORKTIME,WEEKEND_WORKTIME,ATT_CODE,ATT_HISTORY_CODE) values ('159',to_date('24/11/26','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),761,161,0,0,'AT002','288');
Insert into ATT_HISTORY (EMPLOYEE_CODE,ATTENDANCE_DATE,ATTENDANCE_TIME,LEAVE_TIME,TOTAL_WORKTIME,OVERTIME_WORKTIME,NIGHT_WORKTIME,WEEKEND_WORKTIME,ATT_CODE,ATT_HISTORY_CODE) values ('159',to_date('24/11/27','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),655,40,0,0,'AT002','289');
Insert into ATT_HISTORY (EMPLOYEE_CODE,ATTENDANCE_DATE,ATTENDANCE_TIME,LEAVE_TIME,TOTAL_WORKTIME,OVERTIME_WORKTIME,NIGHT_WORKTIME,WEEKEND_WORKTIME,ATT_CODE,ATT_HISTORY_CODE) values ('159',to_date('24/11/28','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),600,0,0,0,'AT001','290');
Insert into ATT_HISTORY (EMPLOYEE_CODE,ATTENDANCE_DATE,ATTENDANCE_TIME,LEAVE_TIME,TOTAL_WORKTIME,OVERTIME_WORKTIME,NIGHT_WORKTIME,WEEKEND_WORKTIME,ATT_CODE,ATT_HISTORY_CODE) values ('159',to_date('24/11/29','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'),783,165,0,0,'AT002','291');
REM INSERTING into ATT_ITEM
SET DEFINE OFF;
Insert into ATT_ITEM (ATT_CODE,ATT_STATUS,ATT_NAME) values ('AT003','i2','휴가');
Insert into ATT_ITEM (ATT_CODE,ATT_STATUS,ATT_NAME) values ('AT004','i4','무급휴가');
Insert into ATT_ITEM (ATT_CODE,ATT_STATUS,ATT_NAME) values ('AT001','i1','정상근무');
Insert into ATT_ITEM (ATT_CODE,ATT_STATUS,ATT_NAME) values ('AT005','i4','무단결근');
Insert into ATT_ITEM (ATT_CODE,ATT_STATUS,ATT_NAME) values ('AT006','i3','재난재해');
Insert into ATT_ITEM (ATT_CODE,ATT_STATUS,ATT_NAME) values ('AT002','i1','초과근무');
Insert into ATT_ITEM (ATT_CODE,ATT_STATUS,ATT_NAME) values ('AT010','i1','테스트');
REM INSERTING into BACCT
SET DEFINE OFF;
Insert into BACCT (BACCT_CODE,BACCT_NO,BACCT_NAME,BANK_NAME,SUMMARY) values (102,'456-143145416-452','매출용 우리은행 계좌','20',null);
Insert into BACCT (BACCT_CODE,BACCT_NO,BACCT_NAME,BANK_NAME,SUMMARY) values (104,'02-45641-153212','매출용 대구은행 계좌','31','24.12.10 등록');
Insert into BACCT (BACCT_CODE,BACCT_NO,BACCT_NAME,BANK_NAME,SUMMARY) values (105,'455-874352-123','매출용 우리은행 계좌','20','24.12.13');
Insert into BACCT (BACCT_CODE,BACCT_NO,BACCT_NAME,BANK_NAME,SUMMARY) values (106,'8551-453214-452-423','매입용 토스뱅크 계좌','92','24.12.13 등록');
Insert into BACCT (BACCT_CODE,BACCT_NO,BACCT_NAME,BANK_NAME,SUMMARY) values (101,'123-4567-8910-02','매입용 국민은행 계좌','4','2024.12.10 등록');
REM INSERTING into BACKUP_AWHI
SET DEFINE OFF;
REM INSERTING into BACKUP_PAYROLL
SET DEFINE OFF;
REM INSERTING into CLIENT
SET DEFINE OFF;
Insert into CLIENT (CLIENT_CODE,CLIENT_NAME,CEO_NAME,TRADE_TYPE,COMPANY_TEL,FAX,ADDRESS,EMPLOYEE_NAME,EMPLOYEE_TEL,EMPLOYEE_EMAIL,CLIENT_BACCT,CLIENT_DATE,BALANCEK,BALANCEM,STATE,EVENT,SUMMARY,ZIPCODE,TRADE_STATUS,DETAIL_ADDRESS) values ('client22','(주)성심당','김심당','채권','02-122-4553','146-6541653-451-14','대전 중구 금동길 37',null,null,null,'541-465135-534-45',to_date('24/12/10','RR/MM/DD'),8670000,0,'제조업','원두',null,'35086','거래중',' (금동) 성심당');
Insert into CLIENT (CLIENT_CODE,CLIENT_NAME,CEO_NAME,TRADE_TYPE,COMPANY_TEL,FAX,ADDRESS,EMPLOYEE_NAME,EMPLOYEE_TEL,EMPLOYEE_EMAIL,CLIENT_BACCT,CLIENT_DATE,BALANCEK,BALANCEM,STATE,EVENT,SUMMARY,ZIPCODE,TRADE_STATUS,DETAIL_ADDRESS) values ('client23','(주)MD 일산 커피 1공장','공일산','채무','054-455-7862','141-45661-42','서울 금천구 가마산로 70',null,null,null,'024-4452-45832-1',to_date('24/12/10','RR/MM/DD'),3320250,60640000,'제조','원두',null,'08500',null,' (가산동) ');
Insert into CLIENT (CLIENT_CODE,CLIENT_NAME,CEO_NAME,TRADE_TYPE,COMPANY_TEL,FAX,ADDRESS,EMPLOYEE_NAME,EMPLOYEE_TEL,EMPLOYEE_EMAIL,CLIENT_BACCT,CLIENT_DATE,BALANCEK,BALANCEM,STATE,EVENT,SUMMARY,ZIPCODE,TRADE_STATUS,DETAIL_ADDRESS) values ('client24','카페 반딧불 ','김동영','채권','070-8421-1456','070-8412-4566','경기 성남시 분당구 서판교로 32',null,null,null,'118-4843213-15123.',to_date('24/12/11','RR/MM/DD'),1481000,0,'제조업','도소매',null,'13479',null,' (판교동) 708호');
Insert into CLIENT (CLIENT_CODE,CLIENT_NAME,CEO_NAME,TRADE_TYPE,COMPANY_TEL,FAX,ADDRESS,EMPLOYEE_NAME,EMPLOYEE_TEL,EMPLOYEE_EMAIL,CLIENT_BACCT,CLIENT_DATE,BALANCEK,BALANCEM,STATE,EVENT,SUMMARY,ZIPCODE,TRADE_STATUS,DETAIL_ADDRESS) values ('client25','카페제이','정재현','채권','070-7879-4515','070-7842-7888','경북 구미시 산동읍 성수문량길 38-12',null,null,null,'484654-44546453-4',to_date('24/12/11','RR/MM/DD'),682000,0,'제조업','도소매',null,'39156',null,'227호');
Insert into CLIENT (CLIENT_CODE,CLIENT_NAME,CEO_NAME,TRADE_TYPE,COMPANY_TEL,FAX,ADDRESS,EMPLOYEE_NAME,EMPLOYEE_TEL,EMPLOYEE_EMAIL,CLIENT_BACCT,CLIENT_DATE,BALANCEK,BALANCEM,STATE,EVENT,SUMMARY,ZIPCODE,TRADE_STATUS,DETAIL_ADDRESS) values ('client26','(주)민형플라스틱','이민형','채무','050-7851-4455','070-8412-4785','경기 양평군 옥천면 옥천리 1051',null,null,null,'8762112-512123-41',to_date('24/12/11','RR/MM/DD'),0,26400,'제조업','도소매',null,'12507','거래중','855호');
Insert into CLIENT (CLIENT_CODE,CLIENT_NAME,CEO_NAME,TRADE_TYPE,COMPANY_TEL,FAX,ADDRESS,EMPLOYEE_NAME,EMPLOYEE_TEL,EMPLOYEE_EMAIL,CLIENT_BACCT,CLIENT_DATE,BALANCEK,BALANCEM,STATE,EVENT,SUMMARY,ZIPCODE,TRADE_STATUS,DETAIL_ADDRESS) values ('client27','(주)조이빨대','박수영','채무','053-7889-7894','045-4543-4545','경기 성남시 분당구 고기로 25',null,null,null,'4821-4111-441343',to_date('24/12/11','RR/MM/DD'),0,2354000,'제조업','도소매',null,'13547','거래중','(동원동) 1호');
Insert into CLIENT (CLIENT_CODE,CLIENT_NAME,CEO_NAME,TRADE_TYPE,COMPANY_TEL,FAX,ADDRESS,EMPLOYEE_NAME,EMPLOYEE_TEL,EMPLOYEE_EMAIL,CLIENT_BACCT,CLIENT_DATE,BALANCEK,BALANCEM,STATE,EVENT,SUMMARY,ZIPCODE,TRADE_STATUS,DETAIL_ADDRESS) values ('client28','박다방 침산점','김유현','채권','053-4212-4111','070-545-8777','대구 북구 노원로 179',null,null,null,'17851-411-1111',to_date('24/12/11','RR/MM/DD'),3410000,0,'일반음식점','서비스',null,'41500','거래중',' (침산동) 22호');
Insert into CLIENT (CLIENT_CODE,CLIENT_NAME,CEO_NAME,TRADE_TYPE,COMPANY_TEL,FAX,ADDRESS,EMPLOYEE_NAME,EMPLOYEE_TEL,EMPLOYEE_EMAIL,CLIENT_BACCT,CLIENT_DATE,BALANCEK,BALANCEM,STATE,EVENT,SUMMARY,ZIPCODE,TRADE_STATUS,DETAIL_ADDRESS) values ('client29','별빛카페 구로점','한주연','채권','050-7851-4455','070-7842-7888','대구 동구 동대구로 423',null,null,null,'7423-54212-4414',to_date('24/12/11','RR/MM/DD'),854700,0,'일반음식점','서비스',null,'41261','거래중',' (신천동) 1층');
Insert into CLIENT (CLIENT_CODE,CLIENT_NAME,CEO_NAME,TRADE_TYPE,COMPANY_TEL,FAX,ADDRESS,EMPLOYEE_NAME,EMPLOYEE_TEL,EMPLOYEE_EMAIL,CLIENT_BACCT,CLIENT_DATE,BALANCEK,BALANCEM,STATE,EVENT,SUMMARY,ZIPCODE,TRADE_STATUS,DETAIL_ADDRESS) values ('client30','NCT커피 네오점','이태용','채권','053-7889-7894','070-8412-4785','제주특별자치도 제주시 제주대학로 21-1',null,null,null,'17851-411-111111',to_date('24/12/11','RR/MM/DD'),16508800,0,'일반음식점','서비스',null,'63249','거래중',' (아라일동) 201호');
Insert into CLIENT (CLIENT_CODE,CLIENT_NAME,CEO_NAME,TRADE_TYPE,COMPANY_TEL,FAX,ADDRESS,EMPLOYEE_NAME,EMPLOYEE_TEL,EMPLOYEE_EMAIL,CLIENT_BACCT,CLIENT_DATE,BALANCEK,BALANCEM,STATE,EVENT,SUMMARY,ZIPCODE,TRADE_STATUS,DETAIL_ADDRESS) values ('client31','일라니원두(주) 창원제2공장','이유진','채무','053-4212-4111','141-45661-42','경남 창원시 성산구 창원대로 488',null,null,null,'125-789-7899',to_date('24/12/11','RR/MM/DD'),0,1540077000,'제조업','도소매',null,'51407','거래중',' (대원동) 2공장');
Insert into CLIENT (CLIENT_CODE,CLIENT_NAME,CEO_NAME,TRADE_TYPE,COMPANY_TEL,FAX,ADDRESS,EMPLOYEE_NAME,EMPLOYEE_TEL,EMPLOYEE_EMAIL,CLIENT_BACCT,CLIENT_DATE,BALANCEK,BALANCEM,STATE,EVENT,SUMMARY,ZIPCODE,TRADE_STATUS,DETAIL_ADDRESS) values ('client32','피차(TEA) 수원점','배정민','채권','053-7889-7894','070-7842-7888','경기 고양시 덕양구 수원문산고속도로 49',null,null,null,'125-789-7899123',to_date('24/12/11','RR/MM/DD'),137746400,0,'일반음식점','서비스',null,'10488','거래중',' (도내동)');
Insert into CLIENT (CLIENT_CODE,CLIENT_NAME,CEO_NAME,TRADE_TYPE,COMPANY_TEL,FAX,ADDRESS,EMPLOYEE_NAME,EMPLOYEE_TEL,EMPLOYEE_EMAIL,CLIENT_BACCT,CLIENT_DATE,BALANCEK,BALANCEM,STATE,EVENT,SUMMARY,ZIPCODE,TRADE_STATUS,DETAIL_ADDRESS) values ('client33','커피왕국 강남점','김도현','채권','02-3456-7890','070-1234-5678','서울 강남구 테헤란로 25','박상현','010-2345-6789',null,'123-456-7890123',to_date('24/12/11','RR/MM/DD'),1650000,0,'일반음식점','커피 재료 납품',null,'06030','거래중','101호');
Insert into CLIENT (CLIENT_CODE,CLIENT_NAME,CEO_NAME,TRADE_TYPE,COMPANY_TEL,FAX,ADDRESS,EMPLOYEE_NAME,EMPLOYEE_TEL,EMPLOYEE_EMAIL,CLIENT_BACCT,CLIENT_DATE,BALANCEK,BALANCEM,STATE,EVENT,SUMMARY,ZIPCODE,TRADE_STATUS,DETAIL_ADDRESS) values ('client34','베이커리하우스','박민수','채권','031-8765-4321','031-1234-5678','경기 성남시 분당구 서현로 45','최지연','010-8765-4321',null,'456-789-1234567',to_date('24/12/11','RR/MM/DD'),20933000,0,'제과점','원재료 납품',null,'13591','거래중','102호');
Insert into CLIENT (CLIENT_CODE,CLIENT_NAME,CEO_NAME,TRADE_TYPE,COMPANY_TEL,FAX,ADDRESS,EMPLOYEE_NAME,EMPLOYEE_TEL,EMPLOYEE_EMAIL,CLIENT_BACCT,CLIENT_DATE,BALANCEK,BALANCEM,STATE,EVENT,SUMMARY,ZIPCODE,TRADE_STATUS,DETAIL_ADDRESS) values ('client35','티스토리 카페','이은정','채권','02-1234-5678','02-8765-4321','서울 마포구 와우산로 15','정하나','010-3456-7890',null,'789-012-3456789',to_date('24/12/11','RR/MM/DD'),1012000,0,'음료 카페','차 및 음료 공급',null,'04107','거래중','203호');
Insert into CLIENT (CLIENT_CODE,CLIENT_NAME,CEO_NAME,TRADE_TYPE,COMPANY_TEL,FAX,ADDRESS,EMPLOYEE_NAME,EMPLOYEE_TEL,EMPLOYEE_EMAIL,CLIENT_BACCT,CLIENT_DATE,BALANCEK,BALANCEM,STATE,EVENT,SUMMARY,ZIPCODE,TRADE_STATUS,DETAIL_ADDRESS) values ('client36','디저트하우스','강수민','채권','053-7654-3210','053-5678-4321','대구 중구 동성로 101','장윤호','010-4567-8901',null,'012-345-6789012',to_date('24/12/11','RR/MM/DD'),0,0,'디저트 전문점','케이크 재료 납품',null,'42014','거래중','5층');
Insert into CLIENT (CLIENT_CODE,CLIENT_NAME,CEO_NAME,TRADE_TYPE,COMPANY_TEL,FAX,ADDRESS,EMPLOYEE_NAME,EMPLOYEE_TEL,EMPLOYEE_EMAIL,CLIENT_BACCT,CLIENT_DATE,BALANCEK,BALANCEM,STATE,EVENT,SUMMARY,ZIPCODE,TRADE_STATUS,DETAIL_ADDRESS) values ('client37','모던브루스','윤하은','채권','051-9876-5432','051-2345-6789','부산 해운대구 중동로 89','김민정','010-6789-0123',null,'567-890-1234567',to_date('24/12/11','RR/MM/DD'),8295100,0,'커피 전문점','원두 및 머신 납품',null,'60220','거래중','6층');
Insert into CLIENT (CLIENT_CODE,CLIENT_NAME,CEO_NAME,TRADE_TYPE,COMPANY_TEL,FAX,ADDRESS,EMPLOYEE_NAME,EMPLOYEE_TEL,EMPLOYEE_EMAIL,CLIENT_BACCT,CLIENT_DATE,BALANCEK,BALANCEM,STATE,EVENT,SUMMARY,ZIPCODE,TRADE_STATUS,DETAIL_ADDRESS) values ('client38','스위트스토리','강민준','채권','032-5678-9012','032-8765-4321','인천 부평구 부평로 77','김도현','010-2345-6789',null,'234-567-8901234',to_date('24/12/11','RR/MM/DD'),0,0,'디저트 카페','초콜릿 및 음료 공급',null,'23211','거래중','3층');
Insert into CLIENT (CLIENT_CODE,CLIENT_NAME,CEO_NAME,TRADE_TYPE,COMPANY_TEL,FAX,ADDRESS,EMPLOYEE_NAME,EMPLOYEE_TEL,EMPLOYEE_EMAIL,CLIENT_BACCT,CLIENT_DATE,BALANCEK,BALANCEM,STATE,EVENT,SUMMARY,ZIPCODE,TRADE_STATUS,DETAIL_ADDRESS) values ('client39','초록카페','윤지민','채권','052-3456-7890','052-5678-4321','울산 중구 학성로 22','최지수','010-6789-0123',null,'678-901-2345678',to_date('24/12/11','RR/MM/DD'),0,0,'음료 카페','음료 및 차 재료 납품',null,'44740','거래중','301호');
Insert into CLIENT (CLIENT_CODE,CLIENT_NAME,CEO_NAME,TRADE_TYPE,COMPANY_TEL,FAX,ADDRESS,EMPLOYEE_NAME,EMPLOYEE_TEL,EMPLOYEE_EMAIL,CLIENT_BACCT,CLIENT_DATE,BALANCEK,BALANCEM,STATE,EVENT,SUMMARY,ZIPCODE,TRADE_STATUS,DETAIL_ADDRESS) values ('client40','힐링브루','최은혜','채권','064-7654-3210','064-1234-5678','제주 서귀포시 중앙로 10','김나영','010-4567-8901',null,'345-678-9012345',to_date('24/12/11','RR/MM/DD'),0,0,'커피 전문점','에스프레소 원두 납품',null,'63012','거래중','201호');
Insert into CLIENT (CLIENT_CODE,CLIENT_NAME,CEO_NAME,TRADE_TYPE,COMPANY_TEL,FAX,ADDRESS,EMPLOYEE_NAME,EMPLOYEE_TEL,EMPLOYEE_EMAIL,CLIENT_BACCT,CLIENT_DATE,BALANCEK,BALANCEM,STATE,EVENT,SUMMARY,ZIPCODE,TRADE_STATUS,DETAIL_ADDRESS) values ('client41','아트베이커리','김상호','채권','033-4567-1234','033-7890-1234','강원 춘천시 춘천로 123','송민우','010-7890-1234',null,'890-123-4567890',to_date('24/12/11','RR/MM/DD'),0,0,'제과점','베이커리 재료 납품',null,'22567','거래중','1층');
Insert into CLIENT (CLIENT_CODE,CLIENT_NAME,CEO_NAME,TRADE_TYPE,COMPANY_TEL,FAX,ADDRESS,EMPLOYEE_NAME,EMPLOYEE_TEL,EMPLOYEE_EMAIL,CLIENT_BACCT,CLIENT_DATE,BALANCEK,BALANCEM,STATE,EVENT,SUMMARY,ZIPCODE,TRADE_STATUS,DETAIL_ADDRESS) values ('client42','커피정원','박은지','채권','062-4321-5678','062-7654-3210','광주 북구 용봉로 123','최선호','010-3456-7890',null,'345-678-9012345',to_date('24/12/11','RR/MM/DD'),1197680,0,'커피 전문점','커피 재료 납품',null,'61989','거래중','1층');
Insert into CLIENT (CLIENT_CODE,CLIENT_NAME,CEO_NAME,TRADE_TYPE,COMPANY_TEL,FAX,ADDRESS,EMPLOYEE_NAME,EMPLOYEE_TEL,EMPLOYEE_EMAIL,CLIENT_BACCT,CLIENT_DATE,BALANCEK,BALANCEM,STATE,EVENT,SUMMARY,ZIPCODE,TRADE_STATUS,DETAIL_ADDRESS) values ('client43','브라운베이커리','이수현','채권','031-1234-5678','031-8765-4321','경기도 고양시 덕양구 원흥동 35','박재민','010-4567-1234',null,'789-012-3456789',to_date('24/12/11','RR/MM/DD'),0,0,'제과점','빵 재료 공급',null,'13489','거래중','102호');
Insert into CLIENT (CLIENT_CODE,CLIENT_NAME,CEO_NAME,TRADE_TYPE,COMPANY_TEL,FAX,ADDRESS,EMPLOYEE_NAME,EMPLOYEE_TEL,EMPLOYEE_EMAIL,CLIENT_BACCT,CLIENT_DATE,BALANCEK,BALANCEM,STATE,EVENT,SUMMARY,ZIPCODE,TRADE_STATUS,DETAIL_ADDRESS) values ('client44','에스프레소하우스','박진영','채권','042-5678-9101','042-3456-7890','대전 서구 둔산동 둔산로 29','김하늘','010-6789-0123',null,'123-456-7890123',to_date('24/12/11','RR/MM/DD'),0,0,'커피 전문점','에스프레소 원두 공급',null,'34400','거래중','303호');
Insert into CLIENT (CLIENT_CODE,CLIENT_NAME,CEO_NAME,TRADE_TYPE,COMPANY_TEL,FAX,ADDRESS,EMPLOYEE_NAME,EMPLOYEE_TEL,EMPLOYEE_EMAIL,CLIENT_BACCT,CLIENT_DATE,BALANCEK,BALANCEM,STATE,EVENT,SUMMARY,ZIPCODE,TRADE_STATUS,DETAIL_ADDRESS) values ('client45','커피앤티','송은영','채권','032-9876-5432','032-6543-2109','인천 서구 청라대로 50','정민호','010-7890-1234',null,'456-789-1234567',to_date('24/12/11','RR/MM/DD'),979000,0,'커피 전문점','차 및 커피 재료 공급',null,'23422','거래중','2층');
Insert into CLIENT (CLIENT_CODE,CLIENT_NAME,CEO_NAME,TRADE_TYPE,COMPANY_TEL,FAX,ADDRESS,EMPLOYEE_NAME,EMPLOYEE_TEL,EMPLOYEE_EMAIL,CLIENT_BACCT,CLIENT_DATE,BALANCEK,BALANCEM,STATE,EVENT,SUMMARY,ZIPCODE,TRADE_STATUS,DETAIL_ADDRESS) values ('client46','더스위트','윤하은','채권','051-2345-6789','051-9876-5432','부산 해운대구 좌동 80','이윤경','010-2345-6789',null,'789-456-1237890',to_date('24/12/11','RR/MM/DD'),0,0,'디저트 카페','케이크 재료 납품',null,'60291','거래중','201호');
Insert into CLIENT (CLIENT_CODE,CLIENT_NAME,CEO_NAME,TRADE_TYPE,COMPANY_TEL,FAX,ADDRESS,EMPLOYEE_NAME,EMPLOYEE_TEL,EMPLOYEE_EMAIL,CLIENT_BACCT,CLIENT_DATE,BALANCEK,BALANCEM,STATE,EVENT,SUMMARY,ZIPCODE,TRADE_STATUS,DETAIL_ADDRESS) values ('client47','로스터리랩','김수현','채권','054-8765-4321','054-5678-9101','경북 포항시 남구 해안로 25','장민우','010-4567-8901',null,'567-890-1234567',to_date('24/12/11','RR/MM/DD'),0,0,'커피 전문점','원두 납품 및 로스팅',null,'37921','거래중','401호');
Insert into CLIENT (CLIENT_CODE,CLIENT_NAME,CEO_NAME,TRADE_TYPE,COMPANY_TEL,FAX,ADDRESS,EMPLOYEE_NAME,EMPLOYEE_TEL,EMPLOYEE_EMAIL,CLIENT_BACCT,CLIENT_DATE,BALANCEK,BALANCEM,STATE,EVENT,SUMMARY,ZIPCODE,TRADE_STATUS,DETAIL_ADDRESS) values ('client48','초콜릿빌리지','강준혁','채권','033-2345-6789','033-9876-5432','강원 속초시 중앙로 66','최선호','010-5678-9012',null,'345-678-9012345',to_date('24/12/11','RR/MM/DD'),0,0,'디저트 카페','초콜릿 및 베이킹 재료 공급',null,'25611','거래중','1층');
Insert into CLIENT (CLIENT_CODE,CLIENT_NAME,CEO_NAME,TRADE_TYPE,COMPANY_TEL,FAX,ADDRESS,EMPLOYEE_NAME,EMPLOYEE_TEL,EMPLOYEE_EMAIL,CLIENT_BACCT,CLIENT_DATE,BALANCEK,BALANCEM,STATE,EVENT,SUMMARY,ZIPCODE,TRADE_STATUS,DETAIL_ADDRESS) values ('client49','달콤한커피','한예진','채권','052-6543-2109','052-1234-5678','울산 남구 삼산로 80','이정훈','010-6789-0123',null,'890-123-4567890',to_date('24/12/11','RR/MM/DD'),990000,0,'커피 전문점','음료 및 원두 납품',null,'44789','거래중','5층');
Insert into CLIENT (CLIENT_CODE,CLIENT_NAME,CEO_NAME,TRADE_TYPE,COMPANY_TEL,FAX,ADDRESS,EMPLOYEE_NAME,EMPLOYEE_TEL,EMPLOYEE_EMAIL,CLIENT_BACCT,CLIENT_DATE,BALANCEK,BALANCEM,STATE,EVENT,SUMMARY,ZIPCODE,TRADE_STATUS,DETAIL_ADDRESS) values ('client21','유칼릭티(주)','유승민','채무','053-7889-7894','053-777-888','대구 수성구 고모로 31',null,null,null,'125-789-7899',to_date('24/12/10','RR/MM/DD'),0,0,'제조업','도소매',null,'42260',null,' (가천동) 230호');
Insert into CLIENT (CLIENT_CODE,CLIENT_NAME,CEO_NAME,TRADE_TYPE,COMPANY_TEL,FAX,ADDRESS,EMPLOYEE_NAME,EMPLOYEE_TEL,EMPLOYEE_EMAIL,CLIENT_BACCT,CLIENT_DATE,BALANCEK,BALANCEM,STATE,EVENT,SUMMARY,ZIPCODE,TRADE_STATUS,DETAIL_ADDRESS) values ('client50','브라운베이커리','이수현','채권','031-1234-5678','031-8765-4321','경기도 고양시 덕양구 원흥동 35','박재민','010-4567-1234',null,'789-012-3456789',to_date('24/12/11','RR/MM/DD'),0,0,'제과점','빵 재료 공급',null,'13489','거래중','102호');
Insert into CLIENT (CLIENT_CODE,CLIENT_NAME,CEO_NAME,TRADE_TYPE,COMPANY_TEL,FAX,ADDRESS,EMPLOYEE_NAME,EMPLOYEE_TEL,EMPLOYEE_EMAIL,CLIENT_BACCT,CLIENT_DATE,BALANCEK,BALANCEM,STATE,EVENT,SUMMARY,ZIPCODE,TRADE_STATUS,DETAIL_ADDRESS) values ('client51','에스프레소하우스','박진영','채권','042-5678-9101','042-3456-7890','대전 서구 둔산동 둔산로 29','김하늘','010-6789-0123',null,'123-456-7890123',to_date('24/12/11','RR/MM/DD'),0,0,'커피 전문점','에스프레소 원두 공급',null,'34400','거래중','303호');
Insert into CLIENT (CLIENT_CODE,CLIENT_NAME,CEO_NAME,TRADE_TYPE,COMPANY_TEL,FAX,ADDRESS,EMPLOYEE_NAME,EMPLOYEE_TEL,EMPLOYEE_EMAIL,CLIENT_BACCT,CLIENT_DATE,BALANCEK,BALANCEM,STATE,EVENT,SUMMARY,ZIPCODE,TRADE_STATUS,DETAIL_ADDRESS) values ('client52','커피앤티','송은영','채권','032-9876-5432','032-6543-2109','인천 서구 청라대로 50','정민호','010-7890-1234',null,'456-789-1234567',to_date('24/12/11','RR/MM/DD'),0,0,'커피 전문점','차 및 커피 재료 공급',null,'23422','거래중','2층');
Insert into CLIENT (CLIENT_CODE,CLIENT_NAME,CEO_NAME,TRADE_TYPE,COMPANY_TEL,FAX,ADDRESS,EMPLOYEE_NAME,EMPLOYEE_TEL,EMPLOYEE_EMAIL,CLIENT_BACCT,CLIENT_DATE,BALANCEK,BALANCEM,STATE,EVENT,SUMMARY,ZIPCODE,TRADE_STATUS,DETAIL_ADDRESS) values ('client53','더스위트','윤하은','채권','051-2345-6789','051-9876-5432','부산 해운대구 좌동 80','이윤경','010-2345-6789',null,'789-456-1237890',to_date('24/12/11','RR/MM/DD'),0,0,'디저트 카페','케이크 재료 납품',null,'60291','거래중','201호');
Insert into CLIENT (CLIENT_CODE,CLIENT_NAME,CEO_NAME,TRADE_TYPE,COMPANY_TEL,FAX,ADDRESS,EMPLOYEE_NAME,EMPLOYEE_TEL,EMPLOYEE_EMAIL,CLIENT_BACCT,CLIENT_DATE,BALANCEK,BALANCEM,STATE,EVENT,SUMMARY,ZIPCODE,TRADE_STATUS,DETAIL_ADDRESS) values ('client54','로스터리랩','김수현','채권','054-8765-4321','054-5678-9101','경북 포항시 남구 해안로 25','장민우','010-4567-8901',null,'567-890-1234567',to_date('24/12/11','RR/MM/DD'),0,0,'커피 전문점','원두 납품 및 로스팅',null,'37921','거래중','401호');
Insert into CLIENT (CLIENT_CODE,CLIENT_NAME,CEO_NAME,TRADE_TYPE,COMPANY_TEL,FAX,ADDRESS,EMPLOYEE_NAME,EMPLOYEE_TEL,EMPLOYEE_EMAIL,CLIENT_BACCT,CLIENT_DATE,BALANCEK,BALANCEM,STATE,EVENT,SUMMARY,ZIPCODE,TRADE_STATUS,DETAIL_ADDRESS) values ('client55','초콜릿빌리지','강준혁','채권','033-2345-6789','033-9876-5432','강원 속초시 중앙로 66','최선호','010-5678-9012',null,'345-678-9012345',to_date('24/12/11','RR/MM/DD'),4972000,0,'디저트 카페','초콜릿 및 베이킹 재료 공급',null,'25611','거래중','1층');
Insert into CLIENT (CLIENT_CODE,CLIENT_NAME,CEO_NAME,TRADE_TYPE,COMPANY_TEL,FAX,ADDRESS,EMPLOYEE_NAME,EMPLOYEE_TEL,EMPLOYEE_EMAIL,CLIENT_BACCT,CLIENT_DATE,BALANCEK,BALANCEM,STATE,EVENT,SUMMARY,ZIPCODE,TRADE_STATUS,DETAIL_ADDRESS) values ('client56','달콤한커피','한예진','채권','052-6543-2109','052-1234-5678','울산 남구 삼산로 80','이정훈','010-6789-0123',null,'890-123-4567890',to_date('24/12/11','RR/MM/DD'),0,0,'커피 전문점','음료 및 원두 납품',null,'44789','거래중','5층');
Insert into CLIENT (CLIENT_CODE,CLIENT_NAME,CEO_NAME,TRADE_TYPE,COMPANY_TEL,FAX,ADDRESS,EMPLOYEE_NAME,EMPLOYEE_TEL,EMPLOYEE_EMAIL,CLIENT_BACCT,CLIENT_DATE,BALANCEK,BALANCEM,STATE,EVENT,SUMMARY,ZIPCODE,TRADE_STATUS,DETAIL_ADDRESS) values ('client57','스페셜티','윤재현','채권','031-5432-6789','031-9876-4321','경기 수원시 영통구 중동로 45','박현수','010-2345-6789',null,'123-789-4561234',to_date('24/12/11','RR/MM/DD'),0,0,'커피 전문점','스페셜티 원두 납품',null,'16754','거래중','3층');
Insert into CLIENT (CLIENT_CODE,CLIENT_NAME,CEO_NAME,TRADE_TYPE,COMPANY_TEL,FAX,ADDRESS,EMPLOYEE_NAME,EMPLOYEE_TEL,EMPLOYEE_EMAIL,CLIENT_BACCT,CLIENT_DATE,BALANCEK,BALANCEM,STATE,EVENT,SUMMARY,ZIPCODE,TRADE_STATUS,DETAIL_ADDRESS) values ('client58','베이킹스토리','정민수','채권','031-4567-8901','031-2345-6789','경기도 용인시 기흥구 동백로 20','송하늘','010-4567-1234',null,'345-678-9012345',to_date('24/12/11','RR/MM/DD'),0,0,'디저트 카페','베이킹 및 디저트 재료 납품',null,'13400','거래중','102호');
Insert into CLIENT (CLIENT_CODE,CLIENT_NAME,CEO_NAME,TRADE_TYPE,COMPANY_TEL,FAX,ADDRESS,EMPLOYEE_NAME,EMPLOYEE_TEL,EMPLOYEE_EMAIL,CLIENT_BACCT,CLIENT_DATE,BALANCEK,BALANCEM,STATE,EVENT,SUMMARY,ZIPCODE,TRADE_STATUS,DETAIL_ADDRESS) values ('client59','로얄카페','최서연','채권','032-8765-4321','032-3456-7890','인천 남동구 구월로 55','정지우','010-5678-8901',null,'789-456-1234567',to_date('24/12/11','RR/MM/DD'),8604444,0,'커피 전문점','음료 및 원두 납품',null,'22311','거래중','1층');
Insert into CLIENT (CLIENT_CODE,CLIENT_NAME,CEO_NAME,TRADE_TYPE,COMPANY_TEL,FAX,ADDRESS,EMPLOYEE_NAME,EMPLOYEE_TEL,EMPLOYEE_EMAIL,CLIENT_BACCT,CLIENT_DATE,BALANCEK,BALANCEM,STATE,EVENT,SUMMARY,ZIPCODE,TRADE_STATUS,DETAIL_ADDRESS) values ('client60','원두공급센터','이정우','채무','031-7890-1234','031-3456-7890','경기 성남시 분당구 야탑로 20','김재영','010-2345-6789',null,'456-789-1234567',to_date('24/12/11','RR/MM/DD'),0,0,'원두 납품업체','에스프레소 원두 공급',null,'13422','거래중','202호');
Insert into CLIENT (CLIENT_CODE,CLIENT_NAME,CEO_NAME,TRADE_TYPE,COMPANY_TEL,FAX,ADDRESS,EMPLOYEE_NAME,EMPLOYEE_TEL,EMPLOYEE_EMAIL,CLIENT_BACCT,CLIENT_DATE,BALANCEK,BALANCEM,STATE,EVENT,SUMMARY,ZIPCODE,TRADE_STATUS,DETAIL_ADDRESS) values ('client61','디저트재료상회','박선호','채무','042-1234-5678','042-9876-5432','대전 서구 대덕대로 15','최하나','010-5678-9012',null,'123-456-7890123',to_date('24/12/11','RR/MM/DD'),0,352000,'디저트 재료 납품업체','케이크 및 베이킹 재료 공급',null,'34410','거래중','101호');
Insert into CLIENT (CLIENT_CODE,CLIENT_NAME,CEO_NAME,TRADE_TYPE,COMPANY_TEL,FAX,ADDRESS,EMPLOYEE_NAME,EMPLOYEE_TEL,EMPLOYEE_EMAIL,CLIENT_BACCT,CLIENT_DATE,BALANCEK,BALANCEM,STATE,EVENT,SUMMARY,ZIPCODE,TRADE_STATUS,DETAIL_ADDRESS) values ('client62','스페셜티원두','윤재훈','채무','051-5678-9101','051-2345-6789','부산 사상구 학장로 55','송민준','010-3456-7890',null,'789-012-3456789',to_date('24/12/11','RR/MM/DD'),0,0,'원두 납품업체','스페셜티 원두 납품',null,'60233','거래중','4층');
Insert into CLIENT (CLIENT_CODE,CLIENT_NAME,CEO_NAME,TRADE_TYPE,COMPANY_TEL,FAX,ADDRESS,EMPLOYEE_NAME,EMPLOYEE_TEL,EMPLOYEE_EMAIL,CLIENT_BACCT,CLIENT_DATE,BALANCEK,BALANCEM,STATE,EVENT,SUMMARY,ZIPCODE,TRADE_STATUS,DETAIL_ADDRESS) values ('client63','커피머신스토어','김현준','채무','053-8765-4321','053-7654-3210','대구 북구 침산로 101','장하나','010-7890-1234',null,'234-567-8901234',to_date('24/12/11','RR/MM/DD'),0,0,'커피 머신 납품업체','에스프레소 머신 및 부품 납품',null,'41985','거래중','2층');
Insert into CLIENT (CLIENT_CODE,CLIENT_NAME,CEO_NAME,TRADE_TYPE,COMPANY_TEL,FAX,ADDRESS,EMPLOYEE_NAME,EMPLOYEE_TEL,EMPLOYEE_EMAIL,CLIENT_BACCT,CLIENT_DATE,BALANCEK,BALANCEM,STATE,EVENT,SUMMARY,ZIPCODE,TRADE_STATUS,DETAIL_ADDRESS) values ('client64','초콜릿홀세일','박성훈','채무','033-9876-5432','033-2345-6789','강원 강릉시 경강로 123','정나영','010-5678-8901',null,'345-678-9012345',to_date('24/12/11','RR/MM/DD'),0,1303500000,'초콜릿 납품업체','초콜릿 원재료 공급',null,'22599','거래중','1층');
Insert into CLIENT (CLIENT_CODE,CLIENT_NAME,CEO_NAME,TRADE_TYPE,COMPANY_TEL,FAX,ADDRESS,EMPLOYEE_NAME,EMPLOYEE_TEL,EMPLOYEE_EMAIL,CLIENT_BACCT,CLIENT_DATE,BALANCEK,BALANCEM,STATE,EVENT,SUMMARY,ZIPCODE,TRADE_STATUS,DETAIL_ADDRESS) values ('client65','티하우스원재료','최영민','채무','052-5678-4321','052-8765-4321','울산 중구 옥교로 35','김희수','010-2345-6789',null,'456-789-0123456',to_date('24/12/11','RR/MM/DD'),0,1683000000,'차 납품업체','차 및 허브 납품',null,'44760','거래중','3층');
Insert into CLIENT (CLIENT_CODE,CLIENT_NAME,CEO_NAME,TRADE_TYPE,COMPANY_TEL,FAX,ADDRESS,EMPLOYEE_NAME,EMPLOYEE_TEL,EMPLOYEE_EMAIL,CLIENT_BACCT,CLIENT_DATE,BALANCEK,BALANCEM,STATE,EVENT,SUMMARY,ZIPCODE,TRADE_STATUS,DETAIL_ADDRESS) values ('client66','베이킹마켓','이수민','채무','031-3456-7890','031-5678-9101','경기도 고양시 일산동구 정발로 50','박채린','010-3456-7890',null,'567-890-1234567',to_date('24/12/11','RR/MM/DD'),0,880000000,'베이킹 재료 납품업체','밀가루 및 베이킹 도구 공급',null,'13579','거래중','5층');
Insert into CLIENT (CLIENT_CODE,CLIENT_NAME,CEO_NAME,TRADE_TYPE,COMPANY_TEL,FAX,ADDRESS,EMPLOYEE_NAME,EMPLOYEE_TEL,EMPLOYEE_EMAIL,CLIENT_BACCT,CLIENT_DATE,BALANCEK,BALANCEM,STATE,EVENT,SUMMARY,ZIPCODE,TRADE_STATUS,DETAIL_ADDRESS) values ('client68','카페메이트','장민호','채무','032-8765-4321','032-3456-7890','인천 남동구 남동대로 60','최윤하','010-7890-1234',null,'890-123-4567890',to_date('24/12/11','RR/MM/DD'),0,0,'음료 납품업체','커피 음료 및 기기 공급',null,'23411','거래중','3층');
Insert into CLIENT (CLIENT_CODE,CLIENT_NAME,CEO_NAME,TRADE_TYPE,COMPANY_TEL,FAX,ADDRESS,EMPLOYEE_NAME,EMPLOYEE_TEL,EMPLOYEE_EMAIL,CLIENT_BACCT,CLIENT_DATE,BALANCEK,BALANCEM,STATE,EVENT,SUMMARY,ZIPCODE,TRADE_STATUS,DETAIL_ADDRESS) values ('client69','스위트랜드','한재민','채무','064-6543-2109','064-8765-4321','제주 제주시 연동 101로 80','김지수','010-3456-7890',null,'234-567-8901234',to_date('24/12/11','RR/MM/DD'),0,0,'디저트 납품업체','케이크 및 초콜릿 원재료 공급',null,'63150','거래중','1층');
Insert into CLIENT (CLIENT_CODE,CLIENT_NAME,CEO_NAME,TRADE_TYPE,COMPANY_TEL,FAX,ADDRESS,EMPLOYEE_NAME,EMPLOYEE_TEL,EMPLOYEE_EMAIL,CLIENT_BACCT,CLIENT_DATE,BALANCEK,BALANCEM,STATE,EVENT,SUMMARY,ZIPCODE,TRADE_STATUS,DETAIL_ADDRESS) values ('client70','(주)원두마스터','이정훈','채무','031-7890-1234','031-3456-7890','경기 성남시 분당구 판교로 20','김재영','010-2345-6789',null,'456-789-1234567',to_date('24/12/11','RR/MM/DD'),0,0,'원두 납품업체','스페셜티 원두 공급',null,'13422','거래중','302호');
Insert into CLIENT (CLIENT_CODE,CLIENT_NAME,CEO_NAME,TRADE_TYPE,COMPANY_TEL,FAX,ADDRESS,EMPLOYEE_NAME,EMPLOYEE_TEL,EMPLOYEE_EMAIL,CLIENT_BACCT,CLIENT_DATE,BALANCEK,BALANCEM,STATE,EVENT,SUMMARY,ZIPCODE,TRADE_STATUS,DETAIL_ADDRESS) values ('client71','(주)디저트마켓','박지훈','채무','042-1234-5678','042-9876-5432','대전 서구 둔산로 10','최하나','010-5678-9012',null,'123-456-7890123',to_date('24/12/11','RR/MM/DD'),0,0,'디저트 재료 납품업체','케이크 재료 공급',null,'34410','거래중','101호');
Insert into CLIENT (CLIENT_CODE,CLIENT_NAME,CEO_NAME,TRADE_TYPE,COMPANY_TEL,FAX,ADDRESS,EMPLOYEE_NAME,EMPLOYEE_TEL,EMPLOYEE_EMAIL,CLIENT_BACCT,CLIENT_DATE,BALANCEK,BALANCEM,STATE,EVENT,SUMMARY,ZIPCODE,TRADE_STATUS,DETAIL_ADDRESS) values ('client72','(주)커피기어','윤지환','채무','051-5678-9101','051-2345-6789','부산 해운대구 중동로 55','송민준','010-3456-7890',null,'789-012-3456789',to_date('24/12/11','RR/MM/DD'),0,0,'커피 머신 납품업체','에스프레소 머신 납품',null,'60233','거래중','4층');
Insert into CLIENT (CLIENT_CODE,CLIENT_NAME,CEO_NAME,TRADE_TYPE,COMPANY_TEL,FAX,ADDRESS,EMPLOYEE_NAME,EMPLOYEE_TEL,EMPLOYEE_EMAIL,CLIENT_BACCT,CLIENT_DATE,BALANCEK,BALANCEM,STATE,EVENT,SUMMARY,ZIPCODE,TRADE_STATUS,DETAIL_ADDRESS) values ('client73','(주)초콜릿헛','김현서','채무','053-8765-4321','053-7654-3210','대구 북구 침산로 20','장하나','010-7890-1234',null,'234-567-8901234',to_date('24/12/11','RR/MM/DD'),0,0,'초콜릿 납품업체','초콜릿 재료 공급',null,'41985','거래중','2층');
Insert into CLIENT (CLIENT_CODE,CLIENT_NAME,CEO_NAME,TRADE_TYPE,COMPANY_TEL,FAX,ADDRESS,EMPLOYEE_NAME,EMPLOYEE_TEL,EMPLOYEE_EMAIL,CLIENT_BACCT,CLIENT_DATE,BALANCEK,BALANCEM,STATE,EVENT,SUMMARY,ZIPCODE,TRADE_STATUS,DETAIL_ADDRESS) values ('client74','(주)티원재료','박성호','채무','033-9876-5432','033-2345-6789','강원 강릉시 경강로 30','정민수','010-5678-8901',null,'345-678-9012345',to_date('24/12/11','RR/MM/DD'),0,0,'차 납품업체','허브 및 차 재료 납품',null,'22599','거래중','1층');
Insert into CLIENT (CLIENT_CODE,CLIENT_NAME,CEO_NAME,TRADE_TYPE,COMPANY_TEL,FAX,ADDRESS,EMPLOYEE_NAME,EMPLOYEE_TEL,EMPLOYEE_EMAIL,CLIENT_BACCT,CLIENT_DATE,BALANCEK,BALANCEM,STATE,EVENT,SUMMARY,ZIPCODE,TRADE_STATUS,DETAIL_ADDRESS) values ('client75','(주)베이커스월드','최영진','채무','052-5678-4321','052-8765-4321','울산 중구 학성로 35','김희수','010-2345-6789',null,'456-789-0123456',to_date('24/12/11','RR/MM/DD'),0,0,'베이킹 재료 납품업체','밀가루 및 베이킹 도구 공급',null,'44760','거래중','3층');
Insert into CLIENT (CLIENT_CODE,CLIENT_NAME,CEO_NAME,TRADE_TYPE,COMPANY_TEL,FAX,ADDRESS,EMPLOYEE_NAME,EMPLOYEE_TEL,EMPLOYEE_EMAIL,CLIENT_BACCT,CLIENT_DATE,BALANCEK,BALANCEM,STATE,EVENT,SUMMARY,ZIPCODE,TRADE_STATUS,DETAIL_ADDRESS) values ('client76','(주)로스터스','이수민','채무','031-3456-7890','031-5678-9101','경기도 용인시 기흥구 동백로 15','박채린','010-3456-7890',null,'567-890-1234567',to_date('24/12/11','RR/MM/DD'),0,0,'원두 납품업체','스페셜티 원두 공급',null,'13579','거래중','5층');
Insert into CLIENT (CLIENT_CODE,CLIENT_NAME,CEO_NAME,TRADE_TYPE,COMPANY_TEL,FAX,ADDRESS,EMPLOYEE_NAME,EMPLOYEE_TEL,EMPLOYEE_EMAIL,CLIENT_BACCT,CLIENT_DATE,BALANCEK,BALANCEM,STATE,EVENT,SUMMARY,ZIPCODE,TRADE_STATUS,DETAIL_ADDRESS) values ('client77','(주)카페프렌즈','윤지우','채무','031-5432-6789','031-1234-5678','경기 수원시 팔달구 권선로 10','이하늘','010-5678-9012',null,'789-123-4567890',to_date('24/12/11','RR/MM/DD'),0,0,'음료 납품업체','음료 및 음료 기기 공급',null,'16745','거래중','2층');
Insert into CLIENT (CLIENT_CODE,CLIENT_NAME,CEO_NAME,TRADE_TYPE,COMPANY_TEL,FAX,ADDRESS,EMPLOYEE_NAME,EMPLOYEE_TEL,EMPLOYEE_EMAIL,CLIENT_BACCT,CLIENT_DATE,BALANCEK,BALANCEM,STATE,EVENT,SUMMARY,ZIPCODE,TRADE_STATUS,DETAIL_ADDRESS) values ('client78','(주)스위트디저트','장민호','채무','032-8765-4321','032-3456-7890','인천 남동구 남동대로 60','최윤하','010-7890-1234',null,'890-123-4567890',to_date('24/12/11','RR/MM/DD'),0,0,'디저트 납품업체','케이크 및 초콜릿 공급',null,'23411','거래중','3층');
Insert into CLIENT (CLIENT_CODE,CLIENT_NAME,CEO_NAME,TRADE_TYPE,COMPANY_TEL,FAX,ADDRESS,EMPLOYEE_NAME,EMPLOYEE_TEL,EMPLOYEE_EMAIL,CLIENT_BACCT,CLIENT_DATE,BALANCEK,BALANCEM,STATE,EVENT,SUMMARY,ZIPCODE,TRADE_STATUS,DETAIL_ADDRESS) values ('client79','(주)디저트랜드','한재민','채무','064-6543-2109','064-8765-4321','제주 제주시 연동로 80','김지수','010-3456-7890',null,'234-567-8901234',to_date('24/12/11','RR/MM/DD'),0,0,'디저트 재료 납품업체','케이크 및 베이킹 재료 공급',null,'63150','거래중','1층');
Insert into CLIENT (CLIENT_CODE,CLIENT_NAME,CEO_NAME,TRADE_TYPE,COMPANY_TEL,FAX,ADDRESS,EMPLOYEE_NAME,EMPLOYEE_TEL,EMPLOYEE_EMAIL,CLIENT_BACCT,CLIENT_DATE,BALANCEK,BALANCEM,STATE,EVENT,SUMMARY,ZIPCODE,TRADE_STATUS,DETAIL_ADDRESS) values ('client81','맘모스 제과제빵','강만득','채권','054-543-8123','6546541-54631312','경북 안동시 중앙시장길 5',null,null,null,'15-46-6434-17',to_date('24/12/11','RR/MM/DD'),0,0,'제과점','원두',null,'36698','거래중',' (안흥동) 맘모스');
REM INSERTING into COMMON_CODE
SET DEFINE OFF;
Insert into COMMON_CODE (CODE_RULE,COMMON_NAME,UPDATE_DATE,COMMON_CODE) values ('a1','부가세율적용',to_date('24/11/22','RR/MM/DD'),'0A');
Insert into COMMON_CODE (CODE_RULE,COMMON_NAME,UPDATE_DATE,COMMON_CODE) values ('a2','부가세율미적용',to_date('24/11/22','RR/MM/DD'),'0A');
Insert into COMMON_CODE (CODE_RULE,COMMON_NAME,UPDATE_DATE,COMMON_CODE) values ('b1','미완료',to_date('24/11/22','RR/MM/DD'),'0B');
Insert into COMMON_CODE (CODE_RULE,COMMON_NAME,UPDATE_DATE,COMMON_CODE) values ('b2','진행중',to_date('24/11/22','RR/MM/DD'),'0B');
Insert into COMMON_CODE (CODE_RULE,COMMON_NAME,UPDATE_DATE,COMMON_CODE) values ('b3','완료',to_date('24/11/22','RR/MM/DD'),'0B');
Insert into COMMON_CODE (CODE_RULE,COMMON_NAME,UPDATE_DATE,COMMON_CODE) values ('c1','미완료',to_date('24/11/22','RR/MM/DD'),'0C');
Insert into COMMON_CODE (CODE_RULE,COMMON_NAME,UPDATE_DATE,COMMON_CODE) values ('c2','진행중',to_date('24/11/22','RR/MM/DD'),'0C');
Insert into COMMON_CODE (CODE_RULE,COMMON_NAME,UPDATE_DATE,COMMON_CODE) values ('c3','완료',to_date('24/11/22','RR/MM/DD'),'0C');
Insert into COMMON_CODE (CODE_RULE,COMMON_NAME,UPDATE_DATE,COMMON_CODE) values ('d1','재고증가',to_date('24/11/22','RR/MM/DD'),'0D');
Insert into COMMON_CODE (CODE_RULE,COMMON_NAME,UPDATE_DATE,COMMON_CODE) values ('d2','재고감소',to_date('24/11/22','RR/MM/DD'),'0D');
Insert into COMMON_CODE (CODE_RULE,COMMON_NAME,UPDATE_DATE,COMMON_CODE) values ('e1','취약',to_date('24/11/22','RR/MM/DD'),'0E');
Insert into COMMON_CODE (CODE_RULE,COMMON_NAME,UPDATE_DATE,COMMON_CODE) values ('e2','미흡',to_date('24/11/22','RR/MM/DD'),'0E');
Insert into COMMON_CODE (CODE_RULE,COMMON_NAME,UPDATE_DATE,COMMON_CODE) values ('e3','보통',to_date('24/11/22','RR/MM/DD'),'0E');
Insert into COMMON_CODE (CODE_RULE,COMMON_NAME,UPDATE_DATE,COMMON_CODE) values ('e4','양호',to_date('24/11/22','RR/MM/DD'),'0E');
Insert into COMMON_CODE (CODE_RULE,COMMON_NAME,UPDATE_DATE,COMMON_CODE) values ('e5','우수',to_date('24/11/22','RR/MM/DD'),'0E');
Insert into COMMON_CODE (CODE_RULE,COMMON_NAME,UPDATE_DATE,COMMON_CODE) values ('f1','미전송',to_date('24/11/22','RR/MM/DD'),'0F');
Insert into COMMON_CODE (CODE_RULE,COMMON_NAME,UPDATE_DATE,COMMON_CODE) values ('f2','전송중',to_date('24/11/28','RR/MM/DD'),'0F');
Insert into COMMON_CODE (CODE_RULE,COMMON_NAME,UPDATE_DATE,COMMON_CODE) values ('g1','진행',to_date('24/11/22','RR/MM/DD'),'0G');
Insert into COMMON_CODE (CODE_RULE,COMMON_NAME,UPDATE_DATE,COMMON_CODE) values ('g2','종료',to_date('24/11/22','RR/MM/DD'),'0G');
Insert into COMMON_CODE (CODE_RULE,COMMON_NAME,UPDATE_DATE,COMMON_CODE) values ('g3','보류',to_date('24/11/22','RR/MM/DD'),'0G');
Insert into COMMON_CODE (CODE_RULE,COMMON_NAME,UPDATE_DATE,COMMON_CODE) values ('j1','육야휴직',to_date('24/11/22','RR/MM/DD'),'0J');
Insert into COMMON_CODE (CODE_RULE,COMMON_NAME,UPDATE_DATE,COMMON_CODE) values ('j2','병가',to_date('24/11/22','RR/MM/DD'),'0J');
Insert into COMMON_CODE (CODE_RULE,COMMON_NAME,UPDATE_DATE,COMMON_CODE) values ('j3','장기휴직',to_date('24/11/22','RR/MM/DD'),'0J');
Insert into COMMON_CODE (CODE_RULE,COMMON_NAME,UPDATE_DATE,COMMON_CODE) values ('j4','자발적 퇴직',to_date('24/11/22','RR/MM/DD'),'0J');
Insert into COMMON_CODE (CODE_RULE,COMMON_NAME,UPDATE_DATE,COMMON_CODE) values ('j5','정년퇴직',to_date('24/11/22','RR/MM/DD'),'0J');
Insert into COMMON_CODE (CODE_RULE,COMMON_NAME,UPDATE_DATE,COMMON_CODE) values ('j6','비자살적 퇴직',to_date('24/11/22','RR/MM/DD'),'0J');
Insert into COMMON_CODE (CODE_RULE,COMMON_NAME,UPDATE_DATE,COMMON_CODE) values ('k1','평사원',to_date('24/11/22','RR/MM/DD'),'0K');
Insert into COMMON_CODE (CODE_RULE,COMMON_NAME,UPDATE_DATE,COMMON_CODE) values ('k2','팀장',to_date('24/11/22','RR/MM/DD'),'0K');
Insert into COMMON_CODE (CODE_RULE,COMMON_NAME,UPDATE_DATE,COMMON_CODE) values ('k3','총책임자',to_date('24/11/22','RR/MM/DD'),'0K');
Insert into COMMON_CODE (CODE_RULE,COMMON_NAME,UPDATE_DATE,COMMON_CODE) values ('l1','신입',to_date('24/11/22','RR/MM/DD'),'0L');
Insert into COMMON_CODE (CODE_RULE,COMMON_NAME,UPDATE_DATE,COMMON_CODE) values ('l2','경력',to_date('24/11/22','RR/MM/DD'),'0L');
Insert into COMMON_CODE (CODE_RULE,COMMON_NAME,UPDATE_DATE,COMMON_CODE) values ('m1','재직',to_date('24/11/22','RR/MM/DD'),'0M');
Insert into COMMON_CODE (CODE_RULE,COMMON_NAME,UPDATE_DATE,COMMON_CODE) values ('m2','휴직',to_date('24/11/22','RR/MM/DD'),'0M');
Insert into COMMON_CODE (CODE_RULE,COMMON_NAME,UPDATE_DATE,COMMON_CODE) values ('m3','퇴직',to_date('24/11/22','RR/MM/DD'),'0M');
Insert into COMMON_CODE (CODE_RULE,COMMON_NAME,UPDATE_DATE,COMMON_CODE) values ('n1','미지급',to_date('24/11/22','RR/MM/DD'),'0N');
Insert into COMMON_CODE (CODE_RULE,COMMON_NAME,UPDATE_DATE,COMMON_CODE) values ('n2','지급완료',to_date('24/11/22','RR/MM/DD'),'0N');
Insert into COMMON_CODE (CODE_RULE,COMMON_NAME,UPDATE_DATE,COMMON_CODE) values ('o1','차변',to_date('24/11/22','RR/MM/DD'),'0O');
Insert into COMMON_CODE (CODE_RULE,COMMON_NAME,UPDATE_DATE,COMMON_CODE) values ('o2','대변',to_date('24/11/22','RR/MM/DD'),'0O');
Insert into COMMON_CODE (CODE_RULE,COMMON_NAME,UPDATE_DATE,COMMON_CODE) values ('p1','직위/직급 이동',to_date('24/11/22','RR/MM/DD'),'0P');
Insert into COMMON_CODE (CODE_RULE,COMMON_NAME,UPDATE_DATE,COMMON_CODE) values ('p2','부서 이동',to_date('24/11/22','RR/MM/DD'),'0P');
Insert into COMMON_CODE (CODE_RULE,COMMON_NAME,UPDATE_DATE,COMMON_CODE) values ('1','한국은행',to_date('24/11/25','RR/MM/DD'),'BK');
Insert into COMMON_CODE (CODE_RULE,COMMON_NAME,UPDATE_DATE,COMMON_CODE) values ('2','산업은행',to_date('24/11/25','RR/MM/DD'),'BK');
Insert into COMMON_CODE (CODE_RULE,COMMON_NAME,UPDATE_DATE,COMMON_CODE) values ('3','기업은행',to_date('24/11/25','RR/MM/DD'),'BK');
Insert into COMMON_CODE (CODE_RULE,COMMON_NAME,UPDATE_DATE,COMMON_CODE) values ('4','국민은행',to_date('24/11/25','RR/MM/DD'),'BK');
Insert into COMMON_CODE (CODE_RULE,COMMON_NAME,UPDATE_DATE,COMMON_CODE) values ('5','외환은행',to_date('24/11/25','RR/MM/DD'),'BK');
Insert into COMMON_CODE (CODE_RULE,COMMON_NAME,UPDATE_DATE,COMMON_CODE) values ('7','수협은행',to_date('24/11/25','RR/MM/DD'),'BK');
Insert into COMMON_CODE (CODE_RULE,COMMON_NAME,UPDATE_DATE,COMMON_CODE) values ('8','수출입은행',to_date('24/11/25','RR/MM/DD'),'BK');
Insert into COMMON_CODE (CODE_RULE,COMMON_NAME,UPDATE_DATE,COMMON_CODE) values ('11','농협은행',to_date('24/11/25','RR/MM/DD'),'BK');
Insert into COMMON_CODE (CODE_RULE,COMMON_NAME,UPDATE_DATE,COMMON_CODE) values ('12','농협회원조합',to_date('24/11/25','RR/MM/DD'),'BK');
Insert into COMMON_CODE (CODE_RULE,COMMON_NAME,UPDATE_DATE,COMMON_CODE) values ('20','우리은행',to_date('24/11/25','RR/MM/DD'),'BK');
Insert into COMMON_CODE (CODE_RULE,COMMON_NAME,UPDATE_DATE,COMMON_CODE) values ('23','SC제일은행',to_date('24/11/25','RR/MM/DD'),'BK');
Insert into COMMON_CODE (CODE_RULE,COMMON_NAME,UPDATE_DATE,COMMON_CODE) values ('26','서울은행',to_date('24/11/25','RR/MM/DD'),'BK');
Insert into COMMON_CODE (CODE_RULE,COMMON_NAME,UPDATE_DATE,COMMON_CODE) values ('27','한국씨티은행',to_date('24/11/25','RR/MM/DD'),'BK');
Insert into COMMON_CODE (CODE_RULE,COMMON_NAME,UPDATE_DATE,COMMON_CODE) values ('31','대구은행',to_date('24/11/25','RR/MM/DD'),'BK');
Insert into COMMON_CODE (CODE_RULE,COMMON_NAME,UPDATE_DATE,COMMON_CODE) values ('32','부산은행',to_date('24/11/25','RR/MM/DD'),'BK');
Insert into COMMON_CODE (CODE_RULE,COMMON_NAME,UPDATE_DATE,COMMON_CODE) values ('34','광주은행',to_date('24/11/25','RR/MM/DD'),'BK');
Insert into COMMON_CODE (CODE_RULE,COMMON_NAME,UPDATE_DATE,COMMON_CODE) values ('35','제주은행',to_date('24/11/25','RR/MM/DD'),'BK');
Insert into COMMON_CODE (CODE_RULE,COMMON_NAME,UPDATE_DATE,COMMON_CODE) values ('37','전북은행',to_date('24/11/25','RR/MM/DD'),'BK');
Insert into COMMON_CODE (CODE_RULE,COMMON_NAME,UPDATE_DATE,COMMON_CODE) values ('39','경남은행',to_date('24/11/25','RR/MM/DD'),'BK');
Insert into COMMON_CODE (CODE_RULE,COMMON_NAME,UPDATE_DATE,COMMON_CODE) values ('45','새마을금고연합회',to_date('24/11/25','RR/MM/DD'),'BK');
Insert into COMMON_CODE (CODE_RULE,COMMON_NAME,UPDATE_DATE,COMMON_CODE) values ('48','신협중앙회',to_date('24/11/25','RR/MM/DD'),'BK');
Insert into COMMON_CODE (CODE_RULE,COMMON_NAME,UPDATE_DATE,COMMON_CODE) values ('50','상호저축은행',to_date('24/11/25','RR/MM/DD'),'BK');
Insert into COMMON_CODE (CODE_RULE,COMMON_NAME,UPDATE_DATE,COMMON_CODE) values ('51','기타외국계은행',to_date('24/11/25','RR/MM/DD'),'BK');
Insert into COMMON_CODE (CODE_RULE,COMMON_NAME,UPDATE_DATE,COMMON_CODE) values ('52','모건스탠리은행',to_date('24/11/25','RR/MM/DD'),'BK');
Insert into COMMON_CODE (CODE_RULE,COMMON_NAME,UPDATE_DATE,COMMON_CODE) values ('54','HSBC은행',to_date('24/11/25','RR/MM/DD'),'BK');
Insert into COMMON_CODE (CODE_RULE,COMMON_NAME,UPDATE_DATE,COMMON_CODE) values ('55','도이치은행',to_date('24/11/25','RR/MM/DD'),'BK');
Insert into COMMON_CODE (CODE_RULE,COMMON_NAME,UPDATE_DATE,COMMON_CODE) values ('56','알비에스피엘씨은행',to_date('24/11/25','RR/MM/DD'),'BK');
Insert into COMMON_CODE (CODE_RULE,COMMON_NAME,UPDATE_DATE,COMMON_CODE) values ('57','제이피모간체이스은행',to_date('24/11/25','RR/MM/DD'),'BK');
Insert into COMMON_CODE (CODE_RULE,COMMON_NAME,UPDATE_DATE,COMMON_CODE) values ('58','미즈호코퍼레이트은행',to_date('24/11/25','RR/MM/DD'),'BK');
Insert into COMMON_CODE (CODE_RULE,COMMON_NAME,UPDATE_DATE,COMMON_CODE) values ('59','미쓰비시도쿄UFJ은행',to_date('24/11/25','RR/MM/DD'),'BK');
Insert into COMMON_CODE (CODE_RULE,COMMON_NAME,UPDATE_DATE,COMMON_CODE) values ('60','BOA',to_date('24/11/25','RR/MM/DD'),'BK');
Insert into COMMON_CODE (CODE_RULE,COMMON_NAME,UPDATE_DATE,COMMON_CODE) values ('61','비엔피파리바은행',to_date('24/11/25','RR/MM/DD'),'BK');
Insert into COMMON_CODE (CODE_RULE,COMMON_NAME,UPDATE_DATE,COMMON_CODE) values ('62','중국공상은행',to_date('24/11/25','RR/MM/DD'),'BK');
Insert into COMMON_CODE (CODE_RULE,COMMON_NAME,UPDATE_DATE,COMMON_CODE) values ('63','중국은행',to_date('24/11/25','RR/MM/DD'),'BK');
Insert into COMMON_CODE (CODE_RULE,COMMON_NAME,UPDATE_DATE,COMMON_CODE) values ('64','산림조합',to_date('24/11/25','RR/MM/DD'),'BK');
Insert into COMMON_CODE (CODE_RULE,COMMON_NAME,UPDATE_DATE,COMMON_CODE) values ('65','대화은행',to_date('24/11/25','RR/MM/DD'),'BK');
Insert into COMMON_CODE (CODE_RULE,COMMON_NAME,UPDATE_DATE,COMMON_CODE) values ('71','우체국',to_date('24/11/25','RR/MM/DD'),'BK');
Insert into COMMON_CODE (CODE_RULE,COMMON_NAME,UPDATE_DATE,COMMON_CODE) values ('76','신용보증기금',to_date('24/11/25','RR/MM/DD'),'BK');
Insert into COMMON_CODE (CODE_RULE,COMMON_NAME,UPDATE_DATE,COMMON_CODE) values ('77','기술신용보증기금',to_date('24/11/25','RR/MM/DD'),'BK');
Insert into COMMON_CODE (CODE_RULE,COMMON_NAME,UPDATE_DATE,COMMON_CODE) values ('81','하나은행',to_date('24/11/25','RR/MM/DD'),'BK');
Insert into COMMON_CODE (CODE_RULE,COMMON_NAME,UPDATE_DATE,COMMON_CODE) values ('88','신한은행',to_date('24/11/25','RR/MM/DD'),'BK');
Insert into COMMON_CODE (CODE_RULE,COMMON_NAME,UPDATE_DATE,COMMON_CODE) values ('89','케이뱅크',to_date('24/11/25','RR/MM/DD'),'BK');
Insert into COMMON_CODE (CODE_RULE,COMMON_NAME,UPDATE_DATE,COMMON_CODE) values ('90','카카오뱅크',to_date('24/11/25','RR/MM/DD'),'BK');
Insert into COMMON_CODE (CODE_RULE,COMMON_NAME,UPDATE_DATE,COMMON_CODE) values ('92','토스뱅크',to_date('24/11/25','RR/MM/DD'),'BK');
Insert into COMMON_CODE (CODE_RULE,COMMON_NAME,UPDATE_DATE,COMMON_CODE) values ('93','한국주택금융공사',to_date('24/11/25','RR/MM/DD'),'BK');
Insert into COMMON_CODE (CODE_RULE,COMMON_NAME,UPDATE_DATE,COMMON_CODE) values ('94','서울보증보험',to_date('24/11/25','RR/MM/DD'),'BK');
Insert into COMMON_CODE (CODE_RULE,COMMON_NAME,UPDATE_DATE,COMMON_CODE) values ('95','경찰청',to_date('24/11/25','RR/MM/DD'),'BK');
Insert into COMMON_CODE (CODE_RULE,COMMON_NAME,UPDATE_DATE,COMMON_CODE) values ('99','금융결제원',to_date('24/11/25','RR/MM/DD'),'BK');
Insert into COMMON_CODE (CODE_RULE,COMMON_NAME,UPDATE_DATE,COMMON_CODE) values ('209','동양종합금융증권',to_date('24/11/25','RR/MM/DD'),'BK');
Insert into COMMON_CODE (CODE_RULE,COMMON_NAME,UPDATE_DATE,COMMON_CODE) values ('218','현대증권',to_date('24/11/25','RR/MM/DD'),'BK');
Insert into COMMON_CODE (CODE_RULE,COMMON_NAME,UPDATE_DATE,COMMON_CODE) values ('230','미래에셋증권',to_date('24/11/25','RR/MM/DD'),'BK');
Insert into COMMON_CODE (CODE_RULE,COMMON_NAME,UPDATE_DATE,COMMON_CODE) values ('238','대우증권',to_date('24/11/25','RR/MM/DD'),'BK');
Insert into COMMON_CODE (CODE_RULE,COMMON_NAME,UPDATE_DATE,COMMON_CODE) values ('240','삼성증권',to_date('24/11/25','RR/MM/DD'),'BK');
Insert into COMMON_CODE (CODE_RULE,COMMON_NAME,UPDATE_DATE,COMMON_CODE) values ('243','한국투자증권',to_date('24/11/25','RR/MM/DD'),'BK');
Insert into COMMON_CODE (CODE_RULE,COMMON_NAME,UPDATE_DATE,COMMON_CODE) values ('247','NH투자증권',to_date('24/11/25','RR/MM/DD'),'BK');
Insert into COMMON_CODE (CODE_RULE,COMMON_NAME,UPDATE_DATE,COMMON_CODE) values ('261','교보증권',to_date('24/11/25','RR/MM/DD'),'BK');
Insert into COMMON_CODE (CODE_RULE,COMMON_NAME,UPDATE_DATE,COMMON_CODE) values ('262','하이투자증권',to_date('24/11/25','RR/MM/DD'),'BK');
Insert into COMMON_CODE (CODE_RULE,COMMON_NAME,UPDATE_DATE,COMMON_CODE) values ('263','에이치엠씨투자증권',to_date('24/11/25','RR/MM/DD'),'BK');
Insert into COMMON_CODE (CODE_RULE,COMMON_NAME,UPDATE_DATE,COMMON_CODE) values ('264','키움증권',to_date('24/11/25','RR/MM/DD'),'BK');
Insert into COMMON_CODE (CODE_RULE,COMMON_NAME,UPDATE_DATE,COMMON_CODE) values ('265','이트레이드증권',to_date('24/11/25','RR/MM/DD'),'BK');
Insert into COMMON_CODE (CODE_RULE,COMMON_NAME,UPDATE_DATE,COMMON_CODE) values ('266','SK증권',to_date('24/11/25','RR/MM/DD'),'BK');
Insert into COMMON_CODE (CODE_RULE,COMMON_NAME,UPDATE_DATE,COMMON_CODE) values ('267','대신증권',to_date('24/11/25','RR/MM/DD'),'BK');
Insert into COMMON_CODE (CODE_RULE,COMMON_NAME,UPDATE_DATE,COMMON_CODE) values ('268','솔로몬투자증권',to_date('24/11/25','RR/MM/DD'),'BK');
Insert into COMMON_CODE (CODE_RULE,COMMON_NAME,UPDATE_DATE,COMMON_CODE) values ('269','한화증권',to_date('24/11/25','RR/MM/DD'),'BK');
Insert into COMMON_CODE (CODE_RULE,COMMON_NAME,UPDATE_DATE,COMMON_CODE) values ('270','하나대투증권',to_date('24/11/25','RR/MM/DD'),'BK');
Insert into COMMON_CODE (CODE_RULE,COMMON_NAME,UPDATE_DATE,COMMON_CODE) values ('278','신한금융투자',to_date('24/11/25','RR/MM/DD'),'BK');
Insert into COMMON_CODE (CODE_RULE,COMMON_NAME,UPDATE_DATE,COMMON_CODE) values ('279','동부증권',to_date('24/11/25','RR/MM/DD'),'BK');
Insert into COMMON_CODE (CODE_RULE,COMMON_NAME,UPDATE_DATE,COMMON_CODE) values ('280','유진투자증권',to_date('24/11/25','RR/MM/DD'),'BK');
Insert into COMMON_CODE (CODE_RULE,COMMON_NAME,UPDATE_DATE,COMMON_CODE) values ('287','메리츠증권',to_date('24/11/25','RR/MM/DD'),'BK');
Insert into COMMON_CODE (CODE_RULE,COMMON_NAME,UPDATE_DATE,COMMON_CODE) values ('289','엔에이치투자증권',to_date('24/11/25','RR/MM/DD'),'BK');
Insert into COMMON_CODE (CODE_RULE,COMMON_NAME,UPDATE_DATE,COMMON_CODE) values ('290','부국증권',to_date('24/11/25','RR/MM/DD'),'BK');
Insert into COMMON_CODE (CODE_RULE,COMMON_NAME,UPDATE_DATE,COMMON_CODE) values ('291','신영증권',to_date('24/11/25','RR/MM/DD'),'BK');
Insert into COMMON_CODE (CODE_RULE,COMMON_NAME,UPDATE_DATE,COMMON_CODE) values ('292','엘아이지투자증권',to_date('24/11/25','RR/MM/DD'),'BK');
Insert into COMMON_CODE (CODE_RULE,COMMON_NAME,UPDATE_DATE,COMMON_CODE) values ('r1','미발행',to_date('24/11/27','RR/MM/DD'),'0R');
Insert into COMMON_CODE (CODE_RULE,COMMON_NAME,UPDATE_DATE,COMMON_CODE) values ('r2','발행',to_date('24/11/27','RR/MM/DD'),'0R');
Insert into COMMON_CODE (CODE_RULE,COMMON_NAME,UPDATE_DATE,COMMON_CODE) values ('i1','일반',to_date('24/11/27','RR/MM/DD'),'0I');
Insert into COMMON_CODE (CODE_RULE,COMMON_NAME,UPDATE_DATE,COMMON_CODE) values ('i2','휴가',to_date('24/11/27','RR/MM/DD'),'0I');
Insert into COMMON_CODE (CODE_RULE,COMMON_NAME,UPDATE_DATE,COMMON_CODE) values ('i3','기타',to_date('24/11/27','RR/MM/DD'),'0I');
Insert into COMMON_CODE (CODE_RULE,COMMON_NAME,UPDATE_DATE,COMMON_CODE) values ('f3','국세청 전송 완료',to_date('24/11/28','RR/MM/DD'),'0F');
Insert into COMMON_CODE (CODE_RULE,COMMON_NAME,UPDATE_DATE,COMMON_CODE) values ('i4','공제',to_date('24/11/29','RR/MM/DD'),'0I');
Insert into COMMON_CODE (CODE_RULE,COMMON_NAME,UPDATE_DATE,COMMON_CODE) values ('g4','해지',to_date('24/12/03','RR/MM/DD'),'0G');
Insert into COMMON_CODE (CODE_RULE,COMMON_NAME,UPDATE_DATE,COMMON_CODE) values ('h1','사원',to_date('24/12/02','RR/MM/DD'),'0H');
Insert into COMMON_CODE (CODE_RULE,COMMON_NAME,UPDATE_DATE,COMMON_CODE) values ('h2','대리',to_date('24/12/02','RR/MM/DD'),'0H');
Insert into COMMON_CODE (CODE_RULE,COMMON_NAME,UPDATE_DATE,COMMON_CODE) values ('h3','과장',to_date('24/12/02','RR/MM/DD'),'0H');
Insert into COMMON_CODE (CODE_RULE,COMMON_NAME,UPDATE_DATE,COMMON_CODE) values ('h4','차장',to_date('24/12/02','RR/MM/DD'),'0H');
Insert into COMMON_CODE (CODE_RULE,COMMON_NAME,UPDATE_DATE,COMMON_CODE) values ('h5','부장',to_date('24/12/02','RR/MM/DD'),'0H');
REM INSERTING into COMPANY
SET DEFINE OFF;
REM INSERTING into CONTRACT
SET DEFINE OFF;
Insert into CONTRACT (CON_NO,CLIENT_CODE,EMOLOYEE_NAME,CON_NAME,CON_SDATE,CON_EDATE,CON_DATE,TOTAL_AMOUNT,STATUS,URL,WRITER,EMOPLOYEE_CODE,SUMMARY,UPDATE_URL) values ('CON-20241210042','client26','최미영','[2025년]  둥근 플라스틱 컵 단가 계약 건',to_date('25/01/01','RR/MM/DD'),to_date('25/12/31','RR/MM/DD'),to_date('24/12/10','RR/MM/DD'),0,'g1',null,'차은우','177',null,null);
Insert into CONTRACT (CON_NO,CLIENT_CODE,EMOLOYEE_NAME,CON_NAME,CON_SDATE,CON_EDATE,CON_DATE,TOTAL_AMOUNT,STATUS,URL,WRITER,EMOPLOYEE_CODE,SUMMARY,UPDATE_URL) values ('CON-20241211050','client63','진솔미','2024년 커피 머신 매입 단가 계약',to_date('24/01/01','RR/MM/DD'),to_date('24/12/31','RR/MM/DD'),to_date('23/12/15','RR/MM/DD'),0,'g1',null,'차은우','158',null,null);
Insert into CONTRACT (CON_NO,CLIENT_CODE,EMOLOYEE_NAME,CON_NAME,CON_SDATE,CON_EDATE,CON_DATE,TOTAL_AMOUNT,STATUS,URL,WRITER,EMOPLOYEE_CODE,SUMMARY,UPDATE_URL) values ('CON-20241210044','client27','진솔미','[2025년] 빨대  단가 계약',to_date('25/01/01','RR/MM/DD'),to_date('25/12/31','RR/MM/DD'),to_date('24/12/09','RR/MM/DD'),0,'g1',null,'차은우','158',null,null);
Insert into CONTRACT (CON_NO,CLIENT_CODE,EMOLOYEE_NAME,CON_NAME,CON_SDATE,CON_EDATE,CON_DATE,TOTAL_AMOUNT,STATUS,URL,WRITER,EMOPLOYEE_CODE,SUMMARY,UPDATE_URL) values ('CON-20241211051','client64','김철수','2024년 원두 납품 단가 계약',to_date('24/01/01','RR/MM/DD'),to_date('24/12/31','RR/MM/DD'),to_date('23/12/15','RR/MM/DD'),0,'g1',null,'차은우','175',null,null);
Insert into CONTRACT (CON_NO,CLIENT_CODE,EMOLOYEE_NAME,CON_NAME,CON_SDATE,CON_EDATE,CON_DATE,TOTAL_AMOUNT,STATUS,URL,WRITER,EMOPLOYEE_CODE,SUMMARY,UPDATE_URL) values ('CON-20241211052','client65','김영희','2024년 디저트 재료 매입 단가 계약',to_date('24/01/01','RR/MM/DD'),to_date('24/12/31','RR/MM/DD'),to_date('23/12/16','RR/MM/DD'),0,'g1',null,'차은우','176',null,null);
Insert into CONTRACT (CON_NO,CLIENT_CODE,EMOLOYEE_NAME,CON_NAME,CON_SDATE,CON_EDATE,CON_DATE,TOTAL_AMOUNT,STATUS,URL,WRITER,EMOPLOYEE_CODE,SUMMARY,UPDATE_URL) values ('CON-20241211053','client66','진솔미','2024년 커피 머신 유지보수 계약',to_date('24/01/01','RR/MM/DD'),to_date('24/12/31','RR/MM/DD'),to_date('23/12/17','RR/MM/DD'),0,'g4',null,'차은우','158',null,null);
Insert into CONTRACT (CON_NO,CLIENT_CODE,EMOLOYEE_NAME,CON_NAME,CON_SDATE,CON_EDATE,CON_DATE,TOTAL_AMOUNT,STATUS,URL,WRITER,EMOPLOYEE_CODE,SUMMARY,UPDATE_URL) values ('CON-20241211054','client31','유석진','2024년 원두 및 디저트 재료 계약',to_date('24/01/01','RR/MM/DD'),to_date('24/12/31','RR/MM/DD'),to_date('23/12/15','RR/MM/DD'),0,'g1',null,'차은우','151',null,null);
Insert into CONTRACT (CON_NO,CLIENT_CODE,EMOLOYEE_NAME,CON_NAME,CON_SDATE,CON_EDATE,CON_DATE,TOTAL_AMOUNT,STATUS,URL,WRITER,EMOPLOYEE_CODE,SUMMARY,UPDATE_URL) values ('CON-20241211055','client68','김갑순','2024년 초콜릿 및 커피 재료 계약',to_date('24/01/01','RR/MM/DD'),to_date('24/12/31','RR/MM/DD'),to_date('23/12/16','RR/MM/DD'),0,'g4',null,'차은우','174',null,null);
Insert into CONTRACT (CON_NO,CLIENT_CODE,EMOLOYEE_NAME,CON_NAME,CON_SDATE,CON_EDATE,CON_DATE,TOTAL_AMOUNT,STATUS,URL,WRITER,EMOPLOYEE_CODE,SUMMARY,UPDATE_URL) values ('CON-20241211056','client69','최미영','2024년 커피머신 유지보수 계약',to_date('24/01/01','RR/MM/DD'),to_date('24/12/31','RR/MM/DD'),to_date('23/12/17','RR/MM/DD'),0,'g1',null,'차은우','177',null,null);
Insert into CONTRACT (CON_NO,CLIENT_CODE,EMOLOYEE_NAME,CON_NAME,CON_SDATE,CON_EDATE,CON_DATE,TOTAL_AMOUNT,STATUS,URL,WRITER,EMOPLOYEE_CODE,SUMMARY,UPDATE_URL) values ('CON-20251211001','client63','진솔미','2025년 프리미엄 원두 매입 단가 계약',to_date('25/01/01','RR/MM/DD'),to_date('25/12/31','RR/MM/DD'),to_date('24/12/20','RR/MM/DD'),0,'g1',null,'차은우','158',null,null);
Insert into CONTRACT (CON_NO,CLIENT_CODE,EMOLOYEE_NAME,CON_NAME,CON_SDATE,CON_EDATE,CON_DATE,TOTAL_AMOUNT,STATUS,URL,WRITER,EMOPLOYEE_CODE,SUMMARY,UPDATE_URL) values ('CON-20251211002','client64','유석진','2025년 디저트 재료 매입 단가 계약',to_date('25/01/01','RR/MM/DD'),to_date('25/12/31','RR/MM/DD'),to_date('24/12/21','RR/MM/DD'),0,'g3',null,'차은우','151',null,null);
Insert into CONTRACT (CON_NO,CLIENT_CODE,EMOLOYEE_NAME,CON_NAME,CON_SDATE,CON_EDATE,CON_DATE,TOTAL_AMOUNT,STATUS,URL,WRITER,EMOPLOYEE_CODE,SUMMARY,UPDATE_URL) values ('CON-20251211003','client65','권혁태','2025년 커피머신 유지보수 계약',to_date('25/01/01','RR/MM/DD'),to_date('25/12/31','RR/MM/DD'),to_date('24/12/22','RR/MM/DD'),0,'g1','계약_데이터.pdf','차은우','160',null,'2024/12/11/2c6b01c3-30e0-4b49-8d8d-78cf3ed767d2_계약_데이터.pdf');
Insert into CONTRACT (CON_NO,CLIENT_CODE,EMOLOYEE_NAME,CON_NAME,CON_SDATE,CON_EDATE,CON_DATE,TOTAL_AMOUNT,STATUS,URL,WRITER,EMOPLOYEE_CODE,SUMMARY,UPDATE_URL) values ('CON-20251220001','client63','김갑순','2025년 원두 납품 계약',to_date('25/01/01','RR/MM/DD'),to_date('25/12/31','RR/MM/DD'),to_date('24/12/20','RR/MM/DD'),0,'g1',null,'차은우','174',null,null);
Insert into CONTRACT (CON_NO,CLIENT_CODE,EMOLOYEE_NAME,CON_NAME,CON_SDATE,CON_EDATE,CON_DATE,TOTAL_AMOUNT,STATUS,URL,WRITER,EMOPLOYEE_CODE,SUMMARY,UPDATE_URL) values ('CON-20251220002','client64','최미영','2025년 커피머신 유지보수 계약',to_date('25/01/01','RR/MM/DD'),to_date('25/12/31','RR/MM/DD'),to_date('24/12/21','RR/MM/DD'),0,'g1',null,'차은우','177',null,null);
Insert into CONTRACT (CON_NO,CLIENT_CODE,EMOLOYEE_NAME,CON_NAME,CON_SDATE,CON_EDATE,CON_DATE,TOTAL_AMOUNT,STATUS,URL,WRITER,EMOPLOYEE_CODE,SUMMARY,UPDATE_URL) values ('CON-20251220003','client65','진솔미','2025년 디저트 및 초콜릿 납품 계약',to_date('25/01/01','RR/MM/DD'),to_date('25/12/31','RR/MM/DD'),to_date('24/12/22','RR/MM/DD'),0,'g1',null,'차은우','158',null,null);
Insert into CONTRACT (CON_NO,CLIENT_CODE,EMOLOYEE_NAME,CON_NAME,CON_SDATE,CON_EDATE,CON_DATE,TOTAL_AMOUNT,STATUS,URL,WRITER,EMOPLOYEE_CODE,SUMMARY,UPDATE_URL) values ('CON-20241212059','client23','권혁태','일산 원두 계약',to_date('24/12/13','RR/MM/DD'),to_date('25/04/17','RR/MM/DD'),to_date('24/12/12','RR/MM/DD'),79850000,'g1',null,'차은우','160','일산 원두 계약 종류 2건',null);
Insert into CONTRACT (CON_NO,CLIENT_CODE,EMOLOYEE_NAME,CON_NAME,CON_SDATE,CON_EDATE,CON_DATE,TOTAL_AMOUNT,STATUS,URL,WRITER,EMOPLOYEE_CODE,SUMMARY,UPDATE_URL) values ('CON-20241210040','client31','진솔미','[2024] 디카페인 원두 계약',to_date('24/01/01','RR/MM/DD'),to_date('24/12/31','RR/MM/DD'),to_date('24/01/01','RR/MM/DD'),0,'g1','거래계약서.pdf','차은우','158',null,'2024/12/10/13d26591-ba33-45cc-b9e3-ad8c94f9fb1e_거래계약서.pdf');
Insert into CONTRACT (CON_NO,CLIENT_CODE,EMOLOYEE_NAME,CON_NAME,CON_SDATE,CON_EDATE,CON_DATE,TOTAL_AMOUNT,STATUS,URL,WRITER,EMOPLOYEE_CODE,SUMMARY,UPDATE_URL) values ('CON-20241210041','client23','권혁태','[2024] 아라비카(Arabica)',to_date('24/01/01','RR/MM/DD'),to_date('24/12/31','RR/MM/DD'),to_date('23/12/14','RR/MM/DD'),64000000,'g1',null,'차은우','160',null,null);
REM INSERTING into CONTRACT_ITEM
SET DEFINE OFF;
Insert into CONTRACT_ITEM (ITEM_NAME,PRICE,STOCKS_QUANTITY,SUPPLY_PRICE,VAT,CON_NO,ITEM_CODE,TOTAL_PRICE,IMAGE) values ('로부스타(Robusta)',6500,2510,6500,650,'CON-20241210041','MANGO-12057',7150,'2024/12/16/5676702a-faa5-4181-8e12-107b60130a9b_bean5.jpg');
Insert into CONTRACT_ITEM (ITEM_NAME,PRICE,STOCKS_QUANTITY,SUPPLY_PRICE,VAT,CON_NO,ITEM_CODE,TOTAL_PRICE,IMAGE) values ('둥금 플라스틱 컵',12,7100,12,1,'CON-20241210042','MANGO-12058',13,'2024/12/11/c45f7a32-1df2-4a99-a226-6668d14b68cc_kevin-lehtla-tPJI_XIMDHE-unsplash.jpg');
Insert into CONTRACT_ITEM (ITEM_NAME,PRICE,STOCKS_QUANTITY,SUPPLY_PRICE,VAT,CON_NO,ITEM_CODE,TOTAL_PRICE,IMAGE) values ('고급 커피머신',7800000,130,7800000,780000,'CON-20241211050','MANGO-12068',8580000,'2024/12/13/f1e6408e-69c4-4a44-a638-93f253a7522f_machine2.jpg');
Insert into CONTRACT_ITEM (ITEM_NAME,PRICE,STOCKS_QUANTITY,SUPPLY_PRICE,VAT,CON_NO,ITEM_CODE,TOTAL_PRICE,IMAGE) values ('얇은 빨대(0.7cm)150개입',1500,2319,1500,150,'CON-20241210044','MANGO-12060',1650,'2024/12/11/5bde83dd-e9d3-404d-8de4-36eec18c6e55_ravi-sharma-vOg6y5_npuY-unsplash.jpg');
Insert into CONTRACT_ITEM (ITEM_NAME,PRICE,STOCKS_QUANTITY,SUPPLY_PRICE,VAT,CON_NO,ITEM_CODE,TOTAL_PRICE,IMAGE) values ('종이 빨대(0.7cm)150개입',2000,3100,2000,200,'CON-20241210044','MANGO-12061',2200,'2024/12/11/d08d7ca6-7515-47ce-b6c6-c8c319d129e8_ravi-sharma-vOg6y5_npuY-unsplash.jpg');
Insert into CONTRACT_ITEM (ITEM_NAME,PRICE,STOCKS_QUANTITY,SUPPLY_PRICE,VAT,CON_NO,ITEM_CODE,TOTAL_PRICE,IMAGE) values ('굵은 빨대(1.0cm)150개입',1600,2620,1600,160,'CON-20241210044','MANGO-12062',1760,'2024/12/11/0ac2507f-1660-4dcf-8c25-e7347e72b5a4_thoa-ngo-FWrvze4cqu4-unsplash.jpg');
Insert into CONTRACT_ITEM (ITEM_NAME,PRICE,STOCKS_QUANTITY,SUPPLY_PRICE,VAT,CON_NO,ITEM_CODE,TOTAL_PRICE,IMAGE) values ('중형 커피머신',3000000,350,3000000,300000,'CON-20241211050','MANGO-12069',3300000,'2024/12/11/ed9ec134-b8fc-4c57-971f-e630475d8b6e_machine2.jpg');
Insert into CONTRACT_ITEM (ITEM_NAME,PRICE,STOCKS_QUANTITY,SUPPLY_PRICE,VAT,CON_NO,ITEM_CODE,TOTAL_PRICE,IMAGE) values ('스페셜티 원두',500000,600,500000,50000,'CON-20241211051','MANGO-13001',550000,'2024/12/11/dba1e547-a0c9-4e96-90f1-fbd8395108dd_bean5.jpg');
Insert into CONTRACT_ITEM (ITEM_NAME,PRICE,STOCKS_QUANTITY,SUPPLY_PRICE,VAT,CON_NO,ITEM_CODE,TOTAL_PRICE,IMAGE) values ('일반 원두',300000,600,300000,30000,'CON-20241211051','MANGO-13002',330000,'2024/12/11/d6b3a50b-ca7b-4232-ab93-4c349d189c96_bean6.jpg');
Insert into CONTRACT_ITEM (ITEM_NAME,PRICE,STOCKS_QUANTITY,SUPPLY_PRICE,VAT,CON_NO,ITEM_CODE,TOTAL_PRICE,IMAGE) values ('케이크 믹스',120000,1100,120000,12000,'CON-20241211052','MANGO-13003',132000,'2024/12/11/706c661d-3826-4e6e-bc2c-27043b5d6d10_bean6.jpg');
Insert into CONTRACT_ITEM (ITEM_NAME,PRICE,STOCKS_QUANTITY,SUPPLY_PRICE,VAT,CON_NO,ITEM_CODE,TOTAL_PRICE,IMAGE) values ('초콜릿 소스',80000,950,80000,8000,'CON-20241211052','MANGO-13004',88000,'2024/12/11/ed8e7eb4-d5fa-4bbc-887f-d52d14830069_kaffee-meister-XhWntGj2N98-unsplash.jpg');
Insert into CONTRACT_ITEM (ITEM_NAME,PRICE,STOCKS_QUANTITY,SUPPLY_PRICE,VAT,CON_NO,ITEM_CODE,TOTAL_PRICE,IMAGE) values ('커피 머신 필터',500000,2000,500000,50000,'CON-20241211053','MANGO-13005',550000,'2024/12/11/22fb38e3-a8e0-4978-888a-66b595f97a7b_coffieFilter.jpg');
Insert into CONTRACT_ITEM (ITEM_NAME,PRICE,STOCKS_QUANTITY,SUPPLY_PRICE,VAT,CON_NO,ITEM_CODE,TOTAL_PRICE,IMAGE) values ('커피머신 부품 A',300000,2000,300000,30000,'CON-20241211053','MANGO-13006',330000,'2024/12/11/4c93688f-d12e-4e3a-a633-b070ef6d3bc6_gomi-sT0j3kkpRu8-unsplash.jpg');
Insert into CONTRACT_ITEM (ITEM_NAME,PRICE,STOCKS_QUANTITY,SUPPLY_PRICE,VAT,CON_NO,ITEM_CODE,TOTAL_PRICE,IMAGE) values ('프리미엄 원두',800000,1860,800000,80000,'CON-20241211054','ITEM-1001',880000,'2024/12/11/981b5dc7-4e1d-42ab-9ebc-6c313d0e9f0a_bean2.jpg');
Insert into CONTRACT_ITEM (ITEM_NAME,PRICE,STOCKS_QUANTITY,SUPPLY_PRICE,VAT,CON_NO,ITEM_CODE,TOTAL_PRICE,IMAGE) values ('베이킹 믹스',600000,2160,600000,60000,'CON-20241211054','ITEM-1002',660000,'2024/12/11/1a8e0719-81ad-4f8e-ad10-a0b4aa4ccd7c_bakingPowder.jpg');
Insert into CONTRACT_ITEM (ITEM_NAME,PRICE,STOCKS_QUANTITY,SUPPLY_PRICE,VAT,CON_NO,ITEM_CODE,TOTAL_PRICE,IMAGE) values ('초콜릿 소스',400000,1000,400000,40000,'CON-20241211055','ITEM-2001',440000,'2024/12/11/b7283a19-a88a-42c6-8db8-2377f0e3dad6_kaffee-meister-XhWntGj2N98-unsplash.jpg');
Insert into CONTRACT_ITEM (ITEM_NAME,PRICE,STOCKS_QUANTITY,SUPPLY_PRICE,VAT,CON_NO,ITEM_CODE,TOTAL_PRICE,IMAGE) values ('에스프레소 원두',1200000,1700,1200000,120000,'CON-20241211055','ITEM-2002',1320000,'2024/12/11/5895b8b3-1b24-4fca-a9e3-74954e3c0c2a_bean1.jpg');
Insert into CONTRACT_ITEM (ITEM_NAME,PRICE,STOCKS_QUANTITY,SUPPLY_PRICE,VAT,CON_NO,ITEM_CODE,TOTAL_PRICE,IMAGE) values ('커피 머신 필터',200000,1970,200000,20000,'CON-20241211056','ITEM-3001',220000,'2024/12/11/ae54b6ba-8d3d-4955-89f8-db488ae6c8ea_coffieFilter.jpg');
Insert into CONTRACT_ITEM (ITEM_NAME,PRICE,STOCKS_QUANTITY,SUPPLY_PRICE,VAT,CON_NO,ITEM_CODE,TOTAL_PRICE,IMAGE) values ('유지보수 부품 A',150000,2000,150000,15000,'CON-20241211056','ITEM-3002',165000,'2024/12/11/0b9833ef-5219-4c63-919d-bd189b70d499_gomi-sT0j3kkpRu8-unsplash.jpg');
Insert into CONTRACT_ITEM (ITEM_NAME,PRICE,STOCKS_QUANTITY,SUPPLY_PRICE,VAT,CON_NO,ITEM_CODE,TOTAL_PRICE,IMAGE) values ('프리미엄 원두',850000,400,850000,85000,'CON-20251211001','ITEM-4001',935000,'2024/12/12/ed6b935e-364c-4e51-a70f-e3bda6b4ce10_bean3.jpg');
Insert into CONTRACT_ITEM (ITEM_NAME,PRICE,STOCKS_QUANTITY,SUPPLY_PRICE,VAT,CON_NO,ITEM_CODE,TOTAL_PRICE,IMAGE) values ('스페셜티 원두',950000,400,950000,95000,'CON-20251211001','ITEM-4002',1045000,'2024/12/12/bcfba2b6-d3bd-4271-a258-fea4c2524269_bean5.jpg');
Insert into CONTRACT_ITEM (ITEM_NAME,PRICE,STOCKS_QUANTITY,SUPPLY_PRICE,VAT,CON_NO,ITEM_CODE,TOTAL_PRICE,IMAGE) values ('초콜릿 소스',420000,558,420000,42000,'CON-20251211002','ITEM-5001',462000,'2024/12/11/101f0c11-dcb3-47e2-b378-0f514a5edf0c_kaffee-meister-XhWntGj2N98-unsplash.jpg');
Insert into CONTRACT_ITEM (ITEM_NAME,PRICE,STOCKS_QUANTITY,SUPPLY_PRICE,VAT,CON_NO,ITEM_CODE,TOTAL_PRICE,IMAGE) values ('베이킹 믹스',600000,720,600000,60000,'CON-20251211002','ITEM-5002',660000,'2024/12/11/7f9d122d-6b85-4a6d-837e-77284da5e6b6_bakingPowder.jpg');
Insert into CONTRACT_ITEM (ITEM_NAME,PRICE,STOCKS_QUANTITY,SUPPLY_PRICE,VAT,CON_NO,ITEM_CODE,TOTAL_PRICE,IMAGE) values ('커피 머신 필터',220000,1100,220000,22000,'CON-20251211003','ITEM-6001',242000,'2024/12/11/9e5a81a4-91cb-4863-a04e-c685db27e0fd_coffieFilter.jpg');
Insert into CONTRACT_ITEM (ITEM_NAME,PRICE,STOCKS_QUANTITY,SUPPLY_PRICE,VAT,CON_NO,ITEM_CODE,TOTAL_PRICE,IMAGE) values ('유지보수 부품 B',160000,1085,160000,16000,'CON-20251211003','ITEM-6002',176000,'2024/12/11/2ada3ba0-fbbe-4255-b30d-1d577fdf650a_lightBulb.jpg');
Insert into CONTRACT_ITEM (ITEM_NAME,PRICE,STOCKS_QUANTITY,SUPPLY_PRICE,VAT,CON_NO,ITEM_CODE,TOTAL_PRICE,IMAGE) values ('스페셜티 원두',850000,390,850000,85000,'CON-20251220001','ITEM-7001',935000,'2024/12/11/5c898016-26a3-487f-b1fd-bf32c4444b41_bean3.jpg');
Insert into CONTRACT_ITEM (ITEM_NAME,PRICE,STOCKS_QUANTITY,SUPPLY_PRICE,VAT,CON_NO,ITEM_CODE,TOTAL_PRICE,IMAGE) values ('초콜릿 소스',450000,400,450000,45000,'CON-20251220001','ITEM-7002',495000,'2024/12/12/5ab04a30-0a6d-46d3-99b5-2046dcf4a193_kaffee-meister-XhWntGj2N98-unsplash.jpg');
Insert into CONTRACT_ITEM (ITEM_NAME,PRICE,STOCKS_QUANTITY,SUPPLY_PRICE,VAT,CON_NO,ITEM_CODE,TOTAL_PRICE,IMAGE) values ('커피머신 필터',250000,600,250000,25000,'CON-20251220002','ITEM-7003',275000,'2024/12/11/9cb406c7-1a41-42d2-865a-e974f295f0df_coffieFilter.jpg');
Insert into CONTRACT_ITEM (ITEM_NAME,PRICE,STOCKS_QUANTITY,SUPPLY_PRICE,VAT,CON_NO,ITEM_CODE,TOTAL_PRICE,IMAGE) values ('유지보수 부품 A',300000,600,300000,30000,'CON-20251220002','ITEM-7004',330000,'2024/12/11/5f5144dd-9792-4cc3-b5bd-23ad8a352a3d_lightBulb.jpg');
Insert into CONTRACT_ITEM (ITEM_NAME,PRICE,STOCKS_QUANTITY,SUPPLY_PRICE,VAT,CON_NO,ITEM_CODE,TOTAL_PRICE,IMAGE) values ('디저트 믹스',500000,1100,500000,50000,'CON-20251220003','ITEM-7005',550000,'2024/12/11/31bd9be5-39f8-45d1-8fb0-720d667fa819_bean5.jpg');
Insert into CONTRACT_ITEM (ITEM_NAME,PRICE,STOCKS_QUANTITY,SUPPLY_PRICE,VAT,CON_NO,ITEM_CODE,TOTAL_PRICE,IMAGE) values ('초콜릿 재료',450000,1100,450000,45000,'CON-20251220003','ITEM-7006',495000,null);
Insert into CONTRACT_ITEM (ITEM_NAME,PRICE,STOCKS_QUANTITY,SUPPLY_PRICE,VAT,CON_NO,ITEM_CODE,TOTAL_PRICE,IMAGE) values ('에스프레소 원두',700000,0,700000,70000,'CON-20251220004','ITEM-7007',770000,null);
Insert into CONTRACT_ITEM (ITEM_NAME,PRICE,STOCKS_QUANTITY,SUPPLY_PRICE,VAT,CON_NO,ITEM_CODE,TOTAL_PRICE,IMAGE) values ('커피믹스',300000,0,300000,30000,'CON-20251220004','ITEM-7008',330000,null);
Insert into CONTRACT_ITEM (ITEM_NAME,PRICE,STOCKS_QUANTITY,SUPPLY_PRICE,VAT,CON_NO,ITEM_CODE,TOTAL_PRICE,IMAGE) values ('유지보수 부품 B',400000,0,400000,40000,'CON-20251220005','ITEM-7009',440000,null);
Insert into CONTRACT_ITEM (ITEM_NAME,PRICE,STOCKS_QUANTITY,SUPPLY_PRICE,VAT,CON_NO,ITEM_CODE,TOTAL_PRICE,IMAGE) values ('커피머신 필터 대형',600000,0,600000,60000,'CON-20251220005','ITEM-7010',660000,null);
Insert into CONTRACT_ITEM (ITEM_NAME,PRICE,STOCKS_QUANTITY,SUPPLY_PRICE,VAT,CON_NO,ITEM_CODE,TOTAL_PRICE,IMAGE) values ('(일산) 과테말라 원두',8000,3810,8000,800,'CON-20241212059','MANGO-12072',8800,null);
Insert into CONTRACT_ITEM (ITEM_NAME,PRICE,STOCKS_QUANTITY,SUPPLY_PRICE,VAT,CON_NO,ITEM_CODE,TOTAL_PRICE,IMAGE) values ('(일산) 케냐 원두',9000,4980,9000,900,'CON-20241212059','MANGO-12073',9900,null);
Insert into CONTRACT_ITEM (ITEM_NAME,PRICE,STOCKS_QUANTITY,SUPPLY_PRICE,VAT,CON_NO,ITEM_CODE,TOTAL_PRICE,IMAGE) values ('디카페인 원두(에티오피아산)',70,2170,70,7,'CON-20241210040','MANGO-12055',77,'2024/12/11/db231e28-2ae7-46d4-a267-487df349ef62_bean3.jpg');
Insert into CONTRACT_ITEM (ITEM_NAME,PRICE,STOCKS_QUANTITY,SUPPLY_PRICE,VAT,CON_NO,ITEM_CODE,TOTAL_PRICE,IMAGE) values ('아라비카(Arabica)',13000,28,13000,1300,'CON-20241210041','MANGO-12056',14300,'2024/12/11/e43a4c9f-d68f-479a-b83f-27bd328c1b46_bean7.jpg');
REM INSERTING into DEDUCTIONS_ITEM
SET DEFINE OFF;
Insert into DEDUCTIONS_ITEM (DEDUCTIONS_CODE,DEDUCTIONS_NAME,DEDUCTIONS_DEDUCTIBLE,MINVAL,MAXVAL,INCOME_TAX) values ('65','소득세',6,0,14000000,0);
Insert into DEDUCTIONS_ITEM (DEDUCTIONS_CODE,DEDUCTIONS_NAME,DEDUCTIONS_DEDUCTIBLE,MINVAL,MAXVAL,INCOME_TAX) values ('66','소득세',15,14000000,50000000,840000);
Insert into DEDUCTIONS_ITEM (DEDUCTIONS_CODE,DEDUCTIONS_NAME,DEDUCTIONS_DEDUCTIBLE,MINVAL,MAXVAL,INCOME_TAX) values ('67','소득세',24,50000000,88000000,6240000);
Insert into DEDUCTIONS_ITEM (DEDUCTIONS_CODE,DEDUCTIONS_NAME,DEDUCTIONS_DEDUCTIBLE,MINVAL,MAXVAL,INCOME_TAX) values ('68','소득세',35,88000000,150000000,15360000);
Insert into DEDUCTIONS_ITEM (DEDUCTIONS_CODE,DEDUCTIONS_NAME,DEDUCTIONS_DEDUCTIBLE,MINVAL,MAXVAL,INCOME_TAX) values ('69','소득세',38,150000000,300000000,37060000);
Insert into DEDUCTIONS_ITEM (DEDUCTIONS_CODE,DEDUCTIONS_NAME,DEDUCTIONS_DEDUCTIBLE,MINVAL,MAXVAL,INCOME_TAX) values ('70','소득세',40,300000000,500000000,94060000);
Insert into DEDUCTIONS_ITEM (DEDUCTIONS_CODE,DEDUCTIONS_NAME,DEDUCTIONS_DEDUCTIBLE,MINVAL,MAXVAL,INCOME_TAX) values ('71','소득세',42,500000000,1000000000,144060000);
Insert into DEDUCTIONS_ITEM (DEDUCTIONS_CODE,DEDUCTIONS_NAME,DEDUCTIONS_DEDUCTIBLE,MINVAL,MAXVAL,INCOME_TAX) values ('72','소득세',45,1000000000,99999999999,384060000);
Insert into DEDUCTIONS_ITEM (DEDUCTIONS_CODE,DEDUCTIONS_NAME,DEDUCTIONS_DEDUCTIBLE,MINVAL,MAXVAL,INCOME_TAX) values ('74','건강보험료',3.545,null,null,null);
Insert into DEDUCTIONS_ITEM (DEDUCTIONS_CODE,DEDUCTIONS_NAME,DEDUCTIONS_DEDUCTIBLE,MINVAL,MAXVAL,INCOME_TAX) values ('75','국민연금료',4.5,null,null,null);
Insert into DEDUCTIONS_ITEM (DEDUCTIONS_CODE,DEDUCTIONS_NAME,DEDUCTIONS_DEDUCTIBLE,MINVAL,MAXVAL,INCOME_TAX) values ('76','고용보험료',0.9,null,null,null);
REM INSERTING into DEPARTMENT
SET DEFINE OFF;
Insert into DEPARTMENT (DEPARTMENT_CODE,DEPARTMENT_NAME,MANAGER_CODE) values ('D002','인사팀','151');
Insert into DEPARTMENT (DEPARTMENT_CODE,DEPARTMENT_NAME,MANAGER_CODE) values ('D003','회계팀','158');
Insert into DEPARTMENT (DEPARTMENT_CODE,DEPARTMENT_NAME,MANAGER_CODE) values ('D004','물류팀','159');
Insert into DEPARTMENT (DEPARTMENT_CODE,DEPARTMENT_NAME,MANAGER_CODE) values ('D005','개발팀','160');
Insert into DEPARTMENT (DEPARTMENT_CODE,DEPARTMENT_NAME,MANAGER_CODE) values ('D006','테스트팀','231');
Insert into DEPARTMENT (DEPARTMENT_CODE,DEPARTMENT_NAME,MANAGER_CODE) values ('D001','영업팀','160');
REM INSERTING into EMPLOYEES
SET DEFINE OFF;
Insert into EMPLOYEES (EMPLOYEE_CODE,EMPLOYEE_ID,NAME,HIRE_DATE,PASSWORD,EMPLOYEE_POSITION,STATUS_TYPE,RESIGNATION_DATE,HIRE_TYPE,DEPARTMENT_CODE) values ('243','24-243','박진석',to_date('24/12/06','RR/MM/DD'),'$2a$10$tDTEYBDn9tRmryAJwh5Rae8hg4fslAedA.m3eUWZrGdGW5lMMtbAy','h1','m1',null,'l1','D004');
Insert into EMPLOYEES (EMPLOYEE_CODE,EMPLOYEE_ID,NAME,HIRE_DATE,PASSWORD,EMPLOYEE_POSITION,STATUS_TYPE,RESIGNATION_DATE,HIRE_TYPE,DEPARTMENT_CODE) values ('151','24-151','유석진',to_date('24/12/03','RR/MM/DD'),'$2a$10$Fo..ZsEVyTGi3SDcMGFFZuAqYAjueCYtZz9APHVtdkOss7tadVaVa','h1','m1',null,'l1','D002');
Insert into EMPLOYEES (EMPLOYEE_CODE,EMPLOYEE_ID,NAME,HIRE_DATE,PASSWORD,EMPLOYEE_POSITION,STATUS_TYPE,RESIGNATION_DATE,HIRE_TYPE,DEPARTMENT_CODE) values ('158','24-158','진솔미',to_date('24/03/05','RR/MM/DD'),'$2a$10$OFe2tIDn3uEtQo3C5gVKDejBcgpyRseviX0Raq.eIbAdrVHBLv1M6','h1','m1',null,'l1','D003');
Insert into EMPLOYEES (EMPLOYEE_CODE,EMPLOYEE_ID,NAME,HIRE_DATE,PASSWORD,EMPLOYEE_POSITION,STATUS_TYPE,RESIGNATION_DATE,HIRE_TYPE,DEPARTMENT_CODE) values ('159','24-159','남건우',to_date('24/02/02','RR/MM/DD'),'$2a$10$vZYHDIcseIZvA5hSBsBIq.ZbVWFGqqoeUMlqjd2aPDZwZ4HVSvEnK','h1','m1',null,'l1','D004');
Insert into EMPLOYEES (EMPLOYEE_CODE,EMPLOYEE_ID,NAME,HIRE_DATE,PASSWORD,EMPLOYEE_POSITION,STATUS_TYPE,RESIGNATION_DATE,HIRE_TYPE,DEPARTMENT_CODE) values ('160','24-160','권혁태',to_date('24/02/01','RR/MM/DD'),'$2a$10$iuzUGsuoaMufMmBmLcX7qeTHrxy/R8SpNmvG1LhbSlGFxnNaUtCB6','h1','m1',null,'l1','D001');
Insert into EMPLOYEES (EMPLOYEE_CODE,EMPLOYEE_ID,NAME,HIRE_DATE,PASSWORD,EMPLOYEE_POSITION,STATUS_TYPE,RESIGNATION_DATE,HIRE_TYPE,DEPARTMENT_CODE) values ('161','24-161','서권우',to_date('24/02/03','RR/MM/DD'),'$2a$10$P/G2Mm6KUvFI9VXVZN/3n.Qr/C0S9YSmodPTny.qeyx51Poedqsp2','h5','m1',null,'l1','D005');
Insert into EMPLOYEES (EMPLOYEE_CODE,EMPLOYEE_ID,NAME,HIRE_DATE,PASSWORD,EMPLOYEE_POSITION,STATUS_TYPE,RESIGNATION_DATE,HIRE_TYPE,DEPARTMENT_CODE) values ('173','24-173','김갑돌',to_date('23/08/03','RR/MM/DD'),'$2a$10$6.SnGNICcBNIgBzzQ8SgLO3BiQq5I7y7Mhg4nh.oLvuP6kYKPXIsK','h3','m1',null,'l1','D002');
Insert into EMPLOYEES (EMPLOYEE_CODE,EMPLOYEE_ID,NAME,HIRE_DATE,PASSWORD,EMPLOYEE_POSITION,STATUS_TYPE,RESIGNATION_DATE,HIRE_TYPE,DEPARTMENT_CODE) values ('174','24-174','김갑순',to_date('22/01/04','RR/MM/DD'),'$2a$10$4jkmrM35/gBOln/nXoJP5.s.dlO3eakmsBSj84JkHGrVh4ym2zgDq','h2','m1',null,'l1','D003');
Insert into EMPLOYEES (EMPLOYEE_CODE,EMPLOYEE_ID,NAME,HIRE_DATE,PASSWORD,EMPLOYEE_POSITION,STATUS_TYPE,RESIGNATION_DATE,HIRE_TYPE,DEPARTMENT_CODE) values ('176','24-176','김영희',to_date('97/01/04','RR/MM/DD'),'$2a$10$bEf5IZ/3HZ5dZ5D6e/6DCer8O/pK9H1n9b24H6gVEGcGe6pT5U.me','h5','m1',null,'l2','D004');
Insert into EMPLOYEES (EMPLOYEE_CODE,EMPLOYEE_ID,NAME,HIRE_DATE,PASSWORD,EMPLOYEE_POSITION,STATUS_TYPE,RESIGNATION_DATE,HIRE_TYPE,DEPARTMENT_CODE) values ('177','24-177','최미영',to_date('10/07/05','RR/MM/DD'),'$2a$10$g28eGpIm4Y.m4q01d2ipMelmQH25e1cuMM6vu8h3/hbm/cmxL/OcS','h2','m1',null,'l2','D005');
Insert into EMPLOYEES (EMPLOYEE_CODE,EMPLOYEE_ID,NAME,HIRE_DATE,PASSWORD,EMPLOYEE_POSITION,STATUS_TYPE,RESIGNATION_DATE,HIRE_TYPE,DEPARTMENT_CODE) values ('231','24-231','박아무개',to_date('24/12/05','RR/MM/DD'),'$2a$10$ZGQvLqJxXweMRCiTgxAZcO5OH394l8YOHA/3HWP7YSCOXnIi.Bl0K','h1','m1',null,'l1','D005');
REM INSERTING into EMPLOYEES_DETAIL
SET DEFINE OFF;
Insert into EMPLOYEES_DETAIL (ENG_NAME,IDENTITY_NO,HEAD_CHECK,DUTY,TEL,PHONE,EMAIL,EMP_STATUS,ZIPCODE,ADDRESS,DETAIL_ADDRESS,BACCT,DEPOSITOR,EMPLOYEE_IMAGE,BANK,EMPLOYEE_CODE,EMPLOYEE_ROLE) values ('Park JinSeok','121,-116,-15,41,-126,-19,-54,-32,-89,-59,-37,12,-86,45,-7,-60,','o','k1','0051234567','01012345678','test@mail.com',null,5831,'서울 송파구 동남로 99',' (가락동) 송경아파트 101동 307호','56156891568','박진석',null,'7','243',5);
Insert into EMPLOYEES_DETAIL (ENG_NAME,IDENTITY_NO,HEAD_CHECK,DUTY,TEL,PHONE,EMAIL,EMP_STATUS,ZIPCODE,ADDRESS,DETAIL_ADDRESS,BACCT,DEPOSITOR,EMPLOYEE_IMAGE,BANK,EMPLOYEE_CODE,EMPLOYEE_ROLE) values ('Yu SeokJin','-80,79,6,-79,86,66,-43,30,20,-116,74,-73,55,-89,-33,20,','o','k1','0101231234','01012341234','yu@email.com',null,50136,'경남 거창군 거창읍 동동6길 107',' (베어스타운) 103동 601호','00012341234','유석진','2024/12/11/9811c218-4b3e-4ab9-b6d3-bdab3845f150_3c7b458a-9764-449d-a3e2-e36a660598fc_레드향.jpg','1','151',2);
Insert into EMPLOYEES_DETAIL (ENG_NAME,IDENTITY_NO,HEAD_CHECK,DUTY,TEL,PHONE,EMAIL,EMP_STATUS,ZIPCODE,ADDRESS,DETAIL_ADDRESS,BACCT,DEPOSITOR,EMPLOYEE_IMAGE,BANK,EMPLOYEE_CODE,EMPLOYEE_ROLE) values ('Jin SolMi','9,33,6,-97,-11,-101,-67,-82,-25,83,35,-80,-4,5,20,-36,','o','k2','01012345678','01012345678','sol@mail.com',null,42938,'대구 달성군 가창면 가창동로 3','빨간지붕집','152369546851','진솔미','2024/12/11/fda1c8dc-99c9-4dca-8dbc-de27acfdd3ac_☆☆☆☆☆.jpg','1','158',0);
Insert into EMPLOYEES_DETAIL (ENG_NAME,IDENTITY_NO,HEAD_CHECK,DUTY,TEL,PHONE,EMAIL,EMP_STATUS,ZIPCODE,ADDRESS,DETAIL_ADDRESS,BACCT,DEPOSITOR,EMPLOYEE_IMAGE,BANK,EMPLOYEE_CODE,EMPLOYEE_ROLE) values ('Nam KunWoo','9,33,6,-97,-11,-101,-67,-82,-25,83,35,-80,-4,5,20,-36,','o','k1','01012345678','01012345377','test111@te.com',null,42642,'대구 달서구 감삼길 15',' (감삼동) 상승타운 1023호','5618941856944','남건우','2024/12/12/2381695e-f324-4d56-975d-aa71833aea1c_thoa-ngo-FWrvze4cqu4-unsplash.jpg','1','159',0);
Insert into EMPLOYEES_DETAIL (ENG_NAME,IDENTITY_NO,HEAD_CHECK,DUTY,TEL,PHONE,EMAIL,EMP_STATUS,ZIPCODE,ADDRESS,DETAIL_ADDRESS,BACCT,DEPOSITOR,EMPLOYEE_IMAGE,BANK,EMPLOYEE_CODE,EMPLOYEE_ROLE) values ('kwon hyck tae','95,-35,85,-99,118,33,-73,-4,-95,11,23,-11,-58,-117,69,-57,','o','k2','01012345678','01012345678','asd@mail.com',null,41514,'대구 북구 검단공단로 12',' (검단동) 레고마을 피자집','158648923698','권혁태',null,'2','160',0);
Insert into EMPLOYEES_DETAIL (ENG_NAME,IDENTITY_NO,HEAD_CHECK,DUTY,TEL,PHONE,EMAIL,EMP_STATUS,ZIPCODE,ADDRESS,DETAIL_ADDRESS,BACCT,DEPOSITOR,EMPLOYEE_IMAGE,BANK,EMPLOYEE_CODE,EMPLOYEE_ROLE) values ('Seo GweonWoo','35,33,67,-12,43,-73,-109,-36,7,-125,-59,64,-84,127,25,4,','o','k2','01012345678','01012345678','asd@mail.com',null,42993,'대구 달성군 구지면 가천1길 43','인삼파크 202호','561568956','서권우',null,'4','161',0);
Insert into EMPLOYEES_DETAIL (ENG_NAME,IDENTITY_NO,HEAD_CHECK,DUTY,TEL,PHONE,EMAIL,EMP_STATUS,ZIPCODE,ADDRESS,DETAIL_ADDRESS,BACCT,DEPOSITOR,EMPLOYEE_IMAGE,BANK,EMPLOYEE_CODE,EMPLOYEE_ROLE) values ('Kim KapDol','77,123,62,9,72,14,59,29,-121,54,18,-39,93,-74,114,-3,','o','k1','0101234567','01012345678','asd@gmail.com',null,43109,'대구 군위군 군위읍 개봉길 23-72','개봉마트 ','025856921819','김갑돌',null,'5','173',0);
Insert into EMPLOYEES_DETAIL (ENG_NAME,IDENTITY_NO,HEAD_CHECK,DUTY,TEL,PHONE,EMAIL,EMP_STATUS,ZIPCODE,ADDRESS,DETAIL_ADDRESS,BACCT,DEPOSITOR,EMPLOYEE_IMAGE,BANK,EMPLOYEE_CODE,EMPLOYEE_ROLE) values ('Kim KapSoon','109,1,-51,98,-102,-119,18,-6,-116,-43,-87,25,-26,-70,-28,-83,','o','k2','0101234567','01012345678','asd@gmail.com',null,43128,'대구 군위군 효령면 간동길 2-3','사랑니아파트 103동 607호','2316518918654','김갑순',null,'7','174',0);
Insert into EMPLOYEES_DETAIL (ENG_NAME,IDENTITY_NO,HEAD_CHECK,DUTY,TEL,PHONE,EMAIL,EMP_STATUS,ZIPCODE,ADDRESS,DETAIL_ADDRESS,BACCT,DEPOSITOR,EMPLOYEE_IMAGE,BANK,EMPLOYEE_CODE,EMPLOYEE_ROLE) values ('김철수','127,-94,-99,-63,8,-88,-22,-36,-19,-2,5,37,-102,-126,8,71,','o','k3','0101234567','01012345678','asd@gmail.com',null,42642,'대구 달서구 감삼길 25',' (감삼동) 아이러브하우스 101동 504호','78963786354','김철수',null,'52','175',0);
Insert into EMPLOYEES_DETAIL (ENG_NAME,IDENTITY_NO,HEAD_CHECK,DUTY,TEL,PHONE,EMAIL,EMP_STATUS,ZIPCODE,ADDRESS,DETAIL_ADDRESS,BACCT,DEPOSITOR,EMPLOYEE_IMAGE,BANK,EMPLOYEE_CODE,EMPLOYEE_ROLE) values ('Kim YeongHee','17,58,0,70,70,-103,43,58,-70,-78,45,72,-126,-17,-82,-124,','o','k3','0101234567','01012345678','asd@gmail.com',null,41919,'대구 중구 경상감영길 2',' (서문로1가) 삼덕빌라 1014호','75837237837','김영희',null,'4','176',0);
Insert into EMPLOYEES_DETAIL (ENG_NAME,IDENTITY_NO,HEAD_CHECK,DUTY,TEL,PHONE,EMAIL,EMP_STATUS,ZIPCODE,ADDRESS,DETAIL_ADDRESS,BACCT,DEPOSITOR,EMPLOYEE_IMAGE,BANK,EMPLOYEE_CODE,EMPLOYEE_ROLE) values ('Choi MiYeong','17,58,0,70,70,-103,43,58,-70,-78,45,72,-126,-17,-82,-124,','o','k2','0101234567','01012345678','asd@gmail.com',null,43160,'대구 군위군 산성면 갑티로 50','그린빌라 603호','89456189545','최미영',null,'5','177',0);
Insert into EMPLOYEES_DETAIL (ENG_NAME,IDENTITY_NO,HEAD_CHECK,DUTY,TEL,PHONE,EMAIL,EMP_STATUS,ZIPCODE,ADDRESS,DETAIL_ADDRESS,BACCT,DEPOSITOR,EMPLOYEE_IMAGE,BANK,EMPLOYEE_CODE,EMPLOYEE_ROLE) values ('Bak AeMooGae','95,-35,85,-99,118,33,-73,-4,-95,11,23,-11,-58,-117,69,-57,','x','k1','0531234567','01012345678','test@mail.com',null,41909,'대구 중구 중앙대로 지하 424',' (남일동) 증앙로역','12345678','박아무개','2024/12/13/83b98b6b-b9f2-4055-bd34-d28f996341ae_imageNo.jpg','2','231',0);
REM INSERTING into EMPLOYEES_HISTORY
SET DEFINE OFF;
REM INSERTING into EMPLOYEES_ROLE
SET DEFINE OFF;
Insert into EMPLOYEES_ROLE (ID,ROLE_NAME,DESCRIPTION,PARENT_ROLE) values (0,'MANAGER','기업관리자',0);
Insert into EMPLOYEES_ROLE (ID,ROLE_NAME,DESCRIPTION,PARENT_ROLE) values (1,'ADMIN','시스템관리자',1);
Insert into EMPLOYEES_ROLE (ID,ROLE_NAME,DESCRIPTION,PARENT_ROLE) values (2,'EMPLOYEE','인사팀',0);
Insert into EMPLOYEES_ROLE (ID,ROLE_NAME,DESCRIPTION,PARENT_ROLE) values (3,'BUSINESS','영업팀',0);
Insert into EMPLOYEES_ROLE (ID,ROLE_NAME,DESCRIPTION,PARENT_ROLE) values (4,'SALES','회계팀',0);
Insert into EMPLOYEES_ROLE (ID,ROLE_NAME,DESCRIPTION,PARENT_ROLE) values (5,'STOCK','물류팀',0);
REM INSERTING into EMPLOYEES_SALARY
SET DEFINE OFF;
Insert into EMPLOYEES_SALARY (ANNUAL_SALARY,MONTHLY_SALARY,TIME_SALARY,INCOME_INVOICE,LEAVE_RATE,EMPLOYEE_CODE,HEALTH_INSURANCE) values (12000000,1000000,4785,60000,38280,'158',35450);
Insert into EMPLOYEES_SALARY (ANNUAL_SALARY,MONTHLY_SALARY,TIME_SALARY,INCOME_INVOICE,LEAVE_RATE,EMPLOYEE_CODE,HEALTH_INSURANCE) values (12000000,75000000,4785,60000,38280,'159',35450);
Insert into EMPLOYEES_SALARY (ANNUAL_SALARY,MONTHLY_SALARY,TIME_SALARY,INCOME_INVOICE,LEAVE_RATE,EMPLOYEE_CODE,HEALTH_INSURANCE) values (12000000,1000000,4784,60000,38272,'151',35450);
Insert into EMPLOYEES_SALARY (ANNUAL_SALARY,MONTHLY_SALARY,TIME_SALARY,INCOME_INVOICE,LEAVE_RATE,EMPLOYEE_CODE,HEALTH_INSURANCE) values (12000000,1000000,4785,60000,38280,'160',35450);
Insert into EMPLOYEES_SALARY (ANNUAL_SALARY,MONTHLY_SALARY,TIME_SALARY,INCOME_INVOICE,LEAVE_RATE,EMPLOYEE_CODE,HEALTH_INSURANCE) values (12000000,1000000,4785,60000,38280,'161',35450);
Insert into EMPLOYEES_SALARY (ANNUAL_SALARY,MONTHLY_SALARY,TIME_SALARY,INCOME_INVOICE,LEAVE_RATE,EMPLOYEE_CODE,HEALTH_INSURANCE) values (36000000,3000000,14354,345000,114832,'173',106350);
Insert into EMPLOYEES_SALARY (ANNUAL_SALARY,MONTHLY_SALARY,TIME_SALARY,INCOME_INVOICE,LEAVE_RATE,EMPLOYEE_CODE,HEALTH_INSURANCE) values (36000000,3000000,14354,720000,114832,'174',177250);
Insert into EMPLOYEES_SALARY (ANNUAL_SALARY,MONTHLY_SALARY,TIME_SALARY,INCOME_INVOICE,LEAVE_RATE,EMPLOYEE_CODE,HEALTH_INSURANCE) values (138000000,11500000,55024,3088333,440192,'176',443125);
Insert into EMPLOYEES_SALARY (ANNUAL_SALARY,MONTHLY_SALARY,TIME_SALARY,INCOME_INVOICE,LEAVE_RATE,EMPLOYEE_CODE,HEALTH_INSURANCE) values (30000000,2500000,11962,270000,95696,'177',88625);
Insert into EMPLOYEES_SALARY (ANNUAL_SALARY,MONTHLY_SALARY,TIME_SALARY,INCOME_INVOICE,LEAVE_RATE,EMPLOYEE_CODE,HEALTH_INSURANCE) values (33600000,3200000,13397,315000,107176,'231',99260);
Insert into EMPLOYEES_SALARY (ANNUAL_SALARY,MONTHLY_SALARY,TIME_SALARY,INCOME_INVOICE,LEAVE_RATE,EMPLOYEE_CODE,HEALTH_INSURANCE) values (12000000,1000000,4785,60060,38280,'243',35485);
REM INSERTING into FIXED
SET DEFINE OFF;
Insert into FIXED (FIXED_NO,ALLOWANCE_PRICE,ALLOWANCE_CODE,EMPLOYEE_CODE) values ('142',100000,'A001','150');
Insert into FIXED (FIXED_NO,ALLOWANCE_PRICE,ALLOWANCE_CODE,EMPLOYEE_CODE) values ('177',1000000,'A005','176');
Insert into FIXED (FIXED_NO,ALLOWANCE_PRICE,ALLOWANCE_CODE,EMPLOYEE_CODE) values ('178',1000000,'A006','176');
Insert into FIXED (FIXED_NO,ALLOWANCE_PRICE,ALLOWANCE_CODE,EMPLOYEE_CODE) values ('179',1000000,'A001','176');
Insert into FIXED (FIXED_NO,ALLOWANCE_PRICE,ALLOWANCE_CODE,EMPLOYEE_CODE) values ('202',100000,'A001','161');
Insert into FIXED (FIXED_NO,ALLOWANCE_PRICE,ALLOWANCE_CODE,EMPLOYEE_CODE) values ('160',100,'A005','180');
Insert into FIXED (FIXED_NO,ALLOWANCE_PRICE,ALLOWANCE_CODE,EMPLOYEE_CODE) values ('161',100,'A003','180');
Insert into FIXED (FIXED_NO,ALLOWANCE_PRICE,ALLOWANCE_CODE,EMPLOYEE_CODE) values ('181',1000,'A003','243');
Insert into FIXED (FIXED_NO,ALLOWANCE_PRICE,ALLOWANCE_CODE,EMPLOYEE_CODE) values ('203',100000,'A003','161');
Insert into FIXED (FIXED_NO,ALLOWANCE_PRICE,ALLOWANCE_CODE,EMPLOYEE_CODE) values ('200',100000,'A005','231');
Insert into FIXED (FIXED_NO,ALLOWANCE_PRICE,ALLOWANCE_CODE,EMPLOYEE_CODE) values ('156',25000000,'A003','175');
Insert into FIXED (FIXED_NO,ALLOWANCE_PRICE,ALLOWANCE_CODE,EMPLOYEE_CODE) values ('157',250000,'A006','175');
Insert into FIXED (FIXED_NO,ALLOWANCE_PRICE,ALLOWANCE_CODE,EMPLOYEE_CODE) values ('201',100000,'A003','231');
Insert into FIXED (FIXED_NO,ALLOWANCE_PRICE,ALLOWANCE_CODE,EMPLOYEE_CODE) values ('174',1000000,'A003','174');
Insert into FIXED (FIXED_NO,ALLOWANCE_PRICE,ALLOWANCE_CODE,EMPLOYEE_CODE) values ('175',1000000,'A006','174');
Insert into FIXED (FIXED_NO,ALLOWANCE_PRICE,ALLOWANCE_CODE,EMPLOYEE_CODE) values ('176',1000000,'A005','173');
Insert into FIXED (FIXED_NO,ALLOWANCE_PRICE,ALLOWANCE_CODE,EMPLOYEE_CODE) values ('136',100000,'A001','149');
REM INSERTING into INVOICE
SET DEFINE OFF;
Insert into INVOICE (INVOICE_NO,INVOICE_DATE,INVOICE_STATUS,NTS_INVOICE_DATE,REF_TYPE,SALESLIP_NO) values ('IV-20241211111',to_date('24/12/05','RR/MM/DD'),'f3',to_date('24/12/12','RR/MM/DD'),null,'MK-20241211129');
Insert into INVOICE (INVOICE_NO,INVOICE_DATE,INVOICE_STATUS,NTS_INVOICE_DATE,REF_TYPE,SALESLIP_NO) values ('IV-20241211112',to_date('24/12/01','RR/MM/DD'),'f3',to_date('24/12/03','RR/MM/DD'),null,'MK-20241211130');
Insert into INVOICE (INVOICE_NO,INVOICE_DATE,INVOICE_STATUS,NTS_INVOICE_DATE,REF_TYPE,SALESLIP_NO) values ('IV-20241211109',to_date('24/12/11','RR/MM/DD'),'f3',to_date('24/12/13','RR/MM/DD'),null,'MK-20241211127');
Insert into INVOICE (INVOICE_NO,INVOICE_DATE,INVOICE_STATUS,NTS_INVOICE_DATE,REF_TYPE,SALESLIP_NO) values ('IV-20241211110',to_date('24/12/01','RR/MM/DD'),'f3',to_date('24/12/02','RR/MM/DD'),null,'MK-20241211128');
Insert into INVOICE (INVOICE_NO,INVOICE_DATE,INVOICE_STATUS,NTS_INVOICE_DATE,REF_TYPE,SALESLIP_NO) values ('IV-20241211113',to_date('24/12/09','RR/MM/DD'),'f3',to_date('24/12/13','RR/MM/DD'),null,'MK-20241211131');
Insert into INVOICE (INVOICE_NO,INVOICE_DATE,INVOICE_STATUS,NTS_INVOICE_DATE,REF_TYPE,SALESLIP_NO) values ('IV-20241211114',to_date('24/12/01','RR/MM/DD'),'f3',to_date('24/12/01','RR/MM/DD'),null,'MK-20241211132');
Insert into INVOICE (INVOICE_NO,INVOICE_DATE,INVOICE_STATUS,NTS_INVOICE_DATE,REF_TYPE,SALESLIP_NO) values ('IV-20241211115',to_date('24/12/11','RR/MM/DD'),'f3',to_date('24/12/17','RR/MM/DD'),null,'MK-20241211133');
Insert into INVOICE (INVOICE_NO,INVOICE_DATE,INVOICE_STATUS,NTS_INVOICE_DATE,REF_TYPE,SALESLIP_NO) values ('IV-20241211116',to_date('24/12/07','RR/MM/DD'),'f3',to_date('24/12/13','RR/MM/DD'),null,'MK-20241211134');
Insert into INVOICE (INVOICE_NO,INVOICE_DATE,INVOICE_STATUS,NTS_INVOICE_DATE,REF_TYPE,SALESLIP_NO) values ('IV-20241211117',to_date('24/12/09','RR/MM/DD'),'f3',to_date('24/12/14','RR/MM/DD'),null,'MK-20241211135');
Insert into INVOICE (INVOICE_NO,INVOICE_DATE,INVOICE_STATUS,NTS_INVOICE_DATE,REF_TYPE,SALESLIP_NO) values ('IV-20241211118',to_date('24/12/04','RR/MM/DD'),'f3',to_date('24/12/11','RR/MM/DD'),null,'MK-20241211136');
Insert into INVOICE (INVOICE_NO,INVOICE_DATE,INVOICE_STATUS,NTS_INVOICE_DATE,REF_TYPE,SALESLIP_NO) values ('IV-20241211119',to_date('24/11/01','RR/MM/DD'),'f3',to_date('24/11/01','RR/MM/DD'),null,'MK-20241211137');
Insert into INVOICE (INVOICE_NO,INVOICE_DATE,INVOICE_STATUS,NTS_INVOICE_DATE,REF_TYPE,SALESLIP_NO) values ('IV-20241211120',to_date('24/12/07','RR/MM/DD'),'f3',to_date('24/12/14','RR/MM/DD'),null,'MK-20241211138');
Insert into INVOICE (INVOICE_NO,INVOICE_DATE,INVOICE_STATUS,NTS_INVOICE_DATE,REF_TYPE,SALESLIP_NO) values ('IV-20241211121',to_date('24/11/13','RR/MM/DD'),'f3',to_date('24/11/13','RR/MM/DD'),null,'MK-20241211139');
Insert into INVOICE (INVOICE_NO,INVOICE_DATE,INVOICE_STATUS,NTS_INVOICE_DATE,REF_TYPE,SALESLIP_NO) values ('IV-20241211122',to_date('24/11/27','RR/MM/DD'),'f3',to_date('24/11/27','RR/MM/DD'),null,'MK-20241211140');
Insert into INVOICE (INVOICE_NO,INVOICE_DATE,INVOICE_STATUS,NTS_INVOICE_DATE,REF_TYPE,SALESLIP_NO) values ('IV-20241211123',to_date('24/11/11','RR/MM/DD'),'f3',to_date('24/11/11','RR/MM/DD'),null,'MK-20241211141');
Insert into INVOICE (INVOICE_NO,INVOICE_DATE,INVOICE_STATUS,NTS_INVOICE_DATE,REF_TYPE,SALESLIP_NO) values ('IV-20241211124',to_date('24/11/29','RR/MM/DD'),'f3',to_date('24/11/29','RR/MM/DD'),null,'MK-20241211142');
Insert into INVOICE (INVOICE_NO,INVOICE_DATE,INVOICE_STATUS,NTS_INVOICE_DATE,REF_TYPE,SALESLIP_NO) values ('IV-20241212130',to_date('24/12/19','RR/MM/DD'),'f1',null,null,'MK-20241212148');
Insert into INVOICE (INVOICE_NO,INVOICE_DATE,INVOICE_STATUS,NTS_INVOICE_DATE,REF_TYPE,SALESLIP_NO) values ('IV-20241211126',to_date('24/10/31','RR/MM/DD'),'f3',to_date('24/10/31','RR/MM/DD'),null,'MK-20241211144');
Insert into INVOICE (INVOICE_NO,INVOICE_DATE,INVOICE_STATUS,NTS_INVOICE_DATE,REF_TYPE,SALESLIP_NO) values ('IV-20241211127',to_date('24/12/07','RR/MM/DD'),'f3',to_date('24/12/14','RR/MM/DD'),null,'MK-20241211145');
Insert into INVOICE (INVOICE_NO,INVOICE_DATE,INVOICE_STATUS,NTS_INVOICE_DATE,REF_TYPE,SALESLIP_NO) values ('IV-20241212128',to_date('24/12/12','RR/MM/DD'),'f3',to_date('24/12/13','RR/MM/DD'),null,'MK-20241212146');
Insert into INVOICE (INVOICE_NO,INVOICE_DATE,INVOICE_STATUS,NTS_INVOICE_DATE,REF_TYPE,SALESLIP_NO) values ('IV-20241212129',to_date('24/12/12','RR/MM/DD'),'f3',to_date('24/12/17','RR/MM/DD'),null,'MK-20241212147');
Insert into INVOICE (INVOICE_NO,INVOICE_DATE,INVOICE_STATUS,NTS_INVOICE_DATE,REF_TYPE,SALESLIP_NO) values ('IV-20241212131',to_date('24/12/01','RR/MM/DD'),'f1',null,null,'MK-20241212149');
Insert into INVOICE (INVOICE_NO,INVOICE_DATE,INVOICE_STATUS,NTS_INVOICE_DATE,REF_TYPE,SALESLIP_NO) values ('IV-20241212132',to_date('24/12/12','RR/MM/DD'),'f1',null,null,'MK-20241212150');
REM INSERTING into MAIN
SET DEFINE OFF;
REM INSERTING into ORDERS
SET DEFINE OFF;
Insert into ORDERS (ORDER_NO,EMPLOYEE_CODE,SUMMARY,ORDER_DATE,CLIENT_CODE,TOTAL_PRICE) values ('No3','158',null,to_date('24/12/11','RR/MM/DD'),'client32',null);
Insert into ORDERS (ORDER_NO,EMPLOYEE_CODE,SUMMARY,ORDER_DATE,CLIENT_CODE,TOTAL_PRICE) values ('No4','160',null,to_date('24/12/10','RR/MM/DD'),'client33',null);
Insert into ORDERS (ORDER_NO,EMPLOYEE_CODE,SUMMARY,ORDER_DATE,CLIENT_CODE,TOTAL_PRICE) values ('No1','160',null,to_date('24/12/11','RR/MM/DD'),'client22',null);
Insert into ORDERS (ORDER_NO,EMPLOYEE_CODE,SUMMARY,ORDER_DATE,CLIENT_CODE,TOTAL_PRICE) values ('No2','160',null,to_date('24/12/10','RR/MM/DD'),'client22',null);
Insert into ORDERS (ORDER_NO,EMPLOYEE_CODE,SUMMARY,ORDER_DATE,CLIENT_CODE,TOTAL_PRICE) values ('No5','160',null,to_date('24/12/11','RR/MM/DD'),'client34',null);
Insert into ORDERS (ORDER_NO,EMPLOYEE_CODE,SUMMARY,ORDER_DATE,CLIENT_CODE,TOTAL_PRICE) values ('No6','160',null,to_date('24/12/11','RR/MM/DD'),'client32',null);
REM INSERTING into ORDER_ITEM
SET DEFINE OFF;
Insert into ORDER_ITEM (ORDER_SUB_NO,ITEM_CODE,ITEM_NAME,QUANTITY,PRICE,ORDER_NO) values ('No2-2','MANGO-12062','굵은 빨대(1.0cm)150개입',40,null,'No2');
Insert into ORDER_ITEM (ORDER_SUB_NO,ITEM_CODE,ITEM_NAME,QUANTITY,PRICE,ORDER_NO) values ('No3-1','ITEM-1001','프리미엄 원두',150,null,'No3');
Insert into ORDER_ITEM (ORDER_SUB_NO,ITEM_CODE,ITEM_NAME,QUANTITY,PRICE,ORDER_NO) values ('No4-1','MANGO-13004','초콜릿 소스',50,null,'No4');
Insert into ORDER_ITEM (ORDER_SUB_NO,ITEM_CODE,ITEM_NAME,QUANTITY,PRICE,ORDER_NO) values ('No4-2','ITEM-3001','커피 머신 필터',30,null,'No4');
Insert into ORDER_ITEM (ORDER_SUB_NO,ITEM_CODE,ITEM_NAME,QUANTITY,PRICE,ORDER_NO) values ('No1-1','MANGO-12057','로부스타(Robusta)',150,null,'No1');
Insert into ORDER_ITEM (ORDER_SUB_NO,ITEM_CODE,ITEM_NAME,QUANTITY,PRICE,ORDER_NO) values ('No1-2','MANGO-12056','아라비카(Arabica)',71,null,'No1');
Insert into ORDER_ITEM (ORDER_SUB_NO,ITEM_CODE,ITEM_NAME,QUANTITY,PRICE,ORDER_NO) values ('No5-1','ITEM-5002','베이킹 믹스',15,null,'No5');
Insert into ORDER_ITEM (ORDER_SUB_NO,ITEM_CODE,ITEM_NAME,QUANTITY,PRICE,ORDER_NO) values ('No5-2','ITEM-5001','초콜릿 소스',21,null,'No5');
Insert into ORDER_ITEM (ORDER_SUB_NO,ITEM_CODE,ITEM_NAME,QUANTITY,PRICE,ORDER_NO) values ('No5-3','ITEM-6002','유지보수 부품 B',5,null,'No5');
Insert into ORDER_ITEM (ORDER_SUB_NO,ITEM_CODE,ITEM_NAME,QUANTITY,PRICE,ORDER_NO) values ('No6-1','ITEM-6002','유지보수 부품 B',5,null,'No6');
Insert into ORDER_ITEM (ORDER_SUB_NO,ITEM_CODE,ITEM_NAME,QUANTITY,PRICE,ORDER_NO) values ('No6-2','MANGO-13004','초콜릿 소스',100,null,'No6');
Insert into ORDER_ITEM (ORDER_SUB_NO,ITEM_CODE,ITEM_NAME,QUANTITY,PRICE,ORDER_NO) values ('No6-3','MANGO-12060','얇은 빨대(0.7cm)150개입',100,null,'No6');
Insert into ORDER_ITEM (ORDER_SUB_NO,ITEM_CODE,ITEM_NAME,QUANTITY,PRICE,ORDER_NO) values ('No2-1','MANGO-12060','얇은 빨대(0.7cm)150개입',50,null,'No2');
REM INSERTING into PAYABLES_LOG
SET DEFINE OFF;
Insert into PAYABLES_LOG (REC_LOG_ID,REC_DATE,DECREASE_PRICE,BACCT_CODE,CLIENT_CODE,PURCHASE_CHIT_NO,INCREASE_PRICE) values (3,to_date('24/12/07','RR/MM/DD'),1303500000,null,'client64','MV-20241211026',0);
Insert into PAYABLES_LOG (REC_LOG_ID,REC_DATE,DECREASE_PRICE,BACCT_CODE,CLIENT_CODE,PURCHASE_CHIT_NO,INCREASE_PRICE) values (4,to_date('24/12/03','RR/MM/DD'),42900000,null,'client23','MV-20241211027',0);
Insert into PAYABLES_LOG (REC_LOG_ID,REC_DATE,DECREASE_PRICE,BACCT_CODE,CLIENT_CODE,PURCHASE_CHIT_NO,INCREASE_PRICE) values (5,to_date('24/12/14','RR/MM/DD'),880000000,null,'client66','MV-20241211028',0);
Insert into PAYABLES_LOG (REC_LOG_ID,REC_DATE,DECREASE_PRICE,BACCT_CODE,CLIENT_CODE,PURCHASE_CHIT_NO,INCREASE_PRICE) values (1,to_date('24/11/02','RR/MM/DD'),2145000,null,'client23','MV-20241211024',0);
Insert into PAYABLES_LOG (REC_LOG_ID,REC_DATE,DECREASE_PRICE,BACCT_CODE,CLIENT_CODE,PURCHASE_CHIT_NO,INCREASE_PRICE) values (2,to_date('24/12/11','RR/MM/DD'),1232000,null,'client27','MV-20241211025',0);
Insert into PAYABLES_LOG (REC_LOG_ID,REC_DATE,DECREASE_PRICE,BACCT_CODE,CLIENT_CODE,PURCHASE_CHIT_NO,INCREASE_PRICE) values (6,to_date('24/11/12','RR/MM/DD'),1540077000,null,'client31','MV-20241211029',0);
Insert into PAYABLES_LOG (REC_LOG_ID,REC_DATE,DECREASE_PRICE,BACCT_CODE,CLIENT_CODE,PURCHASE_CHIT_NO,INCREASE_PRICE) values (7,to_date('24/12/07','RR/MM/DD'),1683000000,null,'client65','MV-20241211030',0);
Insert into PAYABLES_LOG (REC_LOG_ID,REC_DATE,DECREASE_PRICE,BACCT_CODE,CLIENT_CODE,PURCHASE_CHIT_NO,INCREASE_PRICE) values (8,to_date('24/12/12','RR/MM/DD'),1122000,null,'client27','MV-20241212031',0);
Insert into PAYABLES_LOG (REC_LOG_ID,REC_DATE,DECREASE_PRICE,BACCT_CODE,CLIENT_CODE,PURCHASE_CHIT_NO,INCREASE_PRICE) values (9,to_date('24/12/12','RR/MM/DD'),10725000,null,'client23','MV-20241212032',0);
Insert into PAYABLES_LOG (REC_LOG_ID,REC_DATE,DECREASE_PRICE,BACCT_CODE,CLIENT_CODE,PURCHASE_CHIT_NO,INCREASE_PRICE) values (10,to_date('24/12/12','RR/MM/DD'),2145000,null,'client23','MV-20241212033',0);
Insert into PAYABLES_LOG (REC_LOG_ID,REC_DATE,DECREASE_PRICE,BACCT_CODE,CLIENT_CODE,PURCHASE_CHIT_NO,INCREASE_PRICE) values (11,to_date('24/12/12','RR/MM/DD'),10725000,null,'client23','MV-20241212034',0);
Insert into PAYABLES_LOG (REC_LOG_ID,REC_DATE,DECREASE_PRICE,BACCT_CODE,CLIENT_CODE,PURCHASE_CHIT_NO,INCREASE_PRICE) values (64,to_date('24/12/12','RR/MM/DD'),0,102,'client23','MV-20241211027',8000000);
Insert into PAYABLES_LOG (REC_LOG_ID,REC_DATE,DECREASE_PRICE,BACCT_CODE,CLIENT_CODE,PURCHASE_CHIT_NO,INCREASE_PRICE) values (65,to_date('24/12/12','RR/MM/DD'),352000,null,'client61','MV-20241212037',0);
Insert into PAYABLES_LOG (REC_LOG_ID,REC_DATE,DECREASE_PRICE,BACCT_CODE,CLIENT_CODE,PURCHASE_CHIT_NO,INCREASE_PRICE) values (66,to_date('24/12/15','RR/MM/DD'),26400,null,'client26','MV-20241215038',0);
REM INSERTING into PURCHASE
SET DEFINE OFF;
Insert into PURCHASE (PURCHASE_CHIT_NO,CLIENT_CODE,ITEM_CODE,ACCT_NAME,CHIT_DATE,SUPPLY_PRICE,VAT,TOTAL_PRICE,INVOICE_CODE,DECREASE_BALANCE,DECREASE_STATUS,SUMMARY,PURCSLIP_NO,WRITER,INVOICE_STATUS) values ('MV-20241211026','client64',null,'외상매입금',to_date('24/12/07','RR/MM/DD'),1185000000,118500000,1303500000,null,0,'n1',null,'20241211-173','정재현','f3');
Insert into PURCHASE (PURCHASE_CHIT_NO,CLIENT_CODE,ITEM_CODE,ACCT_NAME,CHIT_DATE,SUPPLY_PRICE,VAT,TOTAL_PRICE,INVOICE_CODE,DECREASE_BALANCE,DECREASE_STATUS,SUMMARY,PURCSLIP_NO,WRITER,INVOICE_STATUS) values ('MV-20241211027','client23',null,'외상매입금',to_date('24/12/03','RR/MM/DD'),39000000,3900000,42900000,null,8000000,'n1',null,'20241211-167','정재현','f3');
Insert into PURCHASE (PURCHASE_CHIT_NO,CLIENT_CODE,ITEM_CODE,ACCT_NAME,CHIT_DATE,SUPPLY_PRICE,VAT,TOTAL_PRICE,INVOICE_CODE,DECREASE_BALANCE,DECREASE_STATUS,SUMMARY,PURCSLIP_NO,WRITER,INVOICE_STATUS) values ('MV-20241211024','client23',null,'외상매출금',to_date('24/11/02','RR/MM/DD'),1950000,195000,2145000,null,0,'n1',null,'20241210-135','정재현','f3');
Insert into PURCHASE (PURCHASE_CHIT_NO,CLIENT_CODE,ITEM_CODE,ACCT_NAME,CHIT_DATE,SUPPLY_PRICE,VAT,TOTAL_PRICE,INVOICE_CODE,DECREASE_BALANCE,DECREASE_STATUS,SUMMARY,PURCSLIP_NO,WRITER,INVOICE_STATUS) values ('MV-20241211025','client27',null,'외상매입금',to_date('24/12/11','RR/MM/DD'),1120000,112000,1232000,null,0,'n1',null,'20241211-139','정재현','f3');
Insert into PURCHASE (PURCHASE_CHIT_NO,CLIENT_CODE,ITEM_CODE,ACCT_NAME,CHIT_DATE,SUPPLY_PRICE,VAT,TOTAL_PRICE,INVOICE_CODE,DECREASE_BALANCE,DECREASE_STATUS,SUMMARY,PURCSLIP_NO,WRITER,INVOICE_STATUS) values ('MV-20241211028','client66',null,'외상매입금',to_date('24/12/14','RR/MM/DD'),800000000,80000000,880000000,null,0,'n1',null,'20241211-172','정재현','f3');
Insert into PURCHASE (PURCHASE_CHIT_NO,CLIENT_CODE,ITEM_CODE,ACCT_NAME,CHIT_DATE,SUPPLY_PRICE,VAT,TOTAL_PRICE,INVOICE_CODE,DECREASE_BALANCE,DECREASE_STATUS,SUMMARY,PURCSLIP_NO,WRITER,INVOICE_STATUS) values ('MV-20241211029','client31',null,'외상매입금',to_date('24/11/12','RR/MM/DD'),1400070000,140007000,1540077000,null,0,'n1',null,'20241211-170','정재현','f3');
Insert into PURCHASE (PURCHASE_CHIT_NO,CLIENT_CODE,ITEM_CODE,ACCT_NAME,CHIT_DATE,SUPPLY_PRICE,VAT,TOTAL_PRICE,INVOICE_CODE,DECREASE_BALANCE,DECREASE_STATUS,SUMMARY,PURCSLIP_NO,WRITER,INVOICE_STATUS) values ('MV-20241211030','client65',null,'외상매입금',to_date('24/12/07','RR/MM/DD'),1530000000,153000000,1683000000,null,0,'n1',null,'20241211-156','정재현','f3');
Insert into PURCHASE (PURCHASE_CHIT_NO,CLIENT_CODE,ITEM_CODE,ACCT_NAME,CHIT_DATE,SUPPLY_PRICE,VAT,TOTAL_PRICE,INVOICE_CODE,DECREASE_BALANCE,DECREASE_STATUS,SUMMARY,PURCSLIP_NO,WRITER,INVOICE_STATUS) values ('MV-20241212031','client27',null,'외상매입금',to_date('24/12/12','RR/MM/DD'),1020000,102000,1122000,null,0,'n1',null,'20241211-162','정재현','f3');
Insert into PURCHASE (PURCHASE_CHIT_NO,CLIENT_CODE,ITEM_CODE,ACCT_NAME,CHIT_DATE,SUPPLY_PRICE,VAT,TOTAL_PRICE,INVOICE_CODE,DECREASE_BALANCE,DECREASE_STATUS,SUMMARY,PURCSLIP_NO,WRITER,INVOICE_STATUS) values ('MV-20241212032','client23',null,'외상매입금',to_date('24/12/12','RR/MM/DD'),9750000,975000,10725000,null,0,'n1','일산 커피공장 원두 계약 총 2건','20241211-136','정재현','f3');
Insert into PURCHASE (PURCHASE_CHIT_NO,CLIENT_CODE,ITEM_CODE,ACCT_NAME,CHIT_DATE,SUPPLY_PRICE,VAT,TOTAL_PRICE,INVOICE_CODE,DECREASE_BALANCE,DECREASE_STATUS,SUMMARY,PURCSLIP_NO,WRITER,INVOICE_STATUS) values ('MV-20241212033','client23',null,'외상매입금',to_date('24/12/12','RR/MM/DD'),1950000,195000,2145000,null,0,'n1',null,'20241210-135','정재현','f3');
Insert into PURCHASE (PURCHASE_CHIT_NO,CLIENT_CODE,ITEM_CODE,ACCT_NAME,CHIT_DATE,SUPPLY_PRICE,VAT,TOTAL_PRICE,INVOICE_CODE,DECREASE_BALANCE,DECREASE_STATUS,SUMMARY,PURCSLIP_NO,WRITER,INVOICE_STATUS) values ('MV-20241212034','client23',null,'지급어음',to_date('24/12/12','RR/MM/DD'),9750000,975000,10725000,null,0,'n1','원두 계약','20241211-136','정재현','f3');
Insert into PURCHASE (PURCHASE_CHIT_NO,CLIENT_CODE,ITEM_CODE,ACCT_NAME,CHIT_DATE,SUPPLY_PRICE,VAT,TOTAL_PRICE,INVOICE_CODE,DECREASE_BALANCE,DECREASE_STATUS,SUMMARY,PURCSLIP_NO,WRITER,INVOICE_STATUS) values ('MV-20241212037','client61',null,'외상매입금',to_date('24/12/12','RR/MM/DD'),320000,32000,352000,null,0,'n1',null,null,'정재현','f3');
Insert into PURCHASE (PURCHASE_CHIT_NO,CLIENT_CODE,ITEM_CODE,ACCT_NAME,CHIT_DATE,SUPPLY_PRICE,VAT,TOTAL_PRICE,INVOICE_CODE,DECREASE_BALANCE,DECREASE_STATUS,SUMMARY,PURCSLIP_NO,WRITER,INVOICE_STATUS) values ('MV-20241215038','client26',null,'외상매입금',to_date('24/12/15','RR/MM/DD'),24000,2400,26400,null,0,'n1','빨대구입','20241211-168','정재현','f3');
REM INSERTING into PURCHASE_CHIT
SET DEFINE OFF;
Insert into PURCHASE_CHIT (PURCSLIP_NO,INSERT_DATE,CLIENT_CODE,CLIENT_NAME,WIT_BACCT,SUPPLY_PRICE,PUR_SUMMARY,EMPLOYEE_NAME,EMPLOYEE_CODE,VAT,SLIP_STATE) values ('20241211-137',to_date('24/12/11','RR/MM/DD'),'client27','(주)조이빨대','456-143145416-452',2550000,null,'권혁태','160',255000,'r1');
Insert into PURCHASE_CHIT (PURCSLIP_NO,INSERT_DATE,CLIENT_CODE,CLIENT_NAME,WIT_BACCT,SUPPLY_PRICE,PUR_SUMMARY,EMPLOYEE_NAME,EMPLOYEE_CODE,VAT,SLIP_STATE) values ('20241210-135',to_date('24/12/10','RR/MM/DD'),'client23','일산커피공장','456-143145416-452',1950000,null,'권혁태','160',195000,'r2');
Insert into PURCHASE_CHIT (PURCSLIP_NO,INSERT_DATE,CLIENT_CODE,CLIENT_NAME,WIT_BACCT,SUPPLY_PRICE,PUR_SUMMARY,EMPLOYEE_NAME,EMPLOYEE_CODE,VAT,SLIP_STATE) values ('20241211-136',to_date('24/12/11','RR/MM/DD'),'client23','일산커피공장','456-143145416-452',9750000,null,'권혁태','160',975000,'r2');
Insert into PURCHASE_CHIT (PURCSLIP_NO,INSERT_DATE,CLIENT_CODE,CLIENT_NAME,WIT_BACCT,SUPPLY_PRICE,PUR_SUMMARY,EMPLOYEE_NAME,EMPLOYEE_CODE,VAT,SLIP_STATE) values ('20241211-139',to_date('24/12/11','RR/MM/DD'),'client27','(주)조이빨대','123-4567-8910-02',1120000,null,'권혁태','160',112000,'r2');
Insert into PURCHASE_CHIT (PURCSLIP_NO,INSERT_DATE,CLIENT_CODE,CLIENT_NAME,WIT_BACCT,SUPPLY_PRICE,PUR_SUMMARY,EMPLOYEE_NAME,EMPLOYEE_CODE,VAT,SLIP_STATE) values ('20241211-140',to_date('24/12/11','RR/MM/DD'),'client63','커피머신스토어','123-4567-8910-02',60000000,null,'남건우','159',6000000,'r1');
Insert into PURCHASE_CHIT (PURCSLIP_NO,INSERT_DATE,CLIENT_CODE,CLIENT_NAME,WIT_BACCT,SUPPLY_PRICE,PUR_SUMMARY,EMPLOYEE_NAME,EMPLOYEE_CODE,VAT,SLIP_STATE) values ('20241211-141',to_date('24/12/11','RR/MM/DD'),'client31','일라니원두(주) 창원제2공장','456-143145416-452',70003500,null,'권혁태','160',7000350,'r1');
Insert into PURCHASE_CHIT (PURCSLIP_NO,INSERT_DATE,CLIENT_CODE,CLIENT_NAME,WIT_BACCT,SUPPLY_PRICE,PUR_SUMMARY,EMPLOYEE_NAME,EMPLOYEE_CODE,VAT,SLIP_STATE) values ('20241211-142',to_date('24/12/11','RR/MM/DD'),'client31','일라니원두(주) 창원제2공장','456-143145416-452',42002100,null,'권혁태','160',4200210,'r1');
Insert into PURCHASE_CHIT (PURCSLIP_NO,INSERT_DATE,CLIENT_CODE,CLIENT_NAME,WIT_BACCT,SUPPLY_PRICE,PUR_SUMMARY,EMPLOYEE_NAME,EMPLOYEE_CODE,VAT,SLIP_STATE) values ('20241211-143',to_date('24/12/11','RR/MM/DD'),'client31','일라니원두(주) 창원제2공장','456-143145416-452',42002100,null,'권혁태','160',4200210,'r1');
Insert into PURCHASE_CHIT (PURCSLIP_NO,INSERT_DATE,CLIENT_CODE,CLIENT_NAME,WIT_BACCT,SUPPLY_PRICE,PUR_SUMMARY,EMPLOYEE_NAME,EMPLOYEE_CODE,VAT,SLIP_STATE) values ('20241211-144',to_date('24/12/11','RR/MM/DD'),'client31','일라니원두(주) 창원제2공장','456-143145416-452',42002100,null,'권혁태','160',4200210,'r1');
Insert into PURCHASE_CHIT (PURCSLIP_NO,INSERT_DATE,CLIENT_CODE,CLIENT_NAME,WIT_BACCT,SUPPLY_PRICE,PUR_SUMMARY,EMPLOYEE_NAME,EMPLOYEE_CODE,VAT,SLIP_STATE) values ('20241211-145',to_date('24/12/11','RR/MM/DD'),'client31','일라니원두(주) 창원제2공장','456-143145416-452',42002100,null,'권혁태','160',4200210,'r1');
Insert into PURCHASE_CHIT (PURCSLIP_NO,INSERT_DATE,CLIENT_CODE,CLIENT_NAME,WIT_BACCT,SUPPLY_PRICE,PUR_SUMMARY,EMPLOYEE_NAME,EMPLOYEE_CODE,VAT,SLIP_STATE) values ('20241211-146',to_date('24/12/11','RR/MM/DD'),'client31','일라니원두(주) 창원제2공장','02-45641-153212',14000700,null,'권혁태','160',1400070,'r1');
Insert into PURCHASE_CHIT (PURCSLIP_NO,INSERT_DATE,CLIENT_CODE,CLIENT_NAME,WIT_BACCT,SUPPLY_PRICE,PUR_SUMMARY,EMPLOYEE_NAME,EMPLOYEE_CODE,VAT,SLIP_STATE) values ('20241211-147',to_date('24/12/11','RR/MM/DD'),'client64','초콜릿홀세일','123-4567-8910-02',237000000,null,'남건우','159',23700000,'r1');
Insert into PURCHASE_CHIT (PURCSLIP_NO,INSERT_DATE,CLIENT_CODE,CLIENT_NAME,WIT_BACCT,SUPPLY_PRICE,PUR_SUMMARY,EMPLOYEE_NAME,EMPLOYEE_CODE,VAT,SLIP_STATE) values ('20241211-148',to_date('24/12/11','RR/MM/DD'),'client65','티하우스원재료','123-4567-8910-02',153000000,null,'남건우','159',15300000,'r1');
Insert into PURCHASE_CHIT (PURCSLIP_NO,INSERT_DATE,CLIENT_CODE,CLIENT_NAME,WIT_BACCT,SUPPLY_PRICE,PUR_SUMMARY,EMPLOYEE_NAME,EMPLOYEE_CODE,VAT,SLIP_STATE) values ('20241211-149',to_date('24/12/11','RR/MM/DD'),'client63','커피머신스토어','123-4567-8910-02',1390000000,null,'남건우','159',139000000,'r1');
Insert into PURCHASE_CHIT (PURCSLIP_NO,INSERT_DATE,CLIENT_CODE,CLIENT_NAME,WIT_BACCT,SUPPLY_PRICE,PUR_SUMMARY,EMPLOYEE_NAME,EMPLOYEE_CODE,VAT,SLIP_STATE) values ('20241211-150',to_date('24/12/11','RR/MM/DD'),'client66','베이킹마켓','123-4567-8910-02',800000000,null,'남건우','159',80000000,'r1');
Insert into PURCHASE_CHIT (PURCSLIP_NO,INSERT_DATE,CLIENT_CODE,CLIENT_NAME,WIT_BACCT,SUPPLY_PRICE,PUR_SUMMARY,EMPLOYEE_NAME,EMPLOYEE_CODE,VAT,SLIP_STATE) values ('20241211-151',to_date('24/12/11','RR/MM/DD'),'client69','스위트랜드','123-4567-8910-02',350000000,null,'남건우','159',35000000,'r1');
Insert into PURCHASE_CHIT (PURCSLIP_NO,INSERT_DATE,CLIENT_CODE,CLIENT_NAME,WIT_BACCT,SUPPLY_PRICE,PUR_SUMMARY,EMPLOYEE_NAME,EMPLOYEE_CODE,VAT,SLIP_STATE) values ('20241211-152',to_date('24/12/11','RR/MM/DD'),'client31','일라니원두(주) 창원제2공장','02-45641-153212',1400070000,null,'권혁태','160',140007000,'r1');
Insert into PURCHASE_CHIT (PURCSLIP_NO,INSERT_DATE,CLIENT_CODE,CLIENT_NAME,WIT_BACCT,SUPPLY_PRICE,PUR_SUMMARY,EMPLOYEE_NAME,EMPLOYEE_CODE,VAT,SLIP_STATE) values ('20241211-153',to_date('24/12/11','RR/MM/DD'),'client69','스위트랜드','456-143145416-452',350000000,null,'권혁태','160',35000000,'r1');
Insert into PURCHASE_CHIT (PURCSLIP_NO,INSERT_DATE,CLIENT_CODE,CLIENT_NAME,WIT_BACCT,SUPPLY_PRICE,PUR_SUMMARY,EMPLOYEE_NAME,EMPLOYEE_CODE,VAT,SLIP_STATE) values ('20241211-156',to_date('24/12/11','RR/MM/DD'),'client65','티하우스원재료','02-45641-153212',1530000000,null,'권혁태','160',153000000,'r2');
Insert into PURCHASE_CHIT (PURCSLIP_NO,INSERT_DATE,CLIENT_CODE,CLIENT_NAME,WIT_BACCT,SUPPLY_PRICE,PUR_SUMMARY,EMPLOYEE_NAME,EMPLOYEE_CODE,VAT,SLIP_STATE) values ('20241211-157',to_date('24/12/11','RR/MM/DD'),'client31','일라니원두(주) 창원제2공장','456-143145416-452',140007000,null,'권혁태','160',14000700,'r1');
Insert into PURCHASE_CHIT (PURCSLIP_NO,INSERT_DATE,CLIENT_CODE,CLIENT_NAME,WIT_BACCT,SUPPLY_PRICE,PUR_SUMMARY,EMPLOYEE_NAME,EMPLOYEE_CODE,VAT,SLIP_STATE) values ('20241211-158',to_date('24/12/11','RR/MM/DD'),'client64','초콜릿홀세일','02-45641-153212',90000000,null,'권혁태','160',9000000,'r1');
Insert into PURCHASE_CHIT (PURCSLIP_NO,INSERT_DATE,CLIENT_CODE,CLIENT_NAME,WIT_BACCT,SUPPLY_PRICE,PUR_SUMMARY,EMPLOYEE_NAME,EMPLOYEE_CODE,VAT,SLIP_STATE) values ('20241211-162',to_date('24/12/11','RR/MM/DD'),'client27','(주)조이빨대','123-4567-8910-02',1020000,null,'남건우','159',102000,'r2');
Insert into PURCHASE_CHIT (PURCSLIP_NO,INSERT_DATE,CLIENT_CODE,CLIENT_NAME,WIT_BACCT,SUPPLY_PRICE,PUR_SUMMARY,EMPLOYEE_NAME,EMPLOYEE_CODE,VAT,SLIP_STATE) values ('20241211-164',to_date('24/12/11','RR/MM/DD'),'client27','(주)조이빨대','456-143145416-452',160000,null,'권혁태','160',16000,'r1');
Insert into PURCHASE_CHIT (PURCSLIP_NO,INSERT_DATE,CLIENT_CODE,CLIENT_NAME,WIT_BACCT,SUPPLY_PRICE,PUR_SUMMARY,EMPLOYEE_NAME,EMPLOYEE_CODE,VAT,SLIP_STATE) values ('20241211-166',to_date('24/12/11','RR/MM/DD'),'client68','카페메이트','123-4567-8910-02',1600000000,null,'남건우','159',160000000,'r1');
Insert into PURCHASE_CHIT (PURCSLIP_NO,INSERT_DATE,CLIENT_CODE,CLIENT_NAME,WIT_BACCT,SUPPLY_PRICE,PUR_SUMMARY,EMPLOYEE_NAME,EMPLOYEE_CODE,VAT,SLIP_STATE) values ('20241211-167',to_date('24/12/11','RR/MM/DD'),'client23','(주)MD 일산 커피 1공장','123-4567-8910-02',39000000,null,'남건우','159',3900000,'r2');
Insert into PURCHASE_CHIT (PURCSLIP_NO,INSERT_DATE,CLIENT_CODE,CLIENT_NAME,WIT_BACCT,SUPPLY_PRICE,PUR_SUMMARY,EMPLOYEE_NAME,EMPLOYEE_CODE,VAT,SLIP_STATE) values ('20241211-168',to_date('24/12/11','RR/MM/DD'),'client26','(주)민형플라스틱','123-4567-8910-02',24000,null,'남건우','159',2000,'r2');
Insert into PURCHASE_CHIT (PURCSLIP_NO,INSERT_DATE,CLIENT_CODE,CLIENT_NAME,WIT_BACCT,SUPPLY_PRICE,PUR_SUMMARY,EMPLOYEE_NAME,EMPLOYEE_CODE,VAT,SLIP_STATE) values ('20241211-169',to_date('24/12/11','RR/MM/DD'),'client27','(주)조이빨대','123-4567-8910-02',10200000,null,'남건우','159',1020000,'r1');
Insert into PURCHASE_CHIT (PURCSLIP_NO,INSERT_DATE,CLIENT_CODE,CLIENT_NAME,WIT_BACCT,SUPPLY_PRICE,PUR_SUMMARY,EMPLOYEE_NAME,EMPLOYEE_CODE,VAT,SLIP_STATE) values ('20241211-170',to_date('24/12/11','RR/MM/DD'),'client31','일라니원두(주) 창원제2공장','123-4567-8910-02',1400070000,null,'남건우','159',140007000,'r2');
Insert into PURCHASE_CHIT (PURCSLIP_NO,INSERT_DATE,CLIENT_CODE,CLIENT_NAME,WIT_BACCT,SUPPLY_PRICE,PUR_SUMMARY,EMPLOYEE_NAME,EMPLOYEE_CODE,VAT,SLIP_STATE) values ('20241211-171',to_date('24/12/11','RR/MM/DD'),'client63','커피머신스토어','123-4567-8910-02',1298000000,null,'남건우','159',129800000,'r1');
Insert into PURCHASE_CHIT (PURCSLIP_NO,INSERT_DATE,CLIENT_CODE,CLIENT_NAME,WIT_BACCT,SUPPLY_PRICE,PUR_SUMMARY,EMPLOYEE_NAME,EMPLOYEE_CODE,VAT,SLIP_STATE) values ('20241211-172',to_date('24/12/11','RR/MM/DD'),'client66','베이킹마켓','123-4567-8910-02',800000000,null,'남건우','159',80000000,'r2');
Insert into PURCHASE_CHIT (PURCSLIP_NO,INSERT_DATE,CLIENT_CODE,CLIENT_NAME,WIT_BACCT,SUPPLY_PRICE,PUR_SUMMARY,EMPLOYEE_NAME,EMPLOYEE_CODE,VAT,SLIP_STATE) values ('20241211-173',to_date('24/12/11','RR/MM/DD'),'client64','초콜릿홀세일','123-4567-8910-02',1185000000,null,'남건우','159',118500000,'r2');
Insert into PURCHASE_CHIT (PURCSLIP_NO,INSERT_DATE,CLIENT_CODE,CLIENT_NAME,WIT_BACCT,SUPPLY_PRICE,PUR_SUMMARY,EMPLOYEE_NAME,EMPLOYEE_CODE,VAT,SLIP_STATE) values ('20241211-174',to_date('24/12/11','RR/MM/DD'),'client68','카페메이트','123-4567-8910-02',840000000,null,'남건우','159',84000000,'r1');
Insert into PURCHASE_CHIT (PURCSLIP_NO,INSERT_DATE,CLIENT_CODE,CLIENT_NAME,WIT_BACCT,SUPPLY_PRICE,PUR_SUMMARY,EMPLOYEE_NAME,EMPLOYEE_CODE,VAT,SLIP_STATE) values ('20241211-175',to_date('24/12/11','RR/MM/DD'),'client26','(주)민형플라스틱','123-4567-8910-02',60000,null,'남건우','159',5000,'미발행');
Insert into PURCHASE_CHIT (PURCSLIP_NO,INSERT_DATE,CLIENT_CODE,CLIENT_NAME,WIT_BACCT,SUPPLY_PRICE,PUR_SUMMARY,EMPLOYEE_NAME,EMPLOYEE_CODE,VAT,SLIP_STATE) values ('20241211-177',to_date('24/12/11','RR/MM/DD'),'client23','(주)MD 일산 커피 1공장','02-45641-153212',975000,null,'권혁태','160',97500,'미발행');
Insert into PURCHASE_CHIT (PURCSLIP_NO,INSERT_DATE,CLIENT_CODE,CLIENT_NAME,WIT_BACCT,SUPPLY_PRICE,PUR_SUMMARY,EMPLOYEE_NAME,EMPLOYEE_CODE,VAT,SLIP_STATE) values ('20241211-178',to_date('24/12/11','RR/MM/DD'),'client23','(주)MD 일산 커피 1공장','456-143145416-452',975000,null,'권혁태','160',97500,'미발행');
Insert into PURCHASE_CHIT (PURCSLIP_NO,INSERT_DATE,CLIENT_CODE,CLIENT_NAME,WIT_BACCT,SUPPLY_PRICE,PUR_SUMMARY,EMPLOYEE_NAME,EMPLOYEE_CODE,VAT,SLIP_STATE) values ('20241211-179',to_date('24/12/11','RR/MM/DD'),'client23','(주)MD 일산 커피 1공장','02-45641-153212',19500,null,'권혁태','160',1950,'미발행');
Insert into PURCHASE_CHIT (PURCSLIP_NO,INSERT_DATE,CLIENT_CODE,CLIENT_NAME,WIT_BACCT,SUPPLY_PRICE,PUR_SUMMARY,EMPLOYEE_NAME,EMPLOYEE_CODE,VAT,SLIP_STATE) values ('20241212-196',to_date('24/12/12','RR/MM/DD'),'client23','(주)MD 일산 커피 1공장','123-4567-8910-02',10400000,null,'권혁태','160',1040000,'미발행');
Insert into PURCHASE_CHIT (PURCSLIP_NO,INSERT_DATE,CLIENT_CODE,CLIENT_NAME,WIT_BACCT,SUPPLY_PRICE,PUR_SUMMARY,EMPLOYEE_NAME,EMPLOYEE_CODE,VAT,SLIP_STATE) values ('20241212-197',to_date('24/12/12','RR/MM/DD'),'client23','(주)MD 일산 커피 1공장','456-143145416-452',77000000,null,'권혁태','160',7700000,'미발행');
Insert into PURCHASE_CHIT (PURCSLIP_NO,INSERT_DATE,CLIENT_CODE,CLIENT_NAME,WIT_BACCT,SUPPLY_PRICE,PUR_SUMMARY,EMPLOYEE_NAME,EMPLOYEE_CODE,VAT,SLIP_STATE) values ('20241212-198',to_date('24/12/12','RR/MM/DD'),'client23','(주)MD 일산 커피 1공장','123-4567-8910-02',14925000,null,'남건우','159',1492500,'미발행');
Insert into PURCHASE_CHIT (PURCSLIP_NO,INSERT_DATE,CLIENT_CODE,CLIENT_NAME,WIT_BACCT,SUPPLY_PRICE,PUR_SUMMARY,EMPLOYEE_NAME,EMPLOYEE_CODE,VAT,SLIP_STATE) values ('20241212-203',to_date('24/12/12','RR/MM/DD'),'client23','(주)MD 일산 커피 1공장','02-45641-153212',3650000,null,'박아무개','231',365000,'미발행');
Insert into PURCHASE_CHIT (PURCSLIP_NO,INSERT_DATE,CLIENT_CODE,CLIENT_NAME,WIT_BACCT,SUPPLY_PRICE,PUR_SUMMARY,EMPLOYEE_NAME,EMPLOYEE_CODE,VAT,SLIP_STATE) values ('20241212-206',to_date('24/12/12','RR/MM/DD'),'client66','베이킹마켓','123-4567-8910-02',80000000,null,'권혁태','160',8000000,'미발행');
Insert into PURCHASE_CHIT (PURCSLIP_NO,INSERT_DATE,CLIENT_CODE,CLIENT_NAME,WIT_BACCT,SUPPLY_PRICE,PUR_SUMMARY,EMPLOYEE_NAME,EMPLOYEE_CODE,VAT,SLIP_STATE) values ('20241212-207',to_date('24/12/12','RR/MM/DD'),'client27','(주)조이빨대','123-4567-8910-02',1020000,null,'권혁태','160',102000,'미발행');
Insert into PURCHASE_CHIT (PURCSLIP_NO,INSERT_DATE,CLIENT_CODE,CLIENT_NAME,WIT_BACCT,SUPPLY_PRICE,PUR_SUMMARY,EMPLOYEE_NAME,EMPLOYEE_CODE,VAT,SLIP_STATE) values ('20241212-208',to_date('24/12/12','RR/MM/DD'),'client63','커피머신스토어','123-4567-8910-02',556000000,null,'권혁태','160',55600000,'미발행');
Insert into PURCHASE_CHIT (PURCSLIP_NO,INSERT_DATE,CLIENT_CODE,CLIENT_NAME,WIT_BACCT,SUPPLY_PRICE,PUR_SUMMARY,EMPLOYEE_NAME,EMPLOYEE_CODE,VAT,SLIP_STATE) values ('20241213-214',to_date('24/12/13','RR/MM/DD'),'client63','커피머신스토어','123-4567-8910-02',139000000,null,'권혁태','160',13900000,'미발행');
Insert into PURCHASE_CHIT (PURCSLIP_NO,INSERT_DATE,CLIENT_CODE,CLIENT_NAME,WIT_BACCT,SUPPLY_PRICE,PUR_SUMMARY,EMPLOYEE_NAME,EMPLOYEE_CODE,VAT,SLIP_STATE) values ('20241215-215',to_date('24/12/15','RR/MM/DD'),'client26','(주)민형플라스틱','8551-453214-452-423',1200,null,'남건우','159',100,'미발행');
Insert into PURCHASE_CHIT (PURCSLIP_NO,INSERT_DATE,CLIENT_CODE,CLIENT_NAME,WIT_BACCT,SUPPLY_PRICE,PUR_SUMMARY,EMPLOYEE_NAME,EMPLOYEE_CODE,VAT,SLIP_STATE) values ('20241215-216',to_date('24/12/15','RR/MM/DD'),'client64','초콜릿홀세일','8551-453214-452-423',12000000,null,'진솔미','158',1200000,'미발행');
Insert into PURCHASE_CHIT (PURCSLIP_NO,INSERT_DATE,CLIENT_CODE,CLIENT_NAME,WIT_BACCT,SUPPLY_PRICE,PUR_SUMMARY,EMPLOYEE_NAME,EMPLOYEE_CODE,VAT,SLIP_STATE) values ('20241215-217',to_date('24/12/15','RR/MM/DD'),'client31','일라니원두(주) 창원제2공장','8551-453214-452-423',700,null,'유석진','151',70,'미발행');
REM INSERTING into PURCHASE_HISTORY
SET DEFINE OFF;
Insert into PURCHASE_HISTORY (PUR_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,RESTOCKING_PRICE,RESTOCKING_STATUS,RESTOCKING_DATE,PURCSLIP_NO,INCOMPLETE_QUANTITY) values (20241211025,'10001','서울창고','MANGO-12056','아라비카(Arabica)',500,0,'b3',to_date('24/12/16','RR/MM/DD'),'20241211-136',0);
Insert into PURCHASE_HISTORY (PUR_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,RESTOCKING_PRICE,RESTOCKING_STATUS,RESTOCKING_DATE,PURCSLIP_NO,INCOMPLETE_QUANTITY) values (20241211026,'10001','서울창고','MANGO-12057','로부스타(Robusta)',500,0,'b3',to_date('24/12/16','RR/MM/DD'),'20241211-136',0);
Insert into PURCHASE_HISTORY (PUR_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,RESTOCKING_PRICE,RESTOCKING_STATUS,RESTOCKING_DATE,PURCSLIP_NO,INCOMPLETE_QUANTITY) values (20241211027,'10001',null,'MANGO-12062','굵은 빨대(1.0cm)150개입',500,0,'b3',to_date('24/12/16','RR/MM/DD'),'20241211-137',0);
Insert into PURCHASE_HISTORY (PUR_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,RESTOCKING_PRICE,RESTOCKING_STATUS,RESTOCKING_DATE,PURCSLIP_NO,INCOMPLETE_QUANTITY) values (20241211028,'10001',null,'MANGO-12061','종이 빨대(0.7cm)150개입',500,0,'b3',to_date('24/12/16','RR/MM/DD'),'20241211-137',0);
Insert into PURCHASE_HISTORY (PUR_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,RESTOCKING_PRICE,RESTOCKING_STATUS,RESTOCKING_DATE,PURCSLIP_NO,INCOMPLETE_QUANTITY) values (20241211029,'10001',null,'MANGO-12060','얇은 빨대(0.7cm)150개입',500,0,'b3',to_date('24/12/16','RR/MM/DD'),'20241211-137',0);
Insert into PURCHASE_HISTORY (PUR_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,RESTOCKING_PRICE,RESTOCKING_STATUS,RESTOCKING_DATE,PURCSLIP_NO,INCOMPLETE_QUANTITY) values (20241211030,'10002',null,'MANGO-12062','굵은 빨대(1.0cm)150개입',200,0,'b3',to_date('24/12/16','RR/MM/DD'),'20241211-139',0);
Insert into PURCHASE_HISTORY (PUR_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,RESTOCKING_PRICE,RESTOCKING_STATUS,RESTOCKING_DATE,PURCSLIP_NO,INCOMPLETE_QUANTITY) values (20241211031,'10001',null,'MANGO-12061','종이 빨대(0.7cm)150개입',400,0,'b3',to_date('24/12/16','RR/MM/DD'),'20241211-139',0);
Insert into PURCHASE_HISTORY (PUR_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,RESTOCKING_PRICE,RESTOCKING_STATUS,RESTOCKING_DATE,PURCSLIP_NO,INCOMPLETE_QUANTITY) values (20241211032,'10002',null,'MANGO-12069','중형 커피머신',20,0,'b3',to_date('24/12/16','RR/MM/DD'),'20241211-140',0);
Insert into PURCHASE_HISTORY (PUR_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,RESTOCKING_PRICE,RESTOCKING_STATUS,RESTOCKING_DATE,PURCSLIP_NO,INCOMPLETE_QUANTITY) values (20241211033,'10001',null,'ITEM-1002','베이킹 믹스',50,0,'b3',to_date('24/12/16','RR/MM/DD'),'20241211-141',0);
Insert into PURCHASE_HISTORY (PUR_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,RESTOCKING_PRICE,RESTOCKING_STATUS,RESTOCKING_DATE,PURCSLIP_NO,INCOMPLETE_QUANTITY) values (20241211034,'10001',null,'ITEM-1001','프리미엄 원두',50,0,'b3',to_date('24/12/16','RR/MM/DD'),'20241211-141',0);
Insert into PURCHASE_HISTORY (PUR_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,RESTOCKING_PRICE,RESTOCKING_STATUS,RESTOCKING_DATE,PURCSLIP_NO,INCOMPLETE_QUANTITY) values (20241211035,'10001',null,'MANGO-12055','디카페인 원두(에티오피아산)',50,0,'b3',to_date('24/12/16','RR/MM/DD'),'20241211-141',0);
Insert into PURCHASE_HISTORY (PUR_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,RESTOCKING_PRICE,RESTOCKING_STATUS,RESTOCKING_DATE,PURCSLIP_NO,INCOMPLETE_QUANTITY) values (20241211036,'10001',null,'ITEM-1002','베이킹 믹스',10,600000,'b3',to_date('24/12/16','RR/MM/DD'),'20241211-146',0);
Insert into PURCHASE_HISTORY (PUR_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,RESTOCKING_PRICE,RESTOCKING_STATUS,RESTOCKING_DATE,PURCSLIP_NO,INCOMPLETE_QUANTITY) values (20241211037,'10001',null,'ITEM-1001','프리미엄 원두',10,800000,'b3',to_date('24/12/16','RR/MM/DD'),'20241211-146',0);
Insert into PURCHASE_HISTORY (PUR_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,RESTOCKING_PRICE,RESTOCKING_STATUS,RESTOCKING_DATE,PURCSLIP_NO,INCOMPLETE_QUANTITY) values (20241211038,'10001',null,'MANGO-12055','디카페인 원두(에티오피아산)',10,70,'b3',to_date('24/12/16','RR/MM/DD'),'20241211-146',0);
Insert into PURCHASE_HISTORY (PUR_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,RESTOCKING_PRICE,RESTOCKING_STATUS,RESTOCKING_DATE,PURCSLIP_NO,INCOMPLETE_QUANTITY) values (20241211039,'10001',null,'MANGO-13002','일반 원두',100,0,'b3',to_date('24/12/16','RR/MM/DD'),'20241211-147',0);
Insert into PURCHASE_HISTORY (PUR_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,RESTOCKING_PRICE,RESTOCKING_STATUS,RESTOCKING_DATE,PURCSLIP_NO,INCOMPLETE_QUANTITY) values (20241211040,'10002',null,'MANGO-13001','스페셜티 원두',100,0,'b3',to_date('24/12/16','RR/MM/DD'),'20241211-147',0);
Insert into PURCHASE_HISTORY (PUR_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,RESTOCKING_PRICE,RESTOCKING_STATUS,RESTOCKING_DATE,PURCSLIP_NO,INCOMPLETE_QUANTITY) values (20241211041,'10002',null,'ITEM-5002','베이킹 믹스',100,0,'b3',to_date('24/12/16','RR/MM/DD'),'20241211-147',0);
Insert into PURCHASE_HISTORY (PUR_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,RESTOCKING_PRICE,RESTOCKING_STATUS,RESTOCKING_DATE,PURCSLIP_NO,INCOMPLETE_QUANTITY) values (20241211042,'10001',null,'ITEM-5001','초콜릿 소스',100,0,'b3',to_date('24/12/16','RR/MM/DD'),'20241211-147',0);
Insert into PURCHASE_HISTORY (PUR_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,RESTOCKING_PRICE,RESTOCKING_STATUS,RESTOCKING_DATE,PURCSLIP_NO,INCOMPLETE_QUANTITY) values (20241211043,'10002',null,'ITEM-7004','유지보수 부품 A',100,0,'b3',to_date('24/12/16','RR/MM/DD'),'20241211-147',0);
Insert into PURCHASE_HISTORY (PUR_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,RESTOCKING_PRICE,RESTOCKING_STATUS,RESTOCKING_DATE,PURCSLIP_NO,INCOMPLETE_QUANTITY) values (20241211044,'10002',null,'ITEM-7003','커피머신 필터',100,0,'b3',to_date('24/12/16','RR/MM/DD'),'20241211-147',0);
Insert into PURCHASE_HISTORY (PUR_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,RESTOCKING_PRICE,RESTOCKING_STATUS,RESTOCKING_DATE,PURCSLIP_NO,INCOMPLETE_QUANTITY) values (20241211045,'10001',null,'MANGO-13004','초콜릿 소스',100,0,'b3',to_date('24/12/16','RR/MM/DD'),'20241211-148',0);
Insert into PURCHASE_HISTORY (PUR_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,RESTOCKING_PRICE,RESTOCKING_STATUS,RESTOCKING_DATE,PURCSLIP_NO,INCOMPLETE_QUANTITY) values (20241211046,'10001',null,'MANGO-13003','케이크 믹스',100,0,'b3',to_date('24/12/16','RR/MM/DD'),'20241211-148',0);
Insert into PURCHASE_HISTORY (PUR_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,RESTOCKING_PRICE,RESTOCKING_STATUS,RESTOCKING_DATE,PURCSLIP_NO,INCOMPLETE_QUANTITY) values (20241211047,'10001',null,'ITEM-6002','유지보수 부품 B',100,0,'b3',to_date('24/12/16','RR/MM/DD'),'20241211-148',0);
Insert into PURCHASE_HISTORY (PUR_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,RESTOCKING_PRICE,RESTOCKING_STATUS,RESTOCKING_DATE,PURCSLIP_NO,INCOMPLETE_QUANTITY) values (20241211048,'10001',null,'ITEM-6001','커피 머신 필터',100,0,'b3',to_date('24/12/16','RR/MM/DD'),'20241211-148',0);
Insert into PURCHASE_HISTORY (PUR_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,RESTOCKING_PRICE,RESTOCKING_STATUS,RESTOCKING_DATE,PURCSLIP_NO,INCOMPLETE_QUANTITY) values (20241211049,'10001',null,'ITEM-7006','초콜릿 재료',100,0,'b3',to_date('24/12/16','RR/MM/DD'),'20241211-148',0);
Insert into PURCHASE_HISTORY (PUR_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,RESTOCKING_PRICE,RESTOCKING_STATUS,RESTOCKING_DATE,PURCSLIP_NO,INCOMPLETE_QUANTITY) values (20241211050,'10001',null,'ITEM-7005','디저트 믹스',100,0,'b3',to_date('24/12/16','RR/MM/DD'),'20241211-148',0);
Insert into PURCHASE_HISTORY (PUR_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,RESTOCKING_PRICE,RESTOCKING_STATUS,RESTOCKING_DATE,PURCSLIP_NO,INCOMPLETE_QUANTITY) values (20241211051,'10001',null,'MANGO-12069','중형 커피머신',100,0,'b3',to_date('24/12/16','RR/MM/DD'),'20241211-149',0);
Insert into PURCHASE_HISTORY (PUR_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,RESTOCKING_PRICE,RESTOCKING_STATUS,RESTOCKING_DATE,PURCSLIP_NO,INCOMPLETE_QUANTITY) values (20241211052,'10001',null,'MANGO-12068','고급 커피머신',100,0,'b3',to_date('24/12/16','RR/MM/DD'),'20241211-149',0);
Insert into PURCHASE_HISTORY (PUR_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,RESTOCKING_PRICE,RESTOCKING_STATUS,RESTOCKING_DATE,PURCSLIP_NO,INCOMPLETE_QUANTITY) values (20241211053,'10001',null,'ITEM-4002','스페셜티 원두',100,0,'b3',to_date('24/12/16','RR/MM/DD'),'20241211-149',0);
Insert into PURCHASE_HISTORY (PUR_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,RESTOCKING_PRICE,RESTOCKING_STATUS,RESTOCKING_DATE,PURCSLIP_NO,INCOMPLETE_QUANTITY) values (20241211054,'10001',null,'ITEM-4001','프리미엄 원두',100,0,'b3',to_date('24/12/16','RR/MM/DD'),'20241211-149',0);
Insert into PURCHASE_HISTORY (PUR_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,RESTOCKING_PRICE,RESTOCKING_STATUS,RESTOCKING_DATE,PURCSLIP_NO,INCOMPLETE_QUANTITY) values (20241211055,'10001',null,'ITEM-7002','초콜릿 소스',100,0,'b3',to_date('24/12/16','RR/MM/DD'),'20241211-149',0);
Insert into PURCHASE_HISTORY (PUR_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,RESTOCKING_PRICE,RESTOCKING_STATUS,RESTOCKING_DATE,PURCSLIP_NO,INCOMPLETE_QUANTITY) values (20241211056,'10001',null,'ITEM-7001','스페셜티 원두',100,0,'b3',to_date('24/12/16','RR/MM/DD'),'20241211-149',0);
Insert into PURCHASE_HISTORY (PUR_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,RESTOCKING_PRICE,RESTOCKING_STATUS,RESTOCKING_DATE,PURCSLIP_NO,INCOMPLETE_QUANTITY) values (20241211057,'10001',null,'MANGO-13006','커피머신 부품 A',1000,0,'b3',to_date('24/12/16','RR/MM/DD'),'20241211-150',0);
Insert into PURCHASE_HISTORY (PUR_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,RESTOCKING_PRICE,RESTOCKING_STATUS,RESTOCKING_DATE,PURCSLIP_NO,INCOMPLETE_QUANTITY) values (20241211058,'10001',null,'MANGO-13005','커피 머신 필터',1000,0,'b3',to_date('24/12/16','RR/MM/DD'),'20241211-150',0);
Insert into PURCHASE_HISTORY (PUR_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,RESTOCKING_PRICE,RESTOCKING_STATUS,RESTOCKING_DATE,PURCSLIP_NO,INCOMPLETE_QUANTITY) values (20241211059,'10001',null,'ITEM-3002','유지보수 부품 A',1000,0,'b3',to_date('24/12/16','RR/MM/DD'),'20241211-151',0);
Insert into PURCHASE_HISTORY (PUR_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,RESTOCKING_PRICE,RESTOCKING_STATUS,RESTOCKING_DATE,PURCSLIP_NO,INCOMPLETE_QUANTITY) values (20241211060,'10002',null,'ITEM-3001','커피 머신 필터',1000,0,'b3',to_date('24/12/16','RR/MM/DD'),'20241211-151',0);
Insert into PURCHASE_HISTORY (PUR_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,RESTOCKING_PRICE,RESTOCKING_STATUS,RESTOCKING_DATE,PURCSLIP_NO,INCOMPLETE_QUANTITY) values (20241211061,'10001',null,'ITEM-1002','베이킹 믹스',1000,600000,'b3',to_date('24/12/16','RR/MM/DD'),'20241211-152',0);
Insert into PURCHASE_HISTORY (PUR_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,RESTOCKING_PRICE,RESTOCKING_STATUS,RESTOCKING_DATE,PURCSLIP_NO,INCOMPLETE_QUANTITY) values (20241211062,'10001',null,'ITEM-1001','프리미엄 원두',1000,800000,'b3',to_date('24/12/16','RR/MM/DD'),'20241211-152',0);
Insert into PURCHASE_HISTORY (PUR_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,RESTOCKING_PRICE,RESTOCKING_STATUS,RESTOCKING_DATE,PURCSLIP_NO,INCOMPLETE_QUANTITY) values (20241211063,'10001',null,'MANGO-12055','디카페인 원두(에티오피아산)',1000,70,'b3',to_date('24/12/16','RR/MM/DD'),'20241211-152',0);
Insert into PURCHASE_HISTORY (PUR_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,RESTOCKING_PRICE,RESTOCKING_STATUS,RESTOCKING_DATE,PURCSLIP_NO,INCOMPLETE_QUANTITY) values (20241211064,'10001',null,'ITEM-3002','유지보수 부품 A',1000,150000,'b3',to_date('24/12/16','RR/MM/DD'),'20241211-153',0);
Insert into PURCHASE_HISTORY (PUR_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,RESTOCKING_PRICE,RESTOCKING_STATUS,RESTOCKING_DATE,PURCSLIP_NO,INCOMPLETE_QUANTITY) values (20241211065,'10001',null,'ITEM-3001','커피 머신 필터',1000,200000,'b3',to_date('24/12/16','RR/MM/DD'),'20241211-153',0);
Insert into PURCHASE_HISTORY (PUR_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,RESTOCKING_PRICE,RESTOCKING_STATUS,RESTOCKING_DATE,PURCSLIP_NO,INCOMPLETE_QUANTITY) values (20241211066,'10001',null,'MANGO-13004','초콜릿 소스',1000,80000,'b3',to_date('24/12/16','RR/MM/DD'),'20241211-156',0);
Insert into PURCHASE_HISTORY (PUR_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,RESTOCKING_PRICE,RESTOCKING_STATUS,RESTOCKING_DATE,PURCSLIP_NO,INCOMPLETE_QUANTITY) values (20241211067,'10001',null,'MANGO-13003','케이크 믹스',1000,120000,'b3',to_date('24/12/16','RR/MM/DD'),'20241211-156',0);
Insert into PURCHASE_HISTORY (PUR_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,RESTOCKING_PRICE,RESTOCKING_STATUS,RESTOCKING_DATE,PURCSLIP_NO,INCOMPLETE_QUANTITY) values (20241211068,'10001',null,'ITEM-6002','유지보수 부품 B',1000,160000,'b3',to_date('24/12/16','RR/MM/DD'),'20241211-156',0);
Insert into PURCHASE_HISTORY (PUR_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,RESTOCKING_PRICE,RESTOCKING_STATUS,RESTOCKING_DATE,PURCSLIP_NO,INCOMPLETE_QUANTITY) values (20241211069,'10001',null,'ITEM-6001','커피 머신 필터',1000,220000,'b3',to_date('24/12/16','RR/MM/DD'),'20241211-156',0);
Insert into PURCHASE_HISTORY (PUR_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,RESTOCKING_PRICE,RESTOCKING_STATUS,RESTOCKING_DATE,PURCSLIP_NO,INCOMPLETE_QUANTITY) values (20241211070,'10001',null,'ITEM-7006','초콜릿 재료',1000,450000,'b3',to_date('24/12/16','RR/MM/DD'),'20241211-156',0);
Insert into PURCHASE_HISTORY (PUR_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,RESTOCKING_PRICE,RESTOCKING_STATUS,RESTOCKING_DATE,PURCSLIP_NO,INCOMPLETE_QUANTITY) values (20241211071,'10001',null,'ITEM-7005','디저트 믹스',1000,500000,'b3',to_date('24/12/16','RR/MM/DD'),'20241211-156',0);
Insert into PURCHASE_HISTORY (PUR_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,RESTOCKING_PRICE,RESTOCKING_STATUS,RESTOCKING_DATE,PURCSLIP_NO,INCOMPLETE_QUANTITY) values (20241211072,'10001',null,'ITEM-1002','베이킹 믹스',100,600000,'b3',to_date('24/12/16','RR/MM/DD'),'20241211-157',0);
Insert into PURCHASE_HISTORY (PUR_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,RESTOCKING_PRICE,RESTOCKING_STATUS,RESTOCKING_DATE,PURCSLIP_NO,INCOMPLETE_QUANTITY) values (20241211073,'10001',null,'ITEM-1001','프리미엄 원두',100,800000,'b3',to_date('24/12/16','RR/MM/DD'),'20241211-157',0);
Insert into PURCHASE_HISTORY (PUR_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,RESTOCKING_PRICE,RESTOCKING_STATUS,RESTOCKING_DATE,PURCSLIP_NO,INCOMPLETE_QUANTITY) values (20241211074,'10001',null,'MANGO-12055','디카페인 원두(에티오피아산)',100,70,'b3',to_date('24/12/16','RR/MM/DD'),'20241211-157',0);
Insert into PURCHASE_HISTORY (PUR_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,RESTOCKING_PRICE,RESTOCKING_STATUS,RESTOCKING_DATE,PURCSLIP_NO,INCOMPLETE_QUANTITY) values (20241211075,'10001',null,'ITEM-5002','베이킹 믹스',150,600000,'b3',to_date('24/12/16','RR/MM/DD'),'20241211-158',0);
Insert into PURCHASE_HISTORY (PUR_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,RESTOCKING_PRICE,RESTOCKING_STATUS,RESTOCKING_DATE,PURCSLIP_NO,INCOMPLETE_QUANTITY) values (20241211076,'10002',null,'MANGO-12062','굵은 빨대(1.0cm)150개입',200,0,'b3',to_date('24/12/16','RR/MM/DD'),'20241211-162',0);
Insert into PURCHASE_HISTORY (PUR_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,RESTOCKING_PRICE,RESTOCKING_STATUS,RESTOCKING_DATE,PURCSLIP_NO,INCOMPLETE_QUANTITY) values (20241211077,'10002',null,'MANGO-12061','종이 빨대(0.7cm)150개입',200,0,'b3',to_date('24/12/16','RR/MM/DD'),'20241211-162',0);
Insert into PURCHASE_HISTORY (PUR_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,RESTOCKING_PRICE,RESTOCKING_STATUS,RESTOCKING_DATE,PURCSLIP_NO,INCOMPLETE_QUANTITY) values (20241211078,'10002',null,'MANGO-12060','얇은 빨대(0.7cm)150개입',200,0,'b3',to_date('24/12/16','RR/MM/DD'),'20241211-162',0);
Insert into PURCHASE_HISTORY (PUR_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,RESTOCKING_PRICE,RESTOCKING_STATUS,RESTOCKING_DATE,PURCSLIP_NO,INCOMPLETE_QUANTITY) values (20241211079,'10001',null,'MANGO-12062','굵은 빨대(1.0cm)150개입',100,1600,'b3',to_date('24/12/16','RR/MM/DD'),'20241211-164',0);
Insert into PURCHASE_HISTORY (PUR_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,RESTOCKING_PRICE,RESTOCKING_STATUS,RESTOCKING_DATE,PURCSLIP_NO,INCOMPLETE_QUANTITY) values (20241211080,'10001',null,'ITEM-2002','에스프레소 원두',1000,0,'b3',to_date('24/12/16','RR/MM/DD'),'20241211-166',0);
Insert into PURCHASE_HISTORY (PUR_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,RESTOCKING_PRICE,RESTOCKING_STATUS,RESTOCKING_DATE,PURCSLIP_NO,INCOMPLETE_QUANTITY) values (20241211081,'10001',null,'ITEM-2001','초콜릿 소스',1000,0,'b3',to_date('24/12/16','RR/MM/DD'),'20241211-166',0);
Insert into PURCHASE_HISTORY (PUR_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,RESTOCKING_PRICE,RESTOCKING_STATUS,RESTOCKING_DATE,PURCSLIP_NO,INCOMPLETE_QUANTITY) values (20241211082,'10001',null,'MANGO-12056','아라비카(Arabica)',2000,0,'b3',to_date('24/12/16','RR/MM/DD'),'20241211-167',0);
Insert into PURCHASE_HISTORY (PUR_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,RESTOCKING_PRICE,RESTOCKING_STATUS,RESTOCKING_DATE,PURCSLIP_NO,INCOMPLETE_QUANTITY) values (20241211083,'10001',null,'MANGO-12057','로부스타(Robusta)',2000,0,'b3',to_date('24/12/16','RR/MM/DD'),'20241211-167',0);
Insert into PURCHASE_HISTORY (PUR_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,RESTOCKING_PRICE,RESTOCKING_STATUS,RESTOCKING_DATE,PURCSLIP_NO,INCOMPLETE_QUANTITY) values (20241211084,'10001',null,'MANGO-12058','둥금 플라스틱 컵',2000,0,'b3',to_date('24/12/16','RR/MM/DD'),'20241211-168',0);
Insert into PURCHASE_HISTORY (PUR_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,RESTOCKING_PRICE,RESTOCKING_STATUS,RESTOCKING_DATE,PURCSLIP_NO,INCOMPLETE_QUANTITY) values (20241211085,'10002',null,'MANGO-12062','굵은 빨대(1.0cm)150개입',2000,0,'b3',to_date('24/12/16','RR/MM/DD'),'20241211-169',0);
Insert into PURCHASE_HISTORY (PUR_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,RESTOCKING_PRICE,RESTOCKING_STATUS,RESTOCKING_DATE,PURCSLIP_NO,INCOMPLETE_QUANTITY) values (20241210023,'10001','서울창고','MANGO-12056','아라비카(Arabica)',100,0,'b3',to_date('24/12/15','RR/MM/DD'),'20241210-135',0);
Insert into PURCHASE_HISTORY (PUR_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,RESTOCKING_PRICE,RESTOCKING_STATUS,RESTOCKING_DATE,PURCSLIP_NO,INCOMPLETE_QUANTITY) values (20241210024,'10001','서울창고','MANGO-12057','로부스타(Robusta)',100,0,'b3',to_date('24/12/15','RR/MM/DD'),'20241210-135',0);
Insert into PURCHASE_HISTORY (PUR_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,RESTOCKING_PRICE,RESTOCKING_STATUS,RESTOCKING_DATE,PURCSLIP_NO,INCOMPLETE_QUANTITY) values (20241211086,'10002',null,'MANGO-12061','종이 빨대(0.7cm)150개입',2000,0,'b3',to_date('24/12/16','RR/MM/DD'),'20241211-169',0);
Insert into PURCHASE_HISTORY (PUR_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,RESTOCKING_PRICE,RESTOCKING_STATUS,RESTOCKING_DATE,PURCSLIP_NO,INCOMPLETE_QUANTITY) values (20241211087,'10002',null,'MANGO-12060','얇은 빨대(0.7cm)150개입',2000,0,'b3',to_date('24/12/16','RR/MM/DD'),'20241211-169',0);
Insert into PURCHASE_HISTORY (PUR_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,RESTOCKING_PRICE,RESTOCKING_STATUS,RESTOCKING_DATE,PURCSLIP_NO,INCOMPLETE_QUANTITY) values (20241211088,'10002',null,'ITEM-1002','베이킹 믹스',1000,0,'b3',to_date('24/12/16','RR/MM/DD'),'20241211-170',0);
Insert into PURCHASE_HISTORY (PUR_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,RESTOCKING_PRICE,RESTOCKING_STATUS,RESTOCKING_DATE,PURCSLIP_NO,INCOMPLETE_QUANTITY) values (20241211089,'10002',null,'ITEM-1001','프리미엄 원두',1000,0,'b3',to_date('24/12/16','RR/MM/DD'),'20241211-170',0);
Insert into PURCHASE_HISTORY (PUR_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,RESTOCKING_PRICE,RESTOCKING_STATUS,RESTOCKING_DATE,PURCSLIP_NO,INCOMPLETE_QUANTITY) values (20241211090,'10002',null,'MANGO-12055','디카페인 원두(에티오피아산)',1000,0,'b3',to_date('24/12/16','RR/MM/DD'),'20241211-170',0);
Insert into PURCHASE_HISTORY (PUR_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,RESTOCKING_PRICE,RESTOCKING_STATUS,RESTOCKING_DATE,PURCSLIP_NO,INCOMPLETE_QUANTITY) values (20241211091,'10001',null,'MANGO-12069','중형 커피머신',200,0,'b3',to_date('24/12/16','RR/MM/DD'),'20241211-171',0);
Insert into PURCHASE_HISTORY (PUR_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,RESTOCKING_PRICE,RESTOCKING_STATUS,RESTOCKING_DATE,PURCSLIP_NO,INCOMPLETE_QUANTITY) values (20241211092,'10001',null,'MANGO-12068','고급 커피머신',10,0,'b3',to_date('24/12/16','RR/MM/DD'),'20241211-171',0);
Insert into PURCHASE_HISTORY (PUR_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,RESTOCKING_PRICE,RESTOCKING_STATUS,RESTOCKING_DATE,PURCSLIP_NO,INCOMPLETE_QUANTITY) values (20241211093,'10001',null,'ITEM-4002','스페셜티 원두',200,0,'b3',to_date('24/12/16','RR/MM/DD'),'20241211-171',0);
Insert into PURCHASE_HISTORY (PUR_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,RESTOCKING_PRICE,RESTOCKING_STATUS,RESTOCKING_DATE,PURCSLIP_NO,INCOMPLETE_QUANTITY) values (20241211094,'10001',null,'ITEM-4001','프리미엄 원두',200,0,'b3',to_date('24/12/16','RR/MM/DD'),'20241211-171',0);
Insert into PURCHASE_HISTORY (PUR_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,RESTOCKING_PRICE,RESTOCKING_STATUS,RESTOCKING_DATE,PURCSLIP_NO,INCOMPLETE_QUANTITY) values (20241211095,'10001',null,'ITEM-7002','초콜릿 소스',200,0,'b3',to_date('24/12/16','RR/MM/DD'),'20241211-171',0);
Insert into PURCHASE_HISTORY (PUR_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,RESTOCKING_PRICE,RESTOCKING_STATUS,RESTOCKING_DATE,PURCSLIP_NO,INCOMPLETE_QUANTITY) values (20241211096,'10001',null,'ITEM-7001','스페셜티 원두',200,0,'b3',to_date('24/12/16','RR/MM/DD'),'20241211-171',0);
Insert into PURCHASE_HISTORY (PUR_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,RESTOCKING_PRICE,RESTOCKING_STATUS,RESTOCKING_DATE,PURCSLIP_NO,INCOMPLETE_QUANTITY) values (20241211097,'10002',null,'MANGO-13006','커피머신 부품 A',1000,0,'b3',to_date('24/12/16','RR/MM/DD'),'20241211-172',0);
Insert into PURCHASE_HISTORY (PUR_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,RESTOCKING_PRICE,RESTOCKING_STATUS,RESTOCKING_DATE,PURCSLIP_NO,INCOMPLETE_QUANTITY) values (20241211098,'10002',null,'MANGO-13005','커피 머신 필터',1000,0,'b3',to_date('24/12/16','RR/MM/DD'),'20241211-172',0);
Insert into PURCHASE_HISTORY (PUR_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,RESTOCKING_PRICE,RESTOCKING_STATUS,RESTOCKING_DATE,PURCSLIP_NO,INCOMPLETE_QUANTITY) values (20241211099,'10001',null,'MANGO-13002','일반 원두',500,300000,'b3',to_date('24/12/16','RR/MM/DD'),'20241211-173',0);
Insert into PURCHASE_HISTORY (PUR_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,RESTOCKING_PRICE,RESTOCKING_STATUS,RESTOCKING_DATE,PURCSLIP_NO,INCOMPLETE_QUANTITY) values (20241211100,'10001',null,'MANGO-13001','스페셜티 원두',500,500000,'b3',to_date('24/12/16','RR/MM/DD'),'20241211-173',0);
Insert into PURCHASE_HISTORY (PUR_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,RESTOCKING_PRICE,RESTOCKING_STATUS,RESTOCKING_DATE,PURCSLIP_NO,INCOMPLETE_QUANTITY) values (20241211101,'10001',null,'ITEM-5002','베이킹 믹스',500,600000,'b3',to_date('24/12/16','RR/MM/DD'),'20241211-173',0);
Insert into PURCHASE_HISTORY (PUR_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,RESTOCKING_PRICE,RESTOCKING_STATUS,RESTOCKING_DATE,PURCSLIP_NO,INCOMPLETE_QUANTITY) values (20241211102,'10001',null,'ITEM-5001','초콜릿 소스',500,420000,'b3',to_date('24/12/16','RR/MM/DD'),'20241211-173',0);
Insert into PURCHASE_HISTORY (PUR_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,RESTOCKING_PRICE,RESTOCKING_STATUS,RESTOCKING_DATE,PURCSLIP_NO,INCOMPLETE_QUANTITY) values (20241211103,'10001',null,'ITEM-7004','유지보수 부품 A',500,300000,'b3',to_date('24/12/16','RR/MM/DD'),'20241211-173',0);
Insert into PURCHASE_HISTORY (PUR_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,RESTOCKING_PRICE,RESTOCKING_STATUS,RESTOCKING_DATE,PURCSLIP_NO,INCOMPLETE_QUANTITY) values (20241211104,'10001',null,'ITEM-7003','커피머신 필터',500,250000,'b3',to_date('24/12/16','RR/MM/DD'),'20241211-173',0);
Insert into PURCHASE_HISTORY (PUR_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,RESTOCKING_PRICE,RESTOCKING_STATUS,RESTOCKING_DATE,PURCSLIP_NO,INCOMPLETE_QUANTITY) values (20241211105,'10001',null,'ITEM-2002','에스프레소 원두',700,1200000,'b3',to_date('24/12/16','RR/MM/DD'),'20241211-174',0);
Insert into PURCHASE_HISTORY (PUR_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,RESTOCKING_PRICE,RESTOCKING_STATUS,RESTOCKING_DATE,PURCSLIP_NO,INCOMPLETE_QUANTITY) values (20241211106,'10001',null,'MANGO-12058','둥금 플라스틱 컵',5000,0,'b3',to_date('24/12/16','RR/MM/DD'),'20241211-175',0);
Insert into PURCHASE_HISTORY (PUR_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,RESTOCKING_PRICE,RESTOCKING_STATUS,RESTOCKING_DATE,PURCSLIP_NO,INCOMPLETE_QUANTITY) values (20241211107,'10001',null,'MANGO-12056','아라비카(Arabica)',50,13000,'b3',to_date('24/12/16','RR/MM/DD'),'20241211-177',0);
Insert into PURCHASE_HISTORY (PUR_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,RESTOCKING_PRICE,RESTOCKING_STATUS,RESTOCKING_DATE,PURCSLIP_NO,INCOMPLETE_QUANTITY) values (20241211108,'10001',null,'MANGO-12057','로부스타(Robusta)',50,6500,'b3',to_date('24/12/16','RR/MM/DD'),'20241211-177',0);
Insert into PURCHASE_HISTORY (PUR_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,RESTOCKING_PRICE,RESTOCKING_STATUS,RESTOCKING_DATE,PURCSLIP_NO,INCOMPLETE_QUANTITY) values (20241211109,'10001',null,'MANGO-12056','아라비카(Arabica)',50,13000,'b3',to_date('24/12/16','RR/MM/DD'),'20241211-178',0);
Insert into PURCHASE_HISTORY (PUR_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,RESTOCKING_PRICE,RESTOCKING_STATUS,RESTOCKING_DATE,PURCSLIP_NO,INCOMPLETE_QUANTITY) values (20241211110,'10001',null,'MANGO-12057','로부스타(Robusta)',50,6500,'b3',to_date('24/12/16','RR/MM/DD'),'20241211-178',0);
Insert into PURCHASE_HISTORY (PUR_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,RESTOCKING_PRICE,RESTOCKING_STATUS,RESTOCKING_DATE,PURCSLIP_NO,INCOMPLETE_QUANTITY) values (20241211111,null,null,'MANGO-12056','아라비카(Arabica)',0,13000,'b1',to_date('24/12/16','RR/MM/DD'),'20241211-179',0);
Insert into PURCHASE_HISTORY (PUR_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,RESTOCKING_PRICE,RESTOCKING_STATUS,RESTOCKING_DATE,PURCSLIP_NO,INCOMPLETE_QUANTITY) values (20241211112,null,null,'MANGO-12057','로부스타(Robusta)',0,6500,'b1',to_date('24/12/16','RR/MM/DD'),'20241211-179',0);
Insert into PURCHASE_HISTORY (PUR_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,RESTOCKING_PRICE,RESTOCKING_STATUS,RESTOCKING_DATE,PURCSLIP_NO,INCOMPLETE_QUANTITY) values (20241212113,'10001',null,'MANGO-12056','아라비카(Arabica)',500,13000,'b2',to_date('24/12/17','RR/MM/DD'),'20241212-196',40);
Insert into PURCHASE_HISTORY (PUR_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,RESTOCKING_PRICE,RESTOCKING_STATUS,RESTOCKING_DATE,PURCSLIP_NO,INCOMPLETE_QUANTITY) values (20241212114,'10002',null,'MANGO-12057','로부스타(Robusta)',600,6500,'b2',to_date('24/12/17','RR/MM/DD'),'20241212-196',40);
Insert into PURCHASE_HISTORY (PUR_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,RESTOCKING_PRICE,RESTOCKING_STATUS,RESTOCKING_DATE,PURCSLIP_NO,INCOMPLETE_QUANTITY) values (20241212115,'10001',null,'MANGO-12073','(일산) 케냐 원두',5000,9000,'b2',to_date('24/12/17','RR/MM/DD'),'20241212-197',240);
Insert into PURCHASE_HISTORY (PUR_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,RESTOCKING_PRICE,RESTOCKING_STATUS,RESTOCKING_DATE,PURCSLIP_NO,INCOMPLETE_QUANTITY) values (20241212116,'10002',null,'MANGO-12072','(일산) 과테말라 원두',4000,8000,'b2',to_date('24/12/17','RR/MM/DD'),'20241212-197',590);
Insert into PURCHASE_HISTORY (PUR_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,RESTOCKING_PRICE,RESTOCKING_STATUS,RESTOCKING_DATE,PURCSLIP_NO,INCOMPLETE_QUANTITY) values (20241212117,'10001',null,'MANGO-12073','(일산) 케냐 원두',400,9000,'b2',to_date('24/12/17','RR/MM/DD'),'20241212-198',240);
Insert into PURCHASE_HISTORY (PUR_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,RESTOCKING_PRICE,RESTOCKING_STATUS,RESTOCKING_DATE,PURCSLIP_NO,INCOMPLETE_QUANTITY) values (20241212118,'10001',null,'MANGO-12072','(일산) 과테말라 원두',400,8000,'b2',to_date('24/12/17','RR/MM/DD'),'20241212-198',20);
Insert into PURCHASE_HISTORY (PUR_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,RESTOCKING_PRICE,RESTOCKING_STATUS,RESTOCKING_DATE,PURCSLIP_NO,INCOMPLETE_QUANTITY) values (20241212119,'10001',null,'MANGO-12056','아라비카(Arabica)',400,13000,'b3',to_date('24/12/17','RR/MM/DD'),'20241212-198',0);
Insert into PURCHASE_HISTORY (PUR_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,RESTOCKING_PRICE,RESTOCKING_STATUS,RESTOCKING_DATE,PURCSLIP_NO,INCOMPLETE_QUANTITY) values (20241212120,'10001',null,'MANGO-12057','로부스타(Robusta)',450,6500,'b2',to_date('24/12/17','RR/MM/DD'),'20241212-198',290);
Insert into PURCHASE_HISTORY (PUR_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,RESTOCKING_PRICE,RESTOCKING_STATUS,RESTOCKING_DATE,PURCSLIP_NO,INCOMPLETE_QUANTITY) values (20241212121,'10001',null,'MANGO-12073','(일산) 케냐 원두',100,9000,'b2',to_date('24/12/17','RR/MM/DD'),'20241212-203',40);
Insert into PURCHASE_HISTORY (PUR_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,RESTOCKING_PRICE,RESTOCKING_STATUS,RESTOCKING_DATE,PURCSLIP_NO,INCOMPLETE_QUANTITY) values (20241212122,'10001',null,'MANGO-12072','(일산) 과테말라 원두',100,8000,'b2',to_date('24/12/17','RR/MM/DD'),'20241212-203',80);
Insert into PURCHASE_HISTORY (PUR_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,RESTOCKING_PRICE,RESTOCKING_STATUS,RESTOCKING_DATE,PURCSLIP_NO,INCOMPLETE_QUANTITY) values (20241212123,'10001',null,'MANGO-12056','아라비카(Arabica)',100,13000,'b2',to_date('24/12/17','RR/MM/DD'),'20241212-203',40);
Insert into PURCHASE_HISTORY (PUR_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,RESTOCKING_PRICE,RESTOCKING_STATUS,RESTOCKING_DATE,PURCSLIP_NO,INCOMPLETE_QUANTITY) values (20241212124,'10001',null,'MANGO-12057','로부스타(Robusta)',100,6500,'b2',to_date('24/12/17','RR/MM/DD'),'20241212-203',80);
Insert into PURCHASE_HISTORY (PUR_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,RESTOCKING_PRICE,RESTOCKING_STATUS,RESTOCKING_DATE,PURCSLIP_NO,INCOMPLETE_QUANTITY) values (20241212125,'10002',null,'MANGO-13006','커피머신 부품 A',100,300000,'b1',to_date('24/12/17','RR/MM/DD'),'20241212-206',100);
Insert into PURCHASE_HISTORY (PUR_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,RESTOCKING_PRICE,RESTOCKING_STATUS,RESTOCKING_DATE,PURCSLIP_NO,INCOMPLETE_QUANTITY) values (20241212126,'10002',null,'MANGO-13005','커피 머신 필터',100,500000,'b1',to_date('24/12/17','RR/MM/DD'),'20241212-206',100);
Insert into PURCHASE_HISTORY (PUR_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,RESTOCKING_PRICE,RESTOCKING_STATUS,RESTOCKING_DATE,PURCSLIP_NO,INCOMPLETE_QUANTITY) values (20241212127,'10002',null,'MANGO-12062','굵은 빨대(1.0cm)150개입',200,1600,'b1',to_date('24/12/17','RR/MM/DD'),'20241212-207',200);
Insert into PURCHASE_HISTORY (PUR_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,RESTOCKING_PRICE,RESTOCKING_STATUS,RESTOCKING_DATE,PURCSLIP_NO,INCOMPLETE_QUANTITY) values (20241212128,'10002',null,'MANGO-12061','종이 빨대(0.7cm)150개입',200,2000,'b1',to_date('24/12/17','RR/MM/DD'),'20241212-207',200);
Insert into PURCHASE_HISTORY (PUR_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,RESTOCKING_PRICE,RESTOCKING_STATUS,RESTOCKING_DATE,PURCSLIP_NO,INCOMPLETE_QUANTITY) values (20241212129,'10002',null,'MANGO-12060','얇은 빨대(0.7cm)150개입',200,1500,'b3',to_date('24/12/17','RR/MM/DD'),'20241212-207',0);
Insert into PURCHASE_HISTORY (PUR_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,RESTOCKING_PRICE,RESTOCKING_STATUS,RESTOCKING_DATE,PURCSLIP_NO,INCOMPLETE_QUANTITY) values (20241212130,'10002',null,'MANGO-12069','중형 커피머신',30,3000000,'b3',to_date('24/12/17','RR/MM/DD'),'20241212-208',0);
Insert into PURCHASE_HISTORY (PUR_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,RESTOCKING_PRICE,RESTOCKING_STATUS,RESTOCKING_DATE,PURCSLIP_NO,INCOMPLETE_QUANTITY) values (20241212131,'10002',null,'MANGO-12068','고급 커피머신',20,7800000,'b3',to_date('24/12/17','RR/MM/DD'),'20241212-208',0);
Insert into PURCHASE_HISTORY (PUR_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,RESTOCKING_PRICE,RESTOCKING_STATUS,RESTOCKING_DATE,PURCSLIP_NO,INCOMPLETE_QUANTITY) values (20241212132,'10002',null,'ITEM-4002','스페셜티 원두',100,950000,'b3',to_date('24/12/17','RR/MM/DD'),'20241212-208',0);
Insert into PURCHASE_HISTORY (PUR_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,RESTOCKING_PRICE,RESTOCKING_STATUS,RESTOCKING_DATE,PURCSLIP_NO,INCOMPLETE_QUANTITY) values (20241212133,'10002',null,'ITEM-4001','프리미엄 원두',100,850000,'b3',to_date('24/12/17','RR/MM/DD'),'20241212-208',0);
Insert into PURCHASE_HISTORY (PUR_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,RESTOCKING_PRICE,RESTOCKING_STATUS,RESTOCKING_DATE,PURCSLIP_NO,INCOMPLETE_QUANTITY) values (20241212134,'10002',null,'ITEM-7002','초콜릿 소스',100,450000,'b3',to_date('24/12/17','RR/MM/DD'),'20241212-208',0);
Insert into PURCHASE_HISTORY (PUR_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,RESTOCKING_PRICE,RESTOCKING_STATUS,RESTOCKING_DATE,PURCSLIP_NO,INCOMPLETE_QUANTITY) values (20241212135,'10002',null,'ITEM-7001','스페셜티 원두',100,850000,'b2',to_date('24/12/17','RR/MM/DD'),'20241212-208',10);
Insert into PURCHASE_HISTORY (PUR_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,RESTOCKING_PRICE,RESTOCKING_STATUS,RESTOCKING_DATE,PURCSLIP_NO,INCOMPLETE_QUANTITY) values (20241213136,'10002',null,'MANGO-12069','중형 커피머신',10,3000000,'b1',to_date('24/12/18','RR/MM/DD'),'20241213-214',10);
Insert into PURCHASE_HISTORY (PUR_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,RESTOCKING_PRICE,RESTOCKING_STATUS,RESTOCKING_DATE,PURCSLIP_NO,INCOMPLETE_QUANTITY) values (20241213137,'10002',null,'MANGO-12068','고급 커피머신',10,7800000,'b1',to_date('24/12/18','RR/MM/DD'),'20241213-214',10);
Insert into PURCHASE_HISTORY (PUR_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,RESTOCKING_PRICE,RESTOCKING_STATUS,RESTOCKING_DATE,PURCSLIP_NO,INCOMPLETE_QUANTITY) values (20241213138,'10002',null,'ITEM-4002','스페셜티 원두',10,950000,'b1',to_date('24/12/18','RR/MM/DD'),'20241213-214',10);
Insert into PURCHASE_HISTORY (PUR_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,RESTOCKING_PRICE,RESTOCKING_STATUS,RESTOCKING_DATE,PURCSLIP_NO,INCOMPLETE_QUANTITY) values (20241213139,'10002',null,'ITEM-4001','프리미엄 원두',10,850000,'b1',to_date('24/12/18','RR/MM/DD'),'20241213-214',10);
Insert into PURCHASE_HISTORY (PUR_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,RESTOCKING_PRICE,RESTOCKING_STATUS,RESTOCKING_DATE,PURCSLIP_NO,INCOMPLETE_QUANTITY) values (20241213140,'10001',null,'ITEM-7002','초콜릿 소스',10,450000,'b1',to_date('24/12/18','RR/MM/DD'),'20241213-214',10);
Insert into PURCHASE_HISTORY (PUR_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,RESTOCKING_PRICE,RESTOCKING_STATUS,RESTOCKING_DATE,PURCSLIP_NO,INCOMPLETE_QUANTITY) values (20241213141,'10002',null,'ITEM-7001','스페셜티 원두',10,850000,'b1',to_date('24/12/18','RR/MM/DD'),'20241213-214',10);
Insert into PURCHASE_HISTORY (PUR_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,RESTOCKING_PRICE,RESTOCKING_STATUS,RESTOCKING_DATE,PURCSLIP_NO,INCOMPLETE_QUANTITY) values (20241215142,'10002',null,'MANGO-12058','둥금 플라스틱 컵',100,12,'b3',to_date('24/12/20','RR/MM/DD'),'20241215-215',0);
Insert into PURCHASE_HISTORY (PUR_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,RESTOCKING_PRICE,RESTOCKING_STATUS,RESTOCKING_DATE,PURCSLIP_NO,INCOMPLETE_QUANTITY) values (20241215143,'10002',null,'ITEM-5002','베이킹 믹스',20,600000,'b1',to_date('24/12/20','RR/MM/DD'),'20241215-216',20);
Insert into PURCHASE_HISTORY (PUR_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,RESTOCKING_PRICE,RESTOCKING_STATUS,RESTOCKING_DATE,PURCSLIP_NO,INCOMPLETE_QUANTITY) values (20241215144,'10001',null,'MANGO-12055','디카페인 원두(에티오피아산)',10,70,'b3',to_date('24/12/20','RR/MM/DD'),'20241215-217',0);
REM INSERTING into QUALITY_TEST
SET DEFINE OFF;
REM INSERTING into RECEIVABLES_LOG
SET DEFINE OFF;
Insert into RECEIVABLES_LOG (LOG_ID,REC_DATE,DECREASE_PRICE,BACCT_CODE,CLIENT_CODE,SALES_CHIT_NO,INCREASE_PRICE) values (8,to_date('24/12/07','RR/MM/DD'),0,null,'client49','MK-20241211134',990000);
Insert into RECEIVABLES_LOG (LOG_ID,REC_DATE,DECREASE_PRICE,BACCT_CODE,CLIENT_CODE,SALES_CHIT_NO,INCREASE_PRICE) values (1,to_date('24/12/11','RR/MM/DD'),0,null,'client22','MK-20241211127',77000);
Insert into RECEIVABLES_LOG (LOG_ID,REC_DATE,DECREASE_PRICE,BACCT_CODE,CLIENT_CODE,SALES_CHIT_NO,INCREASE_PRICE) values (2,to_date('24/12/01','RR/MM/DD'),0,null,'client34','MK-20241211128',20933000);
Insert into RECEIVABLES_LOG (LOG_ID,REC_DATE,DECREASE_PRICE,BACCT_CODE,CLIENT_CODE,SALES_CHIT_NO,INCREASE_PRICE) values (3,to_date('24/12/05','RR/MM/DD'),0,null,'client32','MK-20241211129',136950000);
Insert into RECEIVABLES_LOG (LOG_ID,REC_DATE,DECREASE_PRICE,BACCT_CODE,CLIENT_CODE,SALES_CHIT_NO,INCREASE_PRICE) values (4,to_date('24/12/01','RR/MM/DD'),0,null,'client25','MK-20241211130',682000);
Insert into RECEIVABLES_LOG (LOG_ID,REC_DATE,DECREASE_PRICE,BACCT_CODE,CLIENT_CODE,SALES_CHIT_NO,INCREASE_PRICE) values (5,to_date('24/12/09','RR/MM/DD'),0,null,'client24','MK-20241211131',1485000);
Insert into RECEIVABLES_LOG (LOG_ID,REC_DATE,DECREASE_PRICE,BACCT_CODE,CLIENT_CODE,SALES_CHIT_NO,INCREASE_PRICE) values (6,to_date('24/12/01','RR/MM/DD'),0,null,'client33','MK-20241211132',1650000);
Insert into RECEIVABLES_LOG (LOG_ID,REC_DATE,DECREASE_PRICE,BACCT_CODE,CLIENT_CODE,SALES_CHIT_NO,INCREASE_PRICE) values (7,to_date('24/12/11','RR/MM/DD'),0,null,'client30','MK-20241211133',139700);
Insert into RECEIVABLES_LOG (LOG_ID,REC_DATE,DECREASE_PRICE,BACCT_CODE,CLIENT_CODE,SALES_CHIT_NO,INCREASE_PRICE) values (9,to_date('24/12/09','RR/MM/DD'),0,null,'client29','MK-20241211135',854700);
Insert into RECEIVABLES_LOG (LOG_ID,REC_DATE,DECREASE_PRICE,BACCT_CODE,CLIENT_CODE,SALES_CHIT_NO,INCREASE_PRICE) values (10,to_date('24/12/04','RR/MM/DD'),0,null,'client45','MK-20241211136',979000);
Insert into RECEIVABLES_LOG (LOG_ID,REC_DATE,DECREASE_PRICE,BACCT_CODE,CLIENT_CODE,SALES_CHIT_NO,INCREASE_PRICE) values (11,to_date('24/11/01','RR/MM/DD'),0,null,'client59','MK-20241211137',8604444);
Insert into RECEIVABLES_LOG (LOG_ID,REC_DATE,DECREASE_PRICE,BACCT_CODE,CLIENT_CODE,SALES_CHIT_NO,INCREASE_PRICE) values (12,to_date('24/12/07','RR/MM/DD'),0,null,'client55','MK-20241211138',4972000);
Insert into RECEIVABLES_LOG (LOG_ID,REC_DATE,DECREASE_PRICE,BACCT_CODE,CLIENT_CODE,SALES_CHIT_NO,INCREASE_PRICE) values (13,to_date('24/11/13','RR/MM/DD'),0,null,'client37','MK-20241211139',8295100);
Insert into RECEIVABLES_LOG (LOG_ID,REC_DATE,DECREASE_PRICE,BACCT_CODE,CLIENT_CODE,SALES_CHIT_NO,INCREASE_PRICE) values (14,to_date('24/11/27','RR/MM/DD'),0,null,'client42','MK-20241211140',1197680);
Insert into RECEIVABLES_LOG (LOG_ID,REC_DATE,DECREASE_PRICE,BACCT_CODE,CLIENT_CODE,SALES_CHIT_NO,INCREASE_PRICE) values (15,to_date('24/11/11','RR/MM/DD'),0,null,'client30','MK-20241211141',10583100);
Insert into RECEIVABLES_LOG (LOG_ID,REC_DATE,DECREASE_PRICE,BACCT_CODE,CLIENT_CODE,SALES_CHIT_NO,INCREASE_PRICE) values (16,to_date('24/11/29','RR/MM/DD'),0,null,'client28','MK-20241211142',3410000);
Insert into RECEIVABLES_LOG (LOG_ID,REC_DATE,DECREASE_PRICE,BACCT_CODE,CLIENT_CODE,SALES_CHIT_NO,INCREASE_PRICE) values (101,to_date('24/12/12','RR/MM/DD'),50000,101,'client23','MK-20241212146',0);
Insert into RECEIVABLES_LOG (LOG_ID,REC_DATE,DECREASE_PRICE,BACCT_CODE,CLIENT_CODE,SALES_CHIT_NO,INCREASE_PRICE) values (18,to_date('24/10/31','RR/MM/DD'),0,null,'client32','MK-20241211144',796400);
Insert into RECEIVABLES_LOG (LOG_ID,REC_DATE,DECREASE_PRICE,BACCT_CODE,CLIENT_CODE,SALES_CHIT_NO,INCREASE_PRICE) values (19,to_date('24/12/07','RR/MM/DD'),0,null,'client30','MK-20241211145',5786000);
Insert into RECEIVABLES_LOG (LOG_ID,REC_DATE,DECREASE_PRICE,BACCT_CODE,CLIENT_CODE,SALES_CHIT_NO,INCREASE_PRICE) values (90,to_date('24/12/11','RR/MM/DD'),4000,104,'client24','MK-20241211131',0);
Insert into RECEIVABLES_LOG (LOG_ID,REC_DATE,DECREASE_PRICE,BACCT_CODE,CLIENT_CODE,SALES_CHIT_NO,INCREASE_PRICE) values (91,to_date('24/12/12','RR/MM/DD'),0,null,'client23','MK-20241212146',3660250);
Insert into RECEIVABLES_LOG (LOG_ID,REC_DATE,DECREASE_PRICE,BACCT_CODE,CLIENT_CODE,SALES_CHIT_NO,INCREASE_PRICE) values (92,to_date('24/12/12','RR/MM/DD'),50000,104,'client23','MK-20241212146',0);
Insert into RECEIVABLES_LOG (LOG_ID,REC_DATE,DECREASE_PRICE,BACCT_CODE,CLIENT_CODE,SALES_CHIT_NO,INCREASE_PRICE) values (93,to_date('24/12/12','RR/MM/DD'),5000,104,'client22','MK-20241211127',0);
Insert into RECEIVABLES_LOG (LOG_ID,REC_DATE,DECREASE_PRICE,BACCT_CODE,CLIENT_CODE,SALES_CHIT_NO,INCREASE_PRICE) values (94,to_date('24/12/12','RR/MM/DD'),0,null,'client22','MK-20241212147',2277000);
Insert into RECEIVABLES_LOG (LOG_ID,REC_DATE,DECREASE_PRICE,BACCT_CODE,CLIENT_CODE,SALES_CHIT_NO,INCREASE_PRICE) values (95,to_date('24/12/19','RR/MM/DD'),0,null,'client22','MK-20241212148',3564000);
Insert into RECEIVABLES_LOG (LOG_ID,REC_DATE,DECREASE_PRICE,BACCT_CODE,CLIENT_CODE,SALES_CHIT_NO,INCREASE_PRICE) values (96,to_date('24/12/01','RR/MM/DD'),0,null,'client22','MK-20241212149',3047000);
Insert into RECEIVABLES_LOG (LOG_ID,REC_DATE,DECREASE_PRICE,BACCT_CODE,CLIENT_CODE,SALES_CHIT_NO,INCREASE_PRICE) values (102,to_date('24/12/12','RR/MM/DD'),0,null,'client35','MK-20241212150',1012000);
Insert into RECEIVABLES_LOG (LOG_ID,REC_DATE,DECREASE_PRICE,BACCT_CODE,CLIENT_CODE,SALES_CHIT_NO,INCREASE_PRICE) values (103,to_date('24/12/13','RR/MM/DD'),50000,104,'client23','MK-20241212146',0);
Insert into RECEIVABLES_LOG (LOG_ID,REC_DATE,DECREASE_PRICE,BACCT_CODE,CLIENT_CODE,SALES_CHIT_NO,INCREASE_PRICE) values (104,to_date('24/12/13','RR/MM/DD'),50000,104,'client22','MK-20241211127',0);
Insert into RECEIVABLES_LOG (LOG_ID,REC_DATE,DECREASE_PRICE,BACCT_CODE,CLIENT_CODE,SALES_CHIT_NO,INCREASE_PRICE) values (105,to_date('24/12/13','RR/MM/DD'),77000,102,'client22','MK-20241211127',0);
Insert into RECEIVABLES_LOG (LOG_ID,REC_DATE,DECREASE_PRICE,BACCT_CODE,CLIENT_CODE,SALES_CHIT_NO,INCREASE_PRICE) values (106,to_date('24/12/13','RR/MM/DD'),-27000,102,'client22','MK-20241212149',0);
Insert into RECEIVABLES_LOG (LOG_ID,REC_DATE,DECREASE_PRICE,BACCT_CODE,CLIENT_CODE,SALES_CHIT_NO,INCREASE_PRICE) values (107,to_date('24/12/13','RR/MM/DD'),50000,102,'client23','MK-20241212146',0);
Insert into RECEIVABLES_LOG (LOG_ID,REC_DATE,DECREASE_PRICE,BACCT_CODE,CLIENT_CODE,SALES_CHIT_NO,INCREASE_PRICE) values (108,to_date('24/12/13','RR/MM/DD'),77000,101,'client22','MK-20241211127',0);
Insert into RECEIVABLES_LOG (LOG_ID,REC_DATE,DECREASE_PRICE,BACCT_CODE,CLIENT_CODE,SALES_CHIT_NO,INCREASE_PRICE) values (109,to_date('24/12/13','RR/MM/DD'),-27000,101,'client22','MK-20241212149',0);
Insert into RECEIVABLES_LOG (LOG_ID,REC_DATE,DECREASE_PRICE,BACCT_CODE,CLIENT_CODE,SALES_CHIT_NO,INCREASE_PRICE) values (110,to_date('24/12/13','RR/MM/DD'),50000,101,'client23','MK-20241212146',0);
Insert into RECEIVABLES_LOG (LOG_ID,REC_DATE,DECREASE_PRICE,BACCT_CODE,CLIENT_CODE,SALES_CHIT_NO,INCREASE_PRICE) values (111,to_date('24/12/13','RR/MM/DD'),77000,104,'client22','MK-20241211127',0);
Insert into RECEIVABLES_LOG (LOG_ID,REC_DATE,DECREASE_PRICE,BACCT_CODE,CLIENT_CODE,SALES_CHIT_NO,INCREASE_PRICE) values (112,to_date('24/12/13','RR/MM/DD'),-27000,104,'client22','MK-20241212149',0);
Insert into RECEIVABLES_LOG (LOG_ID,REC_DATE,DECREASE_PRICE,BACCT_CODE,CLIENT_CODE,SALES_CHIT_NO,INCREASE_PRICE) values (113,to_date('24/12/13','RR/MM/DD'),50000,104,'client23','MK-20241212146',0);
Insert into RECEIVABLES_LOG (LOG_ID,REC_DATE,DECREASE_PRICE,BACCT_CODE,CLIENT_CODE,SALES_CHIT_NO,INCREASE_PRICE) values (114,to_date('24/12/13','RR/MM/DD'),77000,104,'client22','MK-20241211127',0);
Insert into RECEIVABLES_LOG (LOG_ID,REC_DATE,DECREASE_PRICE,BACCT_CODE,CLIENT_CODE,SALES_CHIT_NO,INCREASE_PRICE) values (115,to_date('24/12/13','RR/MM/DD'),13000,104,'client22','MK-20241212149',0);
Insert into RECEIVABLES_LOG (LOG_ID,REC_DATE,DECREASE_PRICE,BACCT_CODE,CLIENT_CODE,SALES_CHIT_NO,INCREASE_PRICE) values (116,to_date('24/12/13','RR/MM/DD'),40000,104,'client23','MK-20241212146',0);
REM INSERTING into SALARY_PAYROLL
SET DEFINE OFF;
Insert into SALARY_PAYROLL (SALARY_NUMBER,PAYROLL_YDATE,MONTHLY_SALARY,OVERTIME_ALLOWANCE,NIGHT_ALLOWANCE,WEEKEND_ALLOWANCE,PAYMENT_TOTAL,INCOME_TAX,LOCAL_TAX,NATIONAL_INSURANCE,HEALTH_INSURANCE,EMPLOYMENT_INSURANCE,LEAVE_RATE,DEDUCTIONS_TOTAL,REAL_PAY,PAYROLL_SDATE,PAYROLL_EDATE,EMPLOYEE_CODE,NOTAX_PAYMENT,PAYROLL_CHECK,TIME_SALARY) values ('2024120905',to_date('24/11/01','RR/MM/DD'),1000000,0,0,0,1000000,60000,6000,45000,35450,9000,0,155450,844550,to_date('24/11/01','RR/MM/DD'),to_date('24/11/30','RR/MM/DD'),'158',1000000,'미검토',4785);
Insert into SALARY_PAYROLL (SALARY_NUMBER,PAYROLL_YDATE,MONTHLY_SALARY,OVERTIME_ALLOWANCE,NIGHT_ALLOWANCE,WEEKEND_ALLOWANCE,PAYMENT_TOTAL,INCOME_TAX,LOCAL_TAX,NATIONAL_INSURANCE,HEALTH_INSURANCE,EMPLOYMENT_INSURANCE,LEAVE_RATE,DEDUCTIONS_TOTAL,REAL_PAY,PAYROLL_SDATE,PAYROLL_EDATE,EMPLOYEE_CODE,NOTAX_PAYMENT,PAYROLL_CHECK,TIME_SALARY) values ('2024120906',to_date('24/11/01','RR/MM/DD'),75000000,50240,0,0,75050240,60000,6000,277650,35450,675450,76560,1131110,73919130,to_date('24/11/01','RR/MM/DD'),to_date('24/11/30','RR/MM/DD'),'159',75050243,'미검토',4785);
Insert into SALARY_PAYROLL (SALARY_NUMBER,PAYROLL_YDATE,MONTHLY_SALARY,OVERTIME_ALLOWANCE,NIGHT_ALLOWANCE,WEEKEND_ALLOWANCE,PAYMENT_TOTAL,INCOME_TAX,LOCAL_TAX,NATIONAL_INSURANCE,HEALTH_INSURANCE,EMPLOYMENT_INSURANCE,LEAVE_RATE,DEDUCTIONS_TOTAL,REAL_PAY,PAYROLL_SDATE,PAYROLL_EDATE,EMPLOYEE_CODE,NOTAX_PAYMENT,PAYROLL_CHECK,TIME_SALARY) values ('2024120907',to_date('24/11/01','RR/MM/DD'),1000000,0,0,0,1000000,60000,6000,45000,35450,9000,0,155450,844550,to_date('24/11/01','RR/MM/DD'),to_date('24/11/30','RR/MM/DD'),'151',1000000,'미검토',4784);
Insert into SALARY_PAYROLL (SALARY_NUMBER,PAYROLL_YDATE,MONTHLY_SALARY,OVERTIME_ALLOWANCE,NIGHT_ALLOWANCE,WEEKEND_ALLOWANCE,PAYMENT_TOTAL,INCOME_TAX,LOCAL_TAX,NATIONAL_INSURANCE,HEALTH_INSURANCE,EMPLOYMENT_INSURANCE,LEAVE_RATE,DEDUCTIONS_TOTAL,REAL_PAY,PAYROLL_SDATE,PAYROLL_EDATE,EMPLOYEE_CODE,NOTAX_PAYMENT,PAYROLL_CHECK,TIME_SALARY) values ('2024120908',to_date('24/11/01','RR/MM/DD'),1000000,28710,2390,0,1031100,60000,6000,46400,35450,9280,38280,195410,835690,to_date('24/11/01','RR/MM/DD'),to_date('24/11/30','RR/MM/DD'),'160',1031103,'미검토',4785);
Insert into SALARY_PAYROLL (SALARY_NUMBER,PAYROLL_YDATE,MONTHLY_SALARY,OVERTIME_ALLOWANCE,NIGHT_ALLOWANCE,WEEKEND_ALLOWANCE,PAYMENT_TOTAL,INCOME_TAX,LOCAL_TAX,NATIONAL_INSURANCE,HEALTH_INSURANCE,EMPLOYMENT_INSURANCE,LEAVE_RATE,DEDUCTIONS_TOTAL,REAL_PAY,PAYROLL_SDATE,PAYROLL_EDATE,EMPLOYEE_CODE,NOTAX_PAYMENT,PAYROLL_CHECK,TIME_SALARY) values ('2024120909',to_date('24/11/01','RR/MM/DD'),1000000,0,0,0,1200000,60000,6000,49500,35450,9900,0,160850,1039150,to_date('24/11/01','RR/MM/DD'),to_date('24/11/30','RR/MM/DD'),'161',1100000,'미검토',4785);
Insert into SALARY_PAYROLL (SALARY_NUMBER,PAYROLL_YDATE,MONTHLY_SALARY,OVERTIME_ALLOWANCE,NIGHT_ALLOWANCE,WEEKEND_ALLOWANCE,PAYMENT_TOTAL,INCOME_TAX,LOCAL_TAX,NATIONAL_INSURANCE,HEALTH_INSURANCE,EMPLOYMENT_INSURANCE,LEAVE_RATE,DEDUCTIONS_TOTAL,REAL_PAY,PAYROLL_SDATE,PAYROLL_EDATE,EMPLOYEE_CODE,NOTAX_PAYMENT,PAYROLL_CHECK,TIME_SALARY) values ('2024120910',to_date('24/11/01','RR/MM/DD'),3000000,0,0,0,4000000,345000,34500,135000,106350,27000,0,647850,3352150,to_date('24/11/01','RR/MM/DD'),to_date('24/11/30','RR/MM/DD'),'173',3000000,'미검토',14354);
Insert into SALARY_PAYROLL (SALARY_NUMBER,PAYROLL_YDATE,MONTHLY_SALARY,OVERTIME_ALLOWANCE,NIGHT_ALLOWANCE,WEEKEND_ALLOWANCE,PAYMENT_TOTAL,INCOME_TAX,LOCAL_TAX,NATIONAL_INSURANCE,HEALTH_INSURANCE,EMPLOYMENT_INSURANCE,LEAVE_RATE,DEDUCTIONS_TOTAL,REAL_PAY,PAYROLL_SDATE,PAYROLL_EDATE,EMPLOYEE_CODE,NOTAX_PAYMENT,PAYROLL_CHECK,TIME_SALARY) values ('2024120911',to_date('24/11/01','RR/MM/DD'),3000000,0,0,0,5000000,720000,72000,225000,177250,45000,0,1239250,3760750,to_date('24/11/01','RR/MM/DD'),to_date('24/11/30','RR/MM/DD'),'174',5000000,'미검토',14354);
Insert into SALARY_PAYROLL (SALARY_NUMBER,PAYROLL_YDATE,MONTHLY_SALARY,OVERTIME_ALLOWANCE,NIGHT_ALLOWANCE,WEEKEND_ALLOWANCE,PAYMENT_TOTAL,INCOME_TAX,LOCAL_TAX,NATIONAL_INSURANCE,HEALTH_INSURANCE,EMPLOYMENT_INSURANCE,LEAVE_RATE,DEDUCTIONS_TOTAL,REAL_PAY,PAYROLL_SDATE,PAYROLL_EDATE,EMPLOYEE_CODE,NOTAX_PAYMENT,PAYROLL_CHECK,TIME_SALARY) values ('2024120912',to_date('24/11/01','RR/MM/DD'),11500000,0,0,0,14500000,3088330,308830,277650,443130,112500,0,4230440,10269560,to_date('24/11/01','RR/MM/DD'),to_date('24/11/30','RR/MM/DD'),'176',12500000,'미검토',55024);
Insert into SALARY_PAYROLL (SALARY_NUMBER,PAYROLL_YDATE,MONTHLY_SALARY,OVERTIME_ALLOWANCE,NIGHT_ALLOWANCE,WEEKEND_ALLOWANCE,PAYMENT_TOTAL,INCOME_TAX,LOCAL_TAX,NATIONAL_INSURANCE,HEALTH_INSURANCE,EMPLOYMENT_INSURANCE,LEAVE_RATE,DEDUCTIONS_TOTAL,REAL_PAY,PAYROLL_SDATE,PAYROLL_EDATE,EMPLOYEE_CODE,NOTAX_PAYMENT,PAYROLL_CHECK,TIME_SALARY) values ('2024120913',to_date('24/11/01','RR/MM/DD'),2500000,0,0,0,2500000,270000,27000,112500,88630,22500,0,520630,1979380,to_date('24/11/01','RR/MM/DD'),to_date('24/11/30','RR/MM/DD'),'177',2500000,'미검토',11962);
Insert into SALARY_PAYROLL (SALARY_NUMBER,PAYROLL_YDATE,MONTHLY_SALARY,OVERTIME_ALLOWANCE,NIGHT_ALLOWANCE,WEEKEND_ALLOWANCE,PAYMENT_TOTAL,INCOME_TAX,LOCAL_TAX,NATIONAL_INSURANCE,HEALTH_INSURANCE,EMPLOYMENT_INSURANCE,LEAVE_RATE,DEDUCTIONS_TOTAL,REAL_PAY,PAYROLL_SDATE,PAYROLL_EDATE,EMPLOYEE_CODE,NOTAX_PAYMENT,PAYROLL_CHECK,TIME_SALARY) values ('2024120914',to_date('24/11/01','RR/MM/DD'),3200000,80380,6700,0,3487080,315000,31500,152420,99260,30480,107180,735840,2751240,to_date('24/11/01','RR/MM/DD'),to_date('24/11/30','RR/MM/DD'),'231',3387081,'미검토',13397);
Insert into SALARY_PAYROLL (SALARY_NUMBER,PAYROLL_YDATE,MONTHLY_SALARY,OVERTIME_ALLOWANCE,NIGHT_ALLOWANCE,WEEKEND_ALLOWANCE,PAYMENT_TOTAL,INCOME_TAX,LOCAL_TAX,NATIONAL_INSURANCE,HEALTH_INSURANCE,EMPLOYMENT_INSURANCE,LEAVE_RATE,DEDUCTIONS_TOTAL,REAL_PAY,PAYROLL_SDATE,PAYROLL_EDATE,EMPLOYEE_CODE,NOTAX_PAYMENT,PAYROLL_CHECK,TIME_SALARY) values ('2024120915',to_date('24/11/01','RR/MM/DD'),1000000,0,0,0,1001000,60060,6010,45050,35490,9010,0,155610,845400,to_date('24/11/01','RR/MM/DD'),to_date('24/11/30','RR/MM/DD'),'243',1001000,'미검토',4785);
REM INSERTING into SALES
SET DEFINE OFF;
Insert into SALES (SALES_CHIT_NO,CHIT_DATE,CLIENT_CODE,ACCT_NAME,SUPPLY_PRICE,VAT,TOTAL_PRICE,WRITER,REC_BALANCE,REC_STATUS,SUMMARY,SALESLIP_NO,INVOICE_NO) values ('MK-20241211129',to_date('24/12/05','RR/MM/DD'),'client32','외상매출금',124500000,12450000,136950000,'김도영',0,'n1',null,'20241211-154','IV-20241211111');
Insert into SALES (SALES_CHIT_NO,CHIT_DATE,CLIENT_CODE,ACCT_NAME,SUPPLY_PRICE,VAT,TOTAL_PRICE,WRITER,REC_BALANCE,REC_STATUS,SUMMARY,SALESLIP_NO,INVOICE_NO) values ('MK-20241211127',to_date('24/12/11','RR/MM/DD'),'client22','외상매출금',70000,7000,77000,'김도영',77000,'n2',null,'20241211-176','IV-20241211109');
Insert into SALES (SALES_CHIT_NO,CHIT_DATE,CLIENT_CODE,ACCT_NAME,SUPPLY_PRICE,VAT,TOTAL_PRICE,WRITER,REC_BALANCE,REC_STATUS,SUMMARY,SALESLIP_NO,INVOICE_NO) values ('MK-20241211128',to_date('24/12/01','RR/MM/DD'),'client34','외상매출금',19030000,1903000,20933000,'김도영',0,'n1',null,'20241211-160','IV-20241211110');
Insert into SALES (SALES_CHIT_NO,CHIT_DATE,CLIENT_CODE,ACCT_NAME,SUPPLY_PRICE,VAT,TOTAL_PRICE,WRITER,REC_BALANCE,REC_STATUS,SUMMARY,SALESLIP_NO,INVOICE_NO) values ('MK-20241211130',to_date('24/12/01','RR/MM/DD'),'client25','외상매출금',620000,62000,682000,'김도영',0,'n1',null,null,'IV-20241211112');
Insert into SALES (SALES_CHIT_NO,CHIT_DATE,CLIENT_CODE,ACCT_NAME,SUPPLY_PRICE,VAT,TOTAL_PRICE,WRITER,REC_BALANCE,REC_STATUS,SUMMARY,SALESLIP_NO,INVOICE_NO) values ('MK-20241211131',to_date('24/12/09','RR/MM/DD'),'client24','외상매출금',1350000,135000,1485000,'김도영',4000,'n1',null,null,'IV-20241211113');
Insert into SALES (SALES_CHIT_NO,CHIT_DATE,CLIENT_CODE,ACCT_NAME,SUPPLY_PRICE,VAT,TOTAL_PRICE,WRITER,REC_BALANCE,REC_STATUS,SUMMARY,SALESLIP_NO,INVOICE_NO) values ('MK-20241211132',to_date('24/12/01','RR/MM/DD'),'client33','외상매출금',1500000,150000,1650000,'김도영',0,'n1',null,null,'IV-20241211114');
Insert into SALES (SALES_CHIT_NO,CHIT_DATE,CLIENT_CODE,ACCT_NAME,SUPPLY_PRICE,VAT,TOTAL_PRICE,WRITER,REC_BALANCE,REC_STATUS,SUMMARY,SALESLIP_NO,INVOICE_NO) values ('MK-20241211133',to_date('24/12/11','RR/MM/DD'),'client30','제품',127000,12700,139700,'김도영',0,'n1',null,null,'IV-20241211115');
Insert into SALES (SALES_CHIT_NO,CHIT_DATE,CLIENT_CODE,ACCT_NAME,SUPPLY_PRICE,VAT,TOTAL_PRICE,WRITER,REC_BALANCE,REC_STATUS,SUMMARY,SALESLIP_NO,INVOICE_NO) values ('MK-20241211134',to_date('24/12/07','RR/MM/DD'),'client49','외상매출금',900000,90000,990000,'김도영',0,'n1',null,null,'IV-20241211116');
Insert into SALES (SALES_CHIT_NO,CHIT_DATE,CLIENT_CODE,ACCT_NAME,SUPPLY_PRICE,VAT,TOTAL_PRICE,WRITER,REC_BALANCE,REC_STATUS,SUMMARY,SALESLIP_NO,INVOICE_NO) values ('MK-20241211135',to_date('24/12/09','RR/MM/DD'),'client29','외상매출금',777000,77700,854700,'김도영',0,'n1',null,null,'IV-20241211117');
Insert into SALES (SALES_CHIT_NO,CHIT_DATE,CLIENT_CODE,ACCT_NAME,SUPPLY_PRICE,VAT,TOTAL_PRICE,WRITER,REC_BALANCE,REC_STATUS,SUMMARY,SALESLIP_NO,INVOICE_NO) values ('MK-20241211136',to_date('24/12/04','RR/MM/DD'),'client45','외상매출금',890000,89000,979000,'김도영',0,'n1',null,null,'IV-20241211118');
Insert into SALES (SALES_CHIT_NO,CHIT_DATE,CLIENT_CODE,ACCT_NAME,SUPPLY_PRICE,VAT,TOTAL_PRICE,WRITER,REC_BALANCE,REC_STATUS,SUMMARY,SALESLIP_NO,INVOICE_NO) values ('MK-20241211137',to_date('24/11/01','RR/MM/DD'),'client59','외상매출금',7822222,782222,8604444,'김도영',0,'n1',null,null,'IV-20241211119');
Insert into SALES (SALES_CHIT_NO,CHIT_DATE,CLIENT_CODE,ACCT_NAME,SUPPLY_PRICE,VAT,TOTAL_PRICE,WRITER,REC_BALANCE,REC_STATUS,SUMMARY,SALESLIP_NO,INVOICE_NO) values ('MK-20241211138',to_date('24/12/07','RR/MM/DD'),'client55','외상매출금',4520000,452000,4972000,'김도영',0,'n1',null,null,'IV-20241211120');
Insert into SALES (SALES_CHIT_NO,CHIT_DATE,CLIENT_CODE,ACCT_NAME,SUPPLY_PRICE,VAT,TOTAL_PRICE,WRITER,REC_BALANCE,REC_STATUS,SUMMARY,SALESLIP_NO,INVOICE_NO) values ('MK-20241211139',to_date('24/11/13','RR/MM/DD'),'client37','외상매출금',7541000,754100,8295100,'김도영',0,'n1',null,null,'IV-20241211121');
Insert into SALES (SALES_CHIT_NO,CHIT_DATE,CLIENT_CODE,ACCT_NAME,SUPPLY_PRICE,VAT,TOTAL_PRICE,WRITER,REC_BALANCE,REC_STATUS,SUMMARY,SALESLIP_NO,INVOICE_NO) values ('MK-20241211140',to_date('24/11/27','RR/MM/DD'),'client42','외상매출금',1088800,108880,1197680,'김도영',0,'n1',null,null,'IV-20241211122');
Insert into SALES (SALES_CHIT_NO,CHIT_DATE,CLIENT_CODE,ACCT_NAME,SUPPLY_PRICE,VAT,TOTAL_PRICE,WRITER,REC_BALANCE,REC_STATUS,SUMMARY,SALESLIP_NO,INVOICE_NO) values ('MK-20241211141',to_date('24/11/11','RR/MM/DD'),'client30','외상매출금',9621000,962100,10583100,'김도영',0,'n1',null,null,'IV-20241211123');
Insert into SALES (SALES_CHIT_NO,CHIT_DATE,CLIENT_CODE,ACCT_NAME,SUPPLY_PRICE,VAT,TOTAL_PRICE,WRITER,REC_BALANCE,REC_STATUS,SUMMARY,SALESLIP_NO,INVOICE_NO) values ('MK-20241211142',to_date('24/11/29','RR/MM/DD'),'client28','외상매출금',3100000,310000,3410000,'김도영',0,'n1',null,null,'IV-20241211124');
Insert into SALES (SALES_CHIT_NO,CHIT_DATE,CLIENT_CODE,ACCT_NAME,SUPPLY_PRICE,VAT,TOTAL_PRICE,WRITER,REC_BALANCE,REC_STATUS,SUMMARY,SALESLIP_NO,INVOICE_NO) values ('MK-20241212149',to_date('24/12/01','RR/MM/DD'),'client22','외상매출금',2770000,277000,3047000,'김도영',-68000,'n1',null,'20241212-202','IV-20241212131');
Insert into SALES (SALES_CHIT_NO,CHIT_DATE,CLIENT_CODE,ACCT_NAME,SUPPLY_PRICE,VAT,TOTAL_PRICE,WRITER,REC_BALANCE,REC_STATUS,SUMMARY,SALESLIP_NO,INVOICE_NO) values ('MK-20241211144',to_date('24/10/31','RR/MM/DD'),'client32','외상매출금',724000,72400,796400,'김도영',0,'n1',null,null,'IV-20241211126');
Insert into SALES (SALES_CHIT_NO,CHIT_DATE,CLIENT_CODE,ACCT_NAME,SUPPLY_PRICE,VAT,TOTAL_PRICE,WRITER,REC_BALANCE,REC_STATUS,SUMMARY,SALESLIP_NO,INVOICE_NO) values ('MK-20241211145',to_date('24/12/07','RR/MM/DD'),'client30','외상매출금',5260000,526000,5786000,'김도영',0,'n1',null,null,'IV-20241211127');
Insert into SALES (SALES_CHIT_NO,CHIT_DATE,CLIENT_CODE,ACCT_NAME,SUPPLY_PRICE,VAT,TOTAL_PRICE,WRITER,REC_BALANCE,REC_STATUS,SUMMARY,SALESLIP_NO,INVOICE_NO) values ('MK-20241212146',to_date('24/12/12','RR/MM/DD'),'client23','보통예금',3327500,332750,3660250,'김도영',340000,'n1','일산 커피공장 원두 발주','20241211-195','IV-20241212128');
Insert into SALES (SALES_CHIT_NO,CHIT_DATE,CLIENT_CODE,ACCT_NAME,SUPPLY_PRICE,VAT,TOTAL_PRICE,WRITER,REC_BALANCE,REC_STATUS,SUMMARY,SALESLIP_NO,INVOICE_NO) values ('MK-20241212147',to_date('24/12/12','RR/MM/DD'),'client22','외상매출금',2070000,207000,2277000,'김도영',0,'n1','12월 원두 납품 건','20241212-201','IV-20241212129');
Insert into SALES (SALES_CHIT_NO,CHIT_DATE,CLIENT_CODE,ACCT_NAME,SUPPLY_PRICE,VAT,TOTAL_PRICE,WRITER,REC_BALANCE,REC_STATUS,SUMMARY,SALESLIP_NO,INVOICE_NO) values ('MK-20241212148',to_date('24/12/19','RR/MM/DD'),'client22','외상매출금',3240000,324000,3564000,'김도영',0,'n1',null,'20241211-138','IV-20241212130');
Insert into SALES (SALES_CHIT_NO,CHIT_DATE,CLIENT_CODE,ACCT_NAME,SUPPLY_PRICE,VAT,TOTAL_PRICE,WRITER,REC_BALANCE,REC_STATUS,SUMMARY,SALESLIP_NO,INVOICE_NO) values ('MK-20241212150',to_date('24/12/12','RR/MM/DD'),'client35','외상매출금',920000,92000,1012000,'김도영',0,'n1',null,null,'IV-20241212132');
REM INSERTING into SALESLIP_HISTORY
SET DEFINE OFF;
Insert into SALESLIP_HISTORY (SALES_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,DELIVERY_PRICE,DELIVERY_STATUS,DELIVERY_DATE,SALESLIP_NO,INCOMPLETE_QUANTITY) values (20241211128,'10001','서울창고','MANGO-12060','얇은 빨대(0.7cm)150개입',40,1750,'b1',to_date('24/12/16','RR/MM/DD'),'20241211-191',40);
Insert into SALESLIP_HISTORY (SALES_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,DELIVERY_PRICE,DELIVERY_STATUS,DELIVERY_DATE,SALESLIP_NO,INCOMPLETE_QUANTITY) values (20241211129,'10001','서울창고','MANGO-12062','굵은 빨대(1.0cm)150개입',40,1750,'b1',to_date('24/12/16','RR/MM/DD'),'20241211-192',40);
Insert into SALESLIP_HISTORY (SALES_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,DELIVERY_PRICE,DELIVERY_STATUS,DELIVERY_DATE,SALESLIP_NO,INCOMPLETE_QUANTITY) values (20241211130,'10001','서울창고','MANGO-12057','로부스타(Robusta)',150,7500,'b1',to_date('24/12/16','RR/MM/DD'),'20241211-192',150);
Insert into SALESLIP_HISTORY (SALES_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,DELIVERY_PRICE,DELIVERY_STATUS,DELIVERY_DATE,SALESLIP_NO,INCOMPLETE_QUANTITY) values (20241211131,'10001','서울창고','MANGO-12056','아라비카(Arabica)',150,14500,'b3',to_date('24/12/16','RR/MM/DD'),'20241211-192',0);
Insert into SALESLIP_HISTORY (SALES_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,DELIVERY_PRICE,DELIVERY_STATUS,DELIVERY_DATE,SALESLIP_NO,INCOMPLETE_QUANTITY) values (20241211132,'10001','서울창고','MANGO-12060','얇은 빨대(0.7cm)150개입',40,1750,'b1',to_date('24/12/16','RR/MM/DD'),'20241211-192',40);
Insert into SALESLIP_HISTORY (SALES_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,DELIVERY_PRICE,DELIVERY_STATUS,DELIVERY_DATE,SALESLIP_NO,INCOMPLETE_QUANTITY) values (20241211133,'10001','서울창고','MANGO-12062','굵은 빨대(1.0cm)150개입',40,1650,'b1',to_date('24/12/16','RR/MM/DD'),'20241211-193',40);
Insert into SALESLIP_HISTORY (SALES_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,DELIVERY_PRICE,DELIVERY_STATUS,DELIVERY_DATE,SALESLIP_NO,INCOMPLETE_QUANTITY) values (20241211134,'10001','서울창고','MANGO-12057','로부스타(Robusta)',150,6750,'b1',to_date('24/12/16','RR/MM/DD'),'20241211-193',150);
Insert into SALESLIP_HISTORY (SALES_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,DELIVERY_PRICE,DELIVERY_STATUS,DELIVERY_DATE,SALESLIP_NO,INCOMPLETE_QUANTITY) values (20241211135,'10001','서울창고','MANGO-12056','아라비카(Arabica)',150,14500,'b3',to_date('24/12/16','RR/MM/DD'),'20241211-193',0);
Insert into SALESLIP_HISTORY (SALES_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,DELIVERY_PRICE,DELIVERY_STATUS,DELIVERY_DATE,SALESLIP_NO,INCOMPLETE_QUANTITY) values (20241211136,'10001','서울창고','MANGO-12060','얇은 빨대(0.7cm)150개입',40,1750,'b1',to_date('24/12/16','RR/MM/DD'),'20241211-193',40);
Insert into SALESLIP_HISTORY (SALES_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,DELIVERY_PRICE,DELIVERY_STATUS,DELIVERY_DATE,SALESLIP_NO,INCOMPLETE_QUANTITY) values (20241211137,'10001','서울창고','MANGO-12062','굵은 빨대(1.0cm)150개입',40,1750,'b1',to_date('24/12/16','RR/MM/DD'),'20241211-194',40);
Insert into SALESLIP_HISTORY (SALES_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,DELIVERY_PRICE,DELIVERY_STATUS,DELIVERY_DATE,SALESLIP_NO,INCOMPLETE_QUANTITY) values (20241211138,'10001','서울창고','MANGO-12057','로부스타(Robusta)',150,7500,'b1',to_date('24/12/16','RR/MM/DD'),'20241211-194',150);
Insert into SALESLIP_HISTORY (SALES_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,DELIVERY_PRICE,DELIVERY_STATUS,DELIVERY_DATE,SALESLIP_NO,INCOMPLETE_QUANTITY) values (20241211139,'10001','서울창고','MANGO-12056','아라비카(Arabica)',150,14500,'b3',to_date('24/12/16','RR/MM/DD'),'20241211-194',0);
Insert into SALESLIP_HISTORY (SALES_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,DELIVERY_PRICE,DELIVERY_STATUS,DELIVERY_DATE,SALESLIP_NO,INCOMPLETE_QUANTITY) values (20241211140,'10001','서울창고','MANGO-12060','얇은 빨대(0.7cm)150개입',40,1750,'b1',to_date('24/12/16','RR/MM/DD'),'20241211-194',40);
Insert into SALESLIP_HISTORY (SALES_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,DELIVERY_PRICE,DELIVERY_STATUS,DELIVERY_DATE,SALESLIP_NO,INCOMPLETE_QUANTITY) values (20241211141,'10001','서울창고','MANGO-12062','굵은 빨대(1.0cm)150개입',40,1750,'b1',to_date('24/12/16','RR/MM/DD'),'20241211-195',40);
Insert into SALESLIP_HISTORY (SALES_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,DELIVERY_PRICE,DELIVERY_STATUS,DELIVERY_DATE,SALESLIP_NO,INCOMPLETE_QUANTITY) values (20241211142,'10001','서울창고','MANGO-12057','로부스타(Robusta)',150,6750,'b1',to_date('24/12/16','RR/MM/DD'),'20241211-195',150);
Insert into SALESLIP_HISTORY (SALES_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,DELIVERY_PRICE,DELIVERY_STATUS,DELIVERY_DATE,SALESLIP_NO,INCOMPLETE_QUANTITY) values (20241211143,'10001','서울창고','MANGO-12056','아라비카(Arabica)',150,14500,'b3',to_date('24/12/16','RR/MM/DD'),'20241211-195',0);
Insert into SALESLIP_HISTORY (SALES_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,DELIVERY_PRICE,DELIVERY_STATUS,DELIVERY_DATE,SALESLIP_NO,INCOMPLETE_QUANTITY) values (20241211144,'10001','서울창고','MANGO-12060','얇은 빨대(0.7cm)150개입',40,1750,'b1',to_date('24/12/16','RR/MM/DD'),'20241211-195',40);
Insert into SALESLIP_HISTORY (SALES_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,DELIVERY_PRICE,DELIVERY_STATUS,DELIVERY_DATE,SALESLIP_NO,INCOMPLETE_QUANTITY) values (20241212145,'10001','서울창고','MANGO-12062','굵은 빨대(1.0cm)150개입',40,2000,'b3',to_date('24/12/16','RR/MM/DD'),'20241212-199',0);
Insert into SALESLIP_HISTORY (SALES_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,DELIVERY_PRICE,DELIVERY_STATUS,DELIVERY_DATE,SALESLIP_NO,INCOMPLETE_QUANTITY) values (20241212146,'10001','서울창고','MANGO-12057','로부스타(Robusta)',150,7000,'b3',to_date('24/12/16','RR/MM/DD'),'20241212-199',0);
Insert into SALESLIP_HISTORY (SALES_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,DELIVERY_PRICE,DELIVERY_STATUS,DELIVERY_DATE,SALESLIP_NO,INCOMPLETE_QUANTITY) values (20241212147,'10001','서울창고','MANGO-12062','굵은 빨대(1.0cm)150개입',40,2000,'b3',to_date('24/12/16','RR/MM/DD'),'20241212-200',0);
Insert into SALESLIP_HISTORY (SALES_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,DELIVERY_PRICE,DELIVERY_STATUS,DELIVERY_DATE,SALESLIP_NO,INCOMPLETE_QUANTITY) values (20241212148,'10001','서울창고','MANGO-12057','로부스타(Robusta)',150,7000,'b3',to_date('24/12/16','RR/MM/DD'),'20241212-200',0);
Insert into SALESLIP_HISTORY (SALES_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,DELIVERY_PRICE,DELIVERY_STATUS,DELIVERY_DATE,SALESLIP_NO,INCOMPLETE_QUANTITY) values (20241212149,'10001','서울창고','MANGO-12062','굵은 빨대(1.0cm)150개입',40,2000,'b3',to_date('24/12/16','RR/MM/DD'),'20241212-201',0);
Insert into SALESLIP_HISTORY (SALES_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,DELIVERY_PRICE,DELIVERY_STATUS,DELIVERY_DATE,SALESLIP_NO,INCOMPLETE_QUANTITY) values (20241212150,'10001','서울창고','MANGO-12057','로부스타(Robusta)',150,7000,'b3',to_date('24/12/16','RR/MM/DD'),'20241212-201',0);
Insert into SALESLIP_HISTORY (SALES_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,DELIVERY_PRICE,DELIVERY_STATUS,DELIVERY_DATE,SALESLIP_NO,INCOMPLETE_QUANTITY) values (20241212151,'10001','서울창고','MANGO-12056','아라비카(Arabica)',60,14000,'b3',to_date('24/12/16','RR/MM/DD'),'20241212-201',0);
Insert into SALESLIP_HISTORY (SALES_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,DELIVERY_PRICE,DELIVERY_STATUS,DELIVERY_DATE,SALESLIP_NO,INCOMPLETE_QUANTITY) values (20241212152,'10001','서울창고','MANGO-12060','얇은 빨대(0.7cm)150개입',50,2000,'b3',to_date('24/12/16','RR/MM/DD'),'20241212-201',0);
Insert into SALESLIP_HISTORY (SALES_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,DELIVERY_PRICE,DELIVERY_STATUS,DELIVERY_DATE,SALESLIP_NO,INCOMPLETE_QUANTITY) values (20241212153,'10001','서울창고','MANGO-12062','굵은 빨대(1.0cm)150개입',40,2000,'b2',to_date('24/12/12','RR/MM/DD'),'20241212-202',20);
Insert into SALESLIP_HISTORY (SALES_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,DELIVERY_PRICE,DELIVERY_STATUS,DELIVERY_DATE,SALESLIP_NO,INCOMPLETE_QUANTITY) values (20241212154,'10001','서울창고','MANGO-12057','로부스타(Robusta)',150,7000,'b1',to_date('24/12/12','RR/MM/DD'),'20241212-202',150);
Insert into SALESLIP_HISTORY (SALES_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,DELIVERY_PRICE,DELIVERY_STATUS,DELIVERY_DATE,SALESLIP_NO,INCOMPLETE_QUANTITY) values (20241212155,'10001','서울창고','MANGO-12056','아라비카(Arabica)',60,14000,'b3',to_date('24/12/12','RR/MM/DD'),'20241212-202',0);
Insert into SALESLIP_HISTORY (SALES_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,DELIVERY_PRICE,DELIVERY_STATUS,DELIVERY_DATE,SALESLIP_NO,INCOMPLETE_QUANTITY) values (20241212156,'10001','서울창고','MANGO-12060','얇은 빨대(0.7cm)150개입',50,16000,'b1',to_date('24/12/12','RR/MM/DD'),'20241212-202',50);
Insert into SALESLIP_HISTORY (SALES_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,DELIVERY_PRICE,DELIVERY_STATUS,DELIVERY_DATE,SALESLIP_NO,INCOMPLETE_QUANTITY) values (20241212157,'10001','서울창고','MANGO-12062','굵은 빨대(1.0cm)150개입',40,1750,'b2',to_date('24/12/17','RR/MM/DD'),'20241212-204',30);
Insert into SALESLIP_HISTORY (SALES_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,DELIVERY_PRICE,DELIVERY_STATUS,DELIVERY_DATE,SALESLIP_NO,INCOMPLETE_QUANTITY) values (20241212158,'10001','서울창고','MANGO-12057','로부스타(Robusta)',150,6750,'b2',to_date('24/12/17','RR/MM/DD'),'20241212-204',140);
Insert into SALESLIP_HISTORY (SALES_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,DELIVERY_PRICE,DELIVERY_STATUS,DELIVERY_DATE,SALESLIP_NO,INCOMPLETE_QUANTITY) values (20241212159,'10001','서울창고','MANGO-12056','아라비카(Arabica)',60,14500,'b3',to_date('24/12/18','RR/MM/DD'),'20241212-204',0);
Insert into SALESLIP_HISTORY (SALES_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,DELIVERY_PRICE,DELIVERY_STATUS,DELIVERY_DATE,SALESLIP_NO,INCOMPLETE_QUANTITY) values (20241212160,'10001','서울창고','MANGO-12060','얇은 빨대(0.7cm)150개입',50,1650,'b2',to_date('24/12/20','RR/MM/DD'),'20241212-204',40);
Insert into SALESLIP_HISTORY (SALES_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,DELIVERY_PRICE,DELIVERY_STATUS,DELIVERY_DATE,SALESLIP_NO,INCOMPLETE_QUANTITY) values (20241212161,'10001','서울창고','MANGO-12062','굵은 빨대(1.0cm)150개입',40,1800,'b2',to_date('24/12/18','RR/MM/DD'),'20241212-205',30);
Insert into SALESLIP_HISTORY (SALES_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,DELIVERY_PRICE,DELIVERY_STATUS,DELIVERY_DATE,SALESLIP_NO,INCOMPLETE_QUANTITY) values (20241212162,'10001','서울창고','MANGO-12057','로부스타(Robusta)',150,7500,'b2',to_date('24/12/18','RR/MM/DD'),'20241212-205',139);
Insert into SALESLIP_HISTORY (SALES_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,DELIVERY_PRICE,DELIVERY_STATUS,DELIVERY_DATE,SALESLIP_NO,INCOMPLETE_QUANTITY) values (20241212163,'10002','파주창고','MANGO-12060','얇은 빨대(0.7cm)150개입',50,1750,'b2',to_date('24/12/18','RR/MM/DD'),'20241212-205',40);
Insert into SALESLIP_HISTORY (SALES_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,DELIVERY_PRICE,DELIVERY_STATUS,DELIVERY_DATE,SALESLIP_NO,INCOMPLETE_QUANTITY) values (20241213164,'10001','서울창고','MANGO-12062','굵은 빨대(1.0cm)150개입',40,2000,'b3',to_date('24/12/13','RR/MM/DD'),'20241213-209',0);
Insert into SALESLIP_HISTORY (SALES_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,DELIVERY_PRICE,DELIVERY_STATUS,DELIVERY_DATE,SALESLIP_NO,INCOMPLETE_QUANTITY) values (20241215176,'10001','서울창고','MANGO-12062','굵은 빨대(1.0cm)150개입',40,1750,'b1',to_date('24/12/18','RR/MM/DD'),'20241215-218',40);
Insert into SALESLIP_HISTORY (SALES_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,DELIVERY_PRICE,DELIVERY_STATUS,DELIVERY_DATE,SALESLIP_NO,INCOMPLETE_QUANTITY) values (20241213166,'10001','서울창고','MANGO-12056','아라비카(Arabica)',562,14200,'b3',to_date('24/12/13','RR/MM/DD'),'20241213-209',0);
Insert into SALESLIP_HISTORY (SALES_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,DELIVERY_PRICE,DELIVERY_STATUS,DELIVERY_DATE,SALESLIP_NO,INCOMPLETE_QUANTITY) values (20241213167,'10001','서울창고','MANGO-12060','얇은 빨대(0.7cm)150개입',271,2000,'b3',to_date('24/12/13','RR/MM/DD'),'20241213-209',0);
Insert into SALESLIP_HISTORY (SALES_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,DELIVERY_PRICE,DELIVERY_STATUS,DELIVERY_DATE,SALESLIP_NO,INCOMPLETE_QUANTITY) values (20241213168,'10001','서울창고','MANGO-12062','굵은 빨대(1.0cm)150개입',40,1700,'b2',to_date('24/12/13','RR/MM/DD'),'20241213-210',30);
Insert into SALESLIP_HISTORY (SALES_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,DELIVERY_PRICE,DELIVERY_STATUS,DELIVERY_DATE,SALESLIP_NO,INCOMPLETE_QUANTITY) values (20241215177,'10002','파주창고','MANGO-12057','로부스타(Robusta)',150,6750,'b1',to_date('24/12/17','RR/MM/DD'),'20241215-218',150);
Insert into SALESLIP_HISTORY (SALES_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,DELIVERY_PRICE,DELIVERY_STATUS,DELIVERY_DATE,SALESLIP_NO,INCOMPLETE_QUANTITY) values (20241216178,'10001','서울창고','MANGO-12062','굵은 빨대(1.0cm)150개입',40,2000,'b1',to_date('24/12/16','RR/MM/DD'),'20241216-219',40);
Insert into SALESLIP_HISTORY (SALES_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,DELIVERY_PRICE,DELIVERY_STATUS,DELIVERY_DATE,SALESLIP_NO,INCOMPLETE_QUANTITY) values (20241216179,'10001','서울창고','MANGO-12057','로부스타(Robusta)',150,7000,'b1',to_date('24/12/16','RR/MM/DD'),'20241216-219',150);
Insert into SALESLIP_HISTORY (SALES_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,DELIVERY_PRICE,DELIVERY_STATUS,DELIVERY_DATE,SALESLIP_NO,INCOMPLETE_QUANTITY) values (20241213174,'10001','서울창고','MANGO-12062','굵은 빨대(1.0cm)150개입',40,2100,'b1',to_date('24/12/13','RR/MM/DD'),'20241213-213',40);
Insert into SALESLIP_HISTORY (SALES_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,DELIVERY_PRICE,DELIVERY_STATUS,DELIVERY_DATE,SALESLIP_NO,INCOMPLETE_QUANTITY) values (20241213175,'10001','서울창고','MANGO-12057','로부스타(Robusta)',150,7700,'b1',to_date('24/12/13','RR/MM/DD'),'20241213-213',150);
Insert into SALESLIP_HISTORY (SALES_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,DELIVERY_PRICE,DELIVERY_STATUS,DELIVERY_DATE,SALESLIP_NO,INCOMPLETE_QUANTITY) values (20241211059,'10001','서울창고','MANGO-12062','굵은 빨대(1.0cm)150개입',50,1700,'b3',to_date('24/12/11','RR/MM/DD'),'20241211-138',0);
Insert into SALESLIP_HISTORY (SALES_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,DELIVERY_PRICE,DELIVERY_STATUS,DELIVERY_DATE,SALESLIP_NO,INCOMPLETE_QUANTITY) values (20241211060,'10001','서울창고','MANGO-12057','로부스타(Robusta)',150,7000,'b3',to_date('24/12/11','RR/MM/DD'),'20241211-138',0);
Insert into SALESLIP_HISTORY (SALES_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,DELIVERY_PRICE,DELIVERY_STATUS,DELIVERY_DATE,SALESLIP_NO,INCOMPLETE_QUANTITY) values (20241211061,'10001','서울창고','MANGO-12056','아라비카(Arabica)',150,13500,'b3',to_date('24/12/11','RR/MM/DD'),'20241211-138',0);
Insert into SALESLIP_HISTORY (SALES_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,DELIVERY_PRICE,DELIVERY_STATUS,DELIVERY_DATE,SALESLIP_NO,INCOMPLETE_QUANTITY) values (20241211062,'10001','서울창고','ITEM-1001','프리미엄 원두',150,830000,'b3',to_date('24/12/11','RR/MM/DD'),'20241211-154',0);
Insert into SALESLIP_HISTORY (SALES_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,DELIVERY_PRICE,DELIVERY_STATUS,DELIVERY_DATE,SALESLIP_NO,INCOMPLETE_QUANTITY) values (20241211063,'10001','서울창고','MANGO-13004','초콜릿 소스',50,83000,'b3',to_date('24/12/11','RR/MM/DD'),'20241211-155',0);
Insert into SALESLIP_HISTORY (SALES_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,DELIVERY_PRICE,DELIVERY_STATUS,DELIVERY_DATE,SALESLIP_NO,INCOMPLETE_QUANTITY) values (20241211064,'10001','서울창고','ITEM-3001','커피 머신 필터',30,21000,'b3',to_date('24/12/11','RR/MM/DD'),'20241211-155',0);
Insert into SALESLIP_HISTORY (SALES_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,DELIVERY_PRICE,DELIVERY_STATUS,DELIVERY_DATE,SALESLIP_NO,INCOMPLETE_QUANTITY) values (20241211065,'10001','서울창고','ITEM-5002','베이킹 믹스',15,620000,'b3',to_date('24/12/11','RR/MM/DD'),'20241211-159',0);
Insert into SALESLIP_HISTORY (SALES_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,DELIVERY_PRICE,DELIVERY_STATUS,DELIVERY_DATE,SALESLIP_NO,INCOMPLETE_QUANTITY) values (20241211066,'10001','서울창고','ITEM-5001','초콜릿 소스',21,430000,'b3',to_date('24/12/11','RR/MM/DD'),'20241211-159',0);
Insert into SALESLIP_HISTORY (SALES_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,DELIVERY_PRICE,DELIVERY_STATUS,DELIVERY_DATE,SALESLIP_NO,INCOMPLETE_QUANTITY) values (20241211067,'10001','서울창고','ITEM-6002','유지보수 부품 B',5,170000,'b3',to_date('24/12/11','RR/MM/DD'),'20241211-159',0);
Insert into SALESLIP_HISTORY (SALES_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,DELIVERY_PRICE,DELIVERY_STATUS,DELIVERY_DATE,SALESLIP_NO,INCOMPLETE_QUANTITY) values (20241211068,'10001','서울창고','ITEM-5002','베이킹 믹스',15,610000,'b3',to_date('24/12/11','RR/MM/DD'),'20241211-160',0);
Insert into SALESLIP_HISTORY (SALES_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,DELIVERY_PRICE,DELIVERY_STATUS,DELIVERY_DATE,SALESLIP_NO,INCOMPLETE_QUANTITY) values (20241211069,'10001','서울창고','ITEM-5001','초콜릿 소스',21,430000,'b3',to_date('24/12/11','RR/MM/DD'),'20241211-160',0);
Insert into SALESLIP_HISTORY (SALES_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,DELIVERY_PRICE,DELIVERY_STATUS,DELIVERY_DATE,SALESLIP_NO,INCOMPLETE_QUANTITY) values (20241211070,'10001','서울창고','ITEM-6002','유지보수 부품 B',5,170000,'b3',to_date('24/12/11','RR/MM/DD'),'20241211-160',0);
Insert into SALESLIP_HISTORY (SALES_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,DELIVERY_PRICE,DELIVERY_STATUS,DELIVERY_DATE,SALESLIP_NO,INCOMPLETE_QUANTITY) values (20241211071,'10001','서울창고','ITEM-1001','프리미엄 원두',150,810000,'b3',to_date('24/12/12','RR/MM/DD'),'20241211-161',0);
Insert into SALESLIP_HISTORY (SALES_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,DELIVERY_PRICE,DELIVERY_STATUS,DELIVERY_DATE,SALESLIP_NO,INCOMPLETE_QUANTITY) values (20241211072,'10001','서울창고','ITEM-6002','유지보수 부품 B',5,170000,'b3',to_date('24/12/11','RR/MM/DD'),'20241211-161',0);
Insert into SALESLIP_HISTORY (SALES_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,DELIVERY_PRICE,DELIVERY_STATUS,DELIVERY_DATE,SALESLIP_NO,INCOMPLETE_QUANTITY) values (20241211073,'10001','서울창고','MANGO-13004','초콜릿 소스',100,90000,'b3',to_date('24/12/12','RR/MM/DD'),'20241211-161',0);
Insert into SALESLIP_HISTORY (SALES_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,DELIVERY_PRICE,DELIVERY_STATUS,DELIVERY_DATE,SALESLIP_NO,INCOMPLETE_QUANTITY) values (20241211074,'10001','서울창고','MANGO-12060','얇은 빨대(0.7cm)150개입',100,1600,'b3',to_date('24/12/11','RR/MM/DD'),'20241211-161',0);
Insert into SALESLIP_HISTORY (SALES_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,DELIVERY_PRICE,DELIVERY_STATUS,DELIVERY_DATE,SALESLIP_NO,INCOMPLETE_QUANTITY) values (20241211075,'10002','파주창고','MANGO-12062','굵은 빨대(1.0cm)150개입',40,1800,'b3',to_date('24/12/24','RR/MM/DD'),'20241211-163',0);
Insert into SALESLIP_HISTORY (SALES_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,DELIVERY_PRICE,DELIVERY_STATUS,DELIVERY_DATE,SALESLIP_NO,INCOMPLETE_QUANTITY) values (20241211076,'10001','서울창고','MANGO-12057','로부스타(Robusta)',150,7150,'b3',to_date('24/12/24','RR/MM/DD'),'20241211-163',0);
Insert into SALESLIP_HISTORY (SALES_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,DELIVERY_PRICE,DELIVERY_STATUS,DELIVERY_DATE,SALESLIP_NO,INCOMPLETE_QUANTITY) values (20241211077,'10001','서울창고','MANGO-12056','아라비카(Arabica)',150,14500,'b3',to_date('24/12/24','RR/MM/DD'),'20241211-163',0);
Insert into SALESLIP_HISTORY (SALES_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,DELIVERY_PRICE,DELIVERY_STATUS,DELIVERY_DATE,SALESLIP_NO,INCOMPLETE_QUANTITY) values (20241211078,'10002','파주창고','MANGO-12060','얇은 빨대(0.7cm)150개입',40,1650,'b3',to_date('24/12/24','RR/MM/DD'),'20241211-163',0);
Insert into SALESLIP_HISTORY (SALES_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,DELIVERY_PRICE,DELIVERY_STATUS,DELIVERY_DATE,SALESLIP_NO,INCOMPLETE_QUANTITY) values (20241211079,'10001','서울창고','MANGO-12062','굵은 빨대(1.0cm)150개입',40,1800,'b3',to_date('24/12/19','RR/MM/DD'),'20241211-165',0);
Insert into SALESLIP_HISTORY (SALES_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,DELIVERY_PRICE,DELIVERY_STATUS,DELIVERY_DATE,SALESLIP_NO,INCOMPLETE_QUANTITY) values (20241211080,'10001','서울창고','MANGO-12057','로부스타(Robusta)',150,7500,'b3',to_date('24/12/19','RR/MM/DD'),'20241211-165',0);
Insert into SALESLIP_HISTORY (SALES_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,DELIVERY_PRICE,DELIVERY_STATUS,DELIVERY_DATE,SALESLIP_NO,INCOMPLETE_QUANTITY) values (20241211081,'10001','서울창고','MANGO-12056','아라비카(Arabica)',150,15000,'b3',to_date('24/12/19','RR/MM/DD'),'20241211-165',0);
Insert into SALESLIP_HISTORY (SALES_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,DELIVERY_PRICE,DELIVERY_STATUS,DELIVERY_DATE,SALESLIP_NO,INCOMPLETE_QUANTITY) values (20241211082,'10002','파주창고','MANGO-12060','얇은 빨대(0.7cm)150개입',40,2200,'b3',to_date('24/12/19','RR/MM/DD'),'20241211-165',0);
Insert into SALESLIP_HISTORY (SALES_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,DELIVERY_PRICE,DELIVERY_STATUS,DELIVERY_DATE,SALESLIP_NO,INCOMPLETE_QUANTITY) values (20241211083,'10001','서울창고','MANGO-12062','굵은 빨대(1.0cm)150개입',40,1750,'b2',to_date('24/12/25','RR/MM/DD'),'20241211-176',10);
Insert into SALESLIP_HISTORY (SALES_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,DELIVERY_PRICE,DELIVERY_STATUS,DELIVERY_DATE,SALESLIP_NO,INCOMPLETE_QUANTITY) values (20241211084,'10001','서울창고','MANGO-12056','아라비카(Arabica)',150,16000,'b3',to_date('24/12/16','RR/MM/DD'),'20241211-180',0);
Insert into SALESLIP_HISTORY (SALES_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,DELIVERY_PRICE,DELIVERY_STATUS,DELIVERY_DATE,SALESLIP_NO,INCOMPLETE_QUANTITY) values (20241211085,'10001','서울창고','MANGO-12062','굵은 빨대(1.0cm)150개입',40,1800,'b1',to_date('24/12/16','RR/MM/DD'),'20241211-181',40);
Insert into SALESLIP_HISTORY (SALES_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,DELIVERY_PRICE,DELIVERY_STATUS,DELIVERY_DATE,SALESLIP_NO,INCOMPLETE_QUANTITY) values (20241211086,'10001','서울창고','MANGO-12057','로부스타(Robusta)',150,6900,'b1',to_date('24/12/16','RR/MM/DD'),'20241211-181',150);
Insert into SALESLIP_HISTORY (SALES_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,DELIVERY_PRICE,DELIVERY_STATUS,DELIVERY_DATE,SALESLIP_NO,INCOMPLETE_QUANTITY) values (20241211087,'10001','서울창고','MANGO-12056','아라비카(Arabica)',150,14000,'b3',to_date('24/12/16','RR/MM/DD'),'20241211-181',0);
Insert into SALESLIP_HISTORY (SALES_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,DELIVERY_PRICE,DELIVERY_STATUS,DELIVERY_DATE,SALESLIP_NO,INCOMPLETE_QUANTITY) values (20241211088,'10001','서울창고','MANGO-12060','얇은 빨대(0.7cm)150개입',40,2500,'b1',to_date('24/12/16','RR/MM/DD'),'20241211-181',40);
Insert into SALESLIP_HISTORY (SALES_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,DELIVERY_PRICE,DELIVERY_STATUS,DELIVERY_DATE,SALESLIP_NO,INCOMPLETE_QUANTITY) values (20241211089,'10001','서울창고','MANGO-12062','굵은 빨대(1.0cm)150개입',40,1800,'b1',to_date('24/12/16','RR/MM/DD'),'20241211-182',40);
Insert into SALESLIP_HISTORY (SALES_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,DELIVERY_PRICE,DELIVERY_STATUS,DELIVERY_DATE,SALESLIP_NO,INCOMPLETE_QUANTITY) values (20241211090,'10001','서울창고','MANGO-12057','로부스타(Robusta)',150,6800,'b1',to_date('24/12/16','RR/MM/DD'),'20241211-182',150);
Insert into SALESLIP_HISTORY (SALES_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,DELIVERY_PRICE,DELIVERY_STATUS,DELIVERY_DATE,SALESLIP_NO,INCOMPLETE_QUANTITY) values (20241211091,'10001','서울창고','MANGO-12056','아라비카(Arabica)',150,14000,'b3',to_date('24/12/16','RR/MM/DD'),'20241211-182',0);
Insert into SALESLIP_HISTORY (SALES_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,DELIVERY_PRICE,DELIVERY_STATUS,DELIVERY_DATE,SALESLIP_NO,INCOMPLETE_QUANTITY) values (20241211092,'10001','서울창고','MANGO-12060','얇은 빨대(0.7cm)150개입',40,1600,'b1',to_date('24/12/16','RR/MM/DD'),'20241211-182',40);
Insert into SALESLIP_HISTORY (SALES_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,DELIVERY_PRICE,DELIVERY_STATUS,DELIVERY_DATE,SALESLIP_NO,INCOMPLETE_QUANTITY) values (20241211093,'10001','서울창고','MANGO-12062','굵은 빨대(1.0cm)150개입',40,1800,'b2',to_date('24/12/17','RR/MM/DD'),'20241211-183',30);
Insert into SALESLIP_HISTORY (SALES_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,DELIVERY_PRICE,DELIVERY_STATUS,DELIVERY_DATE,SALESLIP_NO,INCOMPLETE_QUANTITY) values (20241211094,'10001','서울창고','MANGO-12057','로부스타(Robusta)',150,6700,'b2',to_date('24/12/17','RR/MM/DD'),'20241211-183',140);
Insert into SALESLIP_HISTORY (SALES_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,DELIVERY_PRICE,DELIVERY_STATUS,DELIVERY_DATE,SALESLIP_NO,INCOMPLETE_QUANTITY) values (20241211095,'10001','서울창고','MANGO-12056','아라비카(Arabica)',150,14000,'b3',to_date('24/12/17','RR/MM/DD'),'20241211-183',0);
Insert into SALESLIP_HISTORY (SALES_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,DELIVERY_PRICE,DELIVERY_STATUS,DELIVERY_DATE,SALESLIP_NO,INCOMPLETE_QUANTITY) values (20241211096,'10001','서울창고','MANGO-12060','얇은 빨대(0.7cm)150개입',40,1700,'b2',to_date('24/12/17','RR/MM/DD'),'20241211-183',30);
Insert into SALESLIP_HISTORY (SALES_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,DELIVERY_PRICE,DELIVERY_STATUS,DELIVERY_DATE,SALESLIP_NO,INCOMPLETE_QUANTITY) values (20241211097,'10001','서울창고','MANGO-12062','굵은 빨대(1.0cm)150개입',40,1800,'b1',to_date('24/12/17','RR/MM/DD'),'20241211-184',40);
Insert into SALESLIP_HISTORY (SALES_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,DELIVERY_PRICE,DELIVERY_STATUS,DELIVERY_DATE,SALESLIP_NO,INCOMPLETE_QUANTITY) values (20241211098,'10001','서울창고','MANGO-12057','로부스타(Robusta)',150,6800,'b1',to_date('24/12/16','RR/MM/DD'),'20241211-184',150);
Insert into SALESLIP_HISTORY (SALES_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,DELIVERY_PRICE,DELIVERY_STATUS,DELIVERY_DATE,SALESLIP_NO,INCOMPLETE_QUANTITY) values (20241211099,'10001','서울창고','MANGO-12056','아라비카(Arabica)',150,14000,'b3',to_date('24/12/16','RR/MM/DD'),'20241211-184',0);
Insert into SALESLIP_HISTORY (SALES_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,DELIVERY_PRICE,DELIVERY_STATUS,DELIVERY_DATE,SALESLIP_NO,INCOMPLETE_QUANTITY) values (20241211100,'10001','서울창고','MANGO-12060','얇은 빨대(0.7cm)150개입',40,2000,'b1',to_date('24/12/16','RR/MM/DD'),'20241211-184',40);
Insert into SALESLIP_HISTORY (SALES_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,DELIVERY_PRICE,DELIVERY_STATUS,DELIVERY_DATE,SALESLIP_NO,INCOMPLETE_QUANTITY) values (20241211101,'10001','서울창고','MANGO-12062','굵은 빨대(1.0cm)150개입',40,1800,'b1',to_date('24/12/16','RR/MM/DD'),'20241211-185',40);
Insert into SALESLIP_HISTORY (SALES_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,DELIVERY_PRICE,DELIVERY_STATUS,DELIVERY_DATE,SALESLIP_NO,INCOMPLETE_QUANTITY) values (20241211102,'10001','서울창고','MANGO-12057','로부스타(Robusta)',150,6900,'b1',to_date('24/12/16','RR/MM/DD'),'20241211-185',150);
Insert into SALESLIP_HISTORY (SALES_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,DELIVERY_PRICE,DELIVERY_STATUS,DELIVERY_DATE,SALESLIP_NO,INCOMPLETE_QUANTITY) values (20241211103,'10001','서울창고','MANGO-12056','아라비카(Arabica)',150,15000,'b3',to_date('24/12/16','RR/MM/DD'),'20241211-185',0);
Insert into SALESLIP_HISTORY (SALES_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,DELIVERY_PRICE,DELIVERY_STATUS,DELIVERY_DATE,SALESLIP_NO,INCOMPLETE_QUANTITY) values (20241211104,'10001','서울창고','MANGO-12060','얇은 빨대(0.7cm)150개입',40,1750,'b1',to_date('24/12/16','RR/MM/DD'),'20241211-185',40);
Insert into SALESLIP_HISTORY (SALES_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,DELIVERY_PRICE,DELIVERY_STATUS,DELIVERY_DATE,SALESLIP_NO,INCOMPLETE_QUANTITY) values (20241211105,'10001','서울창고','MANGO-12062','굵은 빨대(1.0cm)150개입',40,1700,'b1',to_date('24/12/16','RR/MM/DD'),'20241211-186',40);
Insert into SALESLIP_HISTORY (SALES_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,DELIVERY_PRICE,DELIVERY_STATUS,DELIVERY_DATE,SALESLIP_NO,INCOMPLETE_QUANTITY) values (20241211106,'10001','서울창고','MANGO-12057','로부스타(Robusta)',150,6800,'b1',to_date('24/12/16','RR/MM/DD'),'20241211-186',150);
Insert into SALESLIP_HISTORY (SALES_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,DELIVERY_PRICE,DELIVERY_STATUS,DELIVERY_DATE,SALESLIP_NO,INCOMPLETE_QUANTITY) values (20241211107,'10001','서울창고','MANGO-12056','아라비카(Arabica)',150,14000,'b3',to_date('24/12/16','RR/MM/DD'),'20241211-186',0);
Insert into SALESLIP_HISTORY (SALES_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,DELIVERY_PRICE,DELIVERY_STATUS,DELIVERY_DATE,SALESLIP_NO,INCOMPLETE_QUANTITY) values (20241211108,'10001','서울창고','MANGO-12060','얇은 빨대(0.7cm)150개입',40,1800,'b1',to_date('24/12/16','RR/MM/DD'),'20241211-186',40);
Insert into SALESLIP_HISTORY (SALES_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,DELIVERY_PRICE,DELIVERY_STATUS,DELIVERY_DATE,SALESLIP_NO,INCOMPLETE_QUANTITY) values (20241211109,'10001','서울창고','MANGO-12062','굵은 빨대(1.0cm)150개입',40,1800,'b1',to_date('24/12/16','RR/MM/DD'),'20241211-187',40);
Insert into SALESLIP_HISTORY (SALES_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,DELIVERY_PRICE,DELIVERY_STATUS,DELIVERY_DATE,SALESLIP_NO,INCOMPLETE_QUANTITY) values (20241211110,'10001','서울창고','MANGO-12057','로부스타(Robusta)',150,6800,'b1',to_date('24/12/16','RR/MM/DD'),'20241211-187',150);
Insert into SALESLIP_HISTORY (SALES_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,DELIVERY_PRICE,DELIVERY_STATUS,DELIVERY_DATE,SALESLIP_NO,INCOMPLETE_QUANTITY) values (20241211111,'10001','서울창고','MANGO-12056','아라비카(Arabica)',150,14500,'b3',to_date('24/12/16','RR/MM/DD'),'20241211-187',0);
Insert into SALESLIP_HISTORY (SALES_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,DELIVERY_PRICE,DELIVERY_STATUS,DELIVERY_DATE,SALESLIP_NO,INCOMPLETE_QUANTITY) values (20241211112,'10001','서울창고','MANGO-12060','얇은 빨대(0.7cm)150개입',40,1750,'b1',to_date('24/12/16','RR/MM/DD'),'20241211-187',40);
Insert into SALESLIP_HISTORY (SALES_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,DELIVERY_PRICE,DELIVERY_STATUS,DELIVERY_DATE,SALESLIP_NO,INCOMPLETE_QUANTITY) values (20241211113,'10001','서울창고','MANGO-12062','굵은 빨대(1.0cm)150개입',40,1750,'b1',to_date('24/12/16','RR/MM/DD'),'20241211-188',40);
Insert into SALESLIP_HISTORY (SALES_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,DELIVERY_PRICE,DELIVERY_STATUS,DELIVERY_DATE,SALESLIP_NO,INCOMPLETE_QUANTITY) values (20241211114,'10001','서울창고','MANGO-12057','로부스타(Robusta)',150,6800,'b1',to_date('24/12/16','RR/MM/DD'),'20241211-188',150);
Insert into SALESLIP_HISTORY (SALES_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,DELIVERY_PRICE,DELIVERY_STATUS,DELIVERY_DATE,SALESLIP_NO,INCOMPLETE_QUANTITY) values (20241211115,'10001','서울창고','MANGO-12056','아라비카(Arabica)',150,14000,'b3',to_date('24/12/16','RR/MM/DD'),'20241211-188',0);
Insert into SALESLIP_HISTORY (SALES_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,DELIVERY_PRICE,DELIVERY_STATUS,DELIVERY_DATE,SALESLIP_NO,INCOMPLETE_QUANTITY) values (20241211116,'10001','서울창고','MANGO-12060','얇은 빨대(0.7cm)150개입',40,1750,'b1',to_date('24/12/16','RR/MM/DD'),'20241211-188',40);
Insert into SALESLIP_HISTORY (SALES_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,DELIVERY_PRICE,DELIVERY_STATUS,DELIVERY_DATE,SALESLIP_NO,INCOMPLETE_QUANTITY) values (20241211117,'10001','서울창고','MANGO-12062','굵은 빨대(1.0cm)150개입',40,1750,'b1',to_date('24/12/16','RR/MM/DD'),'20241211-189',40);
Insert into SALESLIP_HISTORY (SALES_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,DELIVERY_PRICE,DELIVERY_STATUS,DELIVERY_DATE,SALESLIP_NO,INCOMPLETE_QUANTITY) values (20241211118,'10001','서울창고','MANGO-12057','로부스타(Robusta)',150,7500,'b1',to_date('24/12/16','RR/MM/DD'),'20241211-189',150);
Insert into SALESLIP_HISTORY (SALES_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,DELIVERY_PRICE,DELIVERY_STATUS,DELIVERY_DATE,SALESLIP_NO,INCOMPLETE_QUANTITY) values (20241211119,'10001','서울창고','MANGO-12056','아라비카(Arabica)',150,14500,'b3',to_date('24/12/16','RR/MM/DD'),'20241211-189',0);
Insert into SALESLIP_HISTORY (SALES_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,DELIVERY_PRICE,DELIVERY_STATUS,DELIVERY_DATE,SALESLIP_NO,INCOMPLETE_QUANTITY) values (20241211120,'10001','서울창고','MANGO-12060','얇은 빨대(0.7cm)150개입',40,1750,'b1',to_date('24/12/16','RR/MM/DD'),'20241211-189',40);
Insert into SALESLIP_HISTORY (SALES_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,DELIVERY_PRICE,DELIVERY_STATUS,DELIVERY_DATE,SALESLIP_NO,INCOMPLETE_QUANTITY) values (20241211121,'10001','서울창고','MANGO-12062','굵은 빨대(1.0cm)150개입',40,1750,'b1',to_date('24/12/16','RR/MM/DD'),'20241211-190',40);
Insert into SALESLIP_HISTORY (SALES_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,DELIVERY_PRICE,DELIVERY_STATUS,DELIVERY_DATE,SALESLIP_NO,INCOMPLETE_QUANTITY) values (20241211122,'10001','서울창고','MANGO-12057','로부스타(Robusta)',150,6800,'b1',to_date('24/12/16','RR/MM/DD'),'20241211-190',150);
Insert into SALESLIP_HISTORY (SALES_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,DELIVERY_PRICE,DELIVERY_STATUS,DELIVERY_DATE,SALESLIP_NO,INCOMPLETE_QUANTITY) values (20241211123,'10001','서울창고','MANGO-12056','아라비카(Arabica)',150,14500,'b3',to_date('24/12/16','RR/MM/DD'),'20241211-190',0);
Insert into SALESLIP_HISTORY (SALES_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,DELIVERY_PRICE,DELIVERY_STATUS,DELIVERY_DATE,SALESLIP_NO,INCOMPLETE_QUANTITY) values (20241211058,'10001','서울창고','MANGO-12060','얇은 빨대(0.7cm)150개입',50,1600,'b3',to_date('24/12/11','RR/MM/DD'),'20241211-138',0);
Insert into SALESLIP_HISTORY (SALES_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,DELIVERY_PRICE,DELIVERY_STATUS,DELIVERY_DATE,SALESLIP_NO,INCOMPLETE_QUANTITY) values (20241211124,'10001','서울창고','MANGO-12060','얇은 빨대(0.7cm)150개입',40,1750,'b1',to_date('24/12/16','RR/MM/DD'),'20241211-190',40);
Insert into SALESLIP_HISTORY (SALES_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,DELIVERY_PRICE,DELIVERY_STATUS,DELIVERY_DATE,SALESLIP_NO,INCOMPLETE_QUANTITY) values (20241211125,'10001','서울창고','MANGO-12062','굵은 빨대(1.0cm)150개입',40,1750,'b1',to_date('24/12/16','RR/MM/DD'),'20241211-191',40);
Insert into SALESLIP_HISTORY (SALES_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,DELIVERY_PRICE,DELIVERY_STATUS,DELIVERY_DATE,SALESLIP_NO,INCOMPLETE_QUANTITY) values (20241211126,'10001','서울창고','MANGO-12057','로부스타(Robusta)',150,7500,'b1',to_date('24/12/16','RR/MM/DD'),'20241211-191',150);
Insert into SALESLIP_HISTORY (SALES_NO,WH_CODE,WH_NAME,ITEM_CODE,ITEM_NAME,QUANTITY,DELIVERY_PRICE,DELIVERY_STATUS,DELIVERY_DATE,SALESLIP_NO,INCOMPLETE_QUANTITY) values (20241211127,'10001','서울창고','MANGO-12056','아라비카(Arabica)',150,14500,'b3',to_date('24/12/16','RR/MM/DD'),'20241211-191',0);
REM INSERTING into SALES_CHIT
SET DEFINE OFF;
Insert into SALES_CHIT (SALESLIP_NO,INSERT_DATE,CLIENT_CODE,CLIENT_NAME,ACC_CODE,DEP_BACCT,SUPPLY_PRICE,SALES_SUMMARY,EMPLOYEE_NAME,EMPLOYEE_CODE,VAT,SLIP_STATE) values ('20241211-138',to_date('24/12/11','RR/MM/DD'),'client22','(주)성심당',null,'02-45641-153212',3240000,null,'권혁태','160',324000,'r2');
Insert into SALES_CHIT (SALESLIP_NO,INSERT_DATE,CLIENT_CODE,CLIENT_NAME,ACC_CODE,DEP_BACCT,SUPPLY_PRICE,SALES_SUMMARY,EMPLOYEE_NAME,EMPLOYEE_CODE,VAT,SLIP_STATE) values ('20241211-154',to_date('24/12/11','RR/MM/DD'),'client32','피차(TEA) 수원점',null,'456-143145416-452',124500000,null,'권혁태','160',12450000,'r2');
Insert into SALES_CHIT (SALESLIP_NO,INSERT_DATE,CLIENT_CODE,CLIENT_NAME,ACC_CODE,DEP_BACCT,SUPPLY_PRICE,SALES_SUMMARY,EMPLOYEE_NAME,EMPLOYEE_CODE,VAT,SLIP_STATE) values ('20241211-155',to_date('24/12/11','RR/MM/DD'),'client33','커피왕국 강남점',null,'02-45641-153212',4780000,null,'권혁태','160',478000,'r1');
Insert into SALES_CHIT (SALESLIP_NO,INSERT_DATE,CLIENT_CODE,CLIENT_NAME,ACC_CODE,DEP_BACCT,SUPPLY_PRICE,SALES_SUMMARY,EMPLOYEE_NAME,EMPLOYEE_CODE,VAT,SLIP_STATE) values ('20241211-159',to_date('24/12/11','RR/MM/DD'),'client34','베이커리하우스',null,'456-143145416-452',19180000,null,'권혁태','160',1918000,'r1');
Insert into SALES_CHIT (SALESLIP_NO,INSERT_DATE,CLIENT_CODE,CLIENT_NAME,ACC_CODE,DEP_BACCT,SUPPLY_PRICE,SALES_SUMMARY,EMPLOYEE_NAME,EMPLOYEE_CODE,VAT,SLIP_STATE) values ('20241211-160',to_date('24/12/11','RR/MM/DD'),'client34','베이커리하우스',null,'456-143145416-452',19030000,null,'권혁태','160',1903000,'r2');
Insert into SALES_CHIT (SALESLIP_NO,INSERT_DATE,CLIENT_CODE,CLIENT_NAME,ACC_CODE,DEP_BACCT,SUPPLY_PRICE,SALES_SUMMARY,EMPLOYEE_NAME,EMPLOYEE_CODE,VAT,SLIP_STATE) values ('20241211-161',to_date('24/12/11','RR/MM/DD'),'client32','피차(TEA) 수원점',null,'02-45641-153212',131510000,null,'권혁태','160',13151000,'r1');
Insert into SALES_CHIT (SALESLIP_NO,INSERT_DATE,CLIENT_CODE,CLIENT_NAME,ACC_CODE,DEP_BACCT,SUPPLY_PRICE,SALES_SUMMARY,EMPLOYEE_NAME,EMPLOYEE_CODE,VAT,SLIP_STATE) values ('20241211-163',to_date('24/12/11','RR/MM/DD'),'client22','(주)성심당',null,'123-4567-8910-02',3385500,null,'남건우','159',338550,'r1');
Insert into SALES_CHIT (SALESLIP_NO,INSERT_DATE,CLIENT_CODE,CLIENT_NAME,ACC_CODE,DEP_BACCT,SUPPLY_PRICE,SALES_SUMMARY,EMPLOYEE_NAME,EMPLOYEE_CODE,VAT,SLIP_STATE) values ('20241211-165',to_date('24/12/11','RR/MM/DD'),'client22','(주)성심당',null,'123-4567-8910-02',3535000,null,'남건우','159',353500,'r1');
Insert into SALES_CHIT (SALESLIP_NO,INSERT_DATE,CLIENT_CODE,CLIENT_NAME,ACC_CODE,DEP_BACCT,SUPPLY_PRICE,SALES_SUMMARY,EMPLOYEE_NAME,EMPLOYEE_CODE,VAT,SLIP_STATE) values ('20241211-176',to_date('24/12/11','RR/MM/DD'),'client22','(주)성심당',null,'123-4567-8910-02',70000,null,'남건우','159',7000,'r2');
Insert into SALES_CHIT (SALESLIP_NO,INSERT_DATE,CLIENT_CODE,CLIENT_NAME,ACC_CODE,DEP_BACCT,SUPPLY_PRICE,SALES_SUMMARY,EMPLOYEE_NAME,EMPLOYEE_CODE,VAT,SLIP_STATE) values ('20241211-180',to_date('24/12/11','RR/MM/DD'),'client22','(주)성심당',null,'123-4567-8910-02',2400000,null,'남건우','159',240000,'r1');
Insert into SALES_CHIT (SALESLIP_NO,INSERT_DATE,CLIENT_CODE,CLIENT_NAME,ACC_CODE,DEP_BACCT,SUPPLY_PRICE,SALES_SUMMARY,EMPLOYEE_NAME,EMPLOYEE_CODE,VAT,SLIP_STATE) values ('20241211-181',to_date('24/12/11','RR/MM/DD'),'client22','(주)성심당',null,'123-4567-8910-02',3307000,null,'남건우','159',330700,'r1');
Insert into SALES_CHIT (SALESLIP_NO,INSERT_DATE,CLIENT_CODE,CLIENT_NAME,ACC_CODE,DEP_BACCT,SUPPLY_PRICE,SALES_SUMMARY,EMPLOYEE_NAME,EMPLOYEE_CODE,VAT,SLIP_STATE) values ('20241211-182',to_date('24/12/11','RR/MM/DD'),'client22','(주)성심당',null,'123-4567-8910-02',3256000,null,'남건우','159',325600,'r1');
Insert into SALES_CHIT (SALESLIP_NO,INSERT_DATE,CLIENT_CODE,CLIENT_NAME,ACC_CODE,DEP_BACCT,SUPPLY_PRICE,SALES_SUMMARY,EMPLOYEE_NAME,EMPLOYEE_CODE,VAT,SLIP_STATE) values ('20241211-183',to_date('24/12/11','RR/MM/DD'),'client22','(주)성심당',null,'123-4567-8910-02',3245000,null,'남건우','159',324500,'r1');
Insert into SALES_CHIT (SALESLIP_NO,INSERT_DATE,CLIENT_CODE,CLIENT_NAME,ACC_CODE,DEP_BACCT,SUPPLY_PRICE,SALES_SUMMARY,EMPLOYEE_NAME,EMPLOYEE_CODE,VAT,SLIP_STATE) values ('20241211-184',to_date('24/12/11','RR/MM/DD'),'client22','(주)성심당',null,'123-4567-8910-02',3272000,null,'남건우','159',327200,'r1');
Insert into SALES_CHIT (SALESLIP_NO,INSERT_DATE,CLIENT_CODE,CLIENT_NAME,ACC_CODE,DEP_BACCT,SUPPLY_PRICE,SALES_SUMMARY,EMPLOYEE_NAME,EMPLOYEE_CODE,VAT,SLIP_STATE) values ('20241211-185',to_date('24/12/11','RR/MM/DD'),'client22','(주)성심당',null,'123-4567-8910-02',3427000,null,'남건우','159',342700,'r1');
Insert into SALES_CHIT (SALESLIP_NO,INSERT_DATE,CLIENT_CODE,CLIENT_NAME,ACC_CODE,DEP_BACCT,SUPPLY_PRICE,SALES_SUMMARY,EMPLOYEE_NAME,EMPLOYEE_CODE,VAT,SLIP_STATE) values ('20241211-186',to_date('24/12/11','RR/MM/DD'),'client22','(주)성심당',null,'123-4567-8910-02',3260000,null,'남건우','159',326000,'r1');
Insert into SALES_CHIT (SALESLIP_NO,INSERT_DATE,CLIENT_CODE,CLIENT_NAME,ACC_CODE,DEP_BACCT,SUPPLY_PRICE,SALES_SUMMARY,EMPLOYEE_NAME,EMPLOYEE_CODE,VAT,SLIP_STATE) values ('20241211-187',to_date('24/12/11','RR/MM/DD'),'client22','(주)성심당',null,'123-4567-8910-02',3337000,null,'남건우','159',333700,'r1');
Insert into SALES_CHIT (SALESLIP_NO,INSERT_DATE,CLIENT_CODE,CLIENT_NAME,ACC_CODE,DEP_BACCT,SUPPLY_PRICE,SALES_SUMMARY,EMPLOYEE_NAME,EMPLOYEE_CODE,VAT,SLIP_STATE) values ('20241211-188',to_date('24/12/11','RR/MM/DD'),'client22','(주)성심당',null,'123-4567-8910-02',3260000,null,'남건우','159',326000,'r1');
Insert into SALES_CHIT (SALESLIP_NO,INSERT_DATE,CLIENT_CODE,CLIENT_NAME,ACC_CODE,DEP_BACCT,SUPPLY_PRICE,SALES_SUMMARY,EMPLOYEE_NAME,EMPLOYEE_CODE,VAT,SLIP_STATE) values ('20241211-189',to_date('24/12/11','RR/MM/DD'),'client22','(주)성심당',null,'02-45641-153212',3440000,null,'서권우','161',344000,'r1');
Insert into SALES_CHIT (SALESLIP_NO,INSERT_DATE,CLIENT_CODE,CLIENT_NAME,ACC_CODE,DEP_BACCT,SUPPLY_PRICE,SALES_SUMMARY,EMPLOYEE_NAME,EMPLOYEE_CODE,VAT,SLIP_STATE) values ('20241211-190',to_date('24/12/11','RR/MM/DD'),'client22','(주)성심당',null,'123-4567-8910-02',3335000,null,'남건우','159',333500,'r1');
Insert into SALES_CHIT (SALESLIP_NO,INSERT_DATE,CLIENT_CODE,CLIENT_NAME,ACC_CODE,DEP_BACCT,SUPPLY_PRICE,SALES_SUMMARY,EMPLOYEE_NAME,EMPLOYEE_CODE,VAT,SLIP_STATE) values ('20241211-191',to_date('24/12/11','RR/MM/DD'),'client22','(주)성심당',null,'123-4567-8910-02',3440000,null,'남건우','159',344000,'r1');
Insert into SALES_CHIT (SALESLIP_NO,INSERT_DATE,CLIENT_CODE,CLIENT_NAME,ACC_CODE,DEP_BACCT,SUPPLY_PRICE,SALES_SUMMARY,EMPLOYEE_NAME,EMPLOYEE_CODE,VAT,SLIP_STATE) values ('20241211-192',to_date('24/12/11','RR/MM/DD'),'client22','(주)성심당',null,'123-4567-8910-02',3440000,null,'남건우','159',344000,'r1');
Insert into SALES_CHIT (SALESLIP_NO,INSERT_DATE,CLIENT_CODE,CLIENT_NAME,ACC_CODE,DEP_BACCT,SUPPLY_PRICE,SALES_SUMMARY,EMPLOYEE_NAME,EMPLOYEE_CODE,VAT,SLIP_STATE) values ('20241211-193',to_date('24/12/11','RR/MM/DD'),'client22','(주)성심당',null,'123-4567-8910-02',3323500,null,'남건우','159',332350,'r1');
Insert into SALES_CHIT (SALESLIP_NO,INSERT_DATE,CLIENT_CODE,CLIENT_NAME,ACC_CODE,DEP_BACCT,SUPPLY_PRICE,SALES_SUMMARY,EMPLOYEE_NAME,EMPLOYEE_CODE,VAT,SLIP_STATE) values ('20241211-194',to_date('24/12/11','RR/MM/DD'),'client22','(주)성심당',null,'123-4567-8910-02',3440000,null,'남건우','159',344000,'r1');
Insert into SALES_CHIT (SALESLIP_NO,INSERT_DATE,CLIENT_CODE,CLIENT_NAME,ACC_CODE,DEP_BACCT,SUPPLY_PRICE,SALES_SUMMARY,EMPLOYEE_NAME,EMPLOYEE_CODE,VAT,SLIP_STATE) values ('20241211-195',to_date('24/12/11','RR/MM/DD'),'client22','(주)성심당',null,'123-4567-8910-02',3327500,null,'남건우','159',332750,'r2');
Insert into SALES_CHIT (SALESLIP_NO,INSERT_DATE,CLIENT_CODE,CLIENT_NAME,ACC_CODE,DEP_BACCT,SUPPLY_PRICE,SALES_SUMMARY,EMPLOYEE_NAME,EMPLOYEE_CODE,VAT,SLIP_STATE) values ('20241212-199',to_date('24/12/12','RR/MM/DD'),'client22','(주)성심당',null,'02-45641-153212',1130000,null,'권혁태','160',113000,'r1');
Insert into SALES_CHIT (SALESLIP_NO,INSERT_DATE,CLIENT_CODE,CLIENT_NAME,ACC_CODE,DEP_BACCT,SUPPLY_PRICE,SALES_SUMMARY,EMPLOYEE_NAME,EMPLOYEE_CODE,VAT,SLIP_STATE) values ('20241212-200',to_date('24/12/12','RR/MM/DD'),'client22','(주)성심당',null,'02-45641-153212',1130000,null,'권혁태','160',113000,'r1');
Insert into SALES_CHIT (SALESLIP_NO,INSERT_DATE,CLIENT_CODE,CLIENT_NAME,ACC_CODE,DEP_BACCT,SUPPLY_PRICE,SALES_SUMMARY,EMPLOYEE_NAME,EMPLOYEE_CODE,VAT,SLIP_STATE) values ('20241212-201',to_date('24/12/12','RR/MM/DD'),'client22','(주)성심당',null,'02-45641-153212',2070000,null,'권혁태','160',207000,'r2');
Insert into SALES_CHIT (SALESLIP_NO,INSERT_DATE,CLIENT_CODE,CLIENT_NAME,ACC_CODE,DEP_BACCT,SUPPLY_PRICE,SALES_SUMMARY,EMPLOYEE_NAME,EMPLOYEE_CODE,VAT,SLIP_STATE) values ('20241212-202',to_date('24/12/12','RR/MM/DD'),'client22','(주)성심당',null,'02-45641-153212',2770000,null,'권혁태','160',277000,'r2');
Insert into SALES_CHIT (SALESLIP_NO,INSERT_DATE,CLIENT_CODE,CLIENT_NAME,ACC_CODE,DEP_BACCT,SUPPLY_PRICE,SALES_SUMMARY,EMPLOYEE_NAME,EMPLOYEE_CODE,VAT,SLIP_STATE) values ('20241212-204',to_date('24/12/12','RR/MM/DD'),'client22','(주)성심당',null,'123-4567-8910-02',2035000,null,'남건우','159',203500,'r1');
Insert into SALES_CHIT (SALESLIP_NO,INSERT_DATE,CLIENT_CODE,CLIENT_NAME,ACC_CODE,DEP_BACCT,SUPPLY_PRICE,SALES_SUMMARY,EMPLOYEE_NAME,EMPLOYEE_CODE,VAT,SLIP_STATE) values ('20241212-205',to_date('24/12/12','RR/MM/DD'),'client22','(주)성심당',null,'123-4567-8910-02',1284500,null,'남건우','159',128450,'r1');
Insert into SALES_CHIT (SALESLIP_NO,INSERT_DATE,CLIENT_CODE,CLIENT_NAME,ACC_CODE,DEP_BACCT,SUPPLY_PRICE,SALES_SUMMARY,EMPLOYEE_NAME,EMPLOYEE_CODE,VAT,SLIP_STATE) values ('20241213-209',to_date('24/12/13','RR/MM/DD'),'client22','(주)성심당',null,'02-45641-153212',9667400,null,'권혁태','160',966740,'r1');
Insert into SALES_CHIT (SALESLIP_NO,INSERT_DATE,CLIENT_CODE,CLIENT_NAME,ACC_CODE,DEP_BACCT,SUPPLY_PRICE,SALES_SUMMARY,EMPLOYEE_NAME,EMPLOYEE_CODE,VAT,SLIP_STATE) values ('20241213-210',to_date('24/12/13','RR/MM/DD'),'client22','(주)성심당',null,'02-45641-153212',1118000,null,'권혁태','160',111800,'r1');
Insert into SALES_CHIT (SALESLIP_NO,INSERT_DATE,CLIENT_CODE,CLIENT_NAME,ACC_CODE,DEP_BACCT,SUPPLY_PRICE,SALES_SUMMARY,EMPLOYEE_NAME,EMPLOYEE_CODE,VAT,SLIP_STATE) values ('20241216-219',to_date('24/12/16','RR/MM/DD'),'client22','(주)성심당',null,'455-874352-123',1130000,null,'권혁태','160',113000,'r1');
Insert into SALES_CHIT (SALESLIP_NO,INSERT_DATE,CLIENT_CODE,CLIENT_NAME,ACC_CODE,DEP_BACCT,SUPPLY_PRICE,SALES_SUMMARY,EMPLOYEE_NAME,EMPLOYEE_CODE,VAT,SLIP_STATE) values ('20241213-213',to_date('24/12/13','RR/MM/DD'),'client22','(주)성심당',null,'02-45641-153212',1239000,null,'권혁태','160',123900,'r1');
Insert into SALES_CHIT (SALESLIP_NO,INSERT_DATE,CLIENT_CODE,CLIENT_NAME,ACC_CODE,DEP_BACCT,SUPPLY_PRICE,SALES_SUMMARY,EMPLOYEE_NAME,EMPLOYEE_CODE,VAT,SLIP_STATE) values ('20241215-218',to_date('24/12/15','RR/MM/DD'),'client22','(주)성심당',null,'8551-453214-452-423',1082500,null,'권혁태','160',108250,'r1');
REM INSERTING into SEQ
SET DEFINE OFF;
REM INSERTING into STOCKS
SET DEFINE OFF;
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211359,15,'상품 입고','10001',to_date('24/12/11','RR/MM/DD'),'ITEM-6001','20241211048','d1','159',85,20241211204);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211360,50,'상품 입고','10001',to_date('24/12/11','RR/MM/DD'),'ITEM-7002','20241211055','d1','159',0,20241211205);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211361,50,'상품 입고','10001',to_date('24/12/11','RR/MM/DD'),'ITEM-7001','20241211056','d1','159',0,20241211205);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211362,50,'상품 입고','10001',to_date('24/12/11','RR/MM/DD'),'ITEM-4002','20241211053','d1','159',0,20241211205);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211363,50,'상품 입고','10001',to_date('24/12/11','RR/MM/DD'),'MANGO-12068','20241211052','d1','159',0,20241211205);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211364,50,'상품 입고','10001',to_date('24/12/11','RR/MM/DD'),'MANGO-12069','20241211051','d1','159',0,20241211205);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211365,50,'상품 입고','10001',to_date('24/12/11','RR/MM/DD'),'ITEM-4001','20241211054','d1','159',0,20241211205);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211366,20,'상품 입고','10001',to_date('24/12/11','RR/MM/DD'),'ITEM-7002','20241211055','d1','159',50,20241211206);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211367,20,'상품 입고','10001',to_date('24/12/11','RR/MM/DD'),'MANGO-12069','20241211051','d1','159',50,20241211206);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211368,20,'상품 입고','10001',to_date('24/12/11','RR/MM/DD'),'ITEM-7001','20241211056','d1','159',50,20241211206);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211369,20,'상품 입고','10001',to_date('24/12/11','RR/MM/DD'),'ITEM-4001','20241211054','d1','159',50,20241211206);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211370,20,'상품 입고','10001',to_date('24/12/11','RR/MM/DD'),'ITEM-4002','20241211053','d1','159',50,20241211206);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211371,20,'상품 입고','10001',to_date('24/12/11','RR/MM/DD'),'MANGO-12068','20241211052','d1','159',50,20241211206);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211372,25,'상품 입고','10001',to_date('24/12/11','RR/MM/DD'),'ITEM-7002','20241211055','d1','159',70,20241211207);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211373,25,'상품 입고','10001',to_date('24/12/11','RR/MM/DD'),'MANGO-12069','20241211051','d1','159',70,20241211207);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211374,25,'상품 입고','10001',to_date('24/12/11','RR/MM/DD'),'ITEM-7001','20241211056','d1','159',70,20241211207);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211375,25,'상품 입고','10001',to_date('24/12/11','RR/MM/DD'),'ITEM-4001','20241211054','d1','159',70,20241211207);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211376,25,'상품 입고','10001',to_date('24/12/11','RR/MM/DD'),'ITEM-4002','20241211053','d1','159',70,20241211207);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211377,25,'상품 입고','10001',to_date('24/12/11','RR/MM/DD'),'MANGO-12068','20241211052','d1','159',70,20241211207);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211378,5,'상품 입고','10001',to_date('24/12/11','RR/MM/DD'),'ITEM-7002','20241211055','d1','159',95,20241211208);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211379,5,'상품 입고','10001',to_date('24/12/11','RR/MM/DD'),'MANGO-12069','20241211051','d1','159',95,20241211208);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211380,5,'상품 입고','10001',to_date('24/12/11','RR/MM/DD'),'ITEM-7001','20241211056','d1','159',95,20241211208);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211381,5,'상품 입고','10001',to_date('24/12/11','RR/MM/DD'),'ITEM-4001','20241211054','d1','159',95,20241211208);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211382,5,'상품 입고','10001',to_date('24/12/11','RR/MM/DD'),'ITEM-4002','20241211053','d1','159',95,20241211208);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211383,5,'상품 입고','10001',to_date('24/12/11','RR/MM/DD'),'MANGO-12068','20241211052','d1','159',95,20241211208);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211384,1000,'상품 입고','10001',to_date('24/12/11','RR/MM/DD'),'MANGO-13006','20241211057','d1','159',0,20241211209);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211385,1000,'상품 입고','10001',to_date('24/12/11','RR/MM/DD'),'MANGO-13005','20241211058','d1','159',0,20241211209);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211386,500,'상품 입고','10001',to_date('24/12/11','RR/MM/DD'),'ITEM-3002','20241211059','d1','159',0,20241211210);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211387,500,'상품 입고','10002',to_date('24/12/11','RR/MM/DD'),'ITEM-3001','20241211060','d1','159',0,20241211210);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211388,1000,'상품 입고','10001',to_date('24/12/11','RR/MM/DD'),'MANGO-12055','20241211063','d1','160',null,20241211211);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211389,1000,'상품 입고','10001',to_date('24/12/11','RR/MM/DD'),'ITEM-1001','20241211062','d1','160',null,20241211211);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211390,1000,'상품 입고','10001',to_date('24/12/11','RR/MM/DD'),'ITEM-1002','20241211061','d1','160',null,20241211211);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211391,500,'상품 입고','10002',to_date('24/12/11','RR/MM/DD'),'ITEM-3001','20241211060','d1','159',null,20241211211);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211392,500,'상품 입고','10001',to_date('24/12/11','RR/MM/DD'),'ITEM-3002','20241211059','d1','159',null,20241211211);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211393,1000,'상품 입고','10001',to_date('24/12/11','RR/MM/DD'),'ITEM-3001','20241211065','d1','160',null,20241211212);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211394,1000,'상품 입고','10001',to_date('24/12/11','RR/MM/DD'),'ITEM-3002','20241211064','d1','160',null,20241211212);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211395,20,'상품 출고','10001',to_date('24/12/11','RR/MM/DD'),'ITEM-1001','20241211062','d2','160',1060,20241211213);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211396,10,'상품 출고','10001',to_date('24/12/11','RR/MM/DD'),'ITEM-1001','20241211062','d2','160',1040,20241211214);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211397,10,'상품 출고','10001',to_date('24/12/11','RR/MM/DD'),'MANGO-13004','20241211063','d2','160',100,20241211214);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211398,10,'상품 출고','10001',to_date('24/12/11','RR/MM/DD'),'ITEM-3001','20241211064','d2','160',1000,20241211214);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211399,100,'상품 출고','10001',to_date('24/12/11','RR/MM/DD'),'ITEM-1001','20241211062','d2','160',1030,20241211215);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211400,40,'상품 출고','10001',to_date('24/12/11','RR/MM/DD'),'MANGO-13004','20241211063','d2','160',90,20241211215);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211401,20,'상품 출고','10001',to_date('24/12/11','RR/MM/DD'),'ITEM-3001','20241211064','d2','160',990,20241211215);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211402,20,'상품 출고','10001',to_date('24/12/11','RR/MM/DD'),'ITEM-1001','20241211062','d2','160',930,20241211216);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211403,500,'상품 입고','10001',to_date('24/12/11','RR/MM/DD'),'ITEM-7005','20241211071','d1','160',100,20241211217);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211404,500,'상품 입고','10001',to_date('24/12/11','RR/MM/DD'),'MANGO-13003','20241211067','d1','160',100,20241211217);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211405,500,'상품 입고','10001',to_date('24/12/11','RR/MM/DD'),'MANGO-13004','20241211066','d1','160',50,20241211217);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211406,500,'상품 입고','10001',to_date('24/12/11','RR/MM/DD'),'ITEM-6002','20241211068','d1','160',100,20241211217);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211407,500,'상품 입고','10001',to_date('24/12/11','RR/MM/DD'),'ITEM-7006','20241211070','d1','160',100,20241211217);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211408,500,'상품 입고','10001',to_date('24/12/11','RR/MM/DD'),'ITEM-6001','20241211069','d1','160',100,20241211217);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211409,500,'상품 입고','10001',to_date('24/12/11','RR/MM/DD'),'ITEM-7005','20241211071','d1','160',600,20241211218);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211410,500,'상품 입고','10001',to_date('24/12/11','RR/MM/DD'),'MANGO-13003','20241211067','d1','160',600,20241211218);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211411,500,'상품 입고','10001',to_date('24/12/11','RR/MM/DD'),'MANGO-13004','20241211066','d1','160',550,20241211218);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211412,500,'상품 입고','10001',to_date('24/12/11','RR/MM/DD'),'ITEM-6002','20241211068','d1','160',600,20241211218);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211413,500,'상품 입고','10001',to_date('24/12/11','RR/MM/DD'),'ITEM-7006','20241211070','d1','160',600,20241211218);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211414,500,'상품 입고','10001',to_date('24/12/11','RR/MM/DD'),'ITEM-6001','20241211069','d1','160',600,20241211218);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211415,100,'상품 입고','10001',to_date('24/12/11','RR/MM/DD'),'ITEM-1001','20241211073','d1','160',null,20241211219);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211416,100,'상품 입고','10001',to_date('24/12/11','RR/MM/DD'),'ITEM-1002','20241211072','d1','160',null,20241211219);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211417,100,'상품 입고','10001',to_date('24/12/11','RR/MM/DD'),'MANGO-12055','20241211074','d1','160',null,20241211219);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211418,150,'상품 입고','10001',to_date('24/12/11','RR/MM/DD'),'ITEM-5002','20241211075','d1','160',null,20241211220);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211419,21,'상품 출고','10001',to_date('24/12/11','RR/MM/DD'),'ITEM-5001','20241211066','d2','160',100,20241211221);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211420,15,'상품 출고','10001',to_date('24/12/11','RR/MM/DD'),'ITEM-5002','20241211065','d2','160',150,20241211221);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211421,5,'상품 출고','10001',to_date('24/12/11','RR/MM/DD'),'ITEM-6002','20241211067','d2','160',1100,20241211221);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211422,100,'상품 입고','10002',to_date('24/12/11','RR/MM/DD'),'MANGO-12062','20241211076','d1','159',null,20241211222);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211423,100,'상품 입고','10002',to_date('24/12/11','RR/MM/DD'),'MANGO-12060','20241211078','d1','159',null,20241211222);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211424,100,'상품 입고','10002',to_date('24/12/11','RR/MM/DD'),'MANGO-12061','20241211077','d1','159',null,20241211222);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211425,100,'상품 입고','10002',to_date('24/12/11','RR/MM/DD'),'MANGO-12061','20241211077','d1','159',100,20241211223);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211426,100,'상품 입고','10002',to_date('24/12/11','RR/MM/DD'),'MANGO-12062','20241211076','d1','159',300,20241211223);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211427,100,'상품 입고','10002',to_date('24/12/11','RR/MM/DD'),'MANGO-12060','20241211078','d1','159',100,20241211223);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211428,50,'상품 입고','10001',to_date('24/12/11','RR/MM/DD'),'MANGO-12062','20241211079','d1','160',450,20241211224);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211429,80,'상품 출고','10001',to_date('24/12/11','RR/MM/DD'),'MANGO-12057','20241211076','d2','159',450,20241211225);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211430,20,'상품 출고','10002',to_date('24/12/11','RR/MM/DD'),'MANGO-12062','20241211075','d2','159',400,20241211225);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211431,20,'상품 출고','10002',to_date('24/12/11','RR/MM/DD'),'MANGO-12060','20241211078','d2','159',200,20241211225);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211432,40,'상품 출고','10001',to_date('24/12/11','RR/MM/DD'),'MANGO-12056','20241211077','d2','159',450,20241211225);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211433,50,'상품 출고','10001',to_date('24/12/11','RR/MM/DD'),'MANGO-13004','20241211073','d2','160',1050,20241211225);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211434,50,'상품 출고','10001',to_date('24/12/11','RR/MM/DD'),'ITEM-1001','20241211071','d2','160',1010,20241211225);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211435,3,'상품 출고','10001',to_date('24/12/11','RR/MM/DD'),'ITEM-6002','20241211070','d2','160',1095,20241211225);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211436,8,'상품 출고','10001',to_date('24/12/11','RR/MM/DD'),'ITEM-5002','20241211068','d2','160',135,20241211225);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211437,5,'상품 출고','10001',to_date('24/12/11','RR/MM/DD'),'ITEM-6002','20241211072','d2','160',1095,20241211225);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211438,50,'상품 출고','10001',to_date('24/12/11','RR/MM/DD'),'MANGO-12060','20241211074','d2','160',450,20241211225);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211439,50,'상품 입고','10001',to_date('24/12/11','RR/MM/DD'),'MANGO-12062','20241211079','d1','160',500,20241211225);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211440,110,'상품 출고','10001',to_date('24/12/11','RR/MM/DD'),'MANGO-12056','20241211077','d2','159',410,20241211226);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211441,50,'상품 출고','10001',to_date('24/12/11','RR/MM/DD'),'MANGO-13004','20241211073','d2','160',1000,20241211226);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211442,100,'상품 출고','10001',to_date('24/12/11','RR/MM/DD'),'ITEM-1001','20241211071','d2','160',960,20241211226);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211443,2,'상품 출고','10001',to_date('24/12/11','RR/MM/DD'),'ITEM-6002','20241211070','d2','160',1087,20241211226);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241210276,50,'상품 입고','10001',to_date('24/12/10','RR/MM/DD'),'MANGO-12056','20241210023','d1','160',50,20241210183);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241210277,20,'상품 입고','10001',to_date('24/12/10','RR/MM/DD'),'MANGO-12057','20241210024','d1','160',50,20241210184);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241210278,1,'상품 입고','10001',to_date('24/12/10','RR/MM/DD'),'MANGO-12057','20241210024','d1','160',70,20241210185);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241210279,1,'상품 입고','10001',to_date('24/12/10','RR/MM/DD'),'MANGO-12057','20241210024','d1','160',71,20241210186);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241210280,18,'상품 입고','10001',to_date('24/12/10','RR/MM/DD'),'MANGO-12057','20241210024','d1','160',72,20241210187);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211281,10,'상품 입고','10001',to_date('24/12/11','RR/MM/DD'),'MANGO-12057','20241210024','d1','160',90,20241211188);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211282,500,'상품 입고','10001',to_date('24/12/11','RR/MM/DD'),'MANGO-12056','20241211025','d1','160',100,20241211189);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211283,500,'상품 입고','10001',to_date('24/12/11','RR/MM/DD'),'MANGO-12057','20241211026','d1','160',100,20241211189);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211284,500,'상품 입고','10001',to_date('24/12/11','RR/MM/DD'),'MANGO-12062','20241211027','d1','160',null,20241211190);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211285,500,'상품 입고','10001',to_date('24/12/11','RR/MM/DD'),'MANGO-12061','20241211028','d1','160',null,20241211190);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211286,500,'상품 입고','10001',to_date('24/12/11','RR/MM/DD'),'MANGO-12060','20241211029','d1','160',null,20241211190);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211287,100,'상품 입고','10002',to_date('24/12/11','RR/MM/DD'),'MANGO-12062','20241211030','d1','160',0,20241211191);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211288,200,'상품 입고','10001',to_date('24/12/11','RR/MM/DD'),'MANGO-12061','20241211031','d1','160',500,20241211191);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211289,10,'상품 입고','10001',to_date('24/12/11','RR/MM/DD'),'ITEM-1001','20241211037','d1','160',0,20241211192);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211290,10,'상품 입고','10001',to_date('24/12/11','RR/MM/DD'),'ITEM-1002','20241211036','d1','160',0,20241211192);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211291,10,'상품 입고','10001',to_date('24/12/11','RR/MM/DD'),'MANGO-12055','20241211038','d1','160',0,20241211192);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211292,30,'상품 입고','10001',to_date('24/12/11','RR/MM/DD'),'MANGO-12055','20241211035','d1','160',0,20241211192);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211293,30,'상품 입고','10001',to_date('24/12/11','RR/MM/DD'),'ITEM-1001','20241211034','d1','160',0,20241211192);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211294,30,'상품 입고','10001',to_date('24/12/11','RR/MM/DD'),'ITEM-1002','20241211033','d1','160',0,20241211192);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211295,20,'상품 입고','10002',to_date('24/12/11','RR/MM/DD'),'MANGO-12069','20241211032','d1','159',0,20241211192);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211296,100,'상품 입고','10002',to_date('24/12/11','RR/MM/DD'),'MANGO-12062','20241211030','d1','160',100,20241211192);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211297,200,'상품 입고','10001',to_date('24/12/11','RR/MM/DD'),'MANGO-12061','20241211031','d1','160',700,20241211192);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211298,20,'상품 입고','10001',to_date('24/12/11','RR/MM/DD'),'ITEM-1001','20241211034','d1','160',40,20241211193);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211299,20,'상품 입고','10001',to_date('24/12/11','RR/MM/DD'),'ITEM-1002','20241211033','d1','160',40,20241211193);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211300,20,'상품 입고','10001',to_date('24/12/11','RR/MM/DD'),'MANGO-12055','20241211035','d1','160',40,20241211193);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211301,25,'상품 출고','10001',to_date('24/12/11','RR/MM/DD'),'MANGO-12060','20241211058','d2','160',500,20241211194);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211302,100,'상품 출고','10001',to_date('24/12/11','RR/MM/DD'),'MANGO-12056','20241211061','d2','160',600,20241211194);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211303,25,'상품 출고','10001',to_date('24/12/11','RR/MM/DD'),'MANGO-12062','20241211059','d2','160',500,20241211194);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211304,100,'상품 출고','10001',to_date('24/12/11','RR/MM/DD'),'MANGO-12057','20241211060','d2','160',600,20241211194);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211305,15,'상품 출고','10001',to_date('24/12/11','RR/MM/DD'),'MANGO-12060','20241211058','d2','160',475,20241211195);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211306,30,'상품 출고','10001',to_date('24/12/11','RR/MM/DD'),'MANGO-12056','20241211061','d2','160',500,20241211195);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241210274,50,'상품 입고','10001',to_date('24/12/10','RR/MM/DD'),'MANGO-12056','20241210023','d1','160',0,20241210178);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241210275,50,'상품 입고','10001',to_date('24/12/10','RR/MM/DD'),'MANGO-12057','20241210024','d1','160',0,20241210178);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211307,15,'상품 출고','10001',to_date('24/12/11','RR/MM/DD'),'MANGO-12062','20241211059','d2','160',475,20241211195);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211308,30,'상품 출고','10001',to_date('24/12/11','RR/MM/DD'),'MANGO-12057','20241211060','d2','160',500,20241211195);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211309,10,'상품 출고','10001',to_date('24/12/11','RR/MM/DD'),'MANGO-12060','20241211058','d2','160',460,20241211196);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211310,20,'상품 출고','10001',to_date('24/12/11','RR/MM/DD'),'MANGO-12056','20241211061','d2','160',470,20241211196);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211311,10,'상품 출고','10001',to_date('24/12/11','RR/MM/DD'),'MANGO-12062','20241211059','d2','160',460,20241211196);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211312,20,'상품 출고','10001',to_date('24/12/11','RR/MM/DD'),'MANGO-12057','20241211060','d2','160',470,20241211196);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211313,50,'상품 입고','10001',to_date('24/12/11','RR/MM/DD'),'ITEM-5001','20241211042','d1','159',0,20241211197);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211314,50,'상품 입고','10002',to_date('24/12/11','RR/MM/DD'),'ITEM-7003','20241211044','d1','159',0,20241211197);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211315,50,'상품 입고','10001',to_date('24/12/11','RR/MM/DD'),'MANGO-13002','20241211039','d1','159',0,20241211197);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211316,50,'상품 입고','10002',to_date('24/12/11','RR/MM/DD'),'ITEM-7004','20241211043','d1','159',0,20241211197);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211317,50,'상품 입고','10002',to_date('24/12/11','RR/MM/DD'),'MANGO-13001','20241211040','d1','159',0,20241211197);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211318,50,'상품 입고','10002',to_date('24/12/11','RR/MM/DD'),'ITEM-5002','20241211041','d1','159',0,20241211197);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211319,10,'상품 입고','10001',to_date('24/12/11','RR/MM/DD'),'ITEM-5001','20241211042','d1','159',50,20241211198);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211320,10,'상품 입고','10002',to_date('24/12/11','RR/MM/DD'),'ITEM-5002','20241211041','d1','159',50,20241211198);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211321,10,'상품 입고','10001',to_date('24/12/11','RR/MM/DD'),'MANGO-13002','20241211039','d1','159',50,20241211198);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211322,10,'상품 입고','10002',to_date('24/12/11','RR/MM/DD'),'ITEM-7004','20241211043','d1','159',50,20241211198);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211323,10,'상품 입고','10002',to_date('24/12/11','RR/MM/DD'),'MANGO-13001','20241211040','d1','159',50,20241211198);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211324,10,'상품 입고','10002',to_date('24/12/11','RR/MM/DD'),'ITEM-7003','20241211044','d1','159',50,20241211198);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211325,30,'상품 입고','10001',to_date('24/12/11','RR/MM/DD'),'ITEM-5001','20241211042','d1','159',60,20241211199);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211326,30,'상품 입고','10002',to_date('24/12/11','RR/MM/DD'),'ITEM-5002','20241211041','d1','159',60,20241211199);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211327,30,'상품 입고','10001',to_date('24/12/11','RR/MM/DD'),'MANGO-13002','20241211039','d1','159',60,20241211199);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211328,35,'상품 입고','10002',to_date('24/12/11','RR/MM/DD'),'ITEM-7004','20241211043','d1','159',60,20241211199);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211329,15,'상품 입고','10002',to_date('24/12/11','RR/MM/DD'),'MANGO-13001','20241211040','d1','159',60,20241211199);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211330,40,'상품 입고','10002',to_date('24/12/11','RR/MM/DD'),'ITEM-7003','20241211044','d1','159',60,20241211199);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211331,10,'상품 입고','10001',to_date('24/12/11','RR/MM/DD'),'ITEM-5001','20241211042','d1','159',90,20241211200);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211332,10,'상품 입고','10002',to_date('24/12/11','RR/MM/DD'),'ITEM-5002','20241211041','d1','159',90,20241211200);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211333,10,'상품 입고','10001',to_date('24/12/11','RR/MM/DD'),'MANGO-13002','20241211039','d1','159',90,20241211200);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211334,25,'상품 입고','10002',to_date('24/12/11','RR/MM/DD'),'MANGO-13001','20241211040','d1','159',75,20241211200);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211335,5,'상품 입고','10002',to_date('24/12/11','RR/MM/DD'),'ITEM-7004','20241211043','d1','159',95,20241211200);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211336,20,'상품 입고','10001',to_date('24/12/11','RR/MM/DD'),'ITEM-7005','20241211050','d1','159',0,20241211201);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211337,20,'상품 입고','10001',to_date('24/12/11','RR/MM/DD'),'MANGO-13003','20241211046','d1','159',0,20241211201);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211338,20,'상품 입고','10001',to_date('24/12/11','RR/MM/DD'),'ITEM-6001','20241211048','d1','159',0,20241211201);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211339,20,'상품 입고','10001',to_date('24/12/11','RR/MM/DD'),'ITEM-7006','20241211049','d1','159',0,20241211201);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211340,20,'상품 입고','10001',to_date('24/12/11','RR/MM/DD'),'MANGO-13004','20241211045','d1','159',0,20241211201);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211341,20,'상품 입고','10001',to_date('24/12/11','RR/MM/DD'),'ITEM-6002','20241211047','d1','159',0,20241211201);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211342,50,'상품 입고','10001',to_date('24/12/11','RR/MM/DD'),'ITEM-7005','20241211050','d1','159',20,20241211202);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211343,50,'상품 입고','10001',to_date('24/12/11','RR/MM/DD'),'MANGO-13003','20241211046','d1','159',20,20241211202);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211344,50,'상품 입고','10001',to_date('24/12/11','RR/MM/DD'),'MANGO-13004','20241211045','d1','159',20,20241211202);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211345,50,'상품 입고','10001',to_date('24/12/11','RR/MM/DD'),'ITEM-6002','20241211047','d1','159',20,20241211202);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211346,50,'상품 입고','10001',to_date('24/12/11','RR/MM/DD'),'ITEM-7006','20241211049','d1','159',20,20241211202);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211347,50,'상품 입고','10001',to_date('24/12/11','RR/MM/DD'),'ITEM-6001','20241211048','d1','159',20,20241211202);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211348,15,'상품 입고','10001',to_date('24/12/11','RR/MM/DD'),'ITEM-7005','20241211050','d1','159',70,20241211203);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211349,15,'상품 입고','10001',to_date('24/12/11','RR/MM/DD'),'MANGO-13003','20241211046','d1','159',70,20241211203);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211350,15,'상품 입고','10001',to_date('24/12/11','RR/MM/DD'),'MANGO-13004','20241211045','d1','159',70,20241211203);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211351,15,'상품 입고','10001',to_date('24/12/11','RR/MM/DD'),'ITEM-6002','20241211047','d1','159',70,20241211203);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211352,15,'상품 입고','10001',to_date('24/12/11','RR/MM/DD'),'ITEM-7006','20241211049','d1','159',70,20241211203);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211353,15,'상품 입고','10001',to_date('24/12/11','RR/MM/DD'),'ITEM-6001','20241211048','d1','159',70,20241211203);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211354,15,'상품 입고','10001',to_date('24/12/11','RR/MM/DD'),'ITEM-7005','20241211050','d1','159',85,20241211204);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211355,15,'상품 입고','10001',to_date('24/12/11','RR/MM/DD'),'MANGO-13003','20241211046','d1','159',85,20241211204);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211356,15,'상품 입고','10001',to_date('24/12/11','RR/MM/DD'),'MANGO-13004','20241211045','d1','159',85,20241211204);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211357,15,'상품 입고','10001',to_date('24/12/11','RR/MM/DD'),'ITEM-6002','20241211047','d1','159',85,20241211204);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211358,15,'상품 입고','10001',to_date('24/12/11','RR/MM/DD'),'ITEM-7006','20241211049','d1','159',85,20241211204);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211444,50,'상품 출고','10001',to_date('24/12/11','RR/MM/DD'),'MANGO-12060','20241211074','d2','160',400,20241211226);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211445,1,'상품 출고','10002',to_date('24/12/11','RR/MM/DD'),'MANGO-12060','20241211078','d2','159',180,20241211227);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211446,1,'상품 출고','10001',to_date('24/12/11','RR/MM/DD'),'MANGO-12057','20241211076','d2','159',370,20241211227);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211447,20,'상품 출고','10002',to_date('24/12/11','RR/MM/DD'),'MANGO-12062','20241211075','d2','159',380,20241211227);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211448,21,'상품 출고','10001',to_date('24/12/11','RR/MM/DD'),'ITEM-5001','20241211069','d2','160',79,20241211227);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211449,7,'상품 출고','10001',to_date('24/12/11','RR/MM/DD'),'ITEM-5002','20241211068','d2','160',127,20241211227);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211450,19,'상품 출고','10002',to_date('24/12/11','RR/MM/DD'),'MANGO-12060','20241211078','d2','159',179,20241211228);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211451,59,'상품 출고','10001',to_date('24/12/11','RR/MM/DD'),'MANGO-12057','20241211076','d2','159',369,20241211228);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211452,10,'상품 출고','10001',to_date('24/12/11','RR/MM/DD'),'MANGO-12057','20241211076','d2','159',310,20241211229);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211453,150,'상품 출고','10001',to_date('24/12/11','RR/MM/DD'),'MANGO-12057','20241211080','d2','159',310,20241211229);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211454,40,'상품 출고','10002',to_date('24/12/11','RR/MM/DD'),'MANGO-12060','20241211082','d2','159',160,20241211229);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211455,150,'상품 출고','10001',to_date('24/12/11','RR/MM/DD'),'MANGO-12056','20241211081','d2','159',300,20241211229);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211456,40,'상품 출고','10001',to_date('24/12/11','RR/MM/DD'),'MANGO-12062','20241211079','d2','159',550,20241211229);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211457,800,'상품 입고','10002',to_date('24/12/11','RR/MM/DD'),'MANGO-13005','20241211098','d1','159',0,20241211230);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211458,800,'상품 입고','10002',to_date('24/12/11','RR/MM/DD'),'MANGO-13006','20241211097','d1','159',0,20241211230);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211459,200,'상품 입고','10001',to_date('24/12/11','RR/MM/DD'),'MANGO-12069','20241211091','d1','159',100,20241211230);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211460,200,'상품 입고','10001',to_date('24/12/11','RR/MM/DD'),'ITEM-4001','20241211094','d1','159',100,20241211230);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211461,200,'상품 입고','10001',to_date('24/12/11','RR/MM/DD'),'ITEM-7001','20241211096','d1','159',100,20241211230);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211462,200,'상품 입고','10001',to_date('24/12/11','RR/MM/DD'),'ITEM-7002','20241211095','d1','159',100,20241211230);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211463,10,'상품 입고','10001',to_date('24/12/11','RR/MM/DD'),'MANGO-12068','20241211092','d1','159',100,20241211230);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211464,200,'상품 입고','10001',to_date('24/12/11','RR/MM/DD'),'ITEM-4002','20241211093','d1','159',100,20241211230);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211465,1000,'상품 입고','10002',to_date('24/12/11','RR/MM/DD'),'ITEM-1001','20241211089','d1','159',0,20241211230);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211466,1000,'상품 입고','10002',to_date('24/12/11','RR/MM/DD'),'ITEM-1002','20241211088','d1','159',0,20241211230);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211467,1000,'상품 입고','10002',to_date('24/12/11','RR/MM/DD'),'MANGO-12055','20241211090','d1','159',0,20241211230);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211468,2000,'상품 입고','10002',to_date('24/12/11','RR/MM/DD'),'MANGO-12062','20241211085','d1','159',360,20241211230);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211469,500,'상품 입고','10001',to_date('24/12/11','RR/MM/DD'),'ITEM-7003','20241211104','d1','159',0,20241211231);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211470,500,'상품 입고','10001',to_date('24/12/11','RR/MM/DD'),'ITEM-7004','20241211103','d1','159',0,20241211231);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211471,500,'상품 입고','10001',to_date('24/12/11','RR/MM/DD'),'ITEM-5001','20241211102','d1','159',58,20241211231);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211472,500,'상품 입고','10001',to_date('24/12/11','RR/MM/DD'),'MANGO-13001','20241211100','d1','159',0,20241211231);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211473,500,'상품 입고','10001',to_date('24/12/11','RR/MM/DD'),'MANGO-13002','20241211099','d1','159',100,20241211231);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211474,500,'상품 입고','10001',to_date('24/12/11','RR/MM/DD'),'ITEM-5002','20241211101','d1','159',120,20241211231);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211475,200,'상품 입고','10002',to_date('24/12/11','RR/MM/DD'),'MANGO-13006','20241211097','d1','159',800,20241211231);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211476,200,'상품 입고','10002',to_date('24/12/11','RR/MM/DD'),'MANGO-13005','20241211098','d1','159',800,20241211231);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211477,2000,'상품 입고','10002',to_date('24/12/11','RR/MM/DD'),'MANGO-12060','20241211087','d1','159',120,20241211231);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211478,2000,'상품 입고','10002',to_date('24/12/11','RR/MM/DD'),'MANGO-12061','20241211086','d1','159',200,20241211231);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211479,2000,'상품 입고','10001',to_date('24/12/11','RR/MM/DD'),'MANGO-12058','20241211084','d1','159',0,20241211231);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211480,2000,'상품 입고','10001',to_date('24/12/11','RR/MM/DD'),'MANGO-12057','20241211083','d1','159',150,20241211231);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211481,700,'상품 입고','10001',to_date('24/12/11','RR/MM/DD'),'ITEM-2002','20241211105','d1','159',0,20241211232);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211482,2000,'상품 입고','10001',to_date('24/12/11','RR/MM/DD'),'MANGO-12056','20241211082','d1','159',150,20241211232);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211483,1000,'상품 입고','10001',to_date('24/12/11','RR/MM/DD'),'ITEM-2002','20241211080','d1','159',0,20241211232);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211484,1000,'상품 입고','10001',to_date('24/12/11','RR/MM/DD'),'ITEM-2001','20241211081','d1','159',0,20241211232);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211485,20,'상품 출고','10001',to_date('24/12/11','RR/MM/DD'),'MANGO-12062','20241211083','d2','159',510,20241211233);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211486,1,'상품 입고','10001',to_date('24/12/11','RR/MM/DD'),'MANGO-12058','20241211106','d1','159',2000,20241211234);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211487,899,'상품 입고','10001',to_date('24/12/11','RR/MM/DD'),'MANGO-12058','20241211106','d1','159',2001,20241211235);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211488,2600,'상품 입고','10001',to_date('24/12/11','RR/MM/DD'),'MANGO-12058','20241211106','d1','159',2900,20241211236);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241211489,1500,'상품 입고','10001',to_date('24/12/11','RR/MM/DD'),'MANGO-12058','20241211106','d1','159',5500,20241211237);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241212490,10,'상품 입고','10001',to_date('24/12/12','RR/MM/DD'),'MANGO-12057','20241211110','d1','160',2150,20241212238);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241212491,10,'상품 입고','10001',to_date('24/12/12','RR/MM/DD'),'MANGO-12056','20241211109','d1','160',2150,20241212238);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241212492,10,'상품 입고','10001',to_date('24/12/12','RR/MM/DD'),'MANGO-12056','20241211107','d1','160',2150,20241212238);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241212493,10,'상품 입고','10001',to_date('24/12/12','RR/MM/DD'),'MANGO-12057','20241211108','d1','160',2150,20241212238);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241212494,10,'상품 입고','10001',to_date('24/12/12','RR/MM/DD'),'MANGO-12057','20241211110','d1','160',2170,20241212239);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241212495,10,'상품 입고','10001',to_date('24/12/12','RR/MM/DD'),'MANGO-12056','20241211109','d1','160',2170,20241212239);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241212496,10,'상품 입고','10001',to_date('24/12/12','RR/MM/DD'),'MANGO-12056','20241211107','d1','160',2170,20241212239);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241212497,10,'상품 입고','10001',to_date('24/12/12','RR/MM/DD'),'MANGO-12057','20241211108','d1','160',2170,20241212239);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241212498,1,'상품 입고','10001',to_date('24/12/12','RR/MM/DD'),'MANGO-12057','20241211110','d1','160',2190,20241212240);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241212499,1,'상품 입고','10001',to_date('24/12/12','RR/MM/DD'),'MANGO-12056','20241211109','d1','160',2190,20241212240);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241212500,1,'상품 입고','10001',to_date('24/12/12','RR/MM/DD'),'MANGO-12056','20241211107','d1','160',2190,20241212240);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241212501,1,'상품 입고','10001',to_date('24/12/12','RR/MM/DD'),'MANGO-12057','20241211108','d1','160',2190,20241212240);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241212502,1,'상품 입고','10001',to_date('24/12/12','RR/MM/DD'),'MANGO-12057','20241211110','d1','160',2192,20241212241);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241212503,1,'상품 입고','10001',to_date('24/12/12','RR/MM/DD'),'MANGO-12056','20241211109','d1','160',2192,20241212241);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241212504,1,'상품 입고','10001',to_date('24/12/12','RR/MM/DD'),'MANGO-12056','20241211107','d1','160',2192,20241212241);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241212505,1,'상품 입고','10001',to_date('24/12/12','RR/MM/DD'),'MANGO-12057','20241211108','d1','160',2192,20241212241);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241212506,1,'상품 입고','10001',to_date('24/12/12','RR/MM/DD'),'MANGO-12057','20241211110','d1','160',2194,20241212242);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241212507,1,'상품 입고','10001',to_date('24/12/12','RR/MM/DD'),'MANGO-12056','20241211109','d1','160',2194,20241212242);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241212508,1,'상품 입고','10001',to_date('24/12/12','RR/MM/DD'),'MANGO-12056','20241211107','d1','160',2194,20241212242);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241212509,1,'상품 입고','10001',to_date('24/12/12','RR/MM/DD'),'MANGO-12057','20241211108','d1','160',2194,20241212242);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241212510,1,'상품 입고','10001',to_date('24/12/12','RR/MM/DD'),'MANGO-12057','20241211110','d1','160',2196,20241212243);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241212511,1,'상품 입고','10001',to_date('24/12/12','RR/MM/DD'),'MANGO-12056','20241211109','d1','160',2196,20241212243);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241212512,1,'상품 입고','10001',to_date('24/12/12','RR/MM/DD'),'MANGO-12056','20241211107','d1','160',2196,20241212243);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241212513,1,'상품 입고','10001',to_date('24/12/12','RR/MM/DD'),'MANGO-12057','20241211108','d1','160',2196,20241212243);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241212514,1,'상품 입고','10001',to_date('24/12/12','RR/MM/DD'),'MANGO-12057','20241211110','d1','160',2196,20241212244);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241212515,1,'상품 입고','10001',to_date('24/12/12','RR/MM/DD'),'MANGO-12056','20241211109','d1','160',2196,20241212244);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241212516,1,'상품 입고','10001',to_date('24/12/12','RR/MM/DD'),'MANGO-12056','20241211107','d1','160',2196,20241212244);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241212517,1,'상품 입고','10001',to_date('24/12/12','RR/MM/DD'),'MANGO-12057','20241211108','d1','160',2196,20241212244);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241212518,1,'상품 입고','10001',to_date('24/12/12','RR/MM/DD'),'MANGO-12057','20241211110','d1','160',2196,20241212245);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241212519,1,'상품 입고','10001',to_date('24/12/12','RR/MM/DD'),'MANGO-12056','20241211109','d1','160',2196,20241212245);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241212520,1,'상품 입고','10001',to_date('24/12/12','RR/MM/DD'),'MANGO-12056','20241211107','d1','160',2196,20241212245);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241212521,1,'상품 입고','10001',to_date('24/12/12','RR/MM/DD'),'MANGO-12057','20241211108','d1','160',2196,20241212245);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241212522,1,'상품 입고','10001',to_date('24/12/12','RR/MM/DD'),'MANGO-12057','20241211110','d1','160',2196,20241212246);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241212523,1,'상품 입고','10001',to_date('24/12/12','RR/MM/DD'),'MANGO-12056','20241211109','d1','160',2196,20241212246);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241212524,1,'상품 입고','10001',to_date('24/12/12','RR/MM/DD'),'MANGO-12056','20241211107','d1','160',2196,20241212246);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241212525,1,'상품 입고','10001',to_date('24/12/12','RR/MM/DD'),'MANGO-12057','20241211108','d1','160',2196,20241212246);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241212526,1,'상품 입고','10001',to_date('24/12/12','RR/MM/DD'),'MANGO-12057','20241211110','d1','160',2204,20241212247);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241212527,1,'상품 입고','10001',to_date('24/12/12','RR/MM/DD'),'MANGO-12056','20241211109','d1','160',2204,20241212247);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241212528,1,'상품 입고','10001',to_date('24/12/12','RR/MM/DD'),'MANGO-12056','20241211107','d1','160',2204,20241212247);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241212529,1,'상품 입고','10001',to_date('24/12/12','RR/MM/DD'),'MANGO-12057','20241211108','d1','160',2204,20241212247);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241212530,1,'상품 입고','10001',to_date('24/12/12','RR/MM/DD'),'MANGO-12057','20241211110','d1','160',2206,20241212248);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241212531,1,'상품 입고','10001',to_date('24/12/12','RR/MM/DD'),'MANGO-12056','20241211109','d1','160',2206,20241212248);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241212532,1,'상품 입고','10001',to_date('24/12/12','RR/MM/DD'),'MANGO-12056','20241211107','d1','160',2206,20241212248);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241212533,1,'상품 입고','10001',to_date('24/12/12','RR/MM/DD'),'MANGO-12057','20241211108','d1','160',2206,20241212248);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241212534,1,'상품 입고','10001',to_date('24/12/12','RR/MM/DD'),'MANGO-12057','20241211110','d1','160',2208,20241212249);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241212535,1,'상품 입고','10001',to_date('24/12/12','RR/MM/DD'),'MANGO-12056','20241211109','d1','160',2208,20241212249);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241212536,1,'상품 입고','10001',to_date('24/12/12','RR/MM/DD'),'MANGO-12056','20241211107','d1','160',2208,20241212249);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241212537,1,'상품 입고','10001',to_date('24/12/12','RR/MM/DD'),'MANGO-12057','20241211108','d1','160',2208,20241212249);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241212538,1,'상품 입고','10001',to_date('24/12/12','RR/MM/DD'),'MANGO-12057','20241211110','d1','160',2210,20241212250);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241212539,1,'상품 입고','10001',to_date('24/12/12','RR/MM/DD'),'MANGO-12056','20241211109','d1','160',2210,20241212250);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241212540,1,'상품 입고','10001',to_date('24/12/12','RR/MM/DD'),'MANGO-12056','20241211107','d1','160',2210,20241212250);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241212541,1,'상품 입고','10001',to_date('24/12/12','RR/MM/DD'),'MANGO-12057','20241211108','d1','160',2210,20241212250);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241212542,1,'상품 입고','10001',to_date('24/12/12','RR/MM/DD'),'MANGO-12057','20241211110','d1','160',2212,20241212251);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241212543,1,'상품 입고','10001',to_date('24/12/12','RR/MM/DD'),'MANGO-12056','20241211109','d1','160',2212,20241212251);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241212544,1,'상품 입고','10001',to_date('24/12/12','RR/MM/DD'),'MANGO-12056','20241211107','d1','160',2212,20241212251);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241212545,1,'상품 입고','10001',to_date('24/12/12','RR/MM/DD'),'MANGO-12057','20241211108','d1','160',2212,20241212251);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241212546,1,'상품 입고','10001',to_date('24/12/12','RR/MM/DD'),'MANGO-12057','20241211110','d1','160',2214,20241212252);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241212547,1,'상품 입고','10001',to_date('24/12/12','RR/MM/DD'),'MANGO-12056','20241211109','d1','160',2214,20241212252);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241212548,1,'상품 입고','10001',to_date('24/12/12','RR/MM/DD'),'MANGO-12056','20241211107','d1','160',2214,20241212252);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241212549,1,'상품 입고','10001',to_date('24/12/12','RR/MM/DD'),'MANGO-12057','20241211108','d1','160',2214,20241212252);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241212550,1,'상품 입고','10001',to_date('24/12/12','RR/MM/DD'),'MANGO-12057','20241211110','d1','160',2216,20241212253);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241212551,1,'상품 입고','10001',to_date('24/12/12','RR/MM/DD'),'MANGO-12056','20241211109','d1','160',2216,20241212253);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241212552,1,'상품 입고','10001',to_date('24/12/12','RR/MM/DD'),'MANGO-12056','20241211107','d1','160',2216,20241212253);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241212553,1,'상품 입고','10001',to_date('24/12/12','RR/MM/DD'),'MANGO-12057','20241211108','d1','160',2216,20241212253);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241212554,1,'상품 입고','10001',to_date('24/12/12','RR/MM/DD'),'MANGO-12057','20241211110','d1','160',2218,20241212254);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241212555,1,'상품 입고','10001',to_date('24/12/12','RR/MM/DD'),'MANGO-12056','20241211109','d1','160',2218,20241212254);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241212556,1,'상품 입고','10001',to_date('24/12/12','RR/MM/DD'),'MANGO-12056','20241211107','d1','160',2218,20241212254);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241212557,1,'상품 입고','10001',to_date('24/12/12','RR/MM/DD'),'MANGO-12057','20241211108','d1','160',2218,20241212254);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241212558,1,'상품 입고','10001',to_date('24/12/12','RR/MM/DD'),'MANGO-12057','20241211110','d1','160',2220,20241212255);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241212559,1,'상품 입고','10001',to_date('24/12/12','RR/MM/DD'),'MANGO-12056','20241211109','d1','160',2220,20241212255);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241212560,1,'상품 입고','10001',to_date('24/12/12','RR/MM/DD'),'MANGO-12056','20241211107','d1','160',2220,20241212255);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241212561,1,'상품 입고','10001',to_date('24/12/12','RR/MM/DD'),'MANGO-12057','20241211108','d1','160',2220,20241212255);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241212562,3000,'상품 입고','10002',to_date('24/12/12','RR/MM/DD'),'MANGO-12072','20241212116','d1','160',0,20241212256);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241212563,3000,'상품 입고','10001',to_date('24/12/12','RR/MM/DD'),'MANGO-12073','20241212115','d1','160',0,20241212256);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241212564,400,'상품 입고','10001',to_date('24/12/12','RR/MM/DD'),'MANGO-12056','20241212113','d1','160',2222,20241212256);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241212565,500,'상품 입고','10002',to_date('24/12/12','RR/MM/DD'),'MANGO-12057','20241212114','d1','160',0,20241212256);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241212566,15,'상품 입고','10001',to_date('24/12/12','RR/MM/DD'),'MANGO-12057','20241211110','d1','160',2222,20241212256);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241212567,14,'상품 입고','10001',to_date('24/12/12','RR/MM/DD'),'MANGO-12056','20241211109','d1','160',2222,20241212256);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241212568,14,'상품 입고','10001',to_date('24/12/12','RR/MM/DD'),'MANGO-12057','20241211108','d1','160',2222,20241212256);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241212569,14,'상품 입고','10001',to_date('24/12/12','RR/MM/DD'),'MANGO-12056','20241211107','d1','160',2222,20241212256);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241212570,30,'상품 출고','10001',to_date('24/12/12','RR/MM/DD'),'MANGO-12060','20241212152','d2','160',350,20241212257);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241212571,40,'상품 출고','10001',to_date('24/12/12','RR/MM/DD'),'MANGO-12062','20241212149','d2','160',490,20241212258);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241212572,350,'상품 입고','10001',to_date('24/12/12','RR/MM/DD'),'MANGO-12072','20241212118','d1','159',0,20241212259);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241212573,400,'상품 입고','10001',to_date('24/12/12','RR/MM/DD'),'MANGO-12056','20241212119','d1','159',2650,20241212259);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241212574,1500,'상품 입고','10001',to_date('24/12/12','RR/MM/DD'),'MANGO-12073','20241212115','d1','160',3000,20241212260);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241212575,120,'상품 입고','10002',to_date('24/12/12','RR/MM/DD'),'MANGO-12072','20241212116','d1','160',3000,20241212260);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241212576,20,'상품 입고','10001',to_date('24/12/12','RR/MM/DD'),'MANGO-12056','20241212113','d1','160',3050,20241212260);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241212577,20,'상품 입고','10002',to_date('24/12/12','RR/MM/DD'),'MANGO-12057','20241212114','d1','160',500,20241212260);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241212578,10,'상품 입고','10001',to_date('24/12/12','RR/MM/DD'),'MANGO-12057','20241212124','d1','231',2251,20241212261);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241212579,10,'상품 입고','10001',to_date('24/12/12','RR/MM/DD'),'MANGO-12072','20241212122','d1','231',350,20241212261);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241212580,50,'상품 입고','10001',to_date('24/12/12','RR/MM/DD'),'MANGO-12073','20241212121','d1','231',4500,20241212261);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241212581,50,'상품 입고','10001',to_date('24/12/12','RR/MM/DD'),'MANGO-12056','20241212123','d1','231',3070,20241212261);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241212582,20,'상품 입고','10001',to_date('24/12/12','RR/MM/DD'),'MANGO-12072','20241212118','d1','159',350,20241212261);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241212583,150,'상품 입고','10001',to_date('24/12/12','RR/MM/DD'),'MANGO-12073','20241212117','d1','159',4500,20241212261);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241212584,150,'상품 입고','10001',to_date('24/12/12','RR/MM/DD'),'MANGO-12057','20241212120','d1','159',2251,20241212261);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241212585,250,'상품 입고','10001',to_date('24/12/12','RR/MM/DD'),'MANGO-12073','20241212115','d1','160',4500,20241212261);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241212586,280,'상품 입고','10002',to_date('24/12/12','RR/MM/DD'),'MANGO-12072','20241212116','d1','160',3120,20241212261);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241212587,30,'상품 입고','10002',to_date('24/12/12','RR/MM/DD'),'MANGO-12057','20241212114','d1','160',520,20241212261);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241212588,30,'상품 입고','10001',to_date('24/12/12','RR/MM/DD'),'MANGO-12056','20241212113','d1','160',3070,20241212261);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241212589,10,'상품 입고','10001',to_date('24/12/12','RR/MM/DD'),'MANGO-12057','20241212124','d1','231',2411,20241212262);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241212590,10,'상품 입고','10001',to_date('24/12/12','RR/MM/DD'),'MANGO-12072','20241212122','d1','231',380,20241212262);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241212591,10,'상품 입고','10001',to_date('24/12/12','RR/MM/DD'),'MANGO-12073','20241212121','d1','231',4950,20241212262);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241212592,10,'상품 입고','10001',to_date('24/12/12','RR/MM/DD'),'MANGO-12056','20241212123','d1','231',3150,20241212262);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241212593,10,'상품 입고','10001',to_date('24/12/12','RR/MM/DD'),'MANGO-12072','20241212118','d1','159',380,20241212262);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241212594,10,'상품 입고','10001',to_date('24/12/12','RR/MM/DD'),'MANGO-12073','20241212117','d1','159',4950,20241212262);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241212595,10,'상품 입고','10001',to_date('24/12/12','RR/MM/DD'),'MANGO-12057','20241212120','d1','159',2411,20241212262);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241212596,10,'상품 입고','10001',to_date('24/12/12','RR/MM/DD'),'MANGO-12073','20241212115','d1','160',4950,20241212262);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241212597,10,'상품 입고','10002',to_date('24/12/12','RR/MM/DD'),'MANGO-12072','20241212116','d1','160',3400,20241212262);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241212598,10,'상품 입고','10002',to_date('24/12/12','RR/MM/DD'),'MANGO-12057','20241212114','d1','160',550,20241212262);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241212599,10,'상품 입고','10001',to_date('24/12/12','RR/MM/DD'),'MANGO-12056','20241212113','d1','160',3150,20241212262);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241212600,10,'상품 출고','10001',to_date('24/12/12','RR/MM/DD'),'MANGO-12062','20241211083','d2','159',450,20241212263);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241212601,10,'상품 출고','10001',to_date('24/12/12','RR/MM/DD'),'MANGO-12060','20241212160','d2','159',320,20241212263);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241212602,10,'상품 출고','10001',to_date('24/12/12','RR/MM/DD'),'MANGO-12056','20241212159','d2','159',3170,20241212263);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241212603,11,'상품 출고','10001',to_date('24/12/12','RR/MM/DD'),'MANGO-12057','20241212162','d2','159',2431,20241212263);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241212604,10,'상품 출고','10001',to_date('24/12/12','RR/MM/DD'),'MANGO-12062','20241212161','d2','159',450,20241212263);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241212605,10,'상품 출고','10002',to_date('24/12/12','RR/MM/DD'),'MANGO-12060','20241212163','d2','159',2120,20241212263);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241212606,10,'상품 출고','10001',to_date('24/12/12','RR/MM/DD'),'MANGO-12056','20241211095','d2','159',3170,20241212263);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241212607,10,'상품 출고','10001',to_date('24/12/12','RR/MM/DD'),'MANGO-12057','20241211094','d2','159',2431,20241212263);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241212608,10,'상품 출고','10001',to_date('24/12/12','RR/MM/DD'),'MANGO-12057','20241212158','d2','159',2431,20241212263);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241212609,10,'상품 출고','10001',to_date('24/12/12','RR/MM/DD'),'MANGO-12062','20241211093','d2','159',450,20241212263);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241212610,10,'상품 출고','10001',to_date('24/12/12','RR/MM/DD'),'MANGO-12062','20241212157','d2','159',450,20241212263);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241212611,10,'상품 출고','10001',to_date('24/12/12','RR/MM/DD'),'MANGO-12060','20241211096','d2','159',320,20241212263);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241213612,100,'상품 입고','10002',to_date('24/12/13','RR/MM/DD'),'ITEM-4002','20241212132','d1','160',0,20241213264);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241213613,50,'상품 입고','10002',to_date('24/12/13','RR/MM/DD'),'ITEM-7002','20241212134','d1','160',0,20241213264);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241213614,10,'상품 입고','10002',to_date('24/12/13','RR/MM/DD'),'MANGO-12068','20241212131','d1','160',0,20241213264);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241213615,100,'상품 출고','10001',to_date('24/12/13','RR/MM/DD'),'MANGO-12057','20241212150','d2','160',2400,20241213264);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241213616,20,'상품 출고','10001',to_date('24/12/13','RR/MM/DD'),'MANGO-12062','20241212145','d2','160',410,20241213264);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241213617,20,'상품 출고','10001',to_date('24/12/13','RR/MM/DD'),'MANGO-12062','20241212153','d2','160',410,20241213264);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241213618,10,'상품 입고','10002',to_date('24/12/13','RR/MM/DD'),'MANGO-12069','20241212130','d1','160',20,20241213265);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241213619,40,'상품 입고','10002',to_date('24/12/13','RR/MM/DD'),'ITEM-7002','20241212134','d1','160',50,20241213265);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241213620,20,'상품 출고','10001',to_date('24/12/13','RR/MM/DD'),'MANGO-12060','20241212152','d2','160',300,20241213265);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241213621,150,'상품 출고','10001',to_date('24/12/13','RR/MM/DD'),'MANGO-12057','20241212146','d2','160',2300,20241213265);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241213622,50,'상품 출고','10001',to_date('24/12/13','RR/MM/DD'),'MANGO-12056','20241212159','d2','159',3150,20241213266);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241213623,140,'상품 출고','10001',to_date('24/12/13','RR/MM/DD'),'MANGO-12056','20241211095','d2','159',3150,20241213266);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241213624,150,'상품 출고','10001',to_date('24/12/13','RR/MM/DD'),'MANGO-12056','20241211139','d2','159',3150,20241213266);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241213625,150,'상품 출고','10001',to_date('24/12/13','RR/MM/DD'),'MANGO-12056','20241211143','d2','159',3150,20241213266);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241213626,60,'상품 출고','10001',to_date('24/12/13','RR/MM/DD'),'MANGO-12056','20241212151','d2','160',3150,20241213266);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241213627,150,'상품 출고','10001',to_date('24/12/13','RR/MM/DD'),'MANGO-12056','20241211084','d2','159',3150,20241213266);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241213628,150,'상품 출고','10001',to_date('24/12/13','RR/MM/DD'),'MANGO-12056','20241211087','d2','159',3150,20241213266);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241213629,150,'상품 출고','10001',to_date('24/12/13','RR/MM/DD'),'MANGO-12056','20241211091','d2','159',3150,20241213266);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241213630,150,'상품 출고','10001',to_date('24/12/13','RR/MM/DD'),'MANGO-12056','20241211127','d2','159',3150,20241213266);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241213631,150,'상품 출고','10001',to_date('24/12/13','RR/MM/DD'),'MANGO-12056','20241211131','d2','159',3150,20241213266);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241213632,150,'상품 출고','10001',to_date('24/12/13','RR/MM/DD'),'MANGO-12056','20241211135','d2','159',3150,20241213266);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241213633,150,'상품 출고','10001',to_date('24/12/13','RR/MM/DD'),'MANGO-12056','20241211099','d2','159',3150,20241213266);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241213634,150,'상품 출고','10001',to_date('24/12/13','RR/MM/DD'),'MANGO-12056','20241211111','d2','159',1550,20241213267);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241213635,150,'상품 출고','10001',to_date('24/12/13','RR/MM/DD'),'MANGO-12056','20241211103','d2','159',1550,20241213267);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241213636,150,'상품 출고','10001',to_date('24/12/13','RR/MM/DD'),'MANGO-12056','20241211107','d2','159',1550,20241213267);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241213637,150,'상품 출고','10001',to_date('24/12/13','RR/MM/DD'),'MANGO-12056','20241211123','d2','159',1550,20241213267);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241213638,150,'상품 출고','10001',to_date('24/12/13','RR/MM/DD'),'MANGO-12056','20241211115','d2','159',1550,20241213267);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241213639,150,'상품 출고','10001',to_date('24/12/13','RR/MM/DD'),'MANGO-12056','20241211119','d2','161',1550,20241213267);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241213640,60,'상품 출고','10001',to_date('24/12/13','RR/MM/DD'),'MANGO-12056','20241212155','d2','160',1550,20241213267);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241213641,20,'상품 입고','10002',to_date('24/12/13','RR/MM/DD'),'MANGO-12069','20241212130','d1','160',30,20241213268);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241213642,10,'상품 입고','10002',to_date('24/12/13','RR/MM/DD'),'ITEM-7002','20241212134','d1','160',90,20241213268);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241213643,20,'상품 출고','10001',to_date('24/12/13','RR/MM/DD'),'MANGO-12062','20241212145','d2','160',370,20241213268);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241213644,40,'상품 출고','10001',to_date('24/12/13','RR/MM/DD'),'MANGO-12062','20241212147','d2','160',370,20241213268);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241213645,271,'상품 출고','10001',to_date('24/12/13','RR/MM/DD'),'MANGO-12060','20241213167','d2','160',280,20241213269);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241213646,562,'상품 출고','10001',to_date('24/12/13','RR/MM/DD'),'MANGO-12056','20241213166','d2','160',590,20241213270);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241213649,200,'상품 입고','10002',to_date('24/12/13','RR/MM/DD'),'MANGO-12060','20241212129','d1','160',2110,20241213272);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241213650,10,'상품 입고','10002',to_date('24/12/13','RR/MM/DD'),'MANGO-12068','20241212131','d1','160',10,20241213273);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241213651,40,'상품 출고','10001',to_date('24/12/13','RR/MM/DD'),'MANGO-12057','20241212150','d2','160',2150,20241213273);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241213652,10,'상품 입고','10002',to_date('24/12/13','RR/MM/DD'),'ITEM-7001','20241212135','d1','160',0,20241213274);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241213653,40,'상품 출고','10001',to_date('24/12/13','RR/MM/DD'),'MANGO-12062','20241213164','d2','160',310,20241213274);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241213654,100,'상품 입고','10002',to_date('24/12/13','RR/MM/DD'),'ITEM-4001','20241212133','d1','160',0,20241213275);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241213655,150,'상품 출고','10001',to_date('24/12/13','RR/MM/DD'),'MANGO-12057','20241212148','d2','160',2110,20241213275);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241213656,10,'상품 입고','10002',to_date('24/12/13','RR/MM/DD'),'ITEM-7001','20241212135','d1','160',10,20241213276);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241213657,10,'상품 출고','10001',to_date('24/12/13','RR/MM/DD'),'MANGO-12062','20241213168','d2','160',270,20241213276);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241213658,70,'상품 입고','10002',to_date('24/12/13','RR/MM/DD'),'ITEM-7001','20241212135','d1','160',20,20241213277);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241213659,10,'상품 출고','10001',to_date('24/12/13','RR/MM/DD'),'MANGO-12057','20241212150','d2','160',1960,20241213277);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241215660,100,'상품 입고','10002',to_date('24/12/15','RR/MM/DD'),'MANGO-12058','20241215142','d1','159',0,20241215278);
Insert into STOCKS (REAL_NO,STOCKS_STOCKS,UPDATE_REASON,WH_CODE,REG_DATE,ITEM_CODE,LOG_NO,STOCKS_STOCKS_CHECK,EMPLOYEE_CODE,STOCKS_QUANTITY,STOCKS_ADJUST_NO) values (20241215661,10,'상품 입고','10001',to_date('24/12/15','RR/MM/DD'),'MANGO-12055','20241215144','d1','151',1160,20241215279);
REM INSERTING into STOCKS_ORDER
SET DEFINE OFF;
Insert into STOCKS_ORDER (DELIVERY_CODE,DELIVERY_DATE,EMPLOYEE_CODE,DELIVERY_QUANTITY,SALES_NO) values ('20241211401',to_date('24/12/11','RR/MM/DD'),'160',30,20241211061);
Insert into STOCKS_ORDER (DELIVERY_CODE,DELIVERY_DATE,EMPLOYEE_CODE,DELIVERY_QUANTITY,SALES_NO) values ('20241211402',to_date('24/12/11','RR/MM/DD'),'160',15,20241211059);
Insert into STOCKS_ORDER (DELIVERY_CODE,DELIVERY_DATE,EMPLOYEE_CODE,DELIVERY_QUANTITY,SALES_NO) values ('20241211403',to_date('24/12/11','RR/MM/DD'),'160',30,20241211060);
Insert into STOCKS_ORDER (DELIVERY_CODE,DELIVERY_DATE,EMPLOYEE_CODE,DELIVERY_QUANTITY,SALES_NO) values ('20241211404',to_date('24/12/11','RR/MM/DD'),'160',10,20241211058);
Insert into STOCKS_ORDER (DELIVERY_CODE,DELIVERY_DATE,EMPLOYEE_CODE,DELIVERY_QUANTITY,SALES_NO) values ('20241211405',to_date('24/12/11','RR/MM/DD'),'160',20,20241211061);
Insert into STOCKS_ORDER (DELIVERY_CODE,DELIVERY_DATE,EMPLOYEE_CODE,DELIVERY_QUANTITY,SALES_NO) values ('20241211406',to_date('24/12/11','RR/MM/DD'),'160',10,20241211059);
Insert into STOCKS_ORDER (DELIVERY_CODE,DELIVERY_DATE,EMPLOYEE_CODE,DELIVERY_QUANTITY,SALES_NO) values ('20241211407',to_date('24/12/11','RR/MM/DD'),'160',20,20241211060);
Insert into STOCKS_ORDER (DELIVERY_CODE,DELIVERY_DATE,EMPLOYEE_CODE,DELIVERY_QUANTITY,SALES_NO) values ('20241211490',to_date('24/12/11','RR/MM/DD'),'160',20,20241211062);
Insert into STOCKS_ORDER (DELIVERY_CODE,DELIVERY_DATE,EMPLOYEE_CODE,DELIVERY_QUANTITY,SALES_NO) values ('20241211491',to_date('24/12/11','RR/MM/DD'),'160',10,20241211062);
Insert into STOCKS_ORDER (DELIVERY_CODE,DELIVERY_DATE,EMPLOYEE_CODE,DELIVERY_QUANTITY,SALES_NO) values ('20241211492',to_date('24/12/11','RR/MM/DD'),'160',10,20241211063);
Insert into STOCKS_ORDER (DELIVERY_CODE,DELIVERY_DATE,EMPLOYEE_CODE,DELIVERY_QUANTITY,SALES_NO) values ('20241211493',to_date('24/12/11','RR/MM/DD'),'160',10,20241211064);
Insert into STOCKS_ORDER (DELIVERY_CODE,DELIVERY_DATE,EMPLOYEE_CODE,DELIVERY_QUANTITY,SALES_NO) values ('20241211494',to_date('24/12/11','RR/MM/DD'),'160',100,20241211062);
Insert into STOCKS_ORDER (DELIVERY_CODE,DELIVERY_DATE,EMPLOYEE_CODE,DELIVERY_QUANTITY,SALES_NO) values ('20241211495',to_date('24/12/11','RR/MM/DD'),'160',40,20241211063);
Insert into STOCKS_ORDER (DELIVERY_CODE,DELIVERY_DATE,EMPLOYEE_CODE,DELIVERY_QUANTITY,SALES_NO) values ('20241211496',to_date('24/12/11','RR/MM/DD'),'160',20,20241211064);
Insert into STOCKS_ORDER (DELIVERY_CODE,DELIVERY_DATE,EMPLOYEE_CODE,DELIVERY_QUANTITY,SALES_NO) values ('20241211497',to_date('24/12/11','RR/MM/DD'),'160',20,20241211062);
Insert into STOCKS_ORDER (DELIVERY_CODE,DELIVERY_DATE,EMPLOYEE_CODE,DELIVERY_QUANTITY,SALES_NO) values ('20241211514',to_date('24/12/11','RR/MM/DD'),'160',21,20241211066);
Insert into STOCKS_ORDER (DELIVERY_CODE,DELIVERY_DATE,EMPLOYEE_CODE,DELIVERY_QUANTITY,SALES_NO) values ('20241211515',to_date('24/12/11','RR/MM/DD'),'160',15,20241211065);
Insert into STOCKS_ORDER (DELIVERY_CODE,DELIVERY_DATE,EMPLOYEE_CODE,DELIVERY_QUANTITY,SALES_NO) values ('20241211516',to_date('24/12/11','RR/MM/DD'),'160',5,20241211067);
Insert into STOCKS_ORDER (DELIVERY_CODE,DELIVERY_DATE,EMPLOYEE_CODE,DELIVERY_QUANTITY,SALES_NO) values ('20241211524',to_date('24/12/11','RR/MM/DD'),'159',80,20241211076);
Insert into STOCKS_ORDER (DELIVERY_CODE,DELIVERY_DATE,EMPLOYEE_CODE,DELIVERY_QUANTITY,SALES_NO) values ('20241211525',to_date('24/12/11','RR/MM/DD'),'159',20,20241211075);
Insert into STOCKS_ORDER (DELIVERY_CODE,DELIVERY_DATE,EMPLOYEE_CODE,DELIVERY_QUANTITY,SALES_NO) values ('20241211526',to_date('24/12/11','RR/MM/DD'),'159',20,20241211078);
Insert into STOCKS_ORDER (DELIVERY_CODE,DELIVERY_DATE,EMPLOYEE_CODE,DELIVERY_QUANTITY,SALES_NO) values ('20241211527',to_date('24/12/11','RR/MM/DD'),'159',40,20241211077);
Insert into STOCKS_ORDER (DELIVERY_CODE,DELIVERY_DATE,EMPLOYEE_CODE,DELIVERY_QUANTITY,SALES_NO) values ('20241211528',to_date('24/12/11','RR/MM/DD'),'160',50,20241211073);
Insert into STOCKS_ORDER (DELIVERY_CODE,DELIVERY_DATE,EMPLOYEE_CODE,DELIVERY_QUANTITY,SALES_NO) values ('20241211529',to_date('24/12/11','RR/MM/DD'),'160',50,20241211071);
Insert into STOCKS_ORDER (DELIVERY_CODE,DELIVERY_DATE,EMPLOYEE_CODE,DELIVERY_QUANTITY,SALES_NO) values ('20241211530',to_date('24/12/11','RR/MM/DD'),'160',3,20241211070);
Insert into STOCKS_ORDER (DELIVERY_CODE,DELIVERY_DATE,EMPLOYEE_CODE,DELIVERY_QUANTITY,SALES_NO) values ('20241211531',to_date('24/12/11','RR/MM/DD'),'160',8,20241211068);
Insert into STOCKS_ORDER (DELIVERY_CODE,DELIVERY_DATE,EMPLOYEE_CODE,DELIVERY_QUANTITY,SALES_NO) values ('20241211532',to_date('24/12/11','RR/MM/DD'),'160',5,20241211072);
Insert into STOCKS_ORDER (DELIVERY_CODE,DELIVERY_DATE,EMPLOYEE_CODE,DELIVERY_QUANTITY,SALES_NO) values ('20241211533',to_date('24/12/11','RR/MM/DD'),'160',50,20241211074);
Insert into STOCKS_ORDER (DELIVERY_CODE,DELIVERY_DATE,EMPLOYEE_CODE,DELIVERY_QUANTITY,SALES_NO) values ('20241211535',to_date('24/12/11','RR/MM/DD'),'159',110,20241211077);
Insert into STOCKS_ORDER (DELIVERY_CODE,DELIVERY_DATE,EMPLOYEE_CODE,DELIVERY_QUANTITY,SALES_NO) values ('20241211536',to_date('24/12/11','RR/MM/DD'),'160',50,20241211073);
Insert into STOCKS_ORDER (DELIVERY_CODE,DELIVERY_DATE,EMPLOYEE_CODE,DELIVERY_QUANTITY,SALES_NO) values ('20241211537',to_date('24/12/11','RR/MM/DD'),'160',100,20241211071);
Insert into STOCKS_ORDER (DELIVERY_CODE,DELIVERY_DATE,EMPLOYEE_CODE,DELIVERY_QUANTITY,SALES_NO) values ('20241211538',to_date('24/12/11','RR/MM/DD'),'160',2,20241211070);
Insert into STOCKS_ORDER (DELIVERY_CODE,DELIVERY_DATE,EMPLOYEE_CODE,DELIVERY_QUANTITY,SALES_NO) values ('20241211396',to_date('24/12/11','RR/MM/DD'),'160',25,20241211058);
Insert into STOCKS_ORDER (DELIVERY_CODE,DELIVERY_DATE,EMPLOYEE_CODE,DELIVERY_QUANTITY,SALES_NO) values ('20241211397',to_date('24/12/11','RR/MM/DD'),'160',100,20241211061);
Insert into STOCKS_ORDER (DELIVERY_CODE,DELIVERY_DATE,EMPLOYEE_CODE,DELIVERY_QUANTITY,SALES_NO) values ('20241211398',to_date('24/12/11','RR/MM/DD'),'160',25,20241211059);
Insert into STOCKS_ORDER (DELIVERY_CODE,DELIVERY_DATE,EMPLOYEE_CODE,DELIVERY_QUANTITY,SALES_NO) values ('20241211399',to_date('24/12/11','RR/MM/DD'),'160',100,20241211060);
Insert into STOCKS_ORDER (DELIVERY_CODE,DELIVERY_DATE,EMPLOYEE_CODE,DELIVERY_QUANTITY,SALES_NO) values ('20241211400',to_date('24/12/11','RR/MM/DD'),'160',15,20241211058);
Insert into STOCKS_ORDER (DELIVERY_CODE,DELIVERY_DATE,EMPLOYEE_CODE,DELIVERY_QUANTITY,SALES_NO) values ('20241211539',to_date('24/12/11','RR/MM/DD'),'160',50,20241211074);
Insert into STOCKS_ORDER (DELIVERY_CODE,DELIVERY_DATE,EMPLOYEE_CODE,DELIVERY_QUANTITY,SALES_NO) values ('20241211540',to_date('24/12/11','RR/MM/DD'),'159',1,20241211078);
Insert into STOCKS_ORDER (DELIVERY_CODE,DELIVERY_DATE,EMPLOYEE_CODE,DELIVERY_QUANTITY,SALES_NO) values ('20241211541',to_date('24/12/11','RR/MM/DD'),'159',1,20241211076);
Insert into STOCKS_ORDER (DELIVERY_CODE,DELIVERY_DATE,EMPLOYEE_CODE,DELIVERY_QUANTITY,SALES_NO) values ('20241211542',to_date('24/12/11','RR/MM/DD'),'159',20,20241211075);
Insert into STOCKS_ORDER (DELIVERY_CODE,DELIVERY_DATE,EMPLOYEE_CODE,DELIVERY_QUANTITY,SALES_NO) values ('20241211543',to_date('24/12/11','RR/MM/DD'),'160',21,20241211069);
Insert into STOCKS_ORDER (DELIVERY_CODE,DELIVERY_DATE,EMPLOYEE_CODE,DELIVERY_QUANTITY,SALES_NO) values ('20241211544',to_date('24/12/11','RR/MM/DD'),'160',7,20241211068);
Insert into STOCKS_ORDER (DELIVERY_CODE,DELIVERY_DATE,EMPLOYEE_CODE,DELIVERY_QUANTITY,SALES_NO) values ('20241211545',to_date('24/12/11','RR/MM/DD'),'159',19,20241211078);
Insert into STOCKS_ORDER (DELIVERY_CODE,DELIVERY_DATE,EMPLOYEE_CODE,DELIVERY_QUANTITY,SALES_NO) values ('20241211546',to_date('24/12/11','RR/MM/DD'),'159',59,20241211076);
Insert into STOCKS_ORDER (DELIVERY_CODE,DELIVERY_DATE,EMPLOYEE_CODE,DELIVERY_QUANTITY,SALES_NO) values ('20241211547',to_date('24/12/11','RR/MM/DD'),'159',10,20241211076);
Insert into STOCKS_ORDER (DELIVERY_CODE,DELIVERY_DATE,EMPLOYEE_CODE,DELIVERY_QUANTITY,SALES_NO) values ('20241211548',to_date('24/12/11','RR/MM/DD'),'159',150,20241211080);
Insert into STOCKS_ORDER (DELIVERY_CODE,DELIVERY_DATE,EMPLOYEE_CODE,DELIVERY_QUANTITY,SALES_NO) values ('20241211549',to_date('24/12/11','RR/MM/DD'),'159',40,20241211082);
Insert into STOCKS_ORDER (DELIVERY_CODE,DELIVERY_DATE,EMPLOYEE_CODE,DELIVERY_QUANTITY,SALES_NO) values ('20241211550',to_date('24/12/11','RR/MM/DD'),'159',150,20241211081);
Insert into STOCKS_ORDER (DELIVERY_CODE,DELIVERY_DATE,EMPLOYEE_CODE,DELIVERY_QUANTITY,SALES_NO) values ('20241211551',to_date('24/12/11','RR/MM/DD'),'159',40,20241211079);
Insert into STOCKS_ORDER (DELIVERY_CODE,DELIVERY_DATE,EMPLOYEE_CODE,DELIVERY_QUANTITY,SALES_NO) values ('20241211580',to_date('24/12/11','RR/MM/DD'),'159',20,20241211083);
Insert into STOCKS_ORDER (DELIVERY_CODE,DELIVERY_DATE,EMPLOYEE_CODE,DELIVERY_QUANTITY,SALES_NO) values ('20241212665',to_date('24/12/12','RR/MM/DD'),'160',30,20241212152);
Insert into STOCKS_ORDER (DELIVERY_CODE,DELIVERY_DATE,EMPLOYEE_CODE,DELIVERY_QUANTITY,SALES_NO) values ('20241212666',to_date('24/12/12','RR/MM/DD'),'160',40,20241212149);
Insert into STOCKS_ORDER (DELIVERY_CODE,DELIVERY_DATE,EMPLOYEE_CODE,DELIVERY_QUANTITY,SALES_NO) values ('20241212695',to_date('24/12/12','RR/MM/DD'),'159',10,20241211083);
Insert into STOCKS_ORDER (DELIVERY_CODE,DELIVERY_DATE,EMPLOYEE_CODE,DELIVERY_QUANTITY,SALES_NO) values ('20241212696',to_date('24/12/12','RR/MM/DD'),'159',10,20241212160);
Insert into STOCKS_ORDER (DELIVERY_CODE,DELIVERY_DATE,EMPLOYEE_CODE,DELIVERY_QUANTITY,SALES_NO) values ('20241212697',to_date('24/12/12','RR/MM/DD'),'159',10,20241212159);
Insert into STOCKS_ORDER (DELIVERY_CODE,DELIVERY_DATE,EMPLOYEE_CODE,DELIVERY_QUANTITY,SALES_NO) values ('20241212698',to_date('24/12/12','RR/MM/DD'),'159',11,20241212162);
Insert into STOCKS_ORDER (DELIVERY_CODE,DELIVERY_DATE,EMPLOYEE_CODE,DELIVERY_QUANTITY,SALES_NO) values ('20241212699',to_date('24/12/12','RR/MM/DD'),'159',10,20241212161);
Insert into STOCKS_ORDER (DELIVERY_CODE,DELIVERY_DATE,EMPLOYEE_CODE,DELIVERY_QUANTITY,SALES_NO) values ('20241212700',to_date('24/12/12','RR/MM/DD'),'159',10,20241212163);
Insert into STOCKS_ORDER (DELIVERY_CODE,DELIVERY_DATE,EMPLOYEE_CODE,DELIVERY_QUANTITY,SALES_NO) values ('20241212701',to_date('24/12/12','RR/MM/DD'),'159',10,20241211095);
Insert into STOCKS_ORDER (DELIVERY_CODE,DELIVERY_DATE,EMPLOYEE_CODE,DELIVERY_QUANTITY,SALES_NO) values ('20241212702',to_date('24/12/12','RR/MM/DD'),'159',10,20241211094);
Insert into STOCKS_ORDER (DELIVERY_CODE,DELIVERY_DATE,EMPLOYEE_CODE,DELIVERY_QUANTITY,SALES_NO) values ('20241212703',to_date('24/12/12','RR/MM/DD'),'159',10,20241212158);
Insert into STOCKS_ORDER (DELIVERY_CODE,DELIVERY_DATE,EMPLOYEE_CODE,DELIVERY_QUANTITY,SALES_NO) values ('20241212704',to_date('24/12/12','RR/MM/DD'),'159',10,20241211093);
Insert into STOCKS_ORDER (DELIVERY_CODE,DELIVERY_DATE,EMPLOYEE_CODE,DELIVERY_QUANTITY,SALES_NO) values ('20241212705',to_date('24/12/12','RR/MM/DD'),'159',10,20241212157);
Insert into STOCKS_ORDER (DELIVERY_CODE,DELIVERY_DATE,EMPLOYEE_CODE,DELIVERY_QUANTITY,SALES_NO) values ('20241212706',to_date('24/12/12','RR/MM/DD'),'159',10,20241211096);
Insert into STOCKS_ORDER (DELIVERY_CODE,DELIVERY_DATE,EMPLOYEE_CODE,DELIVERY_QUANTITY,SALES_NO) values ('20241213710',to_date('24/12/13','RR/MM/DD'),'160',100,20241212150);
Insert into STOCKS_ORDER (DELIVERY_CODE,DELIVERY_DATE,EMPLOYEE_CODE,DELIVERY_QUANTITY,SALES_NO) values ('20241213711',to_date('24/12/13','RR/MM/DD'),'160',20,20241212145);
Insert into STOCKS_ORDER (DELIVERY_CODE,DELIVERY_DATE,EMPLOYEE_CODE,DELIVERY_QUANTITY,SALES_NO) values ('20241213712',to_date('24/12/13','RR/MM/DD'),'160',20,20241212153);
Insert into STOCKS_ORDER (DELIVERY_CODE,DELIVERY_DATE,EMPLOYEE_CODE,DELIVERY_QUANTITY,SALES_NO) values ('20241213715',to_date('24/12/13','RR/MM/DD'),'160',20,20241212152);
Insert into STOCKS_ORDER (DELIVERY_CODE,DELIVERY_DATE,EMPLOYEE_CODE,DELIVERY_QUANTITY,SALES_NO) values ('20241213716',to_date('24/12/13','RR/MM/DD'),'160',150,20241212146);
Insert into STOCKS_ORDER (DELIVERY_CODE,DELIVERY_DATE,EMPLOYEE_CODE,DELIVERY_QUANTITY,SALES_NO) values ('20241213717',to_date('24/12/13','RR/MM/DD'),'159',50,20241212159);
Insert into STOCKS_ORDER (DELIVERY_CODE,DELIVERY_DATE,EMPLOYEE_CODE,DELIVERY_QUANTITY,SALES_NO) values ('20241213718',to_date('24/12/13','RR/MM/DD'),'159',140,20241211095);
Insert into STOCKS_ORDER (DELIVERY_CODE,DELIVERY_DATE,EMPLOYEE_CODE,DELIVERY_QUANTITY,SALES_NO) values ('20241213719',to_date('24/12/13','RR/MM/DD'),'159',150,20241211139);
Insert into STOCKS_ORDER (DELIVERY_CODE,DELIVERY_DATE,EMPLOYEE_CODE,DELIVERY_QUANTITY,SALES_NO) values ('20241213720',to_date('24/12/13','RR/MM/DD'),'159',150,20241211143);
Insert into STOCKS_ORDER (DELIVERY_CODE,DELIVERY_DATE,EMPLOYEE_CODE,DELIVERY_QUANTITY,SALES_NO) values ('20241213721',to_date('24/12/13','RR/MM/DD'),'160',60,20241212151);
Insert into STOCKS_ORDER (DELIVERY_CODE,DELIVERY_DATE,EMPLOYEE_CODE,DELIVERY_QUANTITY,SALES_NO) values ('20241213722',to_date('24/12/13','RR/MM/DD'),'159',150,20241211084);
Insert into STOCKS_ORDER (DELIVERY_CODE,DELIVERY_DATE,EMPLOYEE_CODE,DELIVERY_QUANTITY,SALES_NO) values ('20241213723',to_date('24/12/13','RR/MM/DD'),'159',150,20241211087);
Insert into STOCKS_ORDER (DELIVERY_CODE,DELIVERY_DATE,EMPLOYEE_CODE,DELIVERY_QUANTITY,SALES_NO) values ('20241213724',to_date('24/12/13','RR/MM/DD'),'159',150,20241211091);
Insert into STOCKS_ORDER (DELIVERY_CODE,DELIVERY_DATE,EMPLOYEE_CODE,DELIVERY_QUANTITY,SALES_NO) values ('20241213725',to_date('24/12/13','RR/MM/DD'),'159',150,20241211127);
Insert into STOCKS_ORDER (DELIVERY_CODE,DELIVERY_DATE,EMPLOYEE_CODE,DELIVERY_QUANTITY,SALES_NO) values ('20241213726',to_date('24/12/13','RR/MM/DD'),'159',150,20241211131);
Insert into STOCKS_ORDER (DELIVERY_CODE,DELIVERY_DATE,EMPLOYEE_CODE,DELIVERY_QUANTITY,SALES_NO) values ('20241213727',to_date('24/12/13','RR/MM/DD'),'159',150,20241211135);
Insert into STOCKS_ORDER (DELIVERY_CODE,DELIVERY_DATE,EMPLOYEE_CODE,DELIVERY_QUANTITY,SALES_NO) values ('20241213728',to_date('24/12/13','RR/MM/DD'),'159',150,20241211099);
Insert into STOCKS_ORDER (DELIVERY_CODE,DELIVERY_DATE,EMPLOYEE_CODE,DELIVERY_QUANTITY,SALES_NO) values ('20241213729',to_date('24/12/13','RR/MM/DD'),'159',150,20241211111);
Insert into STOCKS_ORDER (DELIVERY_CODE,DELIVERY_DATE,EMPLOYEE_CODE,DELIVERY_QUANTITY,SALES_NO) values ('20241213730',to_date('24/12/13','RR/MM/DD'),'159',150,20241211103);
Insert into STOCKS_ORDER (DELIVERY_CODE,DELIVERY_DATE,EMPLOYEE_CODE,DELIVERY_QUANTITY,SALES_NO) values ('20241213731',to_date('24/12/13','RR/MM/DD'),'159',150,20241211107);
Insert into STOCKS_ORDER (DELIVERY_CODE,DELIVERY_DATE,EMPLOYEE_CODE,DELIVERY_QUANTITY,SALES_NO) values ('20241213732',to_date('24/12/13','RR/MM/DD'),'159',150,20241211123);
Insert into STOCKS_ORDER (DELIVERY_CODE,DELIVERY_DATE,EMPLOYEE_CODE,DELIVERY_QUANTITY,SALES_NO) values ('20241213733',to_date('24/12/13','RR/MM/DD'),'159',150,20241211115);
Insert into STOCKS_ORDER (DELIVERY_CODE,DELIVERY_DATE,EMPLOYEE_CODE,DELIVERY_QUANTITY,SALES_NO) values ('20241213734',to_date('24/12/13','RR/MM/DD'),'161',150,20241211119);
Insert into STOCKS_ORDER (DELIVERY_CODE,DELIVERY_DATE,EMPLOYEE_CODE,DELIVERY_QUANTITY,SALES_NO) values ('20241213735',to_date('24/12/13','RR/MM/DD'),'160',60,20241212155);
Insert into STOCKS_ORDER (DELIVERY_CODE,DELIVERY_DATE,EMPLOYEE_CODE,DELIVERY_QUANTITY,SALES_NO) values ('20241213738',to_date('24/12/13','RR/MM/DD'),'160',20,20241212145);
Insert into STOCKS_ORDER (DELIVERY_CODE,DELIVERY_DATE,EMPLOYEE_CODE,DELIVERY_QUANTITY,SALES_NO) values ('20241213739',to_date('24/12/13','RR/MM/DD'),'160',40,20241212147);
Insert into STOCKS_ORDER (DELIVERY_CODE,DELIVERY_DATE,EMPLOYEE_CODE,DELIVERY_QUANTITY,SALES_NO) values ('20241213740',to_date('24/12/13','RR/MM/DD'),'160',271,20241213167);
Insert into STOCKS_ORDER (DELIVERY_CODE,DELIVERY_DATE,EMPLOYEE_CODE,DELIVERY_QUANTITY,SALES_NO) values ('20241213741',to_date('24/12/13','RR/MM/DD'),'160',562,20241213166);
Insert into STOCKS_ORDER (DELIVERY_CODE,DELIVERY_DATE,EMPLOYEE_CODE,DELIVERY_QUANTITY,SALES_NO) values ('20241213747',to_date('24/12/13','RR/MM/DD'),'160',40,20241212150);
Insert into STOCKS_ORDER (DELIVERY_CODE,DELIVERY_DATE,EMPLOYEE_CODE,DELIVERY_QUANTITY,SALES_NO) values ('20241213749',to_date('24/12/13','RR/MM/DD'),'160',40,20241213164);
Insert into STOCKS_ORDER (DELIVERY_CODE,DELIVERY_DATE,EMPLOYEE_CODE,DELIVERY_QUANTITY,SALES_NO) values ('20241213751',to_date('24/12/13','RR/MM/DD'),'160',150,20241212148);
Insert into STOCKS_ORDER (DELIVERY_CODE,DELIVERY_DATE,EMPLOYEE_CODE,DELIVERY_QUANTITY,SALES_NO) values ('20241213753',to_date('24/12/13','RR/MM/DD'),'160',10,20241213168);
Insert into STOCKS_ORDER (DELIVERY_CODE,DELIVERY_DATE,EMPLOYEE_CODE,DELIVERY_QUANTITY,SALES_NO) values ('20241213755',to_date('24/12/13','RR/MM/DD'),'160',10,20241212150);
REM INSERTING into STOCKS_RESTOCKING
SET DEFINE OFF;
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241210372',to_date('24/12/10','RR/MM/DD'),'160',20,20241210024);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241210373',to_date('24/12/10','RR/MM/DD'),'160',1,20241210024);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241210374',to_date('24/12/10','RR/MM/DD'),'160',1,20241210024);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241210375',to_date('24/12/10','RR/MM/DD'),'160',18,20241210024);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211376',to_date('24/12/11','RR/MM/DD'),'160',10,20241210024);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211377',to_date('24/12/11','RR/MM/DD'),'160',500,20241211025);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211378',to_date('24/12/11','RR/MM/DD'),'160',500,20241211026);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211379',to_date('24/12/11','RR/MM/DD'),'160',500,20241211027);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211380',to_date('24/12/11','RR/MM/DD'),'160',500,20241211028);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211381',to_date('24/12/11','RR/MM/DD'),'160',500,20241211029);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211382',to_date('24/12/11','RR/MM/DD'),'160',100,20241211030);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211383',to_date('24/12/11','RR/MM/DD'),'160',200,20241211031);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211384',to_date('24/12/11','RR/MM/DD'),'160',10,20241211037);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211385',to_date('24/12/11','RR/MM/DD'),'160',10,20241211036);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211386',to_date('24/12/11','RR/MM/DD'),'160',10,20241211038);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211387',to_date('24/12/11','RR/MM/DD'),'160',30,20241211035);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211388',to_date('24/12/11','RR/MM/DD'),'160',30,20241211034);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211389',to_date('24/12/11','RR/MM/DD'),'160',30,20241211033);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211390',to_date('24/12/11','RR/MM/DD'),'159',20,20241211032);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211391',to_date('24/12/11','RR/MM/DD'),'160',100,20241211030);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211392',to_date('24/12/11','RR/MM/DD'),'160',200,20241211031);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211393',to_date('24/12/11','RR/MM/DD'),'160',20,20241211034);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211394',to_date('24/12/11','RR/MM/DD'),'160',20,20241211033);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211395',to_date('24/12/11','RR/MM/DD'),'160',20,20241211035);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211408',to_date('24/12/11','RR/MM/DD'),'159',50,20241211042);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211409',to_date('24/12/11','RR/MM/DD'),'159',50,20241211044);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211410',to_date('24/12/11','RR/MM/DD'),'159',50,20241211039);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211411',to_date('24/12/11','RR/MM/DD'),'159',50,20241211043);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211412',to_date('24/12/11','RR/MM/DD'),'159',50,20241211040);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211413',to_date('24/12/11','RR/MM/DD'),'159',50,20241211041);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211414',to_date('24/12/11','RR/MM/DD'),'159',10,20241211042);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211415',to_date('24/12/11','RR/MM/DD'),'159',10,20241211041);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211416',to_date('24/12/11','RR/MM/DD'),'159',10,20241211039);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211417',to_date('24/12/11','RR/MM/DD'),'159',10,20241211043);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211418',to_date('24/12/11','RR/MM/DD'),'159',10,20241211040);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211419',to_date('24/12/11','RR/MM/DD'),'159',10,20241211044);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211420',to_date('24/12/11','RR/MM/DD'),'159',30,20241211042);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211421',to_date('24/12/11','RR/MM/DD'),'159',30,20241211041);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211422',to_date('24/12/11','RR/MM/DD'),'159',30,20241211039);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211423',to_date('24/12/11','RR/MM/DD'),'159',35,20241211043);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211424',to_date('24/12/11','RR/MM/DD'),'159',15,20241211040);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211425',to_date('24/12/11','RR/MM/DD'),'159',40,20241211044);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211426',to_date('24/12/11','RR/MM/DD'),'159',10,20241211042);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211427',to_date('24/12/11','RR/MM/DD'),'159',10,20241211041);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211428',to_date('24/12/11','RR/MM/DD'),'159',10,20241211039);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211429',to_date('24/12/11','RR/MM/DD'),'159',25,20241211040);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211430',to_date('24/12/11','RR/MM/DD'),'159',5,20241211043);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211431',to_date('24/12/11','RR/MM/DD'),'159',20,20241211050);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211432',to_date('24/12/11','RR/MM/DD'),'159',20,20241211046);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211433',to_date('24/12/11','RR/MM/DD'),'159',20,20241211048);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211434',to_date('24/12/11','RR/MM/DD'),'159',20,20241211049);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211435',to_date('24/12/11','RR/MM/DD'),'159',20,20241211045);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211436',to_date('24/12/11','RR/MM/DD'),'159',20,20241211047);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211437',to_date('24/12/11','RR/MM/DD'),'159',50,20241211050);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211438',to_date('24/12/11','RR/MM/DD'),'159',50,20241211046);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211439',to_date('24/12/11','RR/MM/DD'),'159',50,20241211045);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211440',to_date('24/12/11','RR/MM/DD'),'159',50,20241211047);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211441',to_date('24/12/11','RR/MM/DD'),'159',50,20241211049);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211442',to_date('24/12/11','RR/MM/DD'),'159',50,20241211048);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211443',to_date('24/12/11','RR/MM/DD'),'159',15,20241211050);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211444',to_date('24/12/11','RR/MM/DD'),'159',15,20241211046);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211445',to_date('24/12/11','RR/MM/DD'),'159',15,20241211045);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241210369',to_date('24/12/10','RR/MM/DD'),'160',50,20241210023);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241210370',to_date('24/12/10','RR/MM/DD'),'160',50,20241210024);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241210371',to_date('24/12/10','RR/MM/DD'),'160',50,20241210023);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211446',to_date('24/12/11','RR/MM/DD'),'159',15,20241211047);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211447',to_date('24/12/11','RR/MM/DD'),'159',15,20241211049);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211448',to_date('24/12/11','RR/MM/DD'),'159',15,20241211048);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211449',to_date('24/12/11','RR/MM/DD'),'159',15,20241211050);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211450',to_date('24/12/11','RR/MM/DD'),'159',15,20241211046);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211451',to_date('24/12/11','RR/MM/DD'),'159',15,20241211045);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211452',to_date('24/12/11','RR/MM/DD'),'159',15,20241211047);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211453',to_date('24/12/11','RR/MM/DD'),'159',15,20241211049);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211454',to_date('24/12/11','RR/MM/DD'),'159',15,20241211048);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211455',to_date('24/12/11','RR/MM/DD'),'159',50,20241211055);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211456',to_date('24/12/11','RR/MM/DD'),'159',50,20241211056);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211457',to_date('24/12/11','RR/MM/DD'),'159',50,20241211053);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211458',to_date('24/12/11','RR/MM/DD'),'159',50,20241211052);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211459',to_date('24/12/11','RR/MM/DD'),'159',50,20241211051);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211460',to_date('24/12/11','RR/MM/DD'),'159',50,20241211054);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211461',to_date('24/12/11','RR/MM/DD'),'159',20,20241211055);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211462',to_date('24/12/11','RR/MM/DD'),'159',20,20241211051);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211463',to_date('24/12/11','RR/MM/DD'),'159',20,20241211056);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211464',to_date('24/12/11','RR/MM/DD'),'159',20,20241211054);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211465',to_date('24/12/11','RR/MM/DD'),'159',20,20241211053);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211466',to_date('24/12/11','RR/MM/DD'),'159',20,20241211052);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211467',to_date('24/12/11','RR/MM/DD'),'159',25,20241211055);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211468',to_date('24/12/11','RR/MM/DD'),'159',25,20241211051);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211469',to_date('24/12/11','RR/MM/DD'),'159',25,20241211056);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211470',to_date('24/12/11','RR/MM/DD'),'159',25,20241211054);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211471',to_date('24/12/11','RR/MM/DD'),'159',25,20241211053);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211472',to_date('24/12/11','RR/MM/DD'),'159',25,20241211052);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211473',to_date('24/12/11','RR/MM/DD'),'159',5,20241211055);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211474',to_date('24/12/11','RR/MM/DD'),'159',5,20241211051);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211475',to_date('24/12/11','RR/MM/DD'),'159',5,20241211056);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211476',to_date('24/12/11','RR/MM/DD'),'159',5,20241211054);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211477',to_date('24/12/11','RR/MM/DD'),'159',5,20241211053);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211478',to_date('24/12/11','RR/MM/DD'),'159',5,20241211052);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211479',to_date('24/12/11','RR/MM/DD'),'159',1000,20241211057);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211480',to_date('24/12/11','RR/MM/DD'),'159',1000,20241211058);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211481',to_date('24/12/11','RR/MM/DD'),'159',500,20241211059);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211482',to_date('24/12/11','RR/MM/DD'),'159',500,20241211060);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211483',to_date('24/12/11','RR/MM/DD'),'160',1000,20241211063);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211484',to_date('24/12/11','RR/MM/DD'),'160',1000,20241211062);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211485',to_date('24/12/11','RR/MM/DD'),'160',1000,20241211061);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211486',to_date('24/12/11','RR/MM/DD'),'159',500,20241211060);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211487',to_date('24/12/11','RR/MM/DD'),'159',500,20241211059);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211488',to_date('24/12/11','RR/MM/DD'),'160',1000,20241211065);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211489',to_date('24/12/11','RR/MM/DD'),'160',1000,20241211064);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211498',to_date('24/12/11','RR/MM/DD'),'160',500,20241211071);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211499',to_date('24/12/11','RR/MM/DD'),'160',500,20241211067);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211500',to_date('24/12/11','RR/MM/DD'),'160',500,20241211066);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211501',to_date('24/12/11','RR/MM/DD'),'160',500,20241211068);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211502',to_date('24/12/11','RR/MM/DD'),'160',500,20241211070);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211503',to_date('24/12/11','RR/MM/DD'),'160',500,20241211069);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211504',to_date('24/12/11','RR/MM/DD'),'160',500,20241211071);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211505',to_date('24/12/11','RR/MM/DD'),'160',500,20241211067);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211506',to_date('24/12/11','RR/MM/DD'),'160',500,20241211066);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211507',to_date('24/12/11','RR/MM/DD'),'160',500,20241211068);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211508',to_date('24/12/11','RR/MM/DD'),'160',500,20241211070);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211509',to_date('24/12/11','RR/MM/DD'),'160',500,20241211069);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211510',to_date('24/12/11','RR/MM/DD'),'160',100,20241211073);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211511',to_date('24/12/11','RR/MM/DD'),'160',100,20241211072);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211512',to_date('24/12/11','RR/MM/DD'),'160',100,20241211074);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211513',to_date('24/12/11','RR/MM/DD'),'160',150,20241211075);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211517',to_date('24/12/11','RR/MM/DD'),'159',100,20241211076);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211518',to_date('24/12/11','RR/MM/DD'),'159',100,20241211078);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211519',to_date('24/12/11','RR/MM/DD'),'159',100,20241211077);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211520',to_date('24/12/11','RR/MM/DD'),'159',100,20241211077);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211521',to_date('24/12/11','RR/MM/DD'),'159',100,20241211076);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211522',to_date('24/12/11','RR/MM/DD'),'159',100,20241211078);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211523',to_date('24/12/11','RR/MM/DD'),'160',50,20241211079);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211534',to_date('24/12/11','RR/MM/DD'),'160',50,20241211079);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211552',to_date('24/12/11','RR/MM/DD'),'159',800,20241211098);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211553',to_date('24/12/11','RR/MM/DD'),'159',800,20241211097);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211554',to_date('24/12/11','RR/MM/DD'),'159',200,20241211091);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211555',to_date('24/12/11','RR/MM/DD'),'159',200,20241211094);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211556',to_date('24/12/11','RR/MM/DD'),'159',200,20241211096);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211557',to_date('24/12/11','RR/MM/DD'),'159',200,20241211095);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211558',to_date('24/12/11','RR/MM/DD'),'159',10,20241211092);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211559',to_date('24/12/11','RR/MM/DD'),'159',200,20241211093);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211560',to_date('24/12/11','RR/MM/DD'),'159',1000,20241211089);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211561',to_date('24/12/11','RR/MM/DD'),'159',1000,20241211088);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211562',to_date('24/12/11','RR/MM/DD'),'159',1000,20241211090);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211563',to_date('24/12/11','RR/MM/DD'),'159',2000,20241211085);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211564',to_date('24/12/11','RR/MM/DD'),'159',500,20241211104);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211565',to_date('24/12/11','RR/MM/DD'),'159',500,20241211103);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211566',to_date('24/12/11','RR/MM/DD'),'159',500,20241211102);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211567',to_date('24/12/11','RR/MM/DD'),'159',500,20241211100);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211568',to_date('24/12/11','RR/MM/DD'),'159',500,20241211099);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211569',to_date('24/12/11','RR/MM/DD'),'159',500,20241211101);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211570',to_date('24/12/11','RR/MM/DD'),'159',200,20241211097);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211571',to_date('24/12/11','RR/MM/DD'),'159',200,20241211098);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211572',to_date('24/12/11','RR/MM/DD'),'159',2000,20241211087);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211573',to_date('24/12/11','RR/MM/DD'),'159',2000,20241211086);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211574',to_date('24/12/11','RR/MM/DD'),'159',2000,20241211084);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211575',to_date('24/12/11','RR/MM/DD'),'159',2000,20241211083);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211576',to_date('24/12/11','RR/MM/DD'),'159',700,20241211105);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211577',to_date('24/12/11','RR/MM/DD'),'159',2000,20241211082);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211578',to_date('24/12/11','RR/MM/DD'),'159',1000,20241211080);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211579',to_date('24/12/11','RR/MM/DD'),'159',1000,20241211081);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211581',to_date('24/12/11','RR/MM/DD'),'159',1,20241211106);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211582',to_date('24/12/11','RR/MM/DD'),'159',899,20241211106);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211583',to_date('24/12/11','RR/MM/DD'),'159',2600,20241211106);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241211584',to_date('24/12/11','RR/MM/DD'),'159',1500,20241211106);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241212585',to_date('24/12/12','RR/MM/DD'),'160',10,20241211110);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241212586',to_date('24/12/12','RR/MM/DD'),'160',10,20241211109);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241212587',to_date('24/12/12','RR/MM/DD'),'160',10,20241211107);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241212588',to_date('24/12/12','RR/MM/DD'),'160',10,20241211108);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241212589',to_date('24/12/12','RR/MM/DD'),'160',10,20241211110);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241212590',to_date('24/12/12','RR/MM/DD'),'160',10,20241211109);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241212591',to_date('24/12/12','RR/MM/DD'),'160',10,20241211107);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241212592',to_date('24/12/12','RR/MM/DD'),'160',10,20241211108);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241212593',to_date('24/12/12','RR/MM/DD'),'160',1,20241211110);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241212594',to_date('24/12/12','RR/MM/DD'),'160',1,20241211109);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241212595',to_date('24/12/12','RR/MM/DD'),'160',1,20241211107);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241212596',to_date('24/12/12','RR/MM/DD'),'160',1,20241211108);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241212597',to_date('24/12/12','RR/MM/DD'),'160',1,20241211110);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241212598',to_date('24/12/12','RR/MM/DD'),'160',1,20241211109);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241212599',to_date('24/12/12','RR/MM/DD'),'160',1,20241211107);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241212600',to_date('24/12/12','RR/MM/DD'),'160',1,20241211108);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241212601',to_date('24/12/12','RR/MM/DD'),'160',1,20241211110);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241212602',to_date('24/12/12','RR/MM/DD'),'160',1,20241211109);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241212603',to_date('24/12/12','RR/MM/DD'),'160',1,20241211107);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241212604',to_date('24/12/12','RR/MM/DD'),'160',1,20241211108);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241212605',to_date('24/12/12','RR/MM/DD'),'160',1,20241211110);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241212606',to_date('24/12/12','RR/MM/DD'),'160',1,20241211109);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241212607',to_date('24/12/12','RR/MM/DD'),'160',1,20241211107);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241212608',to_date('24/12/12','RR/MM/DD'),'160',1,20241211108);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241212609',to_date('24/12/12','RR/MM/DD'),'160',1,20241211110);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241212610',to_date('24/12/12','RR/MM/DD'),'160',1,20241211109);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241212611',to_date('24/12/12','RR/MM/DD'),'160',1,20241211107);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241212612',to_date('24/12/12','RR/MM/DD'),'160',1,20241211108);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241212613',to_date('24/12/12','RR/MM/DD'),'160',1,20241211110);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241212614',to_date('24/12/12','RR/MM/DD'),'160',1,20241211109);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241212615',to_date('24/12/12','RR/MM/DD'),'160',1,20241211107);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241212616',to_date('24/12/12','RR/MM/DD'),'160',1,20241211108);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241212617',to_date('24/12/12','RR/MM/DD'),'160',1,20241211110);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241212618',to_date('24/12/12','RR/MM/DD'),'160',1,20241211109);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241212619',to_date('24/12/12','RR/MM/DD'),'160',1,20241211107);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241212620',to_date('24/12/12','RR/MM/DD'),'160',1,20241211108);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241212621',to_date('24/12/12','RR/MM/DD'),'160',1,20241211110);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241212622',to_date('24/12/12','RR/MM/DD'),'160',1,20241211109);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241212623',to_date('24/12/12','RR/MM/DD'),'160',1,20241211107);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241212624',to_date('24/12/12','RR/MM/DD'),'160',1,20241211108);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241212625',to_date('24/12/12','RR/MM/DD'),'160',1,20241211110);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241212626',to_date('24/12/12','RR/MM/DD'),'160',1,20241211109);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241212627',to_date('24/12/12','RR/MM/DD'),'160',1,20241211107);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241212628',to_date('24/12/12','RR/MM/DD'),'160',1,20241211108);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241212629',to_date('24/12/12','RR/MM/DD'),'160',1,20241211110);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241212630',to_date('24/12/12','RR/MM/DD'),'160',1,20241211109);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241212631',to_date('24/12/12','RR/MM/DD'),'160',1,20241211107);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241212632',to_date('24/12/12','RR/MM/DD'),'160',1,20241211108);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241212633',to_date('24/12/12','RR/MM/DD'),'160',1,20241211110);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241212634',to_date('24/12/12','RR/MM/DD'),'160',1,20241211109);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241212635',to_date('24/12/12','RR/MM/DD'),'160',1,20241211107);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241212636',to_date('24/12/12','RR/MM/DD'),'160',1,20241211108);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241212637',to_date('24/12/12','RR/MM/DD'),'160',1,20241211110);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241212638',to_date('24/12/12','RR/MM/DD'),'160',1,20241211109);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241212639',to_date('24/12/12','RR/MM/DD'),'160',1,20241211107);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241212640',to_date('24/12/12','RR/MM/DD'),'160',1,20241211108);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241212641',to_date('24/12/12','RR/MM/DD'),'160',1,20241211110);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241212642',to_date('24/12/12','RR/MM/DD'),'160',1,20241211109);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241212643',to_date('24/12/12','RR/MM/DD'),'160',1,20241211107);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241212644',to_date('24/12/12','RR/MM/DD'),'160',1,20241211108);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241212645',to_date('24/12/12','RR/MM/DD'),'160',1,20241211110);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241212646',to_date('24/12/12','RR/MM/DD'),'160',1,20241211109);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241212647',to_date('24/12/12','RR/MM/DD'),'160',1,20241211107);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241212648',to_date('24/12/12','RR/MM/DD'),'160',1,20241211108);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241212649',to_date('24/12/12','RR/MM/DD'),'160',1,20241211110);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241212650',to_date('24/12/12','RR/MM/DD'),'160',1,20241211109);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241212651',to_date('24/12/12','RR/MM/DD'),'160',1,20241211107);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241212652',to_date('24/12/12','RR/MM/DD'),'160',1,20241211108);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241212653',to_date('24/12/12','RR/MM/DD'),'160',1,20241211110);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241212654',to_date('24/12/12','RR/MM/DD'),'160',1,20241211109);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241212655',to_date('24/12/12','RR/MM/DD'),'160',1,20241211107);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241212656',to_date('24/12/12','RR/MM/DD'),'160',1,20241211108);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241212657',to_date('24/12/12','RR/MM/DD'),'160',3000,20241212116);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241212658',to_date('24/12/12','RR/MM/DD'),'160',3000,20241212115);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241212659',to_date('24/12/12','RR/MM/DD'),'160',400,20241212113);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241212660',to_date('24/12/12','RR/MM/DD'),'160',500,20241212114);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241212661',to_date('24/12/12','RR/MM/DD'),'160',15,20241211110);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241212662',to_date('24/12/12','RR/MM/DD'),'160',14,20241211109);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241212663',to_date('24/12/12','RR/MM/DD'),'160',14,20241211108);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241212664',to_date('24/12/12','RR/MM/DD'),'160',14,20241211107);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241212667',to_date('24/12/12','RR/MM/DD'),'159',350,20241212118);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241212668',to_date('24/12/12','RR/MM/DD'),'159',400,20241212119);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241212669',to_date('24/12/12','RR/MM/DD'),'160',1500,20241212115);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241212670',to_date('24/12/12','RR/MM/DD'),'160',120,20241212116);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241212671',to_date('24/12/12','RR/MM/DD'),'160',20,20241212113);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241212672',to_date('24/12/12','RR/MM/DD'),'160',20,20241212114);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241212673',to_date('24/12/12','RR/MM/DD'),'231',10,20241212124);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241212674',to_date('24/12/12','RR/MM/DD'),'231',10,20241212122);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241212675',to_date('24/12/12','RR/MM/DD'),'231',50,20241212121);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241212676',to_date('24/12/12','RR/MM/DD'),'231',50,20241212123);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241212677',to_date('24/12/12','RR/MM/DD'),'159',20,20241212118);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241212678',to_date('24/12/12','RR/MM/DD'),'159',150,20241212117);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241212679',to_date('24/12/12','RR/MM/DD'),'159',150,20241212120);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241212680',to_date('24/12/12','RR/MM/DD'),'160',250,20241212115);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241212681',to_date('24/12/12','RR/MM/DD'),'160',280,20241212116);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241212682',to_date('24/12/12','RR/MM/DD'),'160',30,20241212114);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241212683',to_date('24/12/12','RR/MM/DD'),'160',30,20241212113);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241212684',to_date('24/12/12','RR/MM/DD'),'231',10,20241212124);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241212685',to_date('24/12/12','RR/MM/DD'),'231',10,20241212122);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241212686',to_date('24/12/12','RR/MM/DD'),'231',10,20241212121);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241212687',to_date('24/12/12','RR/MM/DD'),'231',10,20241212123);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241212688',to_date('24/12/12','RR/MM/DD'),'159',10,20241212118);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241212689',to_date('24/12/12','RR/MM/DD'),'159',10,20241212117);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241212690',to_date('24/12/12','RR/MM/DD'),'159',10,20241212120);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241212691',to_date('24/12/12','RR/MM/DD'),'160',10,20241212115);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241212692',to_date('24/12/12','RR/MM/DD'),'160',10,20241212116);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241212693',to_date('24/12/12','RR/MM/DD'),'160',10,20241212114);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241212694',to_date('24/12/12','RR/MM/DD'),'160',10,20241212113);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241213707',to_date('24/12/13','RR/MM/DD'),'160',100,20241212132);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241213708',to_date('24/12/13','RR/MM/DD'),'160',50,20241212134);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241213709',to_date('24/12/13','RR/MM/DD'),'160',10,20241212131);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241213713',to_date('24/12/13','RR/MM/DD'),'160',10,20241212130);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241213714',to_date('24/12/13','RR/MM/DD'),'160',40,20241212134);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241213736',to_date('24/12/13','RR/MM/DD'),'160',20,20241212130);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241213737',to_date('24/12/13','RR/MM/DD'),'160',10,20241212134);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241213745',to_date('24/12/13','RR/MM/DD'),'160',200,20241212129);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241213746',to_date('24/12/13','RR/MM/DD'),'160',10,20241212131);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241213748',to_date('24/12/13','RR/MM/DD'),'160',10,20241212135);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241213750',to_date('24/12/13','RR/MM/DD'),'160',100,20241212133);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241213752',to_date('24/12/13','RR/MM/DD'),'160',10,20241212135);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241213754',to_date('24/12/13','RR/MM/DD'),'160',70,20241212135);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241215756',to_date('24/12/15','RR/MM/DD'),'159',100,20241215142);
Insert into STOCKS_RESTOCKING (RESTOCKING_NO,RESTOCKING_DATE,EMPLOYEE_CODE,REAL_QUANTITY,PUR_NO) values ('20241215757',to_date('24/12/15','RR/MM/DD'),'151',10,20241215144);
REM INSERTING into SUB_CODE
SET DEFINE OFF;
REM INSERTING into WAREHOUSE
SET DEFINE OFF;
Insert into WAREHOUSE (WH_CODE,WH_PLACE,WH_NAME,WH_TYPE) values ('10001','서울','서울창고','원두');
Insert into WAREHOUSE (WH_CODE,WH_PLACE,WH_NAME,WH_TYPE) values ('10002','파주','파주창고','기타');
--------------------------------------------------------
--  DDL for Index XPK인사
--------------------------------------------------------

  CREATE UNIQUE INDEX "XPK인사" ON "EMPLOYEES" ("EMPLOYEE_CODE") 
  ;
--------------------------------------------------------
--  DDL for Index XPK매출
--------------------------------------------------------

  CREATE UNIQUE INDEX "XPK매출" ON "SALES" ("SALES_CHIT_NO") 
  ;
--------------------------------------------------------
--  DDL for Index XPK재고_출고내역
--------------------------------------------------------

  CREATE UNIQUE INDEX "XPK재고_출고내역" ON "STOCKS_ORDER" ("DELIVERY_CODE") 
  ;
--------------------------------------------------------
--  DDL for Index XPK인사_기록
--------------------------------------------------------

  CREATE UNIQUE INDEX "XPK인사_기록" ON "EMPLOYEES_HISTORY" ("EH_NO") 
  ;
--------------------------------------------------------
--  DDL for Index XPK회계_계정
--------------------------------------------------------

  CREATE UNIQUE INDEX "XPK회계_계정" ON "ACNT_ACCT" ("ACCT_CODE") 
  ;
--------------------------------------------------------
--  DDL for Index XPK근무_태도
--------------------------------------------------------

  CREATE UNIQUE INDEX "XPK근무_태도" ON "ATT_HISTORY" ("ATT_HISTORY_CODE") 
  ;
--------------------------------------------------------
--  DDL for Index XPK세부_코드
--------------------------------------------------------

  CREATE UNIQUE INDEX "XPK세부_코드" ON "SUB_CODE" ("SUB_NO") 
  ;
--------------------------------------------------------
--  DDL for Index XPK판매_내역
--------------------------------------------------------

  CREATE UNIQUE INDEX "XPK판매_내역" ON "SALESLIP_HISTORY" ("SALES_NO") 
  ;
--------------------------------------------------------
--  DDL for Index XPK고정수당
--------------------------------------------------------

  CREATE UNIQUE INDEX "XPK고정수당" ON "FIXED" ("FIXED_NO") 
  ;
--------------------------------------------------------
--  DDL for Index XPK공제_항목
--------------------------------------------------------

  CREATE UNIQUE INDEX "XPK공제_항목" ON "DEDUCTIONS_ITEM" ("DEDUCTIONS_CODE") 
  ;
--------------------------------------------------------
--  DDL for Index XPK회사
--------------------------------------------------------

  CREATE UNIQUE INDEX "XPK회사" ON "COMPANY" ("CO_NO") 
  ;
--------------------------------------------------------
--  DDL for Index XPK채무거래_내역
--------------------------------------------------------

  CREATE UNIQUE INDEX "XPK채무거래_내역" ON "PAYABLES_LOG" ("REC_LOG_ID") 
  ;
--------------------------------------------------------
--  DDL for Index XPK급여_명세서
--------------------------------------------------------

  CREATE UNIQUE INDEX "XPK급여_명세서" ON "SALARY_PAYROLL" ("SALARY_NUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index XPK채권거래_내역
--------------------------------------------------------

  CREATE UNIQUE INDEX "XPK채권거래_내역" ON "RECEIVABLES_LOG" ("LOG_ID") 
  ;
--------------------------------------------------------
--  DDL for Index XPK창고
--------------------------------------------------------

  CREATE UNIQUE INDEX "XPK창고" ON "WAREHOUSE" ("WH_CODE") 
  ;
--------------------------------------------------------
--  DDL for Index XPK매입계약관리
--------------------------------------------------------

  CREATE UNIQUE INDEX "XPK매입계약관리" ON "CONTRACT" ("CON_NO") 
  ;
--------------------------------------------------------
--  DDL for Index XPK인사_세부정보
--------------------------------------------------------

  CREATE UNIQUE INDEX "XPK인사_세부정보" ON "EMPLOYEES_DETAIL" ("EMPLOYEE_CODE") 
  ;
--------------------------------------------------------
--  DDL for Index XPK구매_전표
--------------------------------------------------------

  CREATE UNIQUE INDEX "XPK구매_전표" ON "PURCHASE_CHIT" ("PURCSLIP_NO") 
  ;
--------------------------------------------------------
--  DDL for Index XPK인사_급여정보
--------------------------------------------------------

  CREATE UNIQUE INDEX "XPK인사_급여정보" ON "EMPLOYEES_SALARY" ("EMPLOYEE_CODE") 
  ;
--------------------------------------------------------
--  DDL for Index XPK재고_입고내역
--------------------------------------------------------

  CREATE UNIQUE INDEX "XPK재고_입고내역" ON "STOCKS_RESTOCKING" ("RESTOCKING_NO") 
  ;
--------------------------------------------------------
--  DDL for Index XPK근태_항목
--------------------------------------------------------

  CREATE UNIQUE INDEX "XPK근태_항목" ON "ATT_ITEM" ("ATT_CODE") 
  ;
--------------------------------------------------------
--  DDL for Index XPK수당_기록
--------------------------------------------------------

  CREATE UNIQUE INDEX "XPK수당_기록" ON "ALLOWANCE_HISTORY" ("AWHI_NO") 
  ;
--------------------------------------------------------
--  DDL for Index XPK매입
--------------------------------------------------------

  CREATE UNIQUE INDEX "XPK매입" ON "PURCHASE" ("PURCHASE_CHIT_NO") 
  ;
--------------------------------------------------------
--  DDL for Index XPK발주서
--------------------------------------------------------

  CREATE UNIQUE INDEX "XPK발주서" ON "ORDERS" ("ORDER_NO") 
  ;
--------------------------------------------------------
--  DDL for Index XPK부서
--------------------------------------------------------

  CREATE UNIQUE INDEX "XPK부서" ON "DEPARTMENT" ("DEPARTMENT_CODE") 
  ;
--------------------------------------------------------
--  DDL for Index XPK수당_항목
--------------------------------------------------------

  CREATE UNIQUE INDEX "XPK수당_항목" ON "ALLOWANCE_ITEM" ("ALLOWANCE_CODE") 
  ;
--------------------------------------------------------
--  DDL for Index XPK품질_검사
--------------------------------------------------------

  CREATE UNIQUE INDEX "XPK품질_검사" ON "QUALITY_TEST" ("TEST_NO", "ITEM_CODE") 
  ;
--------------------------------------------------------
--  DDL for Index XPK발주_품목
--------------------------------------------------------

  CREATE UNIQUE INDEX "XPK발주_품목" ON "ORDER_ITEM" ("ORDER_SUB_NO") 
  ;
--------------------------------------------------------
--  DDL for Index XPK전자세금계산서
--------------------------------------------------------

  CREATE UNIQUE INDEX "XPK전자세금계산서" ON "INVOICE" ("INVOICE_NO") 
  ;
--------------------------------------------------------
--  DDL for Index XPK재고
--------------------------------------------------------

  CREATE UNIQUE INDEX "XPK재고" ON "STOCKS" ("REAL_NO", "WH_CODE", "ITEM_CODE") 
  ;
--------------------------------------------------------
--  DDL for Index XPK시퀀스
--------------------------------------------------------

  CREATE UNIQUE INDEX "XPK시퀀스" ON "SEQ" ("SEQ_NAME") 
  ;
--------------------------------------------------------
--  DDL for Index XPK구매_내역
--------------------------------------------------------

  CREATE UNIQUE INDEX "XPK구매_내역" ON "PURCHASE_HISTORY" ("PUR_NO") 
  ;
--------------------------------------------------------
--  DDL for Index XPK거래처
--------------------------------------------------------

  CREATE UNIQUE INDEX "XPK거래처" ON "CLIENT" ("CLIENT_CODE") 
  ;
--------------------------------------------------------
--  DDL for Index XPK판매_전표
--------------------------------------------------------

  CREATE UNIQUE INDEX "XPK판매_전표" ON "SALES_CHIT" ("SALESLIP_NO") 
  ;
--------------------------------------------------------
--  DDL for Index XPK재고1
--------------------------------------------------------

  CREATE UNIQUE INDEX "XPK재고1" ON "STOCKS" ("REAL_NO") 
  ;
--------------------------------------------------------
--  DDL for Index XAK1인사
--------------------------------------------------------

  CREATE UNIQUE INDEX "XAK1인사" ON "EMPLOYEES" ("EMPLOYEE_ID") 
  ;
--------------------------------------------------------
--  DDL for Index XPK공통_코드
--------------------------------------------------------

  CREATE UNIQUE INDEX "XPK공통_코드" ON "COMMON_CODE" ("CODE_RULE") 
  ;
--------------------------------------------------------
--  DDL for Index XPK주코드
--------------------------------------------------------

  CREATE UNIQUE INDEX "XPK주코드" ON "MAIN" ("MAIN_NO") 
  ;
--------------------------------------------------------
--  DDL for Index XPK매입계약_품목
--------------------------------------------------------

  CREATE UNIQUE INDEX "XPK매입계약_품목" ON "CONTRACT_ITEM" ("ITEM_CODE") 
  ;
--------------------------------------------------------
--  DDL for Index XPK계좌
--------------------------------------------------------

  CREATE UNIQUE INDEX "XPK계좌" ON "BACCT" ("BACCT_CODE") 
  ;
--------------------------------------------------------
--  DDL for Procedure ATTENDANCE_INSERT
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "ATTENDANCE_INSERT" 
(
  p_attarray IN ATTARRAY
) AS 
v_employcode VARCHAR2(20) := '001';
v_start DATE := to_date('09:00','HH24:MI');
v_end DATE := to_date('18:00','HH24:MI');
v_attcode VARCHAR2(30) := '정상';

v_total NUMBER;
v_overtime NUMBER;
v_night NUMBER;
v_weekend NUMBER;
BEGIN

FOR i in 1 .. p_attarray.COUNT LOOP


--총근로시간 계산
v_total := TRUNC((p_attarray(i).leave_time - p_attarray(i).attendance_time)*24*60);
IF v_total < 0 THEN 
v_total := 0;
END IF;

--연장근무시간 계산
v_overtime := TRUNC((TO_DATE(TO_CHAR(p_attarray(i).leave_time,'HH24:MI'),'HH24:MI') - (TO_DATE('19:00','HH24:MI')))*24*60);
IF v_overtime < 0 THEN 
v_overtime := 0;
END IF;

--야간근무시간 계산
v_night := TRUNC((TO_DATE(TO_CHAR(p_attarray(i).leave_time,'HH24:MI'),'HH24:MI') - (TO_DATE('22:00','HH24:MI')))*24*60);
IF v_night < 0 THEN 
v_night := 0;
END IF;

--주말근무시간계산
IF TO_CHAR(TO_DATE(p_attarray(i).attendance_date),'d') = '1' OR TO_CHAR(TO_DATE(p_attarray(i).attendance_date),'d') = '7' THEN
v_weekend := v_total;
ELSE
v_weekend := 0;
END IF;

INSERT INTO att_history
              (att_history_code
              ,employee_code
              ,attendance_date
              ,attendance_time
              ,leave_time
              ,total_worktime
              ,overtime_worktime
              ,night_worktime
              ,weekend_worktime
              ,att_code
                       )
       VALUES (att_history_seq.NEXTVAL
              ,p_attarray(i).employee_code
              ,p_attarray(i).attendance_date
              ,p_attarray(i).attendance_time
              ,p_attarray(i).leave_time
              ,v_total
              ,v_overtime
              ,v_night
              ,v_weekend
              ,p_attarray(i).att_code);
END LOOP;


END ATTENDANCE_INSERT;

/
--------------------------------------------------------
--  DDL for Procedure DECREASE_PAYABLES
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "DECREASE_PAYABLES" 
( p_decrease_price client.balancem%TYPE,
  p_bacct_code payables_log.bacct_code%TYPE,
  p_client_code client.client_code%TYPE,
  p_result IN OUT VARCHAR2)
IS
     CURSOR payables_cursor IS -- 채무 금액 조회용 커서
        SELECT total_price, purchase_chit_no, decrease_balance
        FROM purchase
        WHERE client_code = p_client_code
        AND   DECREASE_STATUS != 'n2';

    v_purchase payables_cursor%ROWTYPE; -- 커서에 값을 저장할 변수
    v_left_balance purchase.decrease_balance%TYPE; -- 채무 지불후 남은 금액 담을 변수
    v_intput_price purchase.decrease_balance%TYPE; -- 로그 저장할 때 저장될 채무감소금액 변수
    v_balancem NUMBER(10);
    over_balance EXCEPTION; -- 금액 초과 예외
BEGIN
    -- 입력금액과 총금액 비교
    SELECT balancem
    INTO   v_balancem
    FROM   client
    WHERE  client_code = p_client_code;

    IF v_balancem < p_decrease_price THEN
        RAISE over_balance; -- 총 금액 초과 예외 발생
    ELSE
        -- -> 거래처 테이블 총 채무 감소
        UPDATE client
        SET balancem = balancem-p_decrease_price
        WHERE client_code = p_client_code;
        
        -- -> 구매 테이블 채무 잔액 감소 (잔액 = 0 ? status = n2)
        -- 오래된 채무를 선결제 하고 남은 금액은 그 다음채무를 감소
        v_left_balance := p_decrease_price; -- 잔액 초기값 설정
        
        OPEN payables_cursor;
        LOOP
            FETCH payables_cursor INTO v_purchase;
            EXIT WHEN v_left_balance = 0;
            IF (v_purchase.total_price - v_purchase.decrease_balance) > v_left_balance THEN
                UPDATE purchase
                SET decrease_balance = decrease_balance + v_left_balance
                WHERE purchase_chit_no = v_purchase.purchase_chit_no;
                
                v_intput_price:= v_left_balance; -- 금액보다 적으므로 남아있는 잔액을 저장
                v_left_balance:= 0;
            ELSIF (v_purchase.total_price - v_purchase.decrease_balance) = v_left_balance THEN
                UPDATE purchase
                SET decrease_balance = v_purchase.total_price, 
                    decrease_status = 'n2'
                WHERE purchase_chit_no = v_purchase.purchase_chit_no;
                
                v_intput_price:= v_left_balance; -- 금액과 같으므로 채무잔액과 같은 값을 저장
                v_left_balance := 0;
            ELSE
                UPDATE purchase
                SET decrease_balance = v_purchase.total_price, 
                    decrease_status = 'n2'
                WHERE purchase_chit_no = v_purchase.purchase_chit_no;
                
                v_intput_price := v_purchase.total_price; -- 금액이 초과하므로 구매테이블의 채무잔액만큼 값을 저장
                v_left_balance := v_left_balance - v_purchase.total_price; -- 채무 감소 후 잔액 감소
            END IF;
            
            INSERT INTO payables_log -- 채권 감소 등록
                        (REC_LOG_ID
                        ,REC_DATE
                        ,INCREASE_PRICE
                        ,BACCT_CODE
                        ,CLIENT_CODE
                        ,PURCHASE_CHIT_NO
                        )
            VALUES     (payables_log_SEQ.nextVal
                        ,SYSDATE
                        ,v_intput_price -- 위에서 조건문별로 변동되는 값이 저장됨
                        ,p_bacct_code
                        ,p_client_code
                        ,v_purchase.purchase_chit_no -- 위에서 처리한 채권에 대한 감소정보 추가
                        ); 
            -- 채권 감소 등록 완료
        END LOOP;
        CLOSE payables_cursor;
        p_result := 'success';
        commit;
    END IF;
EXCEPTION
    WHEN over_balance THEN
        p_result := 'fail';
        rollback;
        DBMS_OUTPUT.PUT_LINE('채권 총 금액보다 많은 금액을 입금하셨습니다.');
END;

/
--------------------------------------------------------
--  DDL for Procedure DECREASE_RECEIVABLE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "DECREASE_RECEIVABLE" 
( p_rec_price client.balancek%TYPE,
  p_bacct_code payables_log.bacct_code%TYPE,
  p_client_code client.client_code%TYPE,
  p_result out VARCHAR2)
IS
     CURSOR sales_cursor IS -- 채권 금액 조회용 커서
        SELECT total_price, sales_chit_no, rec_balance
        FROM sales
        WHERE client_code = p_client_code;
    
    v_sales sales_cursor%ROWTYPE; -- 커서에 값을 저장할 변수
    v_left_balance sales.rec_balance%TYPE; -- 채권 지불후 남은 금액 담을 변수
    v_intput_price sales.rec_balance%TYPE; -- 로그 저장할 때 저장될 채권감소금액 변수
    v_balancek NUMBER(10);
    over_balance EXCEPTION; -- 금액 초과 예외
BEGIN
    -- 입력금액과 총금액 비교
    SELECT balancek
    INTO   v_balancek
    FROM   client
    WHERE  client_code = p_client_code;

    IF v_balancek < p_rec_price THEN
        RAISE over_balance; -- 총 금액 초과 예외 발생
    ELSE
        -- -> 거래처 테이블 총 채권 감소
        UPDATE client
        SET balancek = balancek-p_rec_price
        WHERE client_code = p_client_code;
        -- -> 구매 테이블 채권 잔액 감소 (잔액 = 0 ? status = n2)
        -- 오래된 채권를 선결제 하고 남은 금액은 그 다음채권을 감소
        v_left_balance := p_rec_price; -- 잔액 초기값 설정
        
        OPEN sales_cursor;
        LOOP
            FETCH sales_cursor INTO v_sales;
            EXIT WHEN v_left_balance = 0;
            
            IF (v_sales.total_price - v_sales.rec_balance) > v_left_balance THEN
                UPDATE sales
                SET rec_balance = rec_balance + v_left_balance
                WHERE sales_chit_no = v_sales.sales_chit_no;
                v_intput_price:= v_left_balance; -- 금액보다 적으므로 남아있는 잔액을 저장
                v_left_balance:= 0;
            ELSIF (v_sales.total_price - v_sales.rec_balance) = v_left_balance THEN
                UPDATE sales
                SET rec_balance = v_sales.total_price, rec_status = 'n2'
                WHERE sales_chit_no = v_sales.sales_chit_no;
                v_intput_price := v_left_balance; -- 금액과 같으므로 채권잔액과 같은 값을 저장
                v_left_balance := 0;
            ELSE
                UPDATE sales
                SET rec_balance = v_sales.total_price, rec_status = 'n2'
                WHERE sales_chit_no = v_sales.sales_chit_no;
                v_intput_price := v_sales.total_price; -- 금액이 초과하므로 구매테이블의 채권잔액만큼 값을 저장
                v_left_balance := v_left_balance - v_sales.total_price; -- 채권 감소 후 잔액 감소
            END IF;
            
            INSERT INTO receivables_log -- 채권 감소 등록
                        (LOG_ID
                        ,REC_DATE
                        ,DECREASE_PRICE
                        ,BACCT_CODE
                        ,CLIENT_CODE
                        ,SALES_CHIT_NO
                        )
            VALUES     (receivables_log_SEQ.nextVal
                        ,SYSDATE
                        ,v_intput_price -- 위에서 조건문별로 변동되는 값이 저장됨
                        ,p_bacct_code
                        ,p_client_code
                        ,v_sales.sales_chit_no -- 위에서 처리한 채권에 대한 감소정보 추가
                        ); 
            -- 채권 감소 등록 완료
        END LOOP;
        
        CLOSE sales_cursor;
        p_result := 'success';
        commit;
    END IF;
EXCEPTION
    WHEN over_balance THEN
        p_result := 'fail';
        rollback;
        DBMS_OUTPUT.PUT_LINE('채권 총 금액보다 많은 금액을 입금하셨습니다.');
END;

/
--------------------------------------------------------
--  DDL for Procedure EMPLOYEE_DELETE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "EMPLOYEE_DELETE" AS 
    CURSOR emp_list IS
    SELECT employee_code
    FROM   employees
    WHERE  resignation_date < SYSDATE + (INTERVAL '-3' YEAR);
    
    v_code employees.employee_code%TYPE;

begin

    OPEN emp_list;
    LOOP
        FETCH emp_list INTO v_code;
        EXIT WHEN emp_list%NOTFOUND;
        --사원디테일정보 삭제
        DELETE FROM employees_detail
        WHERE employee_code = v_code;
        --사원급여정보삭제
        DELETE FROM employees_salary
        WHERE employee_code = v_code;
        --고정수당삭제
        DELETE FROM fixed
        WHERE employee_code = v_code;
        --근태기록삭제
        DELETE FROM att_history
        WHERE employee_code = v_code;
        --수당기록삭제
        DELETE FROM allowance_history
        WHERE employee_code = v_code;
        --급여명세삭제
        DELETE FROM salary_payroll
        WHERE employee_code = v_code;
        --사원정보삭제
        DELETE FROM employees
        WHERE employee_code = v_code;
    END LOOP;
    --백업 수당기록 삭제
    DELETE FROM backup_awhi
    WHERE backup_date < SYSDATE + (INTERVAL '-3' YEAR);
    --백업 급여명세삭제
    DELETE FROM backup_payroll
    WHERE backup_date < SYSDATE + (INTERVAL '-3' YEAR);
END EMPLOYEE_DELETE;

/
--------------------------------------------------------
--  DDL for Procedure EMPLOYEE_HISTORY_INSERT
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "EMPLOYEE_HISTORY_INSERT" 
(
  eh_array IN EMPLOYEE_HISTORY_table
) AS 

BEGIN
    FOR i IN 1 .. eh_array.count LOOP
        INSERT INTO employees_history (
                                        EH_NO
                                       ,EH_DATE
                                       ,EH_TYPE
                                       ,EMPLOYEE_CODE
                                       ,PREV_POSITION
                                       ,ASSIGNED_POSITION
                                       ,PREV_DEPARTMENT
                                       ,ASSIGNED_DEPARTMENT
                                       ,STANDARD_DATE)
        VALUES                       (EMPLOYEE_HISTORY_SEQ.nextval
                                       ,eh_array(i).EH_DATE
                                       ,eh_array(i).EH_TYPE
                                       ,eh_array(i).EMPLOYEE_CODE
                                       ,eh_array(i).PREV_POSITION
                                       ,eh_array(i).ASSIGNED_POSITION
                                       ,eh_array(i).PREV_DEPARTMENT
                                       ,eh_array(i).ASSIGNED_DEPARTMENT
                                       ,eh_array(i).STANDARD_DATE);                        
    END LOOP;
END EMPLOYEE_HISTORY_INSERT;

/
--------------------------------------------------------
--  DDL for Procedure EMPLOYEE_INSERT
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "EMPLOYEE_INSERT" 
( p_name IN VARCHAR2 --1
, p_hire_date IN DATE
, p_password IN VARCHAR2 
, p_employee_position IN VARCHAR2 
, p_status_type IN VARCHAR2 --5 
, p_resignation_date IN DATE 
, p_hire_type IN VARCHAR2 
, p_department_code IN VARCHAR2 
, p_eng_name IN VARCHAR2 
, p_identity_no IN VARCHAR2  --10
, p_head_check IN VARCHAR2 
, p_duty IN VARCHAR2 
, p_tel IN VARCHAR2 
, p_phone IN VARCHAR2 
, p_email IN VARCHAR2 --15
, p_emp_status IN VARCHAR2
, p_zipcode IN NUMBER
, p_address IN VARCHAR2
, p_detail_address IN VARCHAR2
, p_bacct IN VARCHAR2 --20
, p_depositor IN VARCHAR2
, p_employee_image IN VARCHAR2
, p_bank IN VARCHAR2
, p_monthly_salary IN NUMBER
, p_fixedarray IN FIXEDARRAY --25
) AS 
    CURSOR income_cursor IS
        SELECT income_tax
              ,deductions_deductible
              ,maxval
              ,minval
        FROM deductions_item
        where deductions_name= '소득세'
        ORDER BY maxval DESC;
    income_record income_cursor%ROWTYPE;  -- 소득세커서
        
    
    
    
    v_dept_name department.department_name%TYPE;
    v_dept_code department.department_name%TYPE;
    v_role NUMBER := 0;
    
    v_empcode employees.employee_code%TYPE; -- 사원번호
    v_empid employees.employee_id%TYPE; -- 사원아이디
    v_ansal employees_salary.annual_salary%TYPE;-- 연봉 
    v_tmsal employees_salary.time_salary%TYPE; -- 시급 
    v_income employees_salary.income_invoice%TYPE := 0; -- 소득세 
    v_leave employees_salary.leave_rate%TYPE; -- 무급휴가비
    v_health employees_salary.health_insurance%TYPE; -- 건강보험료
    v_healthrate deductions_item.deductions_deductible%TYPE; --건강보험료율
    v_sum NUMBER(11) := 0;
BEGIN
 -- 사원번호와 사원아이디 구하는 함수
    
    SELECT domain('employee_id')
    INTO v_empid
    FROM dual;
    
    SELECT employee_code_seq.NEXTVAL
    INTO v_empcode
    FROM dual;
    
-- 패스워드 널값 체크
-- 권한 부여
   IF p_department_code = 'D001' THEN --영업
   v_role := 3; 
   ELSIF p_department_code = 'D002' THEN --인사
   v_role := 2;
   ELSIF p_department_code = 'D003' THEN --회계
   v_role := 4;
   ELSIF p_department_code = 'D004' THEN --물류
   v_role := 5;
   END IF;
    
    
--  사원정보 넣기

    INSERT INTO employees (
                          employee_code,
                          employee_id,
                          name,
                          hire_date,
                          password,
                          employee_position,
                          status_type,
                          resignation_date,
                          hire_type,
                          department_code)
    values (
             v_empcode
            ,v_empid
            ,p_name
            ,p_hire_date
            ,p_password --비밀번호 초기값은 주민번호 앞자리 6자리
            ,p_employee_position
            ,p_status_type
            ,p_resignation_date
            ,p_hire_type
            ,p_department_code
           );
           -- 사원디테일 정보 넣기 
    INSERT INTO employees_detail(employee_code
                                ,eng_name
                                ,identity_no
                                ,head_check
                                ,duty
                                ,tel
                                ,phone
                                ,email
                                ,emp_status
                                ,zipcode
                                ,address
                                ,detail_address
                                ,bacct
                                ,depositor
                                ,employee_image
                                ,bank
                                ,employee_role
                                 )
    VALUES (v_empcode
           ,p_name
           ,p_identity_no
           ,p_head_check
           ,p_duty
           ,p_tel
           ,p_phone
           ,p_email
           ,p_emp_status
           ,p_zipcode
           ,p_address
           ,p_detail_address
           ,p_bacct
           ,p_depositor
           ,p_employee_image
           ,p_bank
           ,v_role );
    
    -- 연봉 + 수당 계산하기 및 사원 고정수당 INSERT 
    FOR i in 1..p_fixedarray.COUNT LOOP
        INSERT INTO fixed 
        (fixed_no,allowance_price,allowance_code,employee_code)
        VALUES (fixed_seq.nextval, p_fixedarray(i).allowance_price, p_fixedarray(i).allowance_code, v_empcode);
        IF  p_fixedarray(i).allowance_check = '과세' THEN
        v_sum := v_sum + p_fixedarray(i).allowance_price;
        END IF;
    END LOOP;

    --사원급여정보 계산    
    v_ansal := p_monthly_salary*12;
    v_tmsal := p_monthly_salary/209;

    v_sum := (v_sum + p_monthly_salary)*12;
    
    -- 소득세 계산하기 
    OPEN income_cursor;
    LOOP
        FETCH income_cursor INTO income_record;
        EXIT WHEN income_cursor%NOTFOUND; 
        IF v_sum > income_record.minval THEN
            v_income := (((v_sum - income_record.minval)*(income_record.deductions_deductible/100)) + income_record.income_tax)/12;
        EXIT;
        END IF;
    END LOOP;
    CLOSE income_cursor;
    --무급휴가비 계산하기
    v_leave := TRUNC(v_tmsal*8);
    
    
    
    
    --건강보험료 계산하기
    SELECT deductions_deductible
    INTO v_healthrate
    FROM deductions_item
    WHERE deductions_name = '건강보험료';
    
    v_health := (v_sum*(v_healthrate/100))/12;
    
    
    
    -- 사원급여정보 넣기  
    INSERT INTO employees_salary (annual_salary,monthly_salary,time_salary,income_invoice,leave_rate,health_insurance,employee_code)
    VALUES (v_ansal
           ,p_monthly_salary
           ,v_tmsal
           ,v_income
           ,v_leave
           ,v_health
           ,v_empcode);

END EMPLOYEE_INSERT;

/
--------------------------------------------------------
--  DDL for Procedure EMPLOYEE_ONE_SAL_UPDATE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "EMPLOYEE_ONE_SAL_UPDATE" 
( p_employee_code IN VARCHAR2) AS
     --사원급여정보 커서
     
     --소득세 커서
     CURSOR income_cursor IS
     SELECT deductions_code,
            deductions_name,
            deductions_deductible,
            minval,
            maxval,
            income_tax
     FROM   deductions_item
     WHERE  deductions_name = '소득세'
     ORDER BY maxval DESC;

     --커서 변수 선언
     v_income_cursor income_cursor%ROWTYPE;
     v_sal_cursor employees_salary%ROWTYPE;

     --소득세 테이블
     TYPE deduction_table_type IS TABLE OF deductions_item%ROWTYPE
          INDEX BY BINARY_INTEGER;     
     v_index NUMBER := 1; --테이블 인덱스 세팅
     v_deduction_table deduction_table_type;

     v_health_rate NUMBER; --건강보험료율

     v_payroll_count NUMBER; --급여명세서 갯수
     v_notax_payment NUMBER;  --실급여액 총합(1년치)
     v_allowance NUMBER; --과세수당 총합
     v_sum NUMBER; --총액

     v_annual_salary NUMBER;
     v_monthly_salary NUMBER;
     v_time_salary NUMBER;
     v_income_invoice NUMBER;
     v_leave_rate NUMBER;
     v_employee_code VARCHAR2(20);
     v_health_insurance NUMBER;

BEGIN
    --테이블에 소득세 넣기
    OPEN income_cursor;
    LOOP
        FETCH income_cursor INTO v_income_cursor;
        EXIT WHEN income_cursor%NOTFOUND;
        v_deduction_table(v_index) := v_income_cursor;
        v_index := v_index + 1;
    END LOOP;
    CLOSE income_cursor;

    --건강보험료 값 가져오기
    SELECT deductions_deductible
    INTO   v_health_rate
    FROM   deductions_item
    WHERE  deductions_name = '건강보험료';

    --



      SELECT annual_salary
            ,monthly_salary
            ,time_salary
            ,income_invoice
            ,leave_rate
            ,employee_code
            ,health_insurance
      INTO   v_sal_cursor     
      FROM   employees_salary
      WHERE  employee_code = p_employee_code;


        -- 과세 수당 총합
        SELECT NVL(sum(allowance_price),0)
        INTO v_allowance
        FROM fixed fx
        JOIN allowance_item ai
        ON   fx.allowance_code = ai.allowance_code
        WHERE fx.employee_code = v_sal_cursor.employee_code
        AND   ai.allowance_check ='과세';

        --전년도 급여액 총합 구하기
        SELECT count(salary_number),sum(notax_payment)
        INTO v_payroll_count, v_notax_payment
        FROM   salary_payroll
        WHERE  employee_code = v_sal_cursor.employee_code
        AND    payroll_ydate  
        BETWEEN  TO_DATE((TO_CHAR((sysdate - (INTERVAL '1' YEAR)),'YYYY')||'0101'),'YYYYMMdd')
        AND      TO_DATE((TO_CHAR((sysdate - (INTERVAL '1' YEAR)),'YYYY')||'1231'),'YYYYMMdd');

        --연봉계산

        v_annual_salary := v_sal_cursor.monthly_salary*12;
        --월급
        DBMS_OUTPUT.PUT_LINE(v_sal_cursor.monthly_salary);
        --시급
        v_time_salary := TRUNC(v_sal_cursor.monthly_salary/209);

        -- 수당 + 연봉
        v_sum := v_annual_salary + (v_allowance*12);
        --소득세계산
        FOR i in 1 .. v_deduction_table.count LOOP
           IF v_sum > v_deduction_table(i).minval THEN
              v_income_invoice := ( ((v_sum - v_deduction_table(i).minval)*(v_deduction_table(i).deductions_deductible/100))
                                    + v_deduction_table(i).income_tax
                                    ) /12;

              EXIT;
           END IF;
        END LOOP;

        --유급휴가비

        v_leave_rate := v_time_salary * 8;


        --전년도에 회사에서 근무했다면(12개월)
        IF v_payroll_count >= 12 THEN

        --건강보험료
        v_health_insurance := (v_notax_payment * (v_health_rate/100))/12;
        ELSE
        v_health_insurance := (v_sum * (v_health_rate/100))/12;

        END IF;

        UPDATE employees_salary
        SET  annual_salary    =  v_annual_salary 
            ,monthly_salary   =  v_sal_cursor.monthly_salary
            ,time_salary      =  v_time_salary
            ,income_invoice   =  v_income_invoice
            ,leave_rate       =  v_leave_rate
            ,employee_code    =  v_sal_cursor.employee_code
            ,health_insurance =  v_health_insurance
        WHERE employee_code   =  v_sal_cursor.employee_code;



END EMPLOYEE_ONE_SAL_UPDATE;

/
--------------------------------------------------------
--  DDL for Procedure EMPLOYEE_SAL_UPDATE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "EMPLOYEE_SAL_UPDATE" AS 
     --사원급여정보 커서
     CURSOR sal_cursor IS
     SELECT annual_salary
           ,monthly_salary
           ,time_salary
           ,income_invoice
           ,leave_rate
           ,employee_code
           ,health_insurance
     FROM   employees_salary;
     
     --소득세 커서
     CURSOR income_cursor IS
     SELECT deductions_code,
            deductions_name,
            deductions_deductible,
            minval,
            maxval,
            income_tax
     FROM   deductions_item
     WHERE  deductions_name = '소득세'
     ORDER BY maxval DESC;
     
     --커서 변수 선언
     v_income_cursor income_cursor%ROWTYPE;
     v_sal_cursor sal_cursor%ROWTYPE;
     
     --소득세 테이블
     TYPE deduction_table_type IS TABLE OF deductions_item%ROWTYPE
          INDEX BY BINARY_INTEGER;     
     v_index NUMBER := 1; --테이블 인덱스 세팅
     v_deduction_table deduction_table_type;
     
     v_health_rate NUMBER; --건강보험료율
     
     v_payroll_count NUMBER; --급여명세서 갯수
     v_notax_payment NUMBER;  --실급여액 총합(1년치)
     v_allowance NUMBER; --과세수당 총합
     v_sum NUMBER; --총액
     
     v_annual_salary NUMBER;
     v_monthly_salary NUMBER;
     v_time_salary NUMBER;
     v_income_invoice NUMBER;
     v_leave_rate NUMBER;
     v_employee_code VARCHAR2(20);
     v_health_insurance NUMBER;
     
BEGIN
    --테이블에 소득세 넣기
    OPEN income_cursor;
    LOOP
        FETCH income_cursor INTO v_income_cursor;
        EXIT WHEN income_cursor%NOTFOUND;
        v_deduction_table(v_index) := v_income_cursor;
        v_index := v_index + 1;
    END LOOP;
    CLOSE income_cursor;
    
    --건강보험료 값 가져오기
    SELECT deductions_deductible
    INTO   v_health_rate
    FROM   deductions_item
    WHERE  deductions_name = '건강보험료';
    
    --

    OPEN sal_cursor;
    LOOP
        FETCH sal_cursor INTO v_sal_cursor;
        EXIT WHEN sal_cursor%NOTFOUND;
        -- 과세 수당 총합
        SELECT NVL(sum(allowance_price),0)
        INTO v_allowance
        FROM fixed fx
        JOIN allowance_item ai
        ON   fx.allowance_code = ai.allowance_code
        WHERE fx.employee_code = v_sal_cursor.employee_code
        AND   ai.allowance_check ='과세';
        
        --전년도 급여액 총합 구하기
        SELECT count(salary_number),sum(notax_payment)
        INTO v_payroll_count, v_notax_payment
        FROM   salary_payroll
        WHERE  employee_code = v_sal_cursor.employee_code
        AND    payroll_ydate  
        BETWEEN  TO_DATE((TO_CHAR((sysdate - (INTERVAL '1' YEAR)),'YYYY')||'0101'),'YYYYMMdd')
        AND      TO_DATE((TO_CHAR((sysdate - (INTERVAL '1' YEAR)),'YYYY')||'1231'),'YYYYMMdd');
        
        --연봉계산
        
        v_annual_salary := v_sal_cursor.monthly_salary*12;
        --월급
        DBMS_OUTPUT.PUT_LINE(v_sal_cursor.monthly_salary);
        --시급
        v_time_salary := TRUNC(v_sal_cursor.monthly_salary/209);
        
        -- 수당 + 연봉
        v_sum := v_annual_salary + (v_allowance*12);
        --소득세계산
        FOR i in 1 .. v_deduction_table.count LOOP
           IF v_sum > v_deduction_table(i).minval THEN
              v_income_invoice := ( ((v_sum - v_deduction_table(i).minval)*(v_deduction_table(i).deductions_deductible/100))
                                    + v_deduction_table(i).income_tax
                                    ) /12;
                                    
              EXIT;
           END IF;
        END LOOP;
        
        --유급휴가비
        
        v_leave_rate := v_time_salary * 8;
        
        
        --전년도에 회사에서 근무했다면(12개월)
        IF v_payroll_count >= 12 THEN
                
        --건강보험료
        v_health_insurance := (v_notax_payment * (v_health_rate/100))/12;
        ELSE
        v_health_insurance := (v_sum * (v_health_rate/100))/12;
        
        END IF;
        
        UPDATE employees_salary
        SET  annual_salary    =  v_annual_salary 
            ,monthly_salary   =  v_sal_cursor.monthly_salary
            ,time_salary      =  v_time_salary
            ,income_invoice   =  v_income_invoice
            ,leave_rate       =  v_leave_rate
            ,employee_code    =  v_sal_cursor.employee_code
            ,health_insurance =  v_health_insurance
        WHERE employee_code   =  v_sal_cursor.employee_code;
            
        
    END LOOP;
    
    CLOSE sal_cursor;

END EMPLOYEE_SAL_UPDATE;

/
--------------------------------------------------------
--  DDL for Procedure EMPLOYEE_UPDATE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "EMPLOYEE_UPDATE" 
( p_employee_code IN VARCHAR2
, p_name IN VARCHAR2 --1
, p_hire_date IN DATE
, p_employee_position IN VARCHAR2 
, p_status_type IN VARCHAR2 --5 
, p_resignation_date IN DATE 
, p_hire_type IN VARCHAR2 
, p_department_code IN VARCHAR2 --기본정보 
, p_eng_name IN VARCHAR2 
, p_identity_no IN VARCHAR2  --10
, p_head_check IN VARCHAR2 
, p_duty IN VARCHAR2 
, p_tel IN VARCHAR2 
, p_phone IN VARCHAR2 
, p_email IN VARCHAR2 --15
, p_emp_status IN VARCHAR2
, p_zipcode IN NUMBER
, p_address IN VARCHAR2
, p_detail_address IN VARCHAR2
, p_bacct IN VARCHAR2 --20
, p_depositor IN VARCHAR2
, p_employee_image IN VARCHAR2
, p_bank IN VARCHAR2 --디테일정보
, p_monthly_salary IN NUMBER
, p_fixedarray IN FIXEDARRAY --25
) AS 
    CURSOR income_cursor IS
        SELECT income_tax
              ,deductions_deductible
              ,maxval
              ,minval
        FROM deductions_item
        where deductions_name= '소득세'
        ORDER BY maxval DESC;
    income_record income_cursor%ROWTYPE;  -- 소득세커서

    v_fixed_checked VARCHAR2(20); --수당 존재확인
    v_role NUMBER := 0;


    v_empcode employees.employee_code%TYPE; -- 사원번호
    v_empid employees.employee_id%TYPE; -- 사원아이디
    v_ansal employees_salary.annual_salary%TYPE;-- 연봉 
    v_tmsal employees_salary.time_salary%TYPE; -- 시급 
    v_income employees_salary.income_invoice%TYPE := 0; -- 소득세 
    v_leave employees_salary.leave_rate%TYPE; -- 무급휴가비
    v_health employees_salary.health_insurance%TYPE; -- 건강보험료
    v_healthrate deductions_item.deductions_deductible%TYPE; --건강보험료율
    v_sum NUMBER(11) := 0;
BEGIN
 -- 사원번호와 사원아이디 구하는 함수

    SELECT domain('employee_id')
    INTO v_empid
    FROM dual;

    SELECT employee_code_seq.NEXTVAL
    INTO v_empcode
    FROM dual;

-- 패스워드 널값 체크
-- 권한 부여
   IF p_department_code = 'D001' THEN --영업
   v_role := 3; 
   ELSIF p_department_code = 'D002' THEN --인사
   v_role := 2;
   ELSIF p_department_code = 'D003' THEN --회계
   v_role := 4;
   ELSIF p_department_code = 'D004' THEN --물류
   v_role := 5;
   END IF;


--  사원정보 넣기

    UPDATE employees 
    SET name = p_name,
          hire_date = p_hire_date,
          employee_position = p_employee_position,
          status_type = p_status_type,
          resignation_date = p_resignation_date,
          hire_type = p_hire_type,
          department_code = p_department_code --8
     WHERE employee_code = p_employee_code;
           -- 사원디테일 정보 넣기 
    UPDATE employees_detail
    SET      eng_name = p_eng_name
            ,identity_no = p_identity_no
            ,head_check =  p_head_check
            ,duty = p_duty
            ,tel = p_tel
            ,phone = p_phone
            ,email = p_email
            ,emp_status = p_emp_status
            ,zipcode = p_zipcode
            ,address = p_address
            ,detail_address = p_detail_address
            ,bacct = p_bacct
            ,depositor = p_depositor
            ,employee_image = p_employee_image
            ,bank = p_bank
            ,employee_role = v_role--15
    WHERE  employee_code = p_employee_code;

    -- 연봉 + 수당 계산하기 및 사원 고정수당 INSERT 
    DELETE FROM fixed
    WHERE  employee_code = p_employee_code;
    FOR i in 1..p_fixedarray.COUNT LOOP
        IF p_fixedarray(i).allowance_price <> 0 AND p_fixedarray(i).allowance_code IS NOT NULL THEN
           INSERT INTO fixed 
              (fixed_no,allowance_price,allowance_code,employee_code)
              VALUES (fixed_seq.nextval, p_fixedarray(i).allowance_price, p_fixedarray(i).allowance_code, p_employee_code);
              v_sum := v_sum + p_fixedarray(i).allowance_price;

        END IF;   
    END LOOP;

    --사원급여정보 수정    
    UPDATE employees_salary 
    SET monthly_salary  = p_monthly_salary
    WHERE employee_code = p_employee_code;
END EMPLOYEE_UPDATE;

/
--------------------------------------------------------
--  DDL for Procedure PAYROLL_INSERT
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "PAYROLL_INSERT" AS 
    CURSOR sal_cursor IS 
    SELECT annual_salary
          ,monthly_salary
          ,time_salary
          ,income_invoice
          ,leave_rate
          ,employee_code
          ,health_insurance
    from   employees_salary;
    v_emp sal_cursor%ROWTYPE;
    
    --기본세팅
    v_now DATE := sysdate; --현재시간
    v_daywork NUMBER := 0 ;--근로시간?
    v_national_max NUMBER; --국민연금최대액

    v_national_rate NUMBER; --국민연금료율
    v_employeement_rate NUMBER; --고용보험료율
    v_leave_count NUMBER; --무급휴가갯수
    v_fixed_all NUMBER; --수당(전체)
    v_fixed_tax NUMBER; --수당(비과세제외)
    v_fixed_notax NUMBER; --수당(비과세만)

    v_salary_number VARCHAR2(20); --급여명세번호
    v_payroll_ydate VARCHAR2(20); --귀속연월
    -- v_emp.monthly_salary := 기본급
    v_overtime NUMBER; --연장수당
    v_nighttime NUMBER; --심야수당
    v_weekendtime NUMBER; -- 주말수당
    v_payment_total NUMBER; --지급총액(모두과세및비과세포함)
    -- v_emp.income_invoice  --소득세
    -- v_emp.income_invoice/10 --지방세
    v_national_insurance NUMBER; --국민연금료
    -- v_emp.health_insurance --건강보험료
    v_employement_insurance NUMBER; --고용보험료
    v_leave_rate NUMBER; --무급휴가비
    v_deductions_total NUMBER; --공제총액
    v_real_pay NUMBER;  --실급여액
    -- TRUNC(v_now,'MM') payroll_sdate 근무시작일
    -- LAST_DAY(v_now) payroll_sdate 근무종료일
    -- v_emp.employee_code
    v_notax_payment NUMBER; --지급총액(비과세제외) 계산용

BEGIN
    v_now := ADD_MONTHS(v_now,-1);
    --공제율 뽑아오기
    --국민연금료율
    SELECT deductions_deductible
    INTO   v_national_rate
    FROM   deductions_item
    WHERE  deductions_name = '국민연금료'; 
    --고용보험료율
    SELECT deductions_deductible
    INTO   v_employeement_rate
    FROM   deductions_item
    WHERE  deductions_name = '고용보험료';

    --귀속연월
    v_payroll_ydate := TRUNC(v_now,'MM');

    OPEN sal_cursor;
    LOOP 
       DBMS_OUTPUT.PUT_LINE('시작!!'||v_emp.employee_code);      
       FETCH sal_cursor INTO v_emp;
       EXIT WHEN sal_cursor%NOTFOUND;

       --급여명세번호
       
       SELECT domain('salary_number')
       INTO v_salary_number
       FROM dual;

       --연장근무
        select NVL(sum(overtime_worktime),0)
              ,NVL(sum(night_worktime),0)
              ,NVL(SUM(weekend_worktime),0)
        INTO v_overtime,v_nighttime,v_weekendtime
        from att_history
        where attendance_date BETWEEN TRUNC(v_now,'MM') AND LAST_DAY(v_now)
        AND employee_code = v_emp.employee_code;
        v_overtime := TRUNC(v_overtime/60,0) * (1.5 * v_emp.time_salary);
        v_nighttime := TRUNC(v_nighttime/60,0) *(0.5 * v_emp.time_salary);
        v_weekendtime := TRUNC(v_weekendtime/60,0) * (1.5 * v_emp.time_salary);

 
        --화면에 표시되는 지급총액
        --비과세포함 지급총액 계산

        --모든수당 총액
        SELECT NVL(sum(allowance_price),0)
        INTO   v_fixed_all
        FROM   fixed
        WHERE  employee_code = v_emp.employee_code;


        v_payment_total :=  v_emp.monthly_salary  
                          + v_overtime 
                          + v_nighttime 
                          + v_weekendtime
                          + v_fixed_all;

        --비과세 수당 총액구하기
        SELECT NVL(sum(allowance_price),0)
        INTO   v_fixed_notax
        FROM   fixed fx
        JOIN   allowance_item ai
        ON     fx.allowance_code = ai.allowance_code 
        WHERE  employee_code = v_emp.employee_code
        AND    allowance_check = '비과세';      

        --비과세 미포함 지급총액 계산(연산에 쓸 자료)
        --화면에 표시되지 않는 과세
        --과세수당 총액 구하기
        SELECT NVL(sum(allowance_price),0)
        INTO   v_fixed_tax
        FROM   fixed fx
        JOIN   allowance_item ai
        ON     fx.allowance_code = ai.allowance_code 
        WHERE  employee_code = v_emp.employee_code
        AND    allowance_check = '과세';
        
        v_notax_payment :=  v_emp.monthly_salary  
                          + v_overtime 
                          + v_nighttime 
                          + v_weekendtime
                          + v_fixed_tax;
                          
        -- 국민연금료 (최대금액도 계산)
        IF v_notax_payment > 6170000 THEN 
        v_national_max := 6170000;
        ELSE
        v_national_max := v_notax_payment;
        END IF;
        v_national_insurance := TRUNC(v_national_max *(v_national_rate/100));

        -- 건강보험료

        DBMS_OUTPUT.PUT_LINE('월급 : '||(v_emp.health_insurance/12));

        --고용보험료율
        v_employement_insurance := TRUNC(v_notax_payment *(v_employeement_rate/100));

        --무급휴가비
        --그달의 무급휴가(공제대상근태)갯수 구하기
        SELECT NVL(count(*),0)
        INTO   v_leave_count
        FROM   att_history ah
        JOIN   att_item ai
        ON     ah.att_code = ai.att_code
        AND    ai.att_status = 'i4'
        WHERE  ah.employee_code = v_emp.employee_code
        AND    ah.attendance_date BETWEEN TRUNC(v_now,'MM') AND LAST_DAY(v_now);

        v_leave_rate := v_emp.leave_rate * v_leave_count;

        --공제총액(보여주는 총액)
        -- 소득세 + 지방세 + 국민연금료 + 건강보험료 + 고용보험료 + 무급휴가(공제되는근태)
        v_deductions_total :=  (v_emp.income_invoice)     --소득세 
                             + (v_emp.income_invoice/10)  --지방세
                             + v_national_insurance     --국민연금료
                             + v_employement_insurance  --고용보험료
                             + (v_emp.health_insurance)   --건강보험료
                             + v_leave_rate;             --무급휴가
        --실급여액
        -- (총급여액(비과세제외) - (소득세 + 지방세 + 국민연금료 + 고용보험료 + 건강보험료)) + 수당(비과세) - 무급휴가

        v_real_pay := ( v_notax_payment - ( (v_emp.income_invoice)       --소득세
                                         + (v_emp.income_invoice/10 ) --지방세
                                         +  v_national_insurance      --국민연금료
                                         +  v_employement_insurance   --고용보험료
                                         +  (v_emp.health_insurance)  ) --건강보험료 
                                                                        ) + v_fixed_notax --수당(비과세)
                                                                          - v_leave_rate; --무급휴가(공제대상근태)
        
        -- 급여명세정보 등록
        INSERT INTO salary_payroll (salary_number
                                   ,payroll_ydate
                                   ,monthly_salary
                                   ,overtime_allowance
                                   ,night_allowance
                                   ,weekend_allowance
                                   ,payment_total
                                   ,income_tax
                                   ,local_tax
                                   ,national_insurance
                                   ,health_insurance
                                   ,employment_insurance
                                   ,leave_rate
                                   ,deductions_total
                                   ,real_pay
                                   ,payroll_sdate
                                   ,payroll_edate
                                   ,employee_code
                                   ,notax_payment
                                   ,time_salary)

        VALUES                    (v_salary_number
                                  ,v_payroll_ydate
                                  ,ROUND(v_emp.monthly_salary,-1)
                                  ,ROUND(v_overtime,-1)
                                  ,ROUND(v_nighttime,-1)
                                  ,ROUND(v_weekendtime,-1)
                                  ,ROUND(v_payment_total,-1)
                                  ,ROUND(v_emp.income_invoice,-1)
                                  ,ROUND(v_emp.income_invoice/10,-1)
                                  ,ROUND(v_national_insurance,-1)
                                  ,ROUND(v_emp.health_insurance,-1)
                                  ,ROUND(v_employement_insurance,-1)
                                  ,ROUND(v_leave_rate,-1)
                                  ,ROUND(v_deductions_total,-1)
                                  ,ROUND(v_real_pay,-1)
                                  ,TRUNC(v_now,'MM')
                                  ,LAST_DAY(v_now)
                                  ,v_emp.employee_code
                                  ,ROUND(v_notax_payment)
                                  ,v_emp.time_salary);
          DBMS_OUTPUT.PUT_LINE('끝!!!!'||v_emp.employee_code);                        
          
        --수당기록남기기
        INSERT INTO allowance_history ( awhi_no
                                       ,allowance_price
                                       ,employee_code
                                       ,salary_number
                                       ,allowance_name
                                       ,allowance_check)                                      
        SELECT     awhi_no_seq.nextval,
                   fx.allowance_price,
                   fx.employee_code,
                   v_salary_number,
                   ai.allowance_name,
                   ai.allowance_check
        FROM fixed fx
        JOIN allowance_item ai
        ON fx.allowance_code = ai.allowance_code
        WHERE  employee_code = v_emp.employee_code;


    END LOOP;
    CLOSE sal_cursor;
END;

/
--------------------------------------------------------
--  DDL for Procedure PAYROLL_UPDATE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "PAYROLL_UPDATE" 
(
p_SALARY_NUMBER IN NUMBER
,p_MONTHLY_SALARY IN NUMBER
,p_OVERTIME_ALLOWANCE IN NuMBER
,p_NIGHT_ALLOWANCE IN NUMBER
,p_WEEKEND_ALLOWANCE IN NUMBER
,p_INCOME_TAX IN NUMBER
,p_LOCAL_TAX IN NUMBER
,p_NATIONAL_INSURANCE IN NUMBER
,p_HEALTH_INSURANCE IN NUMBER
,p_EMPLOYMENT_INSURANCE IN NUMBER
,P_LEAVE_RATE IN NUMBER
,p_allowance_history_table IN allowance_history_table  
)AS 

v_allowance_check VARCHAR2(4);
v_payment_total NUMBER := 0;
v_notax_payment NUMBER := 0;
v_deductions_total NUMBER := 0;
v_real_pay NUMBER := 0;
v_notax_sum NUMBER := 0;
BEGIN
--총지급액과 비과세제외 총지급액 계산
v_payment_total :=  p_MONTHLY_SALARY 
                  + p_OVERTIME_ALLOWANCE
                  + p_NIGHT_ALLOWANCE
                  + p_WEEKEND_ALLOWANCE;
                  
v_notax_payment :=  p_MONTHLY_SALARY 
                  + p_OVERTIME_ALLOWANCE
                  + p_NIGHT_ALLOWANCE
                  + p_WEEKEND_ALLOWANCE;

--과세여부 판단뒤, 수당을 총지급액에 추가 
FOR i IN 1 .. p_allowance_history_table.COUNT LOOP
--과세여부 판단
    IF p_allowance_history_table(i).allowance_price = 0 THEN 
        DELETE FROM allowance_history
        WHERE awhi_no = p_allowance_history_table(i).awhi_no;
    ELSE 
        SELECT allowance_check
        INTO v_allowance_check
        FROM allowance_history
        WHERE awhi_no = p_allowance_history_table(i).awhi_no;
        IF v_allowance_check = 'o' THEN
        v_payment_total := v_payment_total +  p_allowance_history_table(i).allowance_price;
        v_notax_payment := v_notax_payment +  p_allowance_history_table(i).allowance_price;
        ELSIF  v_allowance_check = 'x' THEN 
        v_payment_total := v_payment_total +  p_allowance_history_table(i).allowance_price;
        v_notax_sum :=  v_notax_sum +  p_allowance_history_table(i).allowance_price;
        END IF;
    --수당금액 업데이트
        UPDATE allowance_history
        SET allowance_price = p_allowance_history_table(i).allowance_price
        WHERE awhi_no = p_allowance_history_table(i).awhi_no;
    END IF;
END LOOP;

-- 공제총액 구하기
v_deductions_total :=    p_INCOME_TAX
                      +  p_LOCAL_TAX
                      +  p_NATIONAL_INSURANCE
                      +  p_HEALTH_INSURANCE
                      +  p_EMPLOYMENT_INSURANCE
                      +  P_LEAVE_RATE;
--실급여액 계산하기 
v_real_pay := (v_notax_payment - v_deductions_total) + v_notax_sum; 

--업데이트 하기
  UPDATE salary_payroll
  SET    
MONTHLY_SALARY = p_MONTHLY_SALARY
,OVERTIME_ALLOWANCE = p_OVERTIME_ALLOWANCE
,NIGHT_ALLOWANCE = p_NIGHT_ALLOWANCE 
,WEEKEND_ALLOWANCE = p_WEEKEND_ALLOWANCE
,PAYMENT_TOTAL = v_payment_total
,INCOME_TAX = p_INCOME_TAX
,LOCAL_TAX = p_LOCAL_TAX
,NATIONAL_INSURANCE = p_NATIONAL_INSURANCE
,HEALTH_INSURANCE = p_HEALTH_INSURANCE
,EMPLOYMENT_INSURANCE = p_EMPLOYMENT_INSURANCE
,LEAVE_RATE = P_LEAVE_RATE
,DEDUCTIONS_TOTAL = v_deductions_total
,REAL_PAY = v_real_pay
,NOTAX_PAYMENT = v_payment_total
  WHERE salary_number = p_SALARY_NUMBER;



  
END PAYROLL_UPDATE;

/
--------------------------------------------------------
--  DDL for Procedure SEQ_RESET
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "SEQ_RESET" 
(sequence_name IN VARCHAR2)
IS
 v_num NUMBER(10);
BEGIN
execute IMMEDIATE 'select '||sequence_name||'.nextval from dual'into v_num;
execute IMMEDIATE 'alter sequence '||sequence_name||' increment by -'||v_num ;
execute IMMEDIATE 'select '||sequence_name||'.nextval from dual'into v_num;
execute IMMEDIATE 'alter sequence '||sequence_name||' increment by 1';
END;

/
--------------------------------------------------------
--  DDL for Procedure STOCKS_ADJUSTMENT
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "STOCKS_ADJUSTMENT" (
       p_stocksadjustarray IN STOCKADJUSTVOARRAY
       ) 
AS
order_over EXCEPTION; -- 지시수량을 초과한 재고조정 발생
v_inc_quantity purchase_history.incomplete_quantity%TYPE; --미완료수량
v_wh_code purchase_history.wh_code%TYPE; -- 창고코드
v_stock_adjust stocks.stocks_adjust_no%TYPE;
v_stock_status purchase_history.restocking_status%TYPE;
BEGIN
    --프로시저 호출 1건에 같은 재고조정번호를 부여한다.
    v_stock_adjust := TO_NUMBER(TO_CHAR(sysdate,'yyyyMMdd')|| stocks_adjust_seq.nextval);
    FOR i IN 1..p_stocksadjustarray.COUNT LOOP   
        IF p_stocksadjustarray(i).sales_no IS NULL THEN --판매내역번호가 담겨져오지 않으면 입고에 대한 쿼리진행
            --재고 입고내역테이블에 INSERT
            INSERT INTO stocks_restocking
            VALUES (TO_CHAR(sysdate,'yyyyMMdd')|| stocks_restocking_seq.nextval
                    ,sysdate
                    ,p_stocksadjustarray(i).employee_code
                    ,p_stocksadjustarray(i).stocks_stocks
                    ,p_stocksadjustarray(i).pur_no);

            --해당 재고 내역 건(1건임)의 미완료 수량과 창고코드를 조회 후, 처리 수량 차감 (창고코드는 재고(STOCKS)테이블에 INSERT할때사용하기위함)
            SELECT incomplete_quantity, wh_code, restocking_status
            INTO   v_inc_quantity, v_wh_code, v_stock_status
            FROM   purchase_history
            WHERE  pur_no = p_stocksadjustarray(i).pur_no;

            UPDATE purchase_history
            SET    incomplete_quantity = ( v_inc_quantity - p_stocksadjustarray(i).stocks_stocks )
            WHERE  pur_no = p_stocksadjustarray(i).pur_no;


            --해당 재고 내역 건의 미완료 수량 - 처리 수량이 0이 될 경우 
            IF 0 = (v_inc_quantity - p_stocksadjustarray(i).stocks_stocks) THEN
                UPDATE purchase_history
                SET    restocking_status = 'b3' --입고완료로 상태변경
                WHERE  pur_no = p_stocksadjustarray(i).pur_no;
            ELSIF 0 < (v_inc_quantity - p_stocksadjustarray(i).stocks_stocks) AND v_stock_status != 'b2' THEN
                UPDATE purchase_history
                SET    restocking_status = 'b2' --진행중으로 상태변경
                WHERE  pur_no = p_stocksadjustarray(i).pur_no;
            ELSIF 0 > (v_inc_quantity - p_stocksadjustarray(i).stocks_stocks) THEN
                RAISE order_over; -- 지시수량을 초과한 재고조정 예외발생
            END IF;                      

            --재고테이블에 조정내역을 INSERT한다. (조정전수량은 창고기준이며 같은품목 다건처리에 대해서 조정전수량은 조정처리 이전을 기준으로 잡는다.)
            INSERT INTO stocks
            VALUES (TO_CHAR(sysdate,'yyyyMMdd')|| stocks_seq.nextval
                   ,p_stocksadjustarray(i).stocks_stocks
                   ,p_stocksadjustarray(i).update_reason
                   ,v_wh_code
                   ,sysdate
                   ,p_stocksadjustarray(i).item_code
                   ,p_stocksadjustarray(i).pur_no
                   ,'d1'
                   ,p_stocksadjustarray(i).employee_code
                   ,p_stocksadjustarray(i).current_quantity 
                   ,v_stock_adjust);
            --매입계약품목 테이블의 재고수량을 조정해준다. (입고니까 플러스)
            UPDATE contract_item
            SET    stocks_quantity = stocks_quantity + p_stocksadjustarray(i).stocks_stocks
            WHERE  item_code = p_stocksadjustarray(i).item_code;

        ELSIF p_stocksadjustarray(i).pur_no IS NULL  THEN  --구매내역번호가 담겨져오지 않으면 출하에 대한 쿼리진행
             --재고 출고내역테이블에 INSERT
            INSERT INTO stocks_order
            VALUES (TO_CHAR(sysdate,'yyyyMMdd')|| stocks_restocking_seq.nextval
                    ,sysdate
                    ,p_stocksadjustarray(i).employee_code
                    ,p_stocksadjustarray(i).stocks_stocks
                    ,p_stocksadjustarray(i).sales_no);

            --해당 재고 내역 건(1건임)의 미완료 수량과 창고코드를 조회 후, 처리 수량 차감 (창고코드는 재고(STOCKS)테이블에 INSERT할때사용하기위함)
            SELECT incomplete_quantity, wh_code, delivery_status
            INTO   v_inc_quantity, v_wh_code, v_stock_status
            FROM   saleslip_history
            WHERE  sales_no = p_stocksadjustarray(i).sales_no;

            UPDATE saleslip_history 
            SET    incomplete_quantity = ( v_inc_quantity - p_stocksadjustarray(i).stocks_stocks )
            WHERE  sales_no = p_stocksadjustarray(i).sales_no;

            --해당 판매 내역 건의 미완료 수량 - 처리 수량이 0이 될 경우 
            IF 0 = (v_inc_quantity - p_stocksadjustarray(i).stocks_stocks) THEN
                UPDATE saleslip_history
                SET    delivery_status = 'b3' --입고완료로 상태변경
                WHERE  sales_no = p_stocksadjustarray(i).sales_no;
            ELSIF 0 < (v_inc_quantity - p_stocksadjustarray(i).stocks_stocks) AND v_stock_status != 'b2'THEN
                UPDATE saleslip_history 
                SET    delivery_status = 'b2' --진행중으로 상태변경
                WHERE  sales_no = p_stocksadjustarray(i).sales_no;
            ELSIF 0 > (v_inc_quantity - p_stocksadjustarray(i).stocks_stocks) THEN
                RAISE order_over; -- 지시수량을 초과한 재고조정 예외발생  
            END IF;                    

            --재고테이블에 조정내역을 INSERT한다.
            INSERT INTO stocks
            VALUES (TO_CHAR(sysdate,'yyyyMMdd')|| stocks_seq.nextval --PK
                   ,p_stocksadjustarray(i).stocks_stocks
                   ,p_stocksadjustarray(i).update_reason
                   ,v_wh_code
                   ,sysdate
                   ,p_stocksadjustarray(i).item_code
                   ,p_stocksadjustarray(i).sales_no
                   ,'d2' --재고감소
                   ,p_stocksadjustarray(i).employee_code
                   ,p_stocksadjustarray(i).current_quantity
                   ,v_stock_adjust); 
            --매입계약품목 테이블의 재고수량을 조정해준다. (출고니까 마이너스)
            UPDATE contract_item
            SET    stocks_quantity = stocks_quantity - p_stocksadjustarray(i).stocks_stocks
            WHERE  item_code = p_stocksadjustarray(i).item_code;
        END IF;
    END LOOP;
    COMMIT;

EXCEPTION
    WHEN order_over THEN
        ROLLBACK;
        INSERT INTO PROCEDURE_LOG (log_message)
        VALUES('재고조정 프로시저 : 허용되지 않은 재고조정이 시도되었습니다.');
        DBMS_OUTPUT.PUT_LINE('허용되지 않은 재고조정이 시도되었습니다.');
END;

/
--------------------------------------------------------
--  DDL for Procedure TEST_PROCEDURE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "TEST_PROCEDURE" (
       p_stocksadjustarray IN STOCKADJUSTVOARRAY) 
AS
v_log VARCHAR2(3000);
BEGIN
    FOR i IN 1..p_stocksadjustarray.COUNT LOOP
        IF p_stocksadjustarray(i).sales_no IS NULL THEN 
            v_log := p_stocksadjustarray(i).pur_no;
            INSERT INTO PROCEDURE_LOG (log_message) VALUES (v_log);
            v_log := p_stocksadjustarray(i).sales_no;
            INSERT INTO PROCEDURE_LOG (log_message) VALUES (v_log);
            v_log := p_stocksadjustarray(i).employee_code;
            INSERT INTO PROCEDURE_LOG (log_message) VALUES (v_log);
            v_log := p_stocksadjustarray(i).stocks_stocks;
            INSERT INTO PROCEDURE_LOG (log_message) VALUES (v_log);
            v_log := p_stocksadjustarray(i).item_code;
            INSERT INTO PROCEDURE_LOG (log_message) VALUES (v_log);
            v_log := p_stocksadjustarray(i).update_reason;
            INSERT INTO PROCEDURE_LOG (log_message) VALUES (v_log);
        ELSIF p_stocksadjustarray(i).pur_no IS NULL  THEN 
                        v_log := p_stocksadjustarray(i).pur_no;
            INSERT INTO PROCEDURE_LOG (log_message) VALUES (v_log);
            v_log := p_stocksadjustarray(i).sales_no;
            INSERT INTO PROCEDURE_LOG (log_message) VALUES (v_log);
            v_log := p_stocksadjustarray(i).employee_code;
            INSERT INTO PROCEDURE_LOG (log_message) VALUES (v_log);
            v_log := p_stocksadjustarray(i).stocks_stocks;
            INSERT INTO PROCEDURE_LOG (log_message) VALUES (v_log);
            v_log := p_stocksadjustarray(i).item_code;
            INSERT INTO PROCEDURE_LOG (log_message) VALUES (v_log);
            v_log := p_stocksadjustarray(i).update_reason;
            INSERT INTO PROCEDURE_LOG (log_message) VALUES (v_log);
        END IF;
    END LOOP;
    COMMIT;

END;

/
--------------------------------------------------------
--  DDL for Procedure UPDATE_INVOICE_STATUS
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "UPDATE_INVOICE_STATUS" 
        (p_invoice_no IN VARCHAR2) AS
        BEGIN
            UPDATE invoice
            SET invoice_status = 'f3'
                ,nts_invoice_date = SYSDATE
            WHERE invoice_status = 'f2';
            COMMIT;
      END update_invoice_status;

/
--------------------------------------------------------
--  DDL for Package EMPLOYEE
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE "EMPLOYEE" AS 
    TYPE fixed_allowance IS RECORD
    (fixed%ROWTYPE);



END EMPLOYEE;




select domain('employee_id')
from dual;

/
--------------------------------------------------------
--  DDL for Function DOMAIN
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "DOMAIN" 
  (column_name VARCHAR2)
  RETURN VARCHAR2
IS
  v_now DATE := sysdate;
  v_seq VARCHAR2(50);
  v_year VARCHAR2(50);
  v_num VARCHAR2(50);
BEGIN

--사원아이디
  IF column_name = 'employee_id' THEN
  SELECT employee_seq.NEXTVAL
  INTO v_seq
  FROM dual;
  v_year :=TO_CHAR(v_now,'YY');
  v_num :=SUBSTR('000'||v_seq,-3);
  RETURN v_year||'-'||v_num;
  
-- 매출전표
  ELSIF column_name = 'sales_chit_no' THEN
  SELECT sales_chit_seq.NEXTVAL
  INTO v_seq
  FROM dual;
  v_year :=TO_CHAR(v_now,'YYYYMMDD');
  v_num :=SUBSTR('000'||v_seq,-3);
  RETURN 'MK-' || v_year || v_num;
  
  -- 매입전표
  ELSIF column_name = 'purchase_chit_no' THEN
  SELECT purchase_no_seq.NEXTVAL
  INTO v_seq
  FROM dual;
  v_year :=TO_CHAR(v_now,'YYYYMMDD');
  v_num :=SUBSTR('000'||v_seq,-3);
  RETURN 'MV-' || v_year || v_num;
  
  -- 인보이스
  ELSIF column_name = 'con_no' THEN
  SELECT contract_no_seq.NEXTVAL
  INTO v_seq
  FROM dual;
  v_year :=TO_CHAR(v_now,'YYYYMMDD');
  v_num :=SUBSTR('000'||v_seq,-3);
  RETURN 'CON-' || v_year || v_num;
  
  -- 계약번호
  ELSIF column_name = 'invoice_no' THEN
  SELECT invoice_no_seq.NEXTVAL
  INTO v_seq
  FROM dual;
  v_year :=TO_CHAR(v_now,'YYYYMMDD');
  v_num :=SUBSTR('000'||v_seq,-3);
  RETURN 'IV-' || v_year || v_num;
  
  -- 아이템 번호
  ELSIF column_name = 'item_code' THEN
  SELECT item_no_seq.NEXTVAL
  INTO v_seq
  FROM dual;
  v_year :=TO_CHAR(v_now,'MM');
  v_num :=SUBSTR('000'||v_seq,-3);
  RETURN 'MANGO-' || v_year || v_num;
  
  -- 판매전표 번호
  ELSIF column_name = 'saleslip_no' THEN
  SELECT saleslip_no_seq.NEXTVAL
  INTO v_seq
  FROM dual;
  v_year :=TO_CHAR(v_now,'YYYYMMDD');
  v_num :=SUBSTR('000'||v_seq,-3);
  RETURN v_year||'-'||v_num;
  
  -- 판매번호
  ELSIF column_name = 'sales_no' THEN
  SELECT sales_no_seq.NEXTVAL
  INTO v_seq
  FROM dual;
  v_year :=TO_CHAR(v_now,'YYYYMMDD');
  v_num :=SUBSTR('000'||v_seq,-3);
  RETURN v_year || v_num;
  
  -- 구매전표 번호
  ELSIF column_name = 'purcslip_no' THEN
  SELECT saleslip_no_seq.NEXTVAL
  INTO v_seq
  FROM dual;
  v_year :=TO_CHAR(v_now,'YYYYMMDD');
  v_num :=SUBSTR('000'||v_seq,-3);
  RETURN v_year||'-'||v_num;
  
  -- 구매번호
  ELSIF column_name = 'pur_no' THEN
  SELECT pur_no_seq.NEXTVAL
  INTO v_seq
  FROM dual;
  v_year :=TO_CHAR(v_now,'YYYYMMDD');
  v_num :=SUBSTR('000'||v_seq,-3);
  RETURN v_year || v_num;
  
  -- 급여명세서번호
  ELSIF column_name = 'salary_number' THEN
  SELECT salary_number_seq.NEXTVAL
  INTO v_seq
  FROM dual;
  v_year :=TO_CHAR(v_now,'YYYYMM');
  v_num :=SUBSTR('0000'||v_seq,-4);
  RETURN v_year||v_num;
  
  
  
  -- 예외처리
  ELSE
  RETURN 'WRONG';
  END IF;
  
END;

/
--------------------------------------------------------
--  DDL for Function FIND_CODE
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "FIND_CODE" (p_code_rule VARCHAR2)
    RETURN VARCHAR2
IS
    return_value VARCHAR2(60);
BEGIN
    SELECT 
    	common_name
    INTO
    	return_value
    FROM 
    	common_code
    WHERE 
    	code_rule = p_code_rule;
    
    IF return_value IS NULL THEN 
        return_value := p_code_rule;
    END IF;
        
    RETURN return_value;
END;

/
--------------------------------------------------------
--  DDL for Function MINUTE_TO_NUMBER
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "MINUTE_TO_NUMBER" 
(
  P_DATE IN DATE 
) RETURN NUMBER AS
v_minute NUMBER;
v_hour NUMBER;
v_result NUMBER;
BEGIN
  v_hour := TO_NUMBER(TO_CHAR(p_date,'HH24')*60);
  v_minute := TO_NUMBER(TO_CHAR(p_date,'MI'));
  v_result := v_hour + v_minute;
  return v_result;
END MINUTE_TO_NUMBER;

/
--------------------------------------------------------
--  DDL for Function NUMBER_TO_MINUTE
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "NUMBER_TO_MINUTE" 
(
  NUM IN NUMBER 
) RETURN DATE AS
    hour VARCHAR2(30);
    minute VARCHAR2(30);

    result DATE ;
BEGIN
    hour := SUBSTR(('00'||TRUNC(num/60)),-2);
    minute := SUBSTR(('00'||MOD(num,60)),-2);
    result := TO_DATE((hour||':'||minute),'HH24:MI');
    return result;
END NUMBER_TO_MINUTE;

/
--------------------------------------------------------
--  Constraints for Table PURCHASE_HISTORY
--------------------------------------------------------

  ALTER TABLE "PURCHASE_HISTORY" ADD CONSTRAINT "XPK구매_내역" PRIMARY KEY ("PUR_NO") ENABLE;
  ALTER TABLE "PURCHASE_HISTORY" MODIFY ("PUR_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table STOCKS_ORDER
--------------------------------------------------------

  ALTER TABLE "STOCKS_ORDER" ADD CONSTRAINT "XPK재고_출고내역" PRIMARY KEY ("DELIVERY_CODE") ENABLE;
  ALTER TABLE "STOCKS_ORDER" MODIFY ("SALES_NO" NOT NULL ENABLE);
  ALTER TABLE "STOCKS_ORDER" MODIFY ("DELIVERY_QUANTITY" NOT NULL ENABLE);
  ALTER TABLE "STOCKS_ORDER" MODIFY ("EMPLOYEE_CODE" NOT NULL ENABLE);
  ALTER TABLE "STOCKS_ORDER" MODIFY ("DELIVERY_DATE" NOT NULL ENABLE);
  ALTER TABLE "STOCKS_ORDER" MODIFY ("DELIVERY_CODE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table INVOICE
--------------------------------------------------------

  ALTER TABLE "INVOICE" ADD CONSTRAINT "XPK전자세금계산서" PRIMARY KEY ("INVOICE_NO") ENABLE;
  ALTER TABLE "INVOICE" MODIFY ("INVOICE_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SALES_CHIT
--------------------------------------------------------

  ALTER TABLE "SALES_CHIT" ADD CONSTRAINT "XPK판매_전표" PRIMARY KEY ("SALESLIP_NO") ENABLE;
  ALTER TABLE "SALES_CHIT" MODIFY ("SALESLIP_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PURCHASE
--------------------------------------------------------

  ALTER TABLE "PURCHASE" ADD CONSTRAINT "XPK매입" PRIMARY KEY ("PURCHASE_CHIT_NO") ENABLE;
  ALTER TABLE "PURCHASE" MODIFY ("PURCHASE_CHIT_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PAYABLES_LOG
--------------------------------------------------------

  ALTER TABLE "PAYABLES_LOG" ADD CONSTRAINT "XPK채무거래_내역" PRIMARY KEY ("REC_LOG_ID") ENABLE;
  ALTER TABLE "PAYABLES_LOG" MODIFY ("REC_LOG_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table EMPLOYEES
--------------------------------------------------------

  ALTER TABLE "EMPLOYEES" MODIFY ("EMPLOYEE_CODE" NOT NULL ENABLE);
  ALTER TABLE "EMPLOYEES" ADD CONSTRAINT "XAK1인사" UNIQUE ("EMPLOYEE_ID") ENABLE;
  ALTER TABLE "EMPLOYEES" ADD CONSTRAINT "XPK인사" PRIMARY KEY ("EMPLOYEE_CODE") ENABLE;
--------------------------------------------------------
--  Constraints for Table ORDER_ITEM
--------------------------------------------------------

  ALTER TABLE "ORDER_ITEM" ADD CONSTRAINT "XPK발주_품목" PRIMARY KEY ("ORDER_SUB_NO") ENABLE;
  ALTER TABLE "ORDER_ITEM" MODIFY ("ORDER_NO" NOT NULL ENABLE);
  ALTER TABLE "ORDER_ITEM" MODIFY ("ORDER_SUB_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ALLOWANCE_ITEM
--------------------------------------------------------

  ALTER TABLE "ALLOWANCE_ITEM" ADD CONSTRAINT "XPK수당_항목" PRIMARY KEY ("ALLOWANCE_CODE") ENABLE;
  ALTER TABLE "ALLOWANCE_ITEM" MODIFY ("ALLOWANCE_CHECK" NOT NULL ENABLE);
  ALTER TABLE "ALLOWANCE_ITEM" MODIFY ("ALLOWANCE_NAME" NOT NULL ENABLE);
  ALTER TABLE "ALLOWANCE_ITEM" MODIFY ("ALLOWANCE_CODE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table DEDUCTIONS_ITEM
--------------------------------------------------------

  ALTER TABLE "DEDUCTIONS_ITEM" ADD CONSTRAINT "XPK공제_항목" PRIMARY KEY ("DEDUCTIONS_CODE") ENABLE;
  ALTER TABLE "DEDUCTIONS_ITEM" MODIFY ("DEDUCTIONS_CODE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table QUALITY_TEST
--------------------------------------------------------

  ALTER TABLE "QUALITY_TEST" ADD CONSTRAINT "XPK품질_검사" PRIMARY KEY ("TEST_NO", "ITEM_CODE") ENABLE;
  ALTER TABLE "QUALITY_TEST" MODIFY ("WH_CODE" NOT NULL ENABLE);
  ALTER TABLE "QUALITY_TEST" MODIFY ("ITEM_CODE" NOT NULL ENABLE);
  ALTER TABLE "QUALITY_TEST" MODIFY ("EMPLOYEE_CODE" NOT NULL ENABLE);
  ALTER TABLE "QUALITY_TEST" MODIFY ("TEST_DATE" NOT NULL ENABLE);
  ALTER TABLE "QUALITY_TEST" MODIFY ("TEST_RESULT" NOT NULL ENABLE);
  ALTER TABLE "QUALITY_TEST" MODIFY ("TEST_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ALLOWANCE_HISTORY
--------------------------------------------------------

  ALTER TABLE "ALLOWANCE_HISTORY" ADD CONSTRAINT "XPK수당_기록" PRIMARY KEY ("AWHI_NO") ENABLE;
  ALTER TABLE "ALLOWANCE_HISTORY" MODIFY ("ALLOWANCE_NAME" NOT NULL ENABLE);
  ALTER TABLE "ALLOWANCE_HISTORY" MODIFY ("SALARY_NUMBER" NOT NULL ENABLE);
  ALTER TABLE "ALLOWANCE_HISTORY" MODIFY ("EMPLOYEE_CODE" NOT NULL ENABLE);
  ALTER TABLE "ALLOWANCE_HISTORY" MODIFY ("ALLOWANCE_PRICE" NOT NULL ENABLE);
  ALTER TABLE "ALLOWANCE_HISTORY" MODIFY ("AWHI_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table EMPLOYEES_HISTORY
--------------------------------------------------------

  ALTER TABLE "EMPLOYEES_HISTORY" ADD CONSTRAINT "XPK인사_기록" PRIMARY KEY ("EH_NO") ENABLE;
  ALTER TABLE "EMPLOYEES_HISTORY" MODIFY ("EH_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CONTRACT
--------------------------------------------------------

  ALTER TABLE "CONTRACT" ADD CONSTRAINT "XPK매입계약관리" PRIMARY KEY ("CON_NO") ENABLE;
  ALTER TABLE "CONTRACT" MODIFY ("CON_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table EMPLOYEES_SALARY
--------------------------------------------------------

  ALTER TABLE "EMPLOYEES_SALARY" ADD CONSTRAINT "XPK인사_급여정보" PRIMARY KEY ("EMPLOYEE_CODE") ENABLE;
  ALTER TABLE "EMPLOYEES_SALARY" MODIFY ("EMPLOYEE_CODE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table RECEIVABLES_LOG
--------------------------------------------------------

  ALTER TABLE "RECEIVABLES_LOG" ADD CONSTRAINT "XPK채권거래_내역" PRIMARY KEY ("LOG_ID") ENABLE;
  ALTER TABLE "RECEIVABLES_LOG" MODIFY ("LOG_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table STOCKS
--------------------------------------------------------

  ALTER TABLE "STOCKS" ADD CONSTRAINT "XPK재고" PRIMARY KEY ("REAL_NO") ENABLE;
  ALTER TABLE "STOCKS" MODIFY ("REAL_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table STOCKS_RESTOCKING
--------------------------------------------------------

  ALTER TABLE "STOCKS_RESTOCKING" ADD CONSTRAINT "XPK재고_입고내역" PRIMARY KEY ("RESTOCKING_NO") ENABLE;
  ALTER TABLE "STOCKS_RESTOCKING" MODIFY ("PUR_NO" NOT NULL ENABLE);
  ALTER TABLE "STOCKS_RESTOCKING" MODIFY ("REAL_QUANTITY" NOT NULL ENABLE);
  ALTER TABLE "STOCKS_RESTOCKING" MODIFY ("EMPLOYEE_CODE" NOT NULL ENABLE);
  ALTER TABLE "STOCKS_RESTOCKING" MODIFY ("RESTOCKING_DATE" NOT NULL ENABLE);
  ALTER TABLE "STOCKS_RESTOCKING" MODIFY ("RESTOCKING_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ATT_ITEM
--------------------------------------------------------

  ALTER TABLE "ATT_ITEM" ADD CONSTRAINT "XPK근태_항목" PRIMARY KEY ("ATT_CODE") ENABLE;
  ALTER TABLE "ATT_ITEM" MODIFY ("ATT_STATUS" NOT NULL ENABLE);
  ALTER TABLE "ATT_ITEM" MODIFY ("ATT_CODE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CONTRACT_ITEM
--------------------------------------------------------

  ALTER TABLE "CONTRACT_ITEM" ADD CONSTRAINT "XPK매입계약_품목" PRIMARY KEY ("ITEM_CODE") ENABLE;
  ALTER TABLE "CONTRACT_ITEM" MODIFY ("ITEM_NAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table DEPARTMENT
--------------------------------------------------------

  ALTER TABLE "DEPARTMENT" ADD CONSTRAINT "XPK부서" PRIMARY KEY ("DEPARTMENT_CODE") ENABLE;
  ALTER TABLE "DEPARTMENT" MODIFY ("DEPARTMENT_CODE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table WAREHOUSE
--------------------------------------------------------

  ALTER TABLE "WAREHOUSE" ADD CONSTRAINT "XPK창고" PRIMARY KEY ("WH_CODE") ENABLE;
  ALTER TABLE "WAREHOUSE" MODIFY ("WH_TYPE" NOT NULL ENABLE);
  ALTER TABLE "WAREHOUSE" MODIFY ("WH_NAME" NOT NULL ENABLE);
  ALTER TABLE "WAREHOUSE" MODIFY ("WH_PLACE" NOT NULL ENABLE);
  ALTER TABLE "WAREHOUSE" MODIFY ("WH_CODE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table BACCT
--------------------------------------------------------

  ALTER TABLE "BACCT" ADD CONSTRAINT "XPK계좌" PRIMARY KEY ("BACCT_CODE") ENABLE;
  ALTER TABLE "BACCT" MODIFY ("BANK_NAME" NOT NULL ENABLE);
  ALTER TABLE "BACCT" MODIFY ("BACCT_NAME" NOT NULL ENABLE);
  ALTER TABLE "BACCT" MODIFY ("BACCT_NO" NOT NULL ENABLE);
  ALTER TABLE "BACCT" MODIFY ("BACCT_CODE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SEQ
--------------------------------------------------------

  ALTER TABLE "SEQ" ADD CONSTRAINT "XPK시퀀스" PRIMARY KEY ("SEQ_NAME") ENABLE;
  ALTER TABLE "SEQ" MODIFY ("SEQ" NOT NULL ENABLE);
  ALTER TABLE "SEQ" MODIFY ("SEQ_NAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ACNT_ACCT
--------------------------------------------------------

  ALTER TABLE "ACNT_ACCT" ADD CONSTRAINT "XPK회계_계정" PRIMARY KEY ("ACCT_CODE") ENABLE;
  ALTER TABLE "ACNT_ACCT" MODIFY ("ACCT_NAME" NOT NULL ENABLE);
  ALTER TABLE "ACNT_ACCT" MODIFY ("ACCT_CODE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SUB_CODE
--------------------------------------------------------

  ALTER TABLE "SUB_CODE" ADD CONSTRAINT "XPK세부_코드" PRIMARY KEY ("SUB_NO") ENABLE;
  ALTER TABLE "SUB_CODE" MODIFY ("MAIN_NO" NOT NULL ENABLE);
  ALTER TABLE "SUB_CODE" MODIFY ("CODE_NAME" NOT NULL ENABLE);
  ALTER TABLE "SUB_CODE" MODIFY ("SUB_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SALES
--------------------------------------------------------

  ALTER TABLE "SALES" ADD CONSTRAINT "XPK매출" PRIMARY KEY ("SALES_CHIT_NO") ENABLE;
  ALTER TABLE "SALES" MODIFY ("SALES_CHIT_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table FIXED
--------------------------------------------------------

  ALTER TABLE "FIXED" ADD CONSTRAINT "XPK고정수당" PRIMARY KEY ("FIXED_NO") ENABLE;
  ALTER TABLE "FIXED" MODIFY ("FIXED_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SALESLIP_HISTORY
--------------------------------------------------------

  ALTER TABLE "SALESLIP_HISTORY" ADD CONSTRAINT "XPK판매_내역" PRIMARY KEY ("SALES_NO") ENABLE;
  ALTER TABLE "SALESLIP_HISTORY" MODIFY ("SALESLIP_NO" NOT NULL ENABLE);
  ALTER TABLE "SALESLIP_HISTORY" MODIFY ("SALES_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MAIN
--------------------------------------------------------

  ALTER TABLE "MAIN" ADD CONSTRAINT "XPK주코드" PRIMARY KEY ("MAIN_NO") ENABLE;
  ALTER TABLE "MAIN" MODIFY ("MAIN_COMMENT" NOT NULL ENABLE);
  ALTER TABLE "MAIN" MODIFY ("CODE_NAME" NOT NULL ENABLE);
  ALTER TABLE "MAIN" MODIFY ("MAIN_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ORDERS
--------------------------------------------------------

  ALTER TABLE "ORDERS" ADD CONSTRAINT "XPK발주서" PRIMARY KEY ("ORDER_NO") ENABLE;
  ALTER TABLE "ORDERS" MODIFY ("ORDER_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table COMMON_CODE
--------------------------------------------------------

  ALTER TABLE "COMMON_CODE" ADD CONSTRAINT "XPK공통_코드" PRIMARY KEY ("CODE_RULE") ENABLE;
  ALTER TABLE "COMMON_CODE" MODIFY ("COMMON_CODE" NOT NULL ENABLE);
  ALTER TABLE "COMMON_CODE" MODIFY ("COMMON_NAME" NOT NULL ENABLE);
  ALTER TABLE "COMMON_CODE" MODIFY ("CODE_RULE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table COMPANY
--------------------------------------------------------

  ALTER TABLE "COMPANY" ADD CONSTRAINT "XPK회사" PRIMARY KEY ("CO_NO") ENABLE;
  ALTER TABLE "COMPANY" MODIFY ("CEO_BIRTHDATE" NOT NULL ENABLE);
  ALTER TABLE "COMPANY" MODIFY ("CEO_NAME" NOT NULL ENABLE);
  ALTER TABLE "COMPANY" MODIFY ("EVENT" NOT NULL ENABLE);
  ALTER TABLE "COMPANY" MODIFY ("STATE" NOT NULL ENABLE);
  ALTER TABLE "COMPANY" MODIFY ("ADDRESS" NOT NULL ENABLE);
  ALTER TABLE "COMPANY" MODIFY ("COMPANY_OPENDATE" NOT NULL ENABLE);
  ALTER TABLE "COMPANY" MODIFY ("CO_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table EMPLOYEES_DETAIL
--------------------------------------------------------

  ALTER TABLE "EMPLOYEES_DETAIL" MODIFY ("EMPLOYEE_ROLE" NOT NULL ENABLE);
  ALTER TABLE "EMPLOYEES_DETAIL" ADD CONSTRAINT "XPK인사_세부정보" PRIMARY KEY ("EMPLOYEE_CODE") ENABLE;
  ALTER TABLE "EMPLOYEES_DETAIL" MODIFY ("EMPLOYEE_CODE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SALARY_PAYROLL
--------------------------------------------------------

  ALTER TABLE "SALARY_PAYROLL" ADD CONSTRAINT "XPK급여_명세서" PRIMARY KEY ("SALARY_NUMBER") ENABLE;
  ALTER TABLE "SALARY_PAYROLL" MODIFY ("EMPLOYEE_CODE" NOT NULL ENABLE);
  ALTER TABLE "SALARY_PAYROLL" MODIFY ("SALARY_NUMBER" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table EMPLOYEES_ROLE
--------------------------------------------------------

  ALTER TABLE "EMPLOYEES_ROLE" ADD PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "EMPLOYEES_ROLE" MODIFY ("DESCRIPTION" NOT NULL ENABLE);
  ALTER TABLE "EMPLOYEES_ROLE" MODIFY ("ROLE_NAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PURCHASE_CHIT
--------------------------------------------------------

  ALTER TABLE "PURCHASE_CHIT" ADD CONSTRAINT "XPK구매_전표" PRIMARY KEY ("PURCSLIP_NO") ENABLE;
  ALTER TABLE "PURCHASE_CHIT" MODIFY ("VAT" NOT NULL ENABLE);
  ALTER TABLE "PURCHASE_CHIT" MODIFY ("EMPLOYEE_CODE" NOT NULL ENABLE);
  ALTER TABLE "PURCHASE_CHIT" MODIFY ("EMPLOYEE_NAME" NOT NULL ENABLE);
  ALTER TABLE "PURCHASE_CHIT" MODIFY ("SUPPLY_PRICE" NOT NULL ENABLE);
  ALTER TABLE "PURCHASE_CHIT" MODIFY ("WIT_BACCT" NOT NULL ENABLE);
  ALTER TABLE "PURCHASE_CHIT" MODIFY ("CLIENT_NAME" NOT NULL ENABLE);
  ALTER TABLE "PURCHASE_CHIT" MODIFY ("CLIENT_CODE" NOT NULL ENABLE);
  ALTER TABLE "PURCHASE_CHIT" MODIFY ("INSERT_DATE" NOT NULL ENABLE);
  ALTER TABLE "PURCHASE_CHIT" MODIFY ("PURCSLIP_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CLIENT
--------------------------------------------------------

  ALTER TABLE "CLIENT" ADD CONSTRAINT "XPK거래처" PRIMARY KEY ("CLIENT_CODE") ENABLE;
--------------------------------------------------------
--  Constraints for Table ATT_HISTORY
--------------------------------------------------------

  ALTER TABLE "ATT_HISTORY" ADD CONSTRAINT "XPK근무_태도" PRIMARY KEY ("ATT_HISTORY_CODE") ENABLE;
  ALTER TABLE "ATT_HISTORY" MODIFY ("ATT_HISTORY_CODE" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table ALLOWANCE_HISTORY
--------------------------------------------------------

  ALTER TABLE "ALLOWANCE_HISTORY" ADD CONSTRAINT "R_60" FOREIGN KEY ("EMPLOYEE_CODE")
	  REFERENCES "EMPLOYEES" ("EMPLOYEE_CODE") DISABLE;
  ALTER TABLE "ALLOWANCE_HISTORY" ADD CONSTRAINT "R_61" FOREIGN KEY ("SALARY_NUMBER")
	  REFERENCES "SALARY_PAYROLL" ("SALARY_NUMBER") DISABLE;
--------------------------------------------------------
--  Ref Constraints for Table ATT_HISTORY
--------------------------------------------------------

  ALTER TABLE "ATT_HISTORY" ADD CONSTRAINT "R_31" FOREIGN KEY ("EMPLOYEE_CODE")
	  REFERENCES "EMPLOYEES" ("EMPLOYEE_CODE") DISABLE;
  ALTER TABLE "ATT_HISTORY" ADD CONSTRAINT "R_47" FOREIGN KEY ("ATT_CODE")
	  REFERENCES "ATT_ITEM" ("ATT_CODE") DISABLE;
--------------------------------------------------------
--  Ref Constraints for Table CONTRACT_ITEM
--------------------------------------------------------

  ALTER TABLE "CONTRACT_ITEM" ADD CONSTRAINT "R_70" FOREIGN KEY ("CON_NO")
	  REFERENCES "CONTRACT" ("CON_NO") DISABLE;
--------------------------------------------------------
--  Ref Constraints for Table DEPARTMENT
--------------------------------------------------------

  ALTER TABLE "DEPARTMENT" ADD CONSTRAINT "R_50" FOREIGN KEY ("MANAGER_CODE")
	  REFERENCES "EMPLOYEES" ("EMPLOYEE_CODE") DISABLE;
--------------------------------------------------------
--  Ref Constraints for Table EMPLOYEES
--------------------------------------------------------

  ALTER TABLE "EMPLOYEES" ADD CONSTRAINT "R_48" FOREIGN KEY ("DEPARTMENT_CODE")
	  REFERENCES "DEPARTMENT" ("DEPARTMENT_CODE") DISABLE;
--------------------------------------------------------
--  Ref Constraints for Table EMPLOYEES_DETAIL
--------------------------------------------------------

  ALTER TABLE "EMPLOYEES_DETAIL" ADD CONSTRAINT "R_29" FOREIGN KEY ("EMPLOYEE_CODE")
	  REFERENCES "EMPLOYEES" ("EMPLOYEE_CODE") DISABLE;
--------------------------------------------------------
--  Ref Constraints for Table EMPLOYEES_HISTORY
--------------------------------------------------------

  ALTER TABLE "EMPLOYEES_HISTORY" ADD CONSTRAINT "R_63" FOREIGN KEY ("EMPLOYEE_CODE")
	  REFERENCES "EMPLOYEES" ("EMPLOYEE_CODE") DISABLE;
--------------------------------------------------------
--  Ref Constraints for Table EMPLOYEES_SALARY
--------------------------------------------------------

  ALTER TABLE "EMPLOYEES_SALARY" ADD CONSTRAINT "R_36" FOREIGN KEY ("EMPLOYEE_CODE")
	  REFERENCES "EMPLOYEES" ("EMPLOYEE_CODE") DISABLE;
--------------------------------------------------------
--  Ref Constraints for Table FIXED
--------------------------------------------------------

  ALTER TABLE "FIXED" ADD CONSTRAINT "R_45" FOREIGN KEY ("ALLOWANCE_CODE")
	  REFERENCES "ALLOWANCE_ITEM" ("ALLOWANCE_CODE") DISABLE;
  ALTER TABLE "FIXED" ADD CONSTRAINT "R_46" FOREIGN KEY ("EMPLOYEE_CODE")
	  REFERENCES "EMPLOYEES_SALARY" ("EMPLOYEE_CODE") DISABLE;
--------------------------------------------------------
--  Ref Constraints for Table INVOICE
--------------------------------------------------------

  ALTER TABLE "INVOICE" ADD CONSTRAINT "R_21" FOREIGN KEY ("SALESLIP_NO")
	  REFERENCES "SALES" ("SALES_CHIT_NO") DISABLE;
  ALTER TABLE "INVOICE" ADD CONSTRAINT "R_69" FOREIGN KEY ("INVOICE_NO")
	  REFERENCES "INVOICE" ("INVOICE_NO") ON DELETE SET NULL DISABLE;
--------------------------------------------------------
--  Ref Constraints for Table ORDERS
--------------------------------------------------------

  ALTER TABLE "ORDERS" ADD CONSTRAINT "R_19" FOREIGN KEY ("CLIENT_CODE")
	  REFERENCES "CLIENT" ("CLIENT_CODE") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ORDER_ITEM
--------------------------------------------------------

  ALTER TABLE "ORDER_ITEM" ADD CONSTRAINT "R_82" FOREIGN KEY ("ORDER_NO")
	  REFERENCES "ORDERS" ("ORDER_NO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PAYABLES_LOG
--------------------------------------------------------

  ALTER TABLE "PAYABLES_LOG" ADD CONSTRAINT "R_79" FOREIGN KEY ("PURCHASE_CHIT_NO")
	  REFERENCES "PURCHASE" ("PURCHASE_CHIT_NO") DISABLE;
--------------------------------------------------------
--  Ref Constraints for Table PURCHASE
--------------------------------------------------------

  ALTER TABLE "PURCHASE" ADD CONSTRAINT "R_6" FOREIGN KEY ("PURCSLIP_NO")
	  REFERENCES "PURCHASE_CHIT" ("PURCSLIP_NO") DISABLE;
--------------------------------------------------------
--  Ref Constraints for Table PURCHASE_HISTORY
--------------------------------------------------------

  ALTER TABLE "PURCHASE_HISTORY" ADD CONSTRAINT "R_9" FOREIGN KEY ("PURCSLIP_NO")
	  REFERENCES "PURCHASE_CHIT" ("PURCSLIP_NO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table QUALITY_TEST
--------------------------------------------------------

  ALTER TABLE "QUALITY_TEST" ADD CONSTRAINT "R_25" FOREIGN KEY ("WH_CODE")
	  REFERENCES "WAREHOUSE" ("WH_CODE") ENABLE;
  ALTER TABLE "QUALITY_TEST" ADD CONSTRAINT "R_74" FOREIGN KEY ("ITEM_CODE")
	  REFERENCES "CONTRACT_ITEM" ("ITEM_CODE") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RECEIVABLES_LOG
--------------------------------------------------------

  ALTER TABLE "RECEIVABLES_LOG" ADD CONSTRAINT "R_24" FOREIGN KEY ("SALES_CHIT_NO")
	  REFERENCES "SALES" ("SALES_CHIT_NO") DISABLE;
--------------------------------------------------------
--  Ref Constraints for Table SALARY_PAYROLL
--------------------------------------------------------

  ALTER TABLE "SALARY_PAYROLL" ADD CONSTRAINT "R_37" FOREIGN KEY ("EMPLOYEE_CODE")
	  REFERENCES "EMPLOYEES_SALARY" ("EMPLOYEE_CODE") DISABLE;
--------------------------------------------------------
--  Ref Constraints for Table SALES
--------------------------------------------------------

  ALTER TABLE "SALES" ADD CONSTRAINT "R_20" FOREIGN KEY ("SALESLIP_NO")
	  REFERENCES "SALES_CHIT" ("SALESLIP_NO") DISABLE;
  ALTER TABLE "SALES" ADD CONSTRAINT "R_22" FOREIGN KEY ("INVOICE_NO")
	  REFERENCES "INVOICE" ("INVOICE_NO") DISABLE;
--------------------------------------------------------
--  Ref Constraints for Table SALESLIP_HISTORY
--------------------------------------------------------

  ALTER TABLE "SALESLIP_HISTORY" ADD CONSTRAINT "R_13" FOREIGN KEY ("SALESLIP_NO")
	  REFERENCES "SALES_CHIT" ("SALESLIP_NO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table STOCKS
--------------------------------------------------------

  ALTER TABLE "STOCKS" ADD CONSTRAINT "R_11" FOREIGN KEY ("WH_CODE")
	  REFERENCES "WAREHOUSE" ("WH_CODE") ENABLE;
  ALTER TABLE "STOCKS" ADD CONSTRAINT "R_77" FOREIGN KEY ("ITEM_CODE")
	  REFERENCES "CONTRACT_ITEM" ("ITEM_CODE") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table STOCKS_ORDER
--------------------------------------------------------

  ALTER TABLE "STOCKS_ORDER" ADD CONSTRAINT "R_14" FOREIGN KEY ("SALES_NO")
	  REFERENCES "SALESLIP_HISTORY" ("SALES_NO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table STOCKS_RESTOCKING
--------------------------------------------------------

  ALTER TABLE "STOCKS_RESTOCKING" ADD CONSTRAINT "R_10" FOREIGN KEY ("PUR_NO")
	  REFERENCES "PURCHASE_HISTORY" ("PUR_NO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SUB_CODE
--------------------------------------------------------

  ALTER TABLE "SUB_CODE" ADD CONSTRAINT "R_26" FOREIGN KEY ("MAIN_NO")
	  REFERENCES "MAIN" ("MAIN_NO") ENABLE;
