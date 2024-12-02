drop table if exists dept_emp;
drop table if exists dept_manager;
drop table if exists departments;
drop table if exists salaries;
drop table if exists employees;
drop table if exists titles;

create table titles (
   title_id varchar (10) primary key,
   title varchar (50) not null
);


CREATE TABLE departments (
    dept_no VARCHAR(10) PRIMARY KEY,       
    dept_name VARCHAR(50) NOT NULL      
 );

CREATE TABLE employees (
    emp_no INT PRIMARY KEY,       
    emp_title VARCHAR(10) NOT NULL,
	birth_date DATE NOT NULL,
	first_name varchar(50) not null,
	last_name varchar(50) not null,
	sex varchar(10) not null,
	hire_date DATE not null,
	foreign key (emp_title) references titles (title_id) 
	);

create table dept_manager (
    dept_no varchar (10) not null,
    foreign key (dept_no) references departments (dept_no),
    emp_no INT not null,
    foreign key (emp_no) references employees (emp_no),
    primary key (dept_no, emp_no)
);

create table dept_emp (
   emp_no INT not null,
   foreign key (emp_no) references employees (emp_no),
   dept_no varchar(10) not null,
   foreign key (dept_no) references departments (dept_no),
   primary key (emp_no, dept_no)
);

create table salaries(
   emp_no int not null,
   foreign key (emp_no) references employees (emp_no),
   salary float not null
);