# Read this first!
Database assignment from KEA for Coderstrust Academy

First and foremost you will need to install (or have installed) MySQL Workbench version 8.0.23 or newer, you can find it here (make sure its for the OS that you use): https://dev.mysql.com/downloads/windows/installer/8.0.html

Having trouble installing MySQL? Follow this link for a quick tutorial: https://www.youtube.com/watch?v=u96rVINbAUI

After having installed MySQL, download the 3 SQL scripts found in the folder called "SQL Scripts" in this repository. The scripts are named "Grp38INT-DDL_Queries", "Grp38INT-DML_Queries" and "Grp38INT-Example_Functions".

With MySQL running open the 3 scripts by going to FILE->Open SQL Script... or drag and drop them to the right of the SCHEMAS panel.

In order to create the database and all its tables and content you will need to execute the scripts in a specific order.

The first script you have to execute is called "Grp38INT-DDL_Queries". To do that select all information within the script (CTRL+A) and press ![Execute](https://user-images.githubusercontent.com/80537820/110976053-ba433d80-8360-11eb-83e3-94c671ed706d.png)

Now in order to populate all the tables within the database you will have to execute the second script called "Grp38INT-DML_Queries" in the same way as the first one!
(Remeber to select all the data in the script first and press ![Execute](https://user-images.githubusercontent.com/80537820/110976053-ba433d80-8360-11eb-83e3-94c671ed706d.png) )

The "Grp38INT-Example_Functions" script is only to show some functionality of the database, it is not meant to be executed all at once. To run certain functions from it you will need to select the appropriate lines of code, for example highlight the "select user_id, course_id from enrolment;" statement on line 10 and execute it to see the results of the query. Same goes for all other example functions in the script!

For support or questions please contact Group 38 INT (1st year, 2nd semester, BE-IT) at KØBENHAVNS ERHVERVSAKADEMI (KEA)
