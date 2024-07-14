CREATE OR REPLACE FUNCTION childAge(date_of_birth DATE)
RETURN INT IS
  today DATE := SYSDATE;
  age INT;
BEGIN
  age := (EXTRACT(YEAR FROM today) - EXTRACT(YEAR FROM date_of_birth)) -
         CASE
           WHEN (EXTRACT(MONTH FROM today) < EXTRACT(MONTH FROM date_of_birth)) OR
                (EXTRACT(MONTH FROM today) = EXTRACT(MONTH FROM date_of_birth) AND
                 EXTRACT(DAY FROM today) < EXTRACT(DAY FROM date_of_birth)) THEN 1
           ELSE 0
         END;
  RETURN age;
EXCEPTION
  WHEN OTHERS THEN
    -- In case of an error, return -1 indicating an invalid age.
    RETURN -1;
END;
/
