-- We start with creating the database and all the tables, primary keys and foreign keys
-- necessary to hold the information provided while linking the appropriate tables to one another.

create database Coderstrust;
Use Coderstrust;

-- The first table represents the 3 areas of interest (Graphical Design, Programming and SoMe)
-- that users can be categorized in after taking the Quiz on the website.

create table Areas_of_Interest (
Area_ID int auto_increment,
Area_Name varchar(255) not null,
Area_Description varchar(255) not null,
primary key (Area_ID)
);

-- The Course Area table holds the information about the 4 possible types of courses available 
-- on the Coderstrust Academy website and is linked with the Courses table that holds some of the courses
-- available in each category.

create table Course_Area (
Category_ID int auto_increment,
Category_Name varchar(255) not null,
Category_Description varchar(255) not null,
primary key (Category_ID)
);

-- The Questions table contains all the Quiz questions which are linked to one of the 3 categories for questions, possible answers, 
-- points for each question and the Area_ID to be linked with the apropriate areas of interest for easy developer use.

create table Questions (
Question_ID int auto_increment,
Question_texts varchar(255) not null,
Answer_1 varchar(255) not null,
Answer_2 varchar(255) not null,
Question_Category varchar(255),
Area_ID int,
Question_points float,
primary key (Question_ID),
foreign key (`Area_ID`) references areas_of_interest(`Area_ID`)
);

-- The Courses table holds some of the courses, with a small description, currently available through Coderstrust Academy
-- that users can join and is linked to the Course Area table to properly categorise the present courses.

create table Courses (
Course_ID int auto_increment,
Course_Description varchar(255) not null,
Course_Name varchar(255) not null,
Category_ID int not null,
primary key (Course_ID),
foreign key (`Category_ID`) references Course_Area(`Category_ID`)
);

-- Our Users table contains useful marketing information for Coderstrust but also their areas of interest linked to their user ID.

create table users (
User_ID int auto_increment,
Country varchar(255) not null,
DateOfBirth date not null,
Gender varchar(255) not null,
Studies varchar(255) not null,
Area_ID int not null,
primary key (User_ID),
foreign key (`Area_ID`) references Areas_of_Interest(`Area_ID`)
);

-- This Question Entry table records the answers to the quiz questions answered by a user, with the specific date, question ID, user ID
-- and question entry ID that can be looked up for specific users or information related to a user.

create table Question_Entry (
Question_entry_ID int auto_increment,
User_ID int not null,
Question_ID int not null,
Question_Answer varchar(255) not null,
Entry_date date not null,
primary key (Question_entry_ID),
foreign key (`User_ID`) references Users(`User_ID`),
foreign key (`Question_ID`) references Questions(`Question_ID`)
);

-- The Enrolment table is used to keep track of users that have decided to take courses with Coderstrust Academy while also
-- having a enrolment ID to help keep track of which users enroled into courses.

create table Enrolment (
Enrolment_ID int auto_increment,
Course_ID int not null,
User_ID int not null,
primary key (Enrolment_ID),
foreign key (`Course_ID`) references Courses(`Course_ID`),
foreign key (`User_ID`) references Users(`User_ID`)
);