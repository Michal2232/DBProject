DECLARE
  CURSOR child_cursor IS
    SELECT child_ID
    FROM Children;
    
  v_child_id VARCHAR(15);
BEGIN
  -- פתיחת הקורסור
  OPEN child_cursor;
  
  LOOP
    -- משיכת רשומה מהקורסור
    FETCH child_cursor INTO v_child_id;
    
    -- יציאה מהלולאה כאשר אין יותר רשומות
    EXIT WHEN child_cursor%NOTFOUND;
    
    -- קריאה לפרוצדורה עבור כל ילד
    UpdateChildGroup(v_child_id);
  END LOOP;
  
  -- סגירת הקורסור
  CLOSE child_cursor;
END;
/
