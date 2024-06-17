DELETE FROM Groups
WHERE Group_ID NOT IN (
    SELECT DISTINCT Group_ID
    FROM Children
);


DELETE FROM Meal
WHERE Meal_ID NOT IN (
    SELECT DISTINCT Meal_ID
    FROM Invitation
);


