insert into class values ('Nature Adventures', 101, 'Michael Cohen','0541234567');
insert into class values ('Arts and Crafts', 102,	'Noa Peretz','0541234587');
insert into class values ('Sports and Games', 103, 'Gilad Levy','0541234537');
insert into class values ('Music and Rhythm', 104, 'Sivan Avni','0541234547');
insert into class values ('Drama and Theater', 105, 'Rotem Miller','0541235567');
insert into class values ('Scienc', 106, 'Daniel Cohen','0521234567');
insert into class values ('Cooking and Baking', 107, 'Adi Bar','0541239567');
insert into class values ('Computers', 108, 'Oren Ben-Abraham','0521234567');
insert into class values ('Language', 109, 'Limor Cohen','0581234567');
insert into class values ('Stories and Reading', 110, 'Yael Peretz','0501234567');
Select * from class
Select count(*) from class

INSERT INTO Meal VALUES ('sunday', 'Pancakes and fruit', 201);
INSERT INTO Meal VALUES ('Monday', 'Pasta and vegetables', 202);
INSERT INTO Meal VALUES ('Monday', 'Chicken and rice', 203);
INSERT INTO Meal VALUES ('Tuesday', 'Cereal and milk', 204);
INSERT INTO Meal VALUES ('Tuesday', 'Sandwiches and salad', 205);
INSERT INTO Meal VALUES ('Tuesday', 'Fish and chips', 206);
INSERT INTO Meal VALUES ('Wednesday', 'Yogurt and granola', 207);
INSERT INTO Meal VALUES ('Wednesday', 'Soup and crackers', 208);
INSERT INTO Meal VALUES ('Wednesday', 'Pizza', 209);
INSERT INTO Meal VALUES ('Thursday', 'Eggs and toast', 210);
INSERT INTO Meal VALUES ('Friday', 'Salad and fruit', 211);
Select * from Meal
Select count(*) from Meal

INSERT INTO Groups VALUES(301, 'Butterflies', 3, 15, K001, 9, 'Monday', 101);
INSERT INTO Groups VALUES(302, 'Ladybugs', 4, 12, K002, 10, 'Monday', 102);
INSERT INTO Groups VALUES(303, 'Dragonflies', 5, 10, K003, 11, 'Tuesday', 103);
INSERT INTO Groups VALUES(304, 'Honeybees', 3, 18, K004, 12, 'Tuesday', 104);
INSERT INTO Groups VALUES(305, 'Grasshoppers', 4, 14, K005, 13, 'Wednesday', 105);
INSERT INTO Groups VALUES(306, 'Caterpillars', 5, 16, K006, 14, 'Wednesday', 106);
INSERT INTO Groups VALUES(307, 'Owls', 3, 12, K007, 15, 'Thursday', 107);
INSERT INTO Groups VALUES(308, 'Penguins', 4, 10, K008, 10, 'Thursday', 108);
INSERT INTO Groups VALUES(309, 'Elephants', 5, 15, K009, 11, 'Friday', 109);
INSERT INTO Groups VALUES(310, 'Zebras', 3, 18, K010, 12, 'Friday', 110);
Select * from Groups
Select count(*) from Groups

INSERT INTO Invitation VALUES(15, '2024/06/03', 301, 201);
INSERT INTO Invitation VALUES(12, '2024-06-03', 302, 202);
INSERT INTO Invitation VALUES(10, '2024-06-04', 303, 203);
INSERT INTO Invitation VALUES(18, '2024-06-04', 304, 204);
INSERT INTO Invitation VALUES(14, '2024-06-05', 305, 205);
INSERT INTO Invitation VALUES(16, '2024-06-05', 306, 206);
INSERT INTO Invitation VALUES(12, '2024-06-06', 307, 207);
INSERT INTO Invitation VALUES(10, '2024-06-06', 308, 208);
INSERT INTO Invitation VALUES(15, '2024-06-07', 309, 209);
INSERT INTO Invitation VALUES(18, '2024-06-07', 310, 210);
Select * from Invitation
Select count(*) from Invitation

INSERT INTO Kindergarten_Teacher VALUES('Sarah', 'Cohen', 'K001', '0541234578', 301);
INSERT INTO Kindergarten_Teacher VALUES('Emily', 'Peretz', 'K002', '0541234588', 302);
INSERT INTO Kindergarten_Teacher VALUES('David', 'Levy', 'K003', '0541234538', 303);
INSERT INTO Kindergarten_Teacher VALUES('Rachel', 'Avni', 'K004', '0541234548', 304);
INSERT INTO Kindergarten_Teacher VALUES('Jonathan', 'Miller', 'K005', '0541235568', 305);
INSERT INTO Kindergarten_Teacher VALUES('Daniel', 'Cohen', 'K006', '0521234568', 306);
INSERT INTO Kindergarten_Teacher VALUES('Abigail', 'Bar', 'K007', '0541239568', 307);
INSERT INTO Kindergarten_Teacher VALUES('Michael', 'Ben-Abraham', 'K008', '0521234569', 308);
INSERT INTO Kindergarten_Teacher VALUES('Lisa', 'Cohen', 'K009', '0581234568', 309);
INSERT INTO Kindergarten_Teacher VALUES('Naomi', 'Peretz', 'K010', '0501234568', 310);
Select * from Kindergarten_Teacher 
Select count(*) from Kindergarten_Teacher

INSERT INTO Children VALUES('Noah', 'Cohen', 'CH001', '2020-01-01', 'Michael Cohen', '0541234569', 'Sesame St. 12', 301);
INSERT INTO Children VALUES('Maya', 'Peretz', 'CH002', '2019-07-15', 'Noa Peretz', '0541234589', 'Sunflower Ln. 5', 302);
INSERT INTO Children VALUES('Eitan', 'Levy', 'CH003', '2020-03-22', 'Gilad Levy', '0541234539', 'Oak Blvd. 7', 303);
INSERT INTO Children VALUES('Liav', 'Avni', 'CH004', '2019-11-09', 'Sivan Avni', '0541234549', 'Maple St. 10', 304);
INSERT INTO Children VALUES('Inbar', 'Miller', 'CH005', '2020-05-14', 'Rotem Miller', '0541235569', 'Pine Ave. 3', 305);
INSERT INTO Children VALUES('Ori', 'Cohen', 'CH006', '2019-09-27', 'Daniel Cohen', '0521234569', 'Elm St. 8', 306);
INSERT INTO Children VALUES('Yael', 'Bar', 'CH007', '2020-02-06', 'Adi Bar', '0541239569', 'Birch Rd. 12', 307);
INSERT INTO Children VALUES('Yonatan', 'Ben-Abraham', 'CH008', '2019-10-21', 'Oren Ben-Abraham', '0521234570', 'Willow Way 5', 308);
INSERT INTO Children VALUES('Shira', 'Cohen', 'CH009', '2020-04-29', 'Limor Cohen', '0581234569', 'Poplar Dr. 7', 309);
INSERT INTO Children VALUES('Noam', 'Peretz', 'CH010', '2019-12-18', 'Yael Peretz', '0501234569', 'Cedar Cr. 10', 310);
Select * from Children
Select count(*) from Children
