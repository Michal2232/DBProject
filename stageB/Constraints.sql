CREATE OR REPLACE TRIGGER trg_check_date_of_birth
BEFORE INSERT OR UPDATE ON Children
FOR EACH ROW
BEGIN
    IF :NEW.Date_of_birth > SYSDATE THEN
        RAISE_APPLICATION_ERROR(-20001, 'Date of birth cannot be in the future.');
    END IF;
END;
/


ALTER TABLE Invitation
ADD CONSTRAINT UQ_Invitation UNIQUE (Invitation_date, Group_ID);



ALTER TABLE Groups
ADD CONSTRAINT UQ_ClassHourDay UNIQUE (class_ID, hour, class_day);
