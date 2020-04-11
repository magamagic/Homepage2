
create sequence board_seq
increment by 1
start with 1;


select board_seq.currval, board_seq.nextval from dual;

select * from board1 order by seq desc;

drop sequence board1_seq;

create sequence board1_seq
increment by 1
start with 29;

select board1_seq.nextval from dual;
insert into board1
values(board1_seq.nextval,'very','much','thankyou',sysdate,0);

select * from e_board order by seq desc;

create sequence enrty_seq
increment by 1
start with 1;

drop sequence entry_seq;

drop table entry;

create table entry( 
seq NUMBER, 
id VARCHAR2(20) NOT NULL  PRIMARY KEY,
password varchar2(20) not null,
name varchar2(20) not null,
gender varchar2(20) not null,
birth varchar2(20),
mail varchar2(20),
phone varchar2(20),
zipcode varchar2(20),
address varchar2(100),
detailaddress varchar2(100),
extraaddresss varchar2(100),
regdate varchar2(20)
);

alter table entry add(entry_role varchar2(13));

select id,password from entry e where id= 'very' and password= 'much';

create sequence seq_entry_seq;

select * from entry;

SELECT seq_entry_seq.CURRVAL FROM DUAL;



insert into entry(seq,id,password,name,gender)
values(seq_entry_seq.NEXTVAL,'very','much','thank','you');

insert into entry(seq,id,password,name,gender)
values(1,'very','much','thank','you');



create table seq_test01(
 no number primary key,
 remark varchar2(10)
);

create sequence seq_seq_test01_no;

insert into seq_test01(no,remark)
values(seq_seq_test01_no.NEXTVAL,'¿¬½À1');

select no,remark from seq_test01;











