CREATE OR REPLACE PROCEDURE UpdateChildGroup(p_child_id VARCHAR)
IS
  v_child_age INT;
  v_group_id INT;
  v_original_group_id INT;
BEGIN
  -- שמירת הקבוצה המקורית לפני העדכון
  SELECT Group_ID INTO v_original_group_id
  FROM Children
  WHERE child_ID = p_child_id;

  -- חישוב גיל הילד
  SELECT childAge(Date_of_birth) INTO v_child_age
  FROM Children
  WHERE child_ID = p_child_id;

  DBMS_OUTPUT.PUT_LINE('Child age: ' || v_child_age);

  -- בחירת מספר קבוצה רנדומלית שגיל הקבוצה מתאים לגיל הילד
  SELECT Group_ID INTO v_group_id
  FROM (
    SELECT Group_ID
    FROM Groups
    WHERE age_group = v_child_age
    ORDER BY DBMS_RANDOM.VALUE
  )
  WHERE ROWNUM = 1;

  DBMS_OUTPUT.PUT_LINE('Assigned new group ID: ' || v_group_id);

  -- עדכון מספר הקבוצה בטבלת הילדים
  UPDATE Children
  SET Group_ID = v_group_id
  WHERE child_ID = p_child_id;

  -- אישור עדכונים
  COMMIT;

  -- הדפסת אישור עדכון
  DBMS_OUTPUT.PUT_LINE('Child ' || p_child_id || ' moved from group ' || v_original_group_id || ' to group ' || v_group_id);
EXCEPTION
  WHEN NO_DATA_FOUND THEN
    -- הודעה במקרה שלא נמצאה קבוצה מתאימה
    DBMS_OUTPUT.PUT_LINE('No suitable group found for the child.');
  WHEN OTHERS THEN
    -- הדפסת שגיאה כללית
    DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
    -- עצירת העדכון אם יש שגיאה
    ROLLBACK;
END;
/
