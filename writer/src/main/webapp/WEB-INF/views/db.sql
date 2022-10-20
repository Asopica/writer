DROP TABLE WRITER;

CREATE TABLE WRITER(
	writer_idx		number(4) PRIMARY KEY,
	writer_name		varchar2(20),
	writer_title	varchar2(100),
	writer_content	varchar2(300),
	writer_date		DATE DEFAULT sysdate,
	writer_hit		number(4)	DEFAULT 0
);
DROP SEQUENCE writer_seq;
CREATE SEQUENCE writer_seq;

INSERT INTO WRITER (writer_idx, writer_name, writer_title, writer_content, writer_date) VALUES (writer_seq.NEXTVAL,'홍길동','글의 제목글' ,'내용1',sysdate);
	

INSERT INTO WRITER(writer_idx, writer_name, writer_title, writer_content, writer_date) VALUES (writer_seq.NEXTVAL,'변사또','글의 제목2','글 내용2',sysdate);
	

INSERT INTO WRITER(writer_idx, writer_name, writer_title, writer_content, writer_date) VALUES (writer_seq.NEXTVAL,'임꺽정','글의 제목3','글 내용3',sysdate);
	

SELECT * FROM WRITER;

DROP TABLE reply;

CREATE TABLE reply (
	reply_idx		number(4) PRIMARY KEY,
	reply_name		varchar(20),
	reply_content	varchar2(300),
	reply_date		DATE DEFAULT sysdate,
	reply_writer_idx	number(4)
);

DROP SEQUENCE reply_writer_seq;
CREATE SEQUENCE reply_writer_seq;

INSERT INTO reply(REPLY_IDX, reply_name, reply_content, reply_date,reply_writer_idx) 
VALUES (reply_writer_seq.nextval,'홍두깨','댓글 제목1', sysdate,1);

INSERT INTO reply(REPLY_IDX, reply_name, reply_content, reply_date,reply_writer_idx) 
VALUES (reply_writer_seq.nextval,'심청','댓글 제목2', sysdate,2);

INSERT INTO reply(REPLY_IDX, reply_name, reply_content, reply_date,reply_writer_idx) 
VALUES (reply_writer_seq.nextval,'심봉사','댓글 제목3', sysdate,3);

SELECT * FROM reply;

COMMIT;

