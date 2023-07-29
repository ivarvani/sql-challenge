-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/

-- creating table Departments
CREATE TABLE "departments" (
    "dept_no" Varchar(20)   NOT NULL,
    "dept_name" varchar(20)   NOT NULL,
    CONSTRAINT "pk_departments" PRIMARY KEY (
        "dept_no"
     )
);

-- creating table
CREATE TABLE "titles" (
    "title_id" varchar(20)   NOT NULL,
    "title" varchar(20)   NOT NULL,
    CONSTRAINT "pk_titles" PRIMARY KEY (
        "title_id"
     )
);

-- creating table Employees
CREATE TABLE "employees" (
    "emp_no" Int   NOT NULL,
    "emp_title_id" varchar(20)   NOT NULL,
    "birth_date" varchar(50)   NOT NULL,
    "first_name" varchar(50)   NOT NULL,
    "last_name" varchar(50)   NOT NULL,
    "sex" varchar(50)   NOT NULL,
    "hire_date" varchar(50)   NOT NULL,
    CONSTRAINT "pk_employees" PRIMARY KEY (
        "emp_no"
     )
);

-- creating table Department_employee
CREATE TABLE "dept_emp" (
    "emp_no" int   NOT NULL,
    "dep_no" varchar(20)   NOT NULL,
    CONSTRAINT "pk_dept_emp" PRIMARY KEY (
        "emp_no","dep_no"
     )
);

-- creating table Department_manager
CREATE TABLE "dept_manager" (
    "dep_no" varchar(20)   NOT NULL,
    "emp_no" int   NOT NULL,
    CONSTRAINT "pk_dept_manager" PRIMARY KEY (
        "dep_no","emp_no"
     )
);

-- creating table Salaries
CREATE TABLE "salaries" (
    "emp_no" int   NOT NULL,
    "salary" int   NOT NULL,
    CONSTRAINT "pk_salaries" PRIMARY KEY (
        "emp_no"
     )
);

ALTER TABLE "employees" ADD CONSTRAINT "fk_employees_emp_title_id" FOREIGN KEY("emp_title_id")
REFERENCES "titles" ("title_id");

ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_dep_no" FOREIGN KEY("dep_no")
REFERENCES "departments" ("dept_no");

ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_dep_no" FOREIGN KEY("dep_no")
REFERENCES "departments" ("dept_no");

ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

ALTER TABLE "salaries" ADD CONSTRAINT "fk_salaries_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");