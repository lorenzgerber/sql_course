   CREATE TABLE Employee 
      (FName    Varchar(15)     not null, 
       MInit    Char(1), 
       LName    Varchar(15)     not null, 
       SSN      Char(9)         not null, 
       BDate    Date, 
       Address  Varchar(30), 
       Sex      Char(1), 
       Salary   Decimal(10,2), 
       Super_SSN Char(9), 
       DNo      Int             not null, 
       Constraint pkey_emp primary key (SSN), 
       Constraint fkey_emp1 foreign key (Super_SSN) 
       references Employee (SSN));

   CREATE TABLE Department  
      (DName    Varchar(15)     not null, 
       DNumber  Int             not null, 
       Mgr_SSN  Char(9)         not null, 
       Mgr_Start_Date Date, 
       Constraint pkey_dept primary key (DNumber), 
       Constraint ckey_dept unique (DName), 
       Constraint fkey_dept foreign key (Mgr_SSN)  
       references Employee (SSN));

   CREATE TABLE Dept_Locations   
      (Dnumber     Int     not null, 
       Dlocation   varchar(15) not null, 
       Constraint pkey_dep_loc primary key (DNumber, DLocation), 
       Constraint fkey_dep_loc foreign key (Dnumber) 
       references Department (DNumber));

   CREATE TABLE Project  
      (PName   Varchar(15) not null, 
       PNumber Int     not null, 
       PLocation   Varchar(15), 
       DNum        Int     not null, 
       Constraint pkey_proj primary key (PNumber), 
       Constraint ckey_proj unique (PName), 
       Constraint fkey_proj_1 foreign key (DNum) 
       references Department (DNumber));

   CREATE TABLE Works_On  
      (ESSN    Char(9)     not null, 
       PNo     Int     not null, 
       Hours   Decimal(3,1), 
       Constraint pkey_works_on primary key (ESSN, PNo), 
       Constraint fkey_works_on_1 foreign key (ESSN) 
       references Employee (SSN), 
       Constraint fkey_works_on_2 foreign key (PNo) 
       references Project (PNumber));

   CREATE TABLE Dependent  
      (ESSN    Char(9)     not null, 
       Dependent_Name Varchar(15)  not null, 
       Sex     Char(1), 
       BDate   Date, 
       Relationship Varchar(8), 
       Constraint pkey_depe primary key (ESSN, Dependent_Name), 
       Constraint fkey_depe foreign key (ESSN) 
       references Employee (SSN));
   
INSERT INTO Employee VALUES ('James', 'E', 'Borg', '888665555', '1937-11-10', '450 Stone, Houston, TX', 'M', 55000.00, NULL, 1);
INSERT INTO Employee VALUES ('Franklin', 'T', 'Wong', '333445555', '1965-12-08', '638 Voss, Houston, TX', 'M', 40000.00, '888665555', 5);
INSERT INTO Employee VALUES ('John', 'B', 'Smith', '123456789', '1965-01-09', '731 Fondren, Houston, TX', 'M', 30000.00, '333445555', 5);
INSERT INTO Employee VALUES ('Jennifer', 'S', 'Wallace', '987654321', '1941-06-20', '291 Berry, Bellaire, TX', 'F', 43000.00, '888665555', 4);
INSERT INTO Employee VALUES ('Alicia', 'J', 'Zelaya', '999887777', '1968-07-19', '3321 Castle, Spring, TX', 'F', 25000.00, '987654321', 4);
INSERT INTO Employee VALUES ('Ramesh', 'K', 'Narayan', '666884444', '1962-09-15', '975 Fire Oak, Humble, TX', 'M', 38000.00, '333445555', 5);
INSERT INTO Employee VALUES ('Joyce', 'A', 'English', '453453453', '1972-07-31', '5631 Rice, Houston, TX', 'F', 25000.00, '333445555', 5);
INSERT INTO Employee VALUES ('Ahmad', 'V', 'Jabbar', '987987987', '1969-03-29', '980 Dallas Houston, TX', 'M', 25000.00, '987654321', 4);

INSERT INTO Department VALUES ('Research', 5, '333445555', '1988-05-22');
INSERT INTO Department VALUES ('Administration', 4, '987654321', '1995-01-01');
INSERT INTO Department VALUES ('Headquarters', 1, '888665555', '1981-06-19');

INSERT INTO Dept_Locations VALUES (1, 'Houston');
INSERT INTO Dept_Locations VALUES (4, 'Stafford');
INSERT INTO Dept_Locations VALUES (5, 'Bellaire');
INSERT INTO Dept_Locations VALUES (5, 'Sugarland');
INSERT INTO Dept_Locations VALUES (5, 'Houston');

-- To avoid explicit transactions, add the foreign-key constraint on
-- Employee from Department after populating Department.

   ALTER TABLE Employee ADD CONSTRAINT
        fkey_emp2 foreign key (DNo) references Department (DNumber);

INSERT INTO Project VALUES ('ProductX', 1, 'Bellaire', 5);
INSERT INTO Project VALUES ('ProductY', 2, 'Sugarland', 5);
INSERT INTO Project VALUES ('ProductZ', 3, 'Houston', 5);
INSERT INTO Project VALUES ('Computerization', 10, 'Stafford', 4);
INSERT INTO Project VALUES ('Reorganization', 20, 'Houston', 1);
INSERT INTO Project VALUES ('NewBenefits', 30, 'Stafford', 4);

INSERT INTO Works_On VALUES ('123456789', 1, 32.5);
INSERT INTO Works_On VALUES ('123456789', 2, 7.5);
INSERT INTO Works_On VALUES ('666884444', 3, 40.0);
INSERT INTO Works_On VALUES ('453453453', 1, 20.0);
INSERT INTO Works_On VALUES ('453453453', 2, 20.0);
INSERT INTO Works_On VALUES ('333445555', 2, 10.0);
INSERT INTO Works_On VALUES ('333445555', 3, 10.0);
INSERT INTO Works_On VALUES ('333445555', 10, 10.0);
INSERT INTO Works_On VALUES ('333445555', 20, 10.0);
INSERT INTO Works_On VALUES ('999887777', 30, 30.0);
INSERT INTO Works_On VALUES ('999887777', 10, 10.0);
INSERT INTO Works_On VALUES ('987987987', 10, 35.0);
INSERT INTO Works_On VALUES ('987987987', 30, 5.0);
INSERT INTO Works_On VALUES ('987654321', 30, 20.0);
INSERT INTO Works_On VALUES ('987654321', 20, 15.0);
INSERT INTO Works_On VALUES ('888665555', 20, NULL);

INSERT INTO Dependent VALUES ('333445555', 'Alice', 'F', '1986-04-05', 'Daughter');
INSERT INTO Dependent VALUES ('333445555', 'Theodore', 'M', '1983-10-25', 'Son');
INSERT INTO Dependent VALUES ('333445555', 'Joy', 'F', '1958-05-03', 'Spouse');
INSERT INTO Dependent VALUES ('987654321', 'Abner', 'M', '1942-02-28', 'Spouse');
INSERT INTO Dependent VALUES ('123456789', 'Michael', 'M', '1988-01-04', 'Son');
INSERT INTO Dependent VALUES ('123456789', 'Alice', 'F', '1988-12-30', 'Daughter');
INSERT INTO Dependent VALUES ('123456789', 'Elizabeth', 'F', '1967-05-05', 'Spouse');

