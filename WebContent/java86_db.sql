create table java86_member(
	mem_id			varchar2(40)		primary key,
	mem_password	varchar2(40)		not null,
	mem_name		varchar2(40)		not null,
	mem_email_id	varchar2(40)		not null,
	mem_email_domain number				not null,
	mem_tel			varchar2(20),
	mem_reg_date	date				default sysdate,
	mem_level		number				default 9,
	img_real_name	varchar2(200)
);

insert into java86_member 
	   (mem_id, mem_password, mem_name, mem_email_id, mem_email_domain)
values ('savio', 'savio',	  '손병철',	'savio',	  1,			);

insert into java86_member 
	   (mem_id, mem_password, mem_name, mem_email_id, mem_email_domain, mem_level)
values ('admin', 'admin',	  '관리자',	'admin',	  1,				1);

select * from user_sequences;

select * from t86_user;