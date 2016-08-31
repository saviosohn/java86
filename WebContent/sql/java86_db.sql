/* 
 * 사용자 테이블 : java86_member 
 */
drop table java86_member;

create table java86_member(
	mem_id			varchar2(40)		primary key,
	mem_password	varchar2(40)		not null,
	mem_name		varchar2(40)		not null,
	mem_email_id	varchar2(40)		not null,
	mem_email_domain number				not null,
	mem_tel			varchar2(20),
	mem_reg_date	date				default sysdate,
	mem_level		number				default 9,	/* 9:사용자, 1:최고관리자 */
	img_real_name	varchar2(200),
	mem_last_date	date,							/* 최종 접속일 */
	mem_birth_date	date							/* 생년월일 */
);


insert into java86_member 
	   (mem_id, mem_password, mem_name, mem_email_id, mem_email_domain)
values ('savio', 'savio',	  '손병철',	'savio',	  1);

insert into java86_member 
	   (mem_id, mem_password, mem_name, mem_email_id, mem_email_domain, mem_level)
values ('admin', 'admin',	  '관리자',	'admin',	  1,				1);

select * from java86_member;


/* 
 * 코드 테이블 : java86_code 
 */
create table java86_code (
	code_value	varchar2(4),
	group_code	varchar2(30),
	code_name	varchar2(100),
	order_no	number,
	use_yn		char(1)		default 'Y'
);

insert into java86_code(code_value, group_code, code_name, order_no)
values ('1', 'email', 'naver.com', '1');

insert into java86_code(code_value, group_code, code_name, order_no)
values ('2', 'email', 'daum.net', '2');

insert into java86_code(code_value, group_code, code_name, order_no)
values ('3', 'email', 'gmail.com', '3');

insert into java86_code(code_value, group_code, code_name, order_no)
values ('1', 'tel', '010', '1');

insert into java86_code(code_value, group_code, code_name, order_no)
values ('2', 'tel', '011', '2');

insert into java86_code(code_value, group_code, code_name, order_no)
values ('3', 'tel', '016', '3');

select * from java86_code;


/* 
 * 첨부 화일 테이블 : java86_file 
 */
create table java86_file (
	file_real_name	varchar2(300)		primary key,
	file_path		varchar2(300)		not null,
	file_ori_name	varchar2(80)		not null,
	file_size		number(8)			not null,
	relative_key	varchar2(40)		not null,
	relative_tbl	varchar2(40)		not null,
	file_type		varchar2(40),
	thumbnail		varchar2(40)
);

select * from java86_file;

delete from java86_member where mem_id = 'saviosohn';
delete from java86_file where relative_key = 'saviosohn';