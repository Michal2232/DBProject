UPDATE Invitation
SET amount = (
  SELECT COUNT(*)
  FROM Children
  WHERE Children.Group_ID = Invitation.Group_ID
);

UPDATE Groups
SET age_group = FLOOR(DBMS_RANDOM.VALUE(2, 11));
