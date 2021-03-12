-- After having defined all the tables necessary we start populating them with the required information for each table separately.

-- In the Areas of Interest we input the 3 required areas with a small description and a specific ID.

insert into `Areas_of_Interest`(Area_ID, Area_Name, Area_Description) values
(1, 'Graphical Design', 'For users with a graphical mindset');
insert into `Areas_of_Interest`(Area_ID, Area_Name, Area_Description) values
(2, 'Programming', 'For people that love math');
insert into `Areas_of_Interest`(Area_ID, Area_Name, Area_Description) values
(3, 'Social Media', 'For those who enjoy new connections');

-- For the Course Area we add the 4 available course types at Coderstrust Academy with a small description and a specific ID.

insert into Course_Area values
(1, 'Soft Skills', 'Learn to run your Business!'),
(2, 'Digital & Marketing', 'How to put yourself out there'),
(3, 'Digital Design', 'Become the master of your art'),
(4, 'Development', 'Learn to build programs from the ground up');

-- In this part we insert the questions required for for the quiz with the possible answers, points per answer and specific ID's
-- to ensure that developers can access and querie specific information.

insert into `Questions`(Question_ID, Question_texts, Answer_1, Answer_2, Question_Category, Area_ID, Question_points) values
(1, 'Do you appreciate design in relation to products?', 'Yes', 'No', 'Creative', 1, 5);
insert into `Questions`(Question_ID, Question_texts, Answer_1, Answer_2, Question_Category, Area_ID, Question_points) values
(2, 'Do you have a favourite artist when it comes to visual art?', 'Yes', 'No', 'Creative', 1, 5);
insert into `Questions`(Question_ID, Question_texts, Answer_1, Answer_2, Question_Category, Area_ID, Question_points) values
(3, 'Do you enjoy making visual presentations for school or business?', 'Yes', 'No', 'Creative', 1, 5);
insert into `Questions`(Question_ID, Question_texts, Answer_1, Answer_2, Question_Category, Area_ID, Question_points) values
(4, 'Have you tried editing video on your mobile device or PC?', 'Yes', 'No', 'Creative', 1, 5);
insert into `Questions`(Question_ID, Question_texts, Answer_1, Answer_2, Question_Category, Area_ID, Question_points) values
(5, 'Do you like to take online intelligence tests?', 'Yes', 'No', 'Development', 2, 5);
insert into `Questions`(Question_ID, Question_texts, Answer_1, Answer_2, Question_Category, Area_ID, Question_points) values
(6, 'Do you find numbers and logic is preferred over philosophical questions?', 'Yes', 'No', 'Development', 2, 5);
insert into `Questions`(Question_ID, Question_texts, Answer_1, Answer_2, Question_Category, Area_ID, Question_points) values
(7, 'Are you interested in coding and learning to either understand or code yourself?', 'Yes', 'No', 'Development', 2, 5);
insert into `Questions`(Question_ID, Question_texts, Answer_1, Answer_2, Question_Category, Area_ID, Question_points) values
(8, 'Have you tried building a website with a CMS like wordpress or Wix?', 'Yes', 'No', 'Development', 2, 5);
insert into `Questions`(Question_ID, Question_texts, Answer_1, Answer_2, Question_Category, Area_ID, Question_points) values
(9, 'Are you very active on Social Media?', 'Yes', 'No', 'Digital Marketing', 3, 5);
insert into `Questions`(Question_ID, Question_texts, Answer_1, Answer_2, Question_Category, Area_ID, Question_points) values
(10, 'Do you care about who likes and comments on your posts?', 'Yes', 'No', 'Digital Marketing', 3, 5);
insert into `Questions`(Question_ID, Question_texts, Answer_1, Answer_2, Question_Category, Area_ID, Question_points) values
(11, 'Do you find that Social Media influences your buying decisions?', 'Yes', 'No', 'Digital Marketing', 3, 5);
insert into `Questions`(Question_ID, Question_texts, Answer_1, Answer_2, Question_Category, Area_ID, Question_points) values
(12, 'Do you believe that Social Media is more effective than traditional marketing?','Yes', 'No', 'Digital Marketing', 3, 5);

-- Here we insert the some relevant courses available through Coderstrust Academy with relevant IDs for easy categorization.

insert into Courses values
(1, 'Learn how to work from home', 'Freelancing Course', 1),
(2, 'Crash Course', 'Effective Business Communication', 1),
(3, 'Learn to communicate effectively', 'English for Business', 1),
(4, 'Learn how to rank websites on search engines', 'Complete SEO for beginners', 2),
(5, 'Make your work safe', 'Intro to Copywriting', 2),
(6, 'Manage Facebook Ads like a boss', 'Complete Guide to Facebook Ads Manager', 2),
(7, 'How to create professional illustrations', 'Illustrator Essentials', 3),
(8, 'Learn how to create professional designs', 'Photoshop Essentials', 3),
(9, 'Learn video editing', 'Premier Pro for beginners',3),
(10, 'Build complex projects with Python', 'Advanced Python', 4),
(11, 'Essential introduction to JavaScript', 'Intro to JavaScript', 4),
(12, 'Become an app developer!', 'Android App Development for Beginners', 4);

-- We create and insert some fake user information with their specific user ID and area of interest ID.

insert into users values
(1, 'Denmark', '1998-02-01', 'Male', 'Nothing', 1),
(2, 'Sweden', '1996-05-23', 'Female', 'Marketing', 2),
(3, 'Norway', '1999-10-04', 'Female', 'Programming', 2),
(4, 'Finland', '1997-09-19', 'Male', 'PR', 3),
(5, 'Germany', '1995-12-31', 'Male', 'Engineering', 2),
(6, 'Iceland', '2000-06-12', 'Female', 'Languages', 3),
(7, 'France', '2001-04-29', 'Male', 'Art', 1),
(8, 'Italy', '1999-03-25', 'Female', 'History', 3),
(9, 'Poland', '1998-08-14', 'Male', 'Economics', 2),
(10, 'Austria', '1996-07-09', 'Female', 'Dance', 1);

-- We insert the fake users answers to the quiz categorized by a question entry ID, user ID, question ID,
-- question answer and date of entry for easy access to information in the future.

insert into Question_Entry values
(1, 1, 1, 'Yes', '2020-12-14'),
(2, 1, 2, 'Yes', '2020-12-14'),
(3, 1, 3, 'Yes', '2020-12-14'),
(4, 1, 4, 'No', '2020-12-14'),
(5, 1, 5, 'Yes', '2020-12-14'),
(6, 1, 6, 'Yes', '2020-12-14'),
(7, 1, 7, 'No', '2020-12-14'),
(8, 1, 8, 'No', '2020-12-14'),
(9, 1, 9, 'No', '2020-12-14'),
(10, 1, 10, 'Yes', '2020-12-14'),
(11, 1, 11, 'No', '2020-12-14'),
(12, 1, 12, 'No', '2020-12-14'),
(13, 2, 1, 'No', '2021-01-05'),
(14, 2, 2, 'No','2021-01-05'),
(15, 2, 3, 'No', '2021-01-05'),
(16, 2, 4, 'Yes', '2021-01-05'),
(17, 2, 5, 'Yes', '2021-01-05'),
(18, 2, 6, 'Yes', '2021-01-05'),
(19, 2, 7, 'Yes', '2021-01-05'),
(20, 2, 9, 'Yes', '2021-01-05'),
(21, 2, 10, 'No', '2021-01-05'),
(22, 2, 11, 'No', '2021-01-05'),
(23, 2, 12, 'Yes', '2021-01-05'),
(24, 3, 1, 'Yes', '2021-02-12'),
(25, 3, 2, 'No', '2021-02-12'),
(26, 3, 3, 'No', '2021-02-12'),
(27, 3, 4, 'Yes', '2021-02-12'),
(28, 3, 5, 'No', '2021-02-12'),
(29, 3, 6, 'No', '2021-02-12'),
(30, 3, 7, 'No', '2021-02-12'),
(31, 3, 8, 'Yes', '2021-02-12'),
(32, 3, 9, 'Yes', '2021-02-12'),
(33, 3, 10, 'Yes', '2021-02-12'),
(34, 3, 11, 'Yes', '2021-02-12'),
(35, 3, 12, 'No', '2021-02-12');

-- We insert information for 3 user that have enrolled into a course at Codetrust Academy.

insert into Enrolment values
(1, 1, 1),
(2, 4, 2),
(3, 8, 3);