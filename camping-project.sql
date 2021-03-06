
/* Drop Tables */

DROP TABLE CAMP_ADVERTISEMENTS CASCADE CONSTRAINTS;
DROP TABLE CAMP_ANSWERS CASCADE CONSTRAINTS;
DROP TABLE CAMP_LIKE_CAMPSITE CASCADE CONSTRAINTS;
DROP TABLE CAMP_OPINION_COMMENTS CASCADE CONSTRAINTS;
DROP TABLE CAMP_OPINION_BOARDS CASCADE CONSTRAINTS;
DROP TABLE CAMP_QUESTIONS CASCADE CONSTRAINTS;
DROP TABLE CAMP_REVIEW_COMMENTS CASCADE CONSTRAINTS;
DROP TABLE CAMP_SCRAPS CASCADE CONSTRAINTS;
DROP TABLE CAMP_REVIEW_BOARDS CASCADE CONSTRAINTS;
DROP TABLE CAMP_RESERVATIONS CASCADE CONSTRAINTS;
DROP TABLE CAMP_SITES CASCADE CONSTRAINTS;
DROP TABLE CAMP_THEME_CONNECTS CASCADE CONSTRAINTS;
DROP TABLE CAMP_CAMPSITES CASCADE CONSTRAINTS;
DROP TABLE CAMP_CARTS CASCADE CONSTRAINTS;
DROP TABLE CAMP_FOLLOWS CASCADE CONSTRAINTS;
DROP TABLE CAMP_FREE_COMMENTS CASCADE CONSTRAINTS;
DROP TABLE CAMP_FREE_BOARDS CASCADE CONSTRAINTS;
DROP TABLE CAMP_PURCHASES CASCADE CONSTRAINTS;
DROP TABLE CAMP_GOODS CASCADE CONSTRAINTS;
DROP TABLE CAMP_JOINING_COMMENTS CASCADE CONSTRAINTS;
DROP TABLE CAMP_JOINING_BOARDS CASCADE CONSTRAINTS;
DROP TABLE CAMP_MY_CAMPSITES CASCADE CONSTRAINTS;
DROP TABLE CAMP_NOTICE_COMMENTS CASCADE CONSTRAINTS;
DROP TABLE CAMP_NOTICE_BOARDS CASCADE CONSTRAINTS;
DROP TABLE CAMP_ORDERS CASCADE CONSTRAINTS;
DROP TABLE CAMP_RECEIVE_MESSAGE CASCADE CONSTRAINTS;
DROP TABLE CAMP_SEND_MESSAGES CASCADE CONSTRAINTS;
DROP TABLE CAMP_THEMES CASCADE CONSTRAINTS;
DROP TABLE CAMP_TOILETS CASCADE CONSTRAINTS;
DROP TABLE CAMP_USERS CASCADE CONSTRAINTS;




/* Create Tables */

CREATE TABLE CAMP_ADVERTISEMENTS
(
	ADVERTISEMENT_NO number(7,0) NOT NULL,
	-- Y : 승인완료
	-- N : 승인대기중
	ADVERTISEMENT_STATUS char(1) DEFAULT 'N',
	ADVERTISEMENT_CONTENTS varchar2(2000),
	ADVERTISEMENT_IMAGE_NAME varchar2(1000),
	ADVERTISEMENT_START_DATE date NOT NULL,
	ADVERTISEMENT_END_DATE date,
	USER_ID varchar2(50) NOT NULL UNIQUE,
	CAMPSITE_NO number(7,0) NOT NULL,
	PRIMARY KEY (ADVERTISEMENT_NO)
);


CREATE TABLE CAMP_ANSWERS
(
	ANSWER_NO number(7,0) NOT NULL,
	ANSWER_TITLE varchar2(500) NOT NULL,
	ANSWER_CONTENTS varchar2(2000) NOT NULL,
	ANSWER_CREATE_DATE date DEFAULT SYSDATE,
	QUESTION_NO number(7,0) NOT NULL,
	PRIMARY KEY (ANSWER_NO)
);


CREATE TABLE CAMP_CAMPSITES
(
	CAMPSITE_NO number(7,0) NOT NULL,
	CAMPSITE_NAME varchar2(500) NOT NULL,
	-- CAMP : 야영장
	-- NORMAL : 일반야영장
	-- CAR : 자동차야영장
	CAMPSITE_SORT varchar2(10),
	CAMPSITE_LATITUDE number(14,10) NOT NULL,
	CAMPSITE_LONGITUDE number(14,10) NOT NULL,
	CAMPSITE_ADDRESS varchar2(1000) NOT NULL,
	CAMPSITE_TEL varchar2(13),
	CAMPSITE_SITES number(3,0),
	CAMPSITE_PRICE number(7,0),
	CAMPSITE_LIKES number(7,0) DEFAULT 0,
	CAMPSITE_HATES number(7,0) DEFAULT 0,
	CAMPSITE_PHOTO varchar2(1000),
	CAMPSITE_POINT number(2,1) DEFAULT 0.0,
	CAMPSITE_CREATE_DATE date DEFAULT SYSDATE,
	-- Y : 운영중
	-- N : 운영종료
	CAMPSITE_USED_YN char(1) DEFAULT 'Y',
	MY_CAMPSITE_NO number(7,0) NOT NULL,
	CAMPSITE_SIDO varchar2(50),
	PRIMARY KEY (CAMPSITE_NO)
);


CREATE TABLE CAMP_CARTS
(
	CART_NO number(7,0) NOT NULL,
	CART_CREATE_DATE date DEFAULT SYSDATE,
	USER_ID varchar2(50) NOT NULL UNIQUE,
	GOODS_NO number(7,0) NOT NULL,
	PRIMARY KEY (CART_NO)
);


CREATE TABLE CAMP_FOLLOWS
(
	FOLLOW_NO number(7,0) NOT NULL,
	FOLLOW_CREATE_DATE date DEFAULT SYSDATE,
	FOLLOW_ID varchar2(50) NOT NULL UNIQUE,
	FOLLOWING_ID varchar2(50) NOT NULL UNIQUE,
	PRIMARY KEY (FOLLOW_NO)
);


CREATE TABLE CAMP_FREE_BOARDS
(
	FREE_NO number(7,0) NOT NULL,
	FREE_TITLE varchar2(500) NOT NULL,
	FREE_CONTENTS varchar2(2000) NOT NULL,
	FREE_LIKES number(7,0) DEFAULT 0,
	FREE_HATES number(7,0) DEFAULT 0,
	FREE_VIEWS number(7,0) DEFAULT 0,
	FREE_CREATE_DATE date DEFAULT SYSDATE,
	USER_ID varchar2(50) NOT NULL UNIQUE,
	PRIMARY KEY (FREE_NO)
);


CREATE TABLE CAMP_FREE_COMMENTS
(
	COMMENT_NO number(7,0) NOT NULL,
	COMMENT_CONTENTS varchar2(2000) NOT NULL,
	COMMENT_CREATE_DATE date DEFAULT SYSDATE,
	FREE_THUMBNAIL varchar2(40),
	FREE_NO number(7,0) NOT NULL,
	USER_ID varchar2(50) NOT NULL UNIQUE,
	PRIMARY KEY (COMMENT_NO)
);


CREATE TABLE CAMP_GOODS
(
	GOODS_NO number(7,0) NOT NULL,
	GOODS_NAME varchar2(500) NOT NULL,
	GOODS_PRICE number(7,0) NOT NULL,
	GOODS_PHOTO varchar2(1000),
	GOODS_POINT number(2,1) DEFAULT 0.0,
	GOODS_LIKES number(7,0) DEFAULT 0,
	GOODS_HATES number(7,0) DEFAULT 0,
	GOODS_STOCK number(7,0) DEFAULT 100,
	GOODS_CREATE_DATE date DEFAULT SYSDATE,
	PRIMARY KEY (GOODS_NO)
);


CREATE TABLE CAMP_JOINING_BOARDS
(
	JOINING_NO number(7,0) NOT NULL,
	JOINING_TITLE varchar2(500) NOT NULL,
	JOINING_CONTENTS varchar2(2000) NOT NULL,
	JOINING_LIKES number(7,0) DEFAULT 0,
	JOINING_HATES number(7,0) DEFAULT 0,
	JOINING_VIEWS number(7,0) DEFAULT 0,
	JOINING_THUMBNAIL varchar2(40),
	JOINING_CREATE_DATE date DEFAULT SYSDATE,
	USER_ID varchar2(50) NOT NULL UNIQUE,
	PRIMARY KEY (JOINING_NO)
);


CREATE TABLE CAMP_JOINING_COMMENTS
(
	COMMENT_NO number(7,0) NOT NULL,
	COMMENT_CONTENTS varchar2(2000) NOT NULL,
	COMMENT_CREATE_DATE date DEFAULT SYSDATE,
	JOINING_NO number(7,0) NOT NULL,
	USER_ID varchar2(50) NOT NULL UNIQUE,
	PRIMARY KEY (COMMENT_NO)
);


CREATE TABLE CAMP_LIKE_CAMPSITE
(
	LIKE_CAMPSITE_NO number(7,0) NOT NULL,
	LIKE_CAMPSITE_CREATE_DATE date DEFAULT SYSDATE,
	USER_ID varchar2(50) NOT NULL UNIQUE,
	CAMPSITE_NO number(7,0) NOT NULL,
	PRIMARY KEY (LIKE_CAMPSITE_NO)
);


CREATE TABLE CAMP_MY_CAMPSITES
(
	MY_CAMPSITE_NO number(7,0) NOT NULL,
	-- Y : 승인완료
	-- N : 승인대기중
	MY_CAMPSITE_STATUS char(1) DEFAULT 'N',
	MY_CAMPSITE_CREATE_DATE date DEFAULT SYSDATE,
	USER_ID varchar2(50) NOT NULL UNIQUE,
	PRIMARY KEY (MY_CAMPSITE_NO)
);


CREATE TABLE CAMP_NOTICE_BOARDS
(
	NOTICE_NO number(7,0) NOT NULL,
	NOTICE_TITLE varchar2(500) NOT NULL,
	NOTICE_CONTENTS varchar2(2000) NOT NULL,
	NOTICE_LIKES number(7,0) DEFAULT 0,
	NOTICE_HATES number(7,0) DEFAULT 0,
	NOTICE_VIEWS number(7,0) DEFAULT 0,
	NOTICE_CREATE_DATE date DEFAULT SYSDATE,
	PRIMARY KEY (NOTICE_NO)
);


CREATE TABLE CAMP_NOTICE_COMMENTS
(
	COMMENT_NO number(7,0) NOT NULL,
	COMMENT_CONTENTS varchar2(2000) NOT NULL,
	COMMENT_CREATE_DATE date DEFAULT SYSDATE,
	NOTICE_NO number(7,0) NOT NULL,
	PRIMARY KEY (COMMENT_NO)
);


CREATE TABLE CAMP_OPINION_BOARDS
(
	OPINION_NO number(7,0) NOT NULL,
	OPINION_TITLE varchar2(500) NOT NULL,
	OPINION_CONTENTS varchar2(2000) NOT NULL,
	OPINION_LIKES number(7,0) DEFAULT 0,
	OPINION_HATES number(7,0) DEFAULT 0,
	OPINION_VIEWS number(7,0) DEFAULT 0,
	OPINION_THUMBNAIL varchar2(40),
	OPINION_CREATE_DATE date DEFAULT SYSDATE,
	USER_ID varchar2(50) NOT NULL UNIQUE,
	CAMPSITE_NO number(7,0) NOT NULL,
	PRIMARY KEY (OPINION_NO)
);


CREATE TABLE CAMP_OPINION_COMMENTS
(
	COMMENT_NO number(7,0) NOT NULL,
	COMMENT_CONTENTS varchar2(2000) NOT NULL,
	COMMENT_CREATE_DATE date DEFAULT SYSDATE,
	OPINION_NO number(7,0) NOT NULL,
	USER_ID varchar2(50) NOT NULL UNIQUE,
	PRIMARY KEY (COMMENT_NO)
);


CREATE TABLE CAMP_ORDERS
(
	ORDER_NO number(7,0) NOT NULL,
	ORDER_CREATE_DATE date DEFAULT SYSDATE,
	USER_ID varchar2(50) NOT NULL UNIQUE,
	PRIMARY KEY (ORDER_NO)
);


CREATE TABLE CAMP_PURCHASES
(
	PURCHASE_NO number(7,0) NOT NULL,
	ORDER_NO number(7,0) NOT NULL,
	GOODS_NO number(7,0) NOT NULL,
	PURCHASE_AMOUNT number(3,0) NOT NULL,
	PRIMARY KEY (PURCHASE_NO)
);


CREATE TABLE CAMP_QUESTIONS
(
	QUESTION_NO number(7,0) NOT NULL,
	QUESTION_TITLE varchar2(500) NOT NULL,
	QUESTION_CONTENTS varchar2(2000) NOT NULL,
	QUESTION_CREATE_DATE date DEFAULT SYSDATE,
	USER_ID varchar2(50) NOT NULL UNIQUE,
	CAMPSITE_NO number(7,0) NOT NULL,
	PRIMARY KEY (QUESTION_NO)
);


CREATE TABLE CAMP_RECEIVE_MESSAGE
(
	RECEIVE_NO number(7,0) NOT NULL,
	-- Y : 읽음
	-- N : 읽지 않음
	RECEIVE_READ_YN char(1) DEFAULT 'N',
	RECEIVE_READ_DATE date,
	RECIPIENT_ID varchar2(50) NOT NULL UNIQUE,
	SEND_NO number(7,0) NOT NULL,
	PRIMARY KEY (RECEIVE_NO)
);


CREATE TABLE CAMP_RESERVATIONS
(
	RESERVATION_NO number(7,0) NOT NULL,
	RESERVATION_DATE date NOT NULL,
	RESERVATION_COUNT number(3,0) NOT NULL,
	RESERVATION_CREATE_DATE date DEFAULT SYSDATE,
	USER_ID varchar2(50) NOT NULL UNIQUE,
	SITE_NO number(7,0) NOT NULL,
	PRIMARY KEY (RESERVATION_NO)
);


CREATE TABLE CAMP_REVIEW_BOARDS
(
	REVIEW_NO number(7,0) NOT NULL,
	REVIEW_TITLE varchar2(500) NOT NULL,
	REVIEW_CONTENTS varchar2(2000) NOT NULL,
	REVIEW_LIKES number(7,0) DEFAULT 0,
	REVIEW_HATES number(7,0) DEFAULT 0,
	REVIEW_VIEWS number(7,0) DEFAULT 0,
	REVIEW_THUMBNAIL varchar2(40),
	REVIEW_CREATE_DATE date DEFAULT SYSDATE,
	USER_ID varchar2(50) NOT NULL UNIQUE,
	CAMPSITE_NO number(7,0) NOT NULL,
	PRIMARY KEY (REVIEW_NO)
);


CREATE TABLE CAMP_REVIEW_COMMENTS
(
	COMMENT_NO number(7,0) NOT NULL,
	COMMENT_CONTENTS varchar2(2000) NOT NULL,
	COMMENT_CREATE_DATE date DEFAULT SYSDATE,
	REVIEW_NO number(7,0) NOT NULL,
	USER_ID varchar2(50) NOT NULL UNIQUE,
	PRIMARY KEY (COMMENT_NO)
);


CREATE TABLE CAMP_SCRAPS
(
	SCRAP_NO number(7,0) NOT NULL,
	SCRAP_CREATE_DATE date DEFAULT SYSDATE,
	USER_ID varchar2(50) NOT NULL UNIQUE,
	REVIEW_NO number(7,0) NOT NULL,
	PRIMARY KEY (SCRAP_NO)
);


CREATE TABLE CAMP_SEND_MESSAGES
(
	SEND_NO number(7,0) NOT NULL,
	SEND_TITLE varchar2(500) NOT NULL,
	SEND_CONTENTS varchar2(2000) NOT NULL,
	SEND_CREATE_DATE date DEFAULT SYSDATE,
	SENDER_ID varchar2(50) NOT NULL UNIQUE,
	PRIMARY KEY (SEND_NO)
);


CREATE TABLE CAMP_SITES
(
	SITE_NO number(7,0) NOT NULL,
	SITE_NAME varchar2(500) NOT NULL,
	SITE_AMOUNT number(7,0),
	SITE_CREATE_DATE date DEFAULT SYSDATE,
	CAMPSITE_NO number(7,0) NOT NULL,
	PRIMARY KEY (SITE_NO)
);


CREATE TABLE CAMP_THEMES
(
	THEME_NO number(7,0) NOT NULL,
	THEME_IMAGE_NAME varchar2(1000),
	THEME_NAME varchar2(100) NOT NULL,
	PRIMARY KEY (THEME_NO)
);


CREATE TABLE CAMP_THEME_CONNECTS
(
	CONNECT_NO number(7,0) NOT NULL,
	CAMPSITE_NO number(7,0) NOT NULL,
	THEME_NO number(7,0) NOT NULL,
	PRIMARY KEY (CONNECT_NO)
);


CREATE TABLE CAMP_TOILETS
(
	TOILET_NO number(7,0) NOT NULL,
	TOILET_NAME varchar2(500) NOT NULL,
	TOILET_LATITUDE number(14,10) NOT NULL,
	TOILET_LONGITUDE number(14,10) NOT NULL,
	PRIMARY KEY (TOILET_NO)
);


CREATE TABLE CAMP_USERS
(
	USER_ID varchar2(50) NOT NULL UNIQUE,
	USER_PASSWORD varchar2(100) NOT NULL,
	USER_NAME varchar2(100) NOT NULL,
	USER_NICK_NAME varchar2(100) NOT NULL,
	USER_EMAIL varchar2(100) NOT NULL,
	USER_PHONE_NUMBER char(13) NOT NULL,
	USER_PROFILE_PHOTO varchar2(500) DEFAULT 'default.jpg',
	-- CLIENT : 고객
	-- OWNER : 주인
	-- ADMIN : 관리자
	USER_TYPE varchar2(10) NOT NULL,
	USER_USED_YN char(1) DEFAULT 'Y',
	USER_CREATE_DATE date DEFAULT SYSDATE,
	PRIMARY KEY (USER_ID)
);



/* Create Foreign Keys */

ALTER TABLE CAMP_ADVERTISEMENTS
	ADD FOREIGN KEY (CAMPSITE_NO)
	REFERENCES CAMP_CAMPSITES (CAMPSITE_NO)
;


ALTER TABLE CAMP_LIKE_CAMPSITE
	ADD FOREIGN KEY (CAMPSITE_NO)
	REFERENCES CAMP_CAMPSITES (CAMPSITE_NO)
;


ALTER TABLE CAMP_OPINION_BOARDS
	ADD FOREIGN KEY (CAMPSITE_NO)
	REFERENCES CAMP_CAMPSITES (CAMPSITE_NO)
;


ALTER TABLE CAMP_QUESTIONS
	ADD FOREIGN KEY (CAMPSITE_NO)
	REFERENCES CAMP_CAMPSITES (CAMPSITE_NO)
;


ALTER TABLE CAMP_REVIEW_BOARDS
	ADD FOREIGN KEY (CAMPSITE_NO)
	REFERENCES CAMP_CAMPSITES (CAMPSITE_NO)
;


ALTER TABLE CAMP_SITES
	ADD FOREIGN KEY (CAMPSITE_NO)
	REFERENCES CAMP_CAMPSITES (CAMPSITE_NO)
;


ALTER TABLE CAMP_THEME_CONNECTS
	ADD FOREIGN KEY (CAMPSITE_NO)
	REFERENCES CAMP_CAMPSITES (CAMPSITE_NO)
;


ALTER TABLE CAMP_FREE_COMMENTS
	ADD FOREIGN KEY (FREE_NO)
	REFERENCES CAMP_FREE_BOARDS (FREE_NO)
;


ALTER TABLE CAMP_CARTS
	ADD FOREIGN KEY (GOODS_NO)
	REFERENCES CAMP_GOODS (GOODS_NO)
;


ALTER TABLE CAMP_PURCHASES
	ADD FOREIGN KEY (GOODS_NO)
	REFERENCES CAMP_GOODS (GOODS_NO)
;


ALTER TABLE CAMP_JOINING_COMMENTS
	ADD FOREIGN KEY (JOINING_NO)
	REFERENCES CAMP_JOINING_BOARDS (JOINING_NO)
;


ALTER TABLE CAMP_CAMPSITES
	ADD FOREIGN KEY (MY_CAMPSITE_NO)
	REFERENCES CAMP_MY_CAMPSITES (MY_CAMPSITE_NO)
;


ALTER TABLE CAMP_NOTICE_COMMENTS
	ADD FOREIGN KEY (NOTICE_NO)
	REFERENCES CAMP_NOTICE_BOARDS (NOTICE_NO)
;


ALTER TABLE CAMP_OPINION_COMMENTS
	ADD FOREIGN KEY (OPINION_NO)
	REFERENCES CAMP_OPINION_BOARDS (OPINION_NO)
;


ALTER TABLE CAMP_PURCHASES
	ADD FOREIGN KEY (ORDER_NO)
	REFERENCES CAMP_ORDERS (ORDER_NO)
;


ALTER TABLE CAMP_ANSWERS
	ADD FOREIGN KEY (QUESTION_NO)
	REFERENCES CAMP_QUESTIONS (QUESTION_NO)
;


ALTER TABLE CAMP_REVIEW_COMMENTS
	ADD FOREIGN KEY (REVIEW_NO)
	REFERENCES CAMP_REVIEW_BOARDS (REVIEW_NO)
;


ALTER TABLE CAMP_SCRAPS
	ADD FOREIGN KEY (REVIEW_NO)
	REFERENCES CAMP_REVIEW_BOARDS (REVIEW_NO)
;


ALTER TABLE CAMP_RECEIVE_MESSAGE
	ADD FOREIGN KEY (SEND_NO)
	REFERENCES CAMP_SEND_MESSAGES (SEND_NO)
;


ALTER TABLE CAMP_RESERVATIONS
	ADD FOREIGN KEY (SITE_NO)
	REFERENCES CAMP_SITES (SITE_NO)
;


ALTER TABLE CAMP_THEME_CONNECTS
	ADD FOREIGN KEY (THEME_NO)
	REFERENCES CAMP_THEMES (THEME_NO)
;


ALTER TABLE CAMP_ADVERTISEMENTS
	ADD FOREIGN KEY (USER_ID)
	REFERENCES CAMP_USERS (USER_ID)
;


ALTER TABLE CAMP_CARTS
	ADD FOREIGN KEY (USER_ID)
	REFERENCES CAMP_USERS (USER_ID)
;


ALTER TABLE CAMP_FOLLOWS
	ADD FOREIGN KEY (FOLLOWING_ID)
	REFERENCES CAMP_USERS (USER_ID)
;


ALTER TABLE CAMP_FOLLOWS
	ADD FOREIGN KEY (FOLLOW_ID)
	REFERENCES CAMP_USERS (USER_ID)
;


ALTER TABLE CAMP_FREE_BOARDS
	ADD FOREIGN KEY (USER_ID)
	REFERENCES CAMP_USERS (USER_ID)
;


ALTER TABLE CAMP_FREE_COMMENTS
	ADD FOREIGN KEY (USER_ID)
	REFERENCES CAMP_USERS (USER_ID)
;


ALTER TABLE CAMP_JOINING_BOARDS
	ADD FOREIGN KEY (USER_ID)
	REFERENCES CAMP_USERS (USER_ID)
;


ALTER TABLE CAMP_JOINING_COMMENTS
	ADD FOREIGN KEY (USER_ID)
	REFERENCES CAMP_USERS (USER_ID)
;


ALTER TABLE CAMP_LIKE_CAMPSITE
	ADD FOREIGN KEY (USER_ID)
	REFERENCES CAMP_USERS (USER_ID)
;


ALTER TABLE CAMP_MY_CAMPSITES
	ADD FOREIGN KEY (USER_ID)
	REFERENCES CAMP_USERS (USER_ID)
;


ALTER TABLE CAMP_OPINION_BOARDS
	ADD FOREIGN KEY (USER_ID)
	REFERENCES CAMP_USERS (USER_ID)
;


ALTER TABLE CAMP_OPINION_COMMENTS
	ADD FOREIGN KEY (USER_ID)
	REFERENCES CAMP_USERS (USER_ID)
;


ALTER TABLE CAMP_ORDERS
	ADD FOREIGN KEY (USER_ID)
	REFERENCES CAMP_USERS (USER_ID)
;


ALTER TABLE CAMP_QUESTIONS
	ADD FOREIGN KEY (USER_ID)
	REFERENCES CAMP_USERS (USER_ID)
;


ALTER TABLE CAMP_RECEIVE_MESSAGE
	ADD FOREIGN KEY (RECIPIENT_ID)
	REFERENCES CAMP_USERS (USER_ID)
;


ALTER TABLE CAMP_RESERVATIONS
	ADD FOREIGN KEY (USER_ID)
	REFERENCES CAMP_USERS (USER_ID)
;


ALTER TABLE CAMP_REVIEW_BOARDS
	ADD FOREIGN KEY (USER_ID)
	REFERENCES CAMP_USERS (USER_ID)
;


ALTER TABLE CAMP_REVIEW_COMMENTS
	ADD FOREIGN KEY (USER_ID)
	REFERENCES CAMP_USERS (USER_ID)
;


ALTER TABLE CAMP_SCRAPS
	ADD FOREIGN KEY (USER_ID)
	REFERENCES CAMP_USERS (USER_ID)
;


ALTER TABLE CAMP_SEND_MESSAGES
	ADD FOREIGN KEY (SENDER_ID)
	REFERENCES CAMP_USERS (USER_ID)
;



/* Comments */

COMMENT ON COLUMN CAMP_ADVERTISEMENTS.ADVERTISEMENT_STATUS IS 'Y : 승인완료
N : 승인대기중';
COMMENT ON COLUMN CAMP_CAMPSITES.CAMPSITE_SORT IS 'CAMP : 야영장
NORMAL : 일반야영장
CAR : 자동차야영장';
COMMENT ON COLUMN CAMP_CAMPSITES.CAMPSITE_USED_YN IS 'Y : 운영중
N : 운영종료';
COMMENT ON COLUMN CAMP_MY_CAMPSITES.MY_CAMPSITE_STATUS IS 'Y : 승인완료
N : 승인대기중';
COMMENT ON COLUMN CAMP_RECEIVE_MESSAGE.RECEIVE_READ_YN IS 'Y : 읽음
N : 읽지 않음';
COMMENT ON COLUMN CAMP_USERS.USER_TYPE IS 'CLIENT : 고객
OWNER : 주인
ADMIN : 관리자';



