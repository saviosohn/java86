create table java86_fine(
	fine_no		number			primary key,
	mem_id		varchar2(40)	not null,
	
	fine_amount		number			not null,
	fine_detail		varchar2(200)	not null,
	fine_date	Date			default sysdate

);

select * from java86_fine;

create sequence s86_java86_fine;

select * from user_sequences;

	select	fine_no,e.mem_id,m.mem_name,fine_amount,fine_detail,fine_date
  	from java86_fine e, java86_member m
  	where e.mem_id=m.mem_id;
  	
  	
create table java86_message(
	m_recv_id varchar2(40) not null,
	m_recv_name varchar2(40) not null,
	m_title	varchar2 (200) not null,
	m_content varchar2(200) not null,
	m_send_id varchar2(40) not null,
	m_send_name varchar2(40) not null,
	m_reg_date Date default sysdate,
	m_recv_del_yn char(1) default 'n',
	m_send_del_yn char(1) default 'n',
	m_read_yn char(1) default 'n',
	m_no number primary key
);

drop table java86_message;

select * from java86_message;

create sequence s86_java86_Message;
s86_java86_Message

alter table java86_message MODIFY(m_recv_del_yn char(1) default 'n');
alter table java86_message MODIFY(m_send_del_yn char(1) default 'n');
alter table java86_message MODIFY(m_read_yn char(1) default 'n');