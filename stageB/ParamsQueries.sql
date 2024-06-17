-- ParamsQueries.sql
-- שאילתה: הזמנות בשנה מסוימת
SELECT i.Invitation_date, i.amount, g.Group_name, m.description
FROM Invitation i
JOIN Groups g ON i.Group_ID = g.Group_ID
JOIN Meal m ON i.Meal_ID = m.Meal_ID
WHERE EXTRACT(YEAR FROM i.Invitation_date) = &<name = "invitation_year" type = "integer" hint = "Enter the year of the invitations">
ORDER BY i.Invitation_date, g.Group_name;

--This query retrieves detailed information about children in a specified age group, including their names, 
--date of birth, parent's name, phone number, address, and group name. The results are filtered by
-- age_group and ordered alphabetically by the children's last and first names.

SELECT ch.First_name, ch.Last_Name, ch.Date_of_birth, ch.parent_name, ch.Phone_Number, ch.Address, g.Group_name
FROM Children ch
JOIN Groups g ON ch.Group_ID = g.Group_ID
WHERE g.age_group = &<name = "age_group" type = "integer" hint = "Enter the age group">
ORDER BY ch.Last_name, ch.First_name;

-- Query: Retrieve all groups based on a specific day and age group
-- The query selects the group ID, group name, class day, age group, and guide name, filtering by a specific day and age group.
SELECT g.Group_ID, g.Group_name, g.class_day, g.age_group, c.guide
FROM Groups g
JOIN class c ON g.class_ID = c.class_ID
WHERE g.class_day = &<name="class_day" type="string" list="SUNDAY,MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY" hint="Enter the class day">
AND g.age_group = &<name="age_group" type="integer" hint="Enter the age group">;

-- Query: Retrieve all invitations from a specific year with a group of a certain age group
-- The query selects the invitation date, group name, meal description, and amount of invitations,
-- filtering by a specific year and age group.
SELECT i.Invitation_date, g.Group_name, m.description AS Meal_Description, i.amount AS Number_Of_Invitations
FROM Invitation i
JOIN Groups g ON i.Group_ID = g.Group_ID
JOIN Meal m ON i.Meal_ID = m.Meal_ID
WHERE EXTRACT(YEAR FROM i.Invitation_date) = &<name="year" type="integer" hint="Enter the year">
AND g.age_group = &<name="age_group" type="integer" hint="Enter the age group">;


