-- Here we show some examples of functionality of our database 
-- using information already provided.

-- To start off, we define which database to use.

use coderstrust;

-- This function shows which users are enrolled in which course through their ID's.

select user_id, course_id from enrolment;

-- Shows all question id, answers, and user_id with their answer

create view User_question_entry as
select user_id, question_id, question_answer
from question_entry;
select * from user_question_entry;

-- We create and run a view in or order to see the category of courses and their description.

create view courses_and_descriptions as
select category_name, category_description
from course_area;
select * from courses_and_descriptions;

-- Here we create and run a view function to see all question entries and answer for user_id 1 with 
-- (or without) points and question_area_id

create view test_user as
select * from question_entry where user_id=1 and entry_date='2020-12-14';
select question_entry_ID, user_ID, question_answer,question_points, entry_date, area_id from test_user as a
left join questions as b on a.question_id=b.question_id;

-- This function shows the percentage of Yes answers from user_id 1.

select count(question_answer) / 12 * 100
from question_entry
where question_answer = 'yes' and user_id = 1;

-- Shows all users and their information plus area_id.

select * from users;

-- The function shows which specific questions did user_id 1 answer Yes.

select user_id, question_id, question_answer
from question_entry
where user_id=1 and Question_Answer='Yes';

-- This function tells us what percentage of questions answered yes by user_id 1
-- with regards to the 3 categories available.

select count(area_name) / 12 * 100, area_name from questions
inner join areas_of_interest on questions.area_ID=areas_of_interest.area_ID
inner join question_entry on question_entry.question_ID=questions.question_ID
where user_id=1 and question_answer='Yes'
group by area_name;



