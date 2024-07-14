DECLARE
  CURSOR child_cursor IS
    SELECT child_ID
    FROM Children;
    
  v_child_id VARCHAR(15);
BEGIN
  -- ����� �������
  OPEN child_cursor;
  
  LOOP
    -- ����� ����� ��������
    FETCH child_cursor INTO v_child_id;
    
    -- ����� ������� ���� ��� ���� ������
    EXIT WHEN child_cursor%NOTFOUND;
    
    -- ����� ��������� ���� �� ���
    UpdateChildGroup(v_child_id);
  END LOOP;
  
  -- ����� �������
  CLOSE child_cursor;
END;
/
