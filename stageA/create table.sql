CREATE TABLE class
(
  class_name VARCHAR(40),
  class_ID INT NOT NULL,
  guide VARCHAR(20),
  guide_phone VARCHAR(15),
  PRIMARY KEY (class_ID)
);

CREATE TABLE Meal
(
  Day VARCHAR(15),
  description VARCHAR(60),
  Meal_ID INT NOT NULL,
  PRIMARY KEY (Meal_ID)
);

CREATE TABLE Groups
(
  Group_ID INT NOT NULL,
  Group_name VARCHAR(20),
  age_group INT,
  Group_size INT,
  KTeacher_ID VARCHAR(15),
  hour INT NOT NULL,
  class_day VARCHAR(15) NOT NULL,
  class_ID INT NOT NULL,
  PRIMARY KEY (Group_ID),
  FOREIGN KEY (class_ID) REFERENCES class(class_ID)
);

CREATE TABLE Invitation
(
  amount INT ,
  Invitation_date DATE NOT NULL,
  Group_ID INT NOT NULL,
  Meal_ID INT NOT NULL,
  PRIMARY KEY (Group_ID, Meal_ID),
  FOREIGN KEY (Group_ID) REFERENCES Groups(Group_ID),
  FOREIGN KEY (Meal_ID) REFERENCES Meal(Meal_ID)
);

CREATE TABLE Kindergarten_Teacher
(
  First_name VARCHAR(15),
  Last_Name VARCHAR(15),
  KTeacher_ID VARCHAR(15) NOT NULL,
  Phone_Number VARCHAR(10),
  Group_ID INT NOT NULL,
  PRIMARY KEY (KTeacher_ID),
  FOREIGN KEY (Group_ID) REFERENCES Groups(Group_ID)
);

CREATE TABLE Children
(
  First_name VARCHAR(15),
  Last_Name VARCHAR(15),
  child_ID VARCHAR(15) NOT NULL,
  Date_of_birth DATE,
  parent_name VARCHAR(15),
  Phone_Number VARCHAR(10),
  Address VARCHAR(20),
  Group_ID INT NOT NULL,
  PRIMARY KEY (child_ID),
  FOREIGN KEY (Group_ID) REFERENCES Groups(Group_ID)
);