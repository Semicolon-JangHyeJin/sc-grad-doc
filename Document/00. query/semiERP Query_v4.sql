USE semiERP;

show tables;

#0. DATABASE 생성 쿼리
CREATE DATABASE semiERP;

#1. 자재 테이블 생성 쿼리
CREATE TABLE MATERIALS(
MATERIALS_ID VARCHAR(10) NOT NULL,
MATERIALS_NAME VARCHAR(30) NOT NULL,
AMOUNT INT NOT NULL DEFAULT 0,
PRIMARY KEY (MATERIALS_ID)
);

#2. 제품 테이블 생성 쿼리
CREATE TABLE PRODUCT(
PRODUCT_ID VARCHAR(10) NOT NULL,
PRODUCT_NAME VARCHAR(30) NOT NULL,
PRIMARY KEY (PRODUCT_ID)
);

#3. 거래처 목록 테이블 생성 쿼리
CREATE TABLE ACCOUNT_LIST(
ACCOUNT_BID VARCHAR(10) NOT NULL,
BUSINESS_NAME VARCHAR(30) NOT NULL,
ADDRESS VARCHAR(50),
EMAIL VARCHAR(30),
PHONE_NUMBER INT NOT NULL,
PRIMARY KEY (ACCOUNT_BID)
);

#4. 사원 테이블 생성 쿼리
CREATE TABLE EMPLOYEE(
EID VARCHAR(10) NOT NULL,
E_NAME VARCHAR(20) NOT NULL,
E_PASSWORD INT NOT NULL DEFAULT 0000,
DEPARTMENT VARCHAR(4) NOT NULL,
E_POSITION VARCHAR(10) NOT NULL,
PHONE_NUMBER VARCHAR(13) DEFAULT '000-0000-0000',
SALARY INT NOT NULL DEFAULT 0,
JOIN_DATE VARCHAR(10) NOT NULL DEFAULT '0000-00-00',
PRIMARY KEY (EID)
);

#5. 구매 테이블 생성 쿼리
CREATE TABLE PURCHASE(
PURCHASE_CODE VARCHAR(10) NOT NULL,
MATERIALS_ID VARCHAR(10) NOT NULL,
SELLER_BID VARCHAR(10) NOT NULL,
P_AMOUNT INT NOT NULL DEFAULT 0,
P_UNIT_PRICE INT NOT NULL DEFAULT 0,
P_PRICE INT NOT NULL DEFAULT 0,
D_DATE VARCHAR(10) NOT NULL DEFAULT '0000-00-00',
PURCHASE_EID VARCHAR(10),
PRIMARY KEY (PURCHASE_CODE)
);

#6. 판매 테이블 생성 쿼리
CREATE TABLE SALE(
SALE_CODE VARCHAR(10) NOT NULL,
VENDOR_BID VARCHAR(10) NOT NULL,
PRODUCT_ID VARCHAR(10) NOT NULL,
S_AMOUNT INT NOT NULL DEFAULT 0,
S_UNIT_PRICE INT NOT NULL DEFAULT 0,
S_PRICE INT NOT NULL DEFAULT 0,
D_DATE VARCHAR(10) NOT NULL DEFAULT '0000-00-00',
SALE_EID VARCHAR(10),
PRIMARY KEY (SALE_CODE)
);

#7. 생산 테이블 생성 쿼리
CREATE TABLE PRODUCTION(
PRODUCTION_CODE VARCHAR(10) NOT NULL,
PRODUCT_ID VARCHAR(10) NOT NULL,
PRODUCT_NAME VARCHAR(30) NOT NULL,
P_AMOUNT INT NOT NULL DEFAULT 0,
MATERIALS_ID VARCHAR(10) NOT NULL,
MATERIALS_NAME VARCHAR(30) NOT NULL,
M_AMOUNT INT NOT NULL DEFAULT 0,
P_PRICE INT NOT NULL DEFAULT 0,
P_DATE VARCHAR(10) NOT NULL DEFAULT '0000-00-00',
PRODUCTION_EID VARCHAR(10) NOT NULL,
PRIMARY KEY (PRODUCTION_CODE)
);

#15. 테이블 삭제 쿼리
drop table ACCOUNT_LIST;
drop table EMPLOYEE;
drop table MATERIALS;
drop table PRODUCT;
drop table PRODUCTION;
drop table PURCHASE;
drop table SALE;
