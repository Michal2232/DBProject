# DBProject
מגישות: 
מיכל אלגאוי 325279990
שוהם שרווי 212829287






- דוח עבור שלב א -


מערכת לניהול צהרונים - DAYCARE
מערכת ניהול הצהרונים המציעה מעקב מקיף ואפשרויות ניהול מגוונות. המערכת מאפשרת איכות ויעילות בניהול הצהרון על ידי איחסון וניהול נתונים מגוונים.
המערכת מאפשרת ניהול של קבוצות ילדים- שכבת הגיל ,גודל הקבוצה וכדומה.
מאפשרת שמירה על נתוני החוגים בקבוצות השונות,פרטי המדריכים,פרטי הגננות ופרטי הילדים.
בנוסף מנהלת את רישום ההזמנות עבור המזון לצהרונים ופירוט המנות על בסיס יומי.
המערכת מספקת פונקציונליות של ניהול מורחבת ופרטים מקיפים של כל אוספי הצהרונים והילדים בקבוצות, כך שההנהלה תוכל לעקוב ולנהל ביעילות את הפעילויות והארועים במוסד.




תרשים ERD לאפיון המערכת :
![erd](https://github.com/Michal2232/DBProject/assets/116974985/6b76e7f9-b7aa-4b11-9c83-75deb0e8f083)



תרשים DSD : 
![dsd2](https://github.com/Michal2232/DBProject/assets/116974985/129b4d5f-419f-4e27-ad8d-059df5445ecf)




תרשים DSD כפי שנוצר בבסיס הנתונים:
<img width="734" alt="DSD" src="https://github.com/Michal2232/DBProject/assets/116974985/eee5ab0d-492f-4392-b502-9408e800a421">





פקודות ליצירת הטבלאות:
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





פקודת DESC על הטבלאות שנוצרו :
![desc (1)](https://github.com/Michal2232/DBProject/assets/116974985/8be250c1-5272-40b2-a7fe-167edf5b9590)



![desc (2)](https://github.com/Michal2232/DBProject/assets/116974985/8d3ba3c8-918d-47ff-946c-70945c9cbe9b)





הכנסת נתונים לטבלאות באמצעות DATA GENERATOR:


הטבלה CHILDREN- 


![צילום מסך 2024-06-02 051735](https://github.com/Michal2232/DBProject/assets/116974985/7de08eb7-6c7c-4087-b085-24b7572cce9c)



![צילום מסך 2024-06-02 051832](https://github.com/Michal2232/DBProject/assets/116974985/c20298d2-d8ab-4663-9993-70ca7dc23101)






הטבלה GROUPS-


![צילום מסך 2024-06-02 040021](https://github.com/Michal2232/DBProject/assets/116974985/369e52ee-4b7a-4fcb-b0eb-d5bbb52fedf2)



![צילום מסך 2024-06-02 040432](https://github.com/Michal2232/DBProject/assets/116974985/e8f155f6-a7ce-45fc-8e1c-bc7d42cfefe1)






הטבלה INVITATIONS-
![צילום מסך 2024-06-02 051008](https://github.com/Michal2232/DBProject/assets/116974985/d2c85f89-4bce-49ca-8b2b-cec30b214f52)


![צילום מסך 2024-06-02 051056](https://github.com/Michal2232/DBProject/assets/116974985/75b4bd53-daaf-427e-b715-64721be7e27d)






הטבלה Kindergarten_Teacher- 


![צילום מסך 2024-06-02 045551](https://github.com/Michal2232/DBProject/assets/116974985/1508093e-45fd-4d0d-9a33-8be3035e5e9a)


![צילום מסך 2024-06-02 045708](https://github.com/Michal2232/DBProject/assets/116974985/39973b8d-2af9-42bd-b138-1eb6e23d5b08)







הכנסת נתונים באמצעות קובץ טקסט:



הטבלה CLASS-


![textImporter](https://github.com/Michal2232/DBProject/assets/116974985/a02cf927-3942-4e0e-b5c2-2bc28dd1526a)


![צילום מסך 2024-06-02 023818](https://github.com/Michal2232/DBProject/assets/116974985/415f2914-34b5-4612-9693-07a27ba99c19)








יצירת נתונים באמצעות קוד בפייתון :



הטבלה MEAL-
![image](https://github.com/Michal2232/DBProject/assets/116974985/142fb447-9207-4acc-aeac-243c2b8d3e55)


![צילום מסך 2024-06-02 034016](https://github.com/Michal2232/DBProject/assets/116974985/b67d089e-9e26-430f-9ae9-d2aa3cc8e99f)


![צילום מסך 2024-06-02 034132](https://github.com/Michal2232/DBProject/assets/116974985/766ae421-3702-4db3-9deb-d3cee485aabb)


![image](https://github.com/Michal2232/DBProject/assets/116974985/065d8f0f-327e-4eb0-9b8e-a4cede9842c1)


![image](https://github.com/Michal2232/DBProject/assets/116974985/666aa1d7-e9d8-45c8-bccd-2fb95796217f)





ביצוע גיבוי :

![backup](https://github.com/Michal2232/DBProject/assets/116974985/1047fcc0-d314-411a-8b55-20f6ee6a9eb7)





ביצוע שחזור לאחר מחיקת הטבלאות:
![Restore](https://github.com/Michal2232/DBProject/assets/116974985/a0015031-4fc8-486e-96fb-40faf30fc278)


