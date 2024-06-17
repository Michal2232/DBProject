SELECT 
    G.Group_name AS Group_Name,
    EXTRACT(MONTH FROM I.Invitation_date) AS Month,
    SUM(I.amount) AS Total_Meals_Ordered
FROM 
    Invitation I
    JOIN Groups G ON I.Group_ID = G.Group_ID
GROUP BY 
    G.Group_name, EXTRACT(MONTH FROM I.Invitation_date)
HAVING 
    EXTRACT(MONTH FROM I.Invitation_date) = 6
ORDER BY 
    Total_Meals_Ordered DESC;


SELECT 
    C.First_name AS Child_First_Name,
    C.Last_Name AS Child_Last_Name,
    C.Date_of_birth AS Birth_Date,
    C.parent_name AS Parent_Name,
    C.Address AS Address
FROM 
    Children C
WHERE 
    EXTRACT(MONTH FROM C.Date_of_birth) = EXTRACT(MONTH FROM CURRENT_DATE)
ORDER BY 
    EXTRACT(DAY FROM C.Date_of_birth), C.Last_Name;


SELECT 
    G.Group_name,
    KT.First_name || ' ' || KT.Last_Name AS KTeacher,
    COUNT(C.child_ID) AS Number_of_Children
FROM 
    Groups G
    JOIN Kindergarten_Teacher KT ON G.KTeacher_ID = KT.KTeacher_ID
    JOIN Children C ON G.Group_ID = C.Group_ID
GROUP BY 
    G.Group_name, KT.First_name, KT.Last_Name
ORDER BY 
    Number_of_Children DESC;


