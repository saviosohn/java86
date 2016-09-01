select * from java86_free;

create table java86_free (
	free_no number  primary key,
	free_id varchar2(200) not null,
	reg_date date  default sysdate,
	clicks number default 0, 
	content varchar2(4000) not null,
	title varchar2(800) not null,
	pass number not null,
	file_no number(6) not null
);

create sequence java86_free_no;

delete 
  from java86_free;
  
  alter table java86_free
    add(file_No number default 0 );
    
    insert into java86_free values(java86_free_no.nextval,'a','0','asd','vv','1',sysdate,0);
    
    create sequence free_file_no;

    create table free_file (
	file_No number(6) not null,
	realpath varchar2(300),
	oriname varchar2(300),
	realname varchar2(300),
	filepath varchar2(300),
	thumnail number(2) default '0'
);

select * from free_file;
drop table free_file

select       j.free_no,
			f.file_No as fileNO,
		   realpath as realpath,
		   	oriname as oriname,
		   	realname as realname,
		    filepath as filepath,
		    thumnail as thumnail
	from free_file f, java86_free j
   where f.file_No = j.file_No
     and j.free_no = #{freeNo};
     
     select * 
     from free_file;
    
     
     
    
     
     
     
     
     
         update java86_free
       set clicks = clicks+1  
    
     where free_no = 52;
		
     sle
     
     select clicks 
       				   from  java86_free
       				  where free_no = 52;
       				  
       				  
       				  
 




create table free_comment (
	comment_no number(6) primary key,
	no number(6) not null,
	content varchar2(200) not null,
	id varchar2(20) not null,
	reg_date date default sysdate
);
	create sequence free_comment_no		   
		



      				  
       				  
		