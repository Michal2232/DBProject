prompt PL/SQL Developer import file
prompt Created on יום שני 17 יוני 2024 by M0538
set feedback off
set define off
prompt Creating KINDERGARTEN_TEACHER...
create table KINDERGARTEN_TEACHER
(
  first_name   VARCHAR2(15),
  last_name    VARCHAR2(15),
  kteacher_id  VARCHAR2(15) not null,
  phone_number VARCHAR2(10)
)
;
alter table KINDERGARTEN_TEACHER
  add primary key (KTEACHER_ID);

prompt Creating CLASS...
create table CLASS
(
  class_name  VARCHAR2(40),
  class_id    INTEGER not null,
  guide       VARCHAR2(20),
  guide_phone VARCHAR2(15)
)
;
alter table CLASS
  add primary key (CLASS_ID);

prompt Creating GROUPS...
create table GROUPS
(
  group_id    INTEGER not null,
  group_name  VARCHAR2(20),
  age_group   INTEGER,
  kteacher_id VARCHAR2(15),
  hour        INTEGER not null,
  class_day   VARCHAR2(15) not null,
  class_id    INTEGER not null
)
;
alter table GROUPS
  add primary key (GROUP_ID);
alter table GROUPS
  add constraint UQ_CLASSHOURDAY unique (CLASS_ID, HOUR, CLASS_DAY);
alter table GROUPS
  add foreign key (CLASS_ID)
  references CLASS (CLASS_ID);
alter table GROUPS
  add foreign key (KTEACHER_ID)
  references KINDERGARTEN_TEACHER (KTEACHER_ID);

prompt Creating CHILDREN...
create table CHILDREN
(
  first_name    VARCHAR2(15),
  last_name     VARCHAR2(15),
  child_id      VARCHAR2(15) not null,
  date_of_birth DATE,
  parent_name   VARCHAR2(15),
  phone_number  VARCHAR2(10),
  address       VARCHAR2(20),
  group_id      INTEGER not null
)
;
alter table CHILDREN
  add primary key (CHILD_ID);
alter table CHILDREN
  add foreign key (GROUP_ID)
  references GROUPS (GROUP_ID);

prompt Creating MEAL...
create table MEAL
(
  day         VARCHAR2(15),
  description VARCHAR2(60) default 'No description available',
  meal_id     INTEGER not null
)
;
alter table MEAL
  add primary key (MEAL_ID);

prompt Creating INVITATION...
create table INVITATION
(
  amount          INTEGER,
  invitation_date DATE not null,
  group_id        INTEGER not null,
  meal_id         INTEGER not null
)
;
alter table INVITATION
  add primary key (GROUP_ID, MEAL_ID);
alter table INVITATION
  add constraint UQ_INVITATION unique (INVITATION_DATE, GROUP_ID);
alter table INVITATION
  add foreign key (GROUP_ID)
  references GROUPS (GROUP_ID);
alter table INVITATION
  add foreign key (MEAL_ID)
  references MEAL (MEAL_ID);

prompt Disabling triggers for KINDERGARTEN_TEACHER...
alter table KINDERGARTEN_TEACHER disable all triggers;
prompt Disabling triggers for CLASS...
alter table CLASS disable all triggers;
prompt Disabling triggers for GROUPS...
alter table GROUPS disable all triggers;
prompt Disabling triggers for CHILDREN...
alter table CHILDREN disable all triggers;
prompt Disabling triggers for MEAL...
alter table MEAL disable all triggers;
prompt Disabling triggers for INVITATION...
alter table INVITATION disable all triggers;
prompt Disabling foreign key constraints for GROUPS...
alter table GROUPS disable constraint SYS_C007322;
alter table GROUPS disable constraint SYS_C007323;
prompt Disabling foreign key constraints for CHILDREN...
alter table CHILDREN disable constraint SYS_C007333;
prompt Disabling foreign key constraints for INVITATION...
alter table INVITATION disable constraint SYS_C007328;
alter table INVITATION disable constraint SYS_C007329;
prompt Deleting INVITATION...
delete from INVITATION;
commit;
prompt Deleting MEAL...
delete from MEAL;
commit;
prompt Deleting CHILDREN...
delete from CHILDREN;
commit;
prompt Deleting GROUPS...
delete from GROUPS;
commit;
prompt Deleting CLASS...
delete from CLASS;
commit;
prompt Deleting KINDERGARTEN_TEACHER...
delete from KINDERGARTEN_TEACHER;
commit;
prompt Loading KINDERGARTEN_TEACHER...
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number)
values ('Lena', 'Bedelia', '36481', '0533204333');
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number)
values ('Yaphet', 'Barnett', '19732', '0531957465');
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number)
values ('Malcolm', 'Vai', '29383', '0542582648');
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number)
values ('Brian', 'Klugh', '51274', '0532374084');
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number)
values ('Vendetta', 'Olyphant', '68545', '0521479534');
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number)
values ('Peabo', 'Uggams', '82426', '0582582209');
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number)
values ('Wade', 'Salonga', '24417', '0504128711');
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number)
values ('Jarvis', 'Kirshner', '15318', '0571500479');
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number)
values ('Annie', 'McFadden', '92449', '0543646804');
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number)
values ('Nastassja', 'Hatosy', '238110', '0572749917');
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number)
values ('Willie', 'Tisdale', '574911', '0552616983');
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number)
values ('Kiefer', 'Farina', '239912', '0551477749');
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number)
values ('Helen', 'LaBelle', '981213', '0513116308');
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number)
values ('Courtney', 'Law', '517314', '0541559057');
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number)
values ('Samuel', 'Cassel', '186315', '0503670741');
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number)
values ('CeCe', 'Parker', '574216', '0571222513');
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number)
values ('Lydia', 'Apple', '315217', '0573070746');
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number)
values ('Rosie', 'Hatfield', '871418', '0522205491');
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number)
values ('Rachid', 'Bonneville', '344419', '0523470245');
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number)
values ('Ruth', 'LuPone', '151720', '0542880627');
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number)
values ('Gates', 'Gracie', '975321', '0511973007');
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number)
values ('Johnny', 'Rourke', '752922', '0562232783');
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number)
values ('Natacha', 'Lloyd', '572323', '0553898866');
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number)
values ('Meredith', 'Buckingham', '592624', '0511208273');
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number)
values ('Clive', 'Caviezel', '975225', '0501872662');
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number)
values ('Wesley', 'Janney', '989626', '0521905742');
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number)
values ('Arnold', 'Dunn', '592227', '0553281061');
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number)
values ('Diane', 'Yorn', '155428', '0561859441');
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number)
values ('Rascal', 'McDonald', '382629', '0558873704');
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number)
values ('Jude', 'Hagar', '935830', '0523196207');
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number)
values ('Luke', 'Cale', '515131', '0541336094');
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number)
values ('Pierce', 'Bragg', '264432', '0511730324');
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number)
values ('Rosie', 'Balk', '235933', '0524191585');
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number)
values ('Breckin', 'Rodriguez', '314334', '0563672625');
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number)
values ('Debby', 'Holland', '719535', '0511181311');
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number)
values ('Bill', 'Connery', '749436', '0552831397');
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number)
values ('Gin', 'Reynolds', '173137', '0562014008');
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number)
values ('Gordie', 'Valentin', '411438', '0502459603');
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number)
values ('Wang', 'Oates', '355739', '0544093441');
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number)
values ('Regina', 'Kenoly', '368140', '0513897112');
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number)
values ('Ron', 'Arthur', '841541', '0584746790');
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number)
values ('Catherine', 'Schreiber', '678542', '0531101239');
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number)
values ('Angela', 'Mason', '192343', '0521319458');
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number)
values ('Laurence', 'Spiner', '813344', '0574065564');
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number)
values ('Kevin', 'Moore', '241345', '0572264643');
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number)
values ('Bridgette', 'Mac', '163546', '0553619799');
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number)
values ('Ralph', 'Irving', '792747', '0551560900');
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number)
values ('Debbie', 'Banderas', '359248', '0581461944');
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number)
values ('Saul', 'Lynskey', '955449', '0521541366');
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number)
values ('Ronnie', 'Palmieri', '447250', '0502895095');
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number)
values ('Sissy', 'Rodgers', '568551', '0504009233');
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number)
values ('Halle', 'Johansen', '592452', '0503851964');
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number)
values ('Rebeka', 'Blaine', '191553', '0551622968');
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number)
values ('Franz', 'Del Toro', '145454', '0515715471');
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number)
values ('Lois', 'Domino', '959755', '0522763116');
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number)
values ('Jesse', 'Whitwam', '319656', '0584158260');
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number)
values ('Eddie', 'Chapman', '746857', '0523982759');
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number)
values ('Emm', 'Miles', '634758', '0544113198');
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number)
values ('Sydney', 'Apple', '131259', '0551169876');
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number)
values ('Juice', 'Knight', '482160', '0552379124');
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number)
values ('Rupert', 'Barrymore', '622361', '0582876431');
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number)
values ('Ruth', 'Folds', '498662', '0518427948');
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number)
values ('Tim', 'Ellis', '363963', '0551758813');
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number)
values ('Hookah', 'Derringer', '991264', '0549532919');
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number)
values ('Clay', 'Henstridge', '849965', '0502768068');
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number)
values ('Red', 'Heron', '835566', '0583870552');
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number)
values ('Donna', 'Cotton', '776767', '0501807171');
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number)
values ('Phoebe', 'Aglukark', '794568', '0523611628');
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number)
values ('Rhea', 'Koyana', '659369', '0542764923');
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number)
values ('Julie', 'Tah', '626470', '0501722972');
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number)
values ('Heather', 'Boone', '184971', '0523121835');
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number)
values ('Donna', 'Bogguss', '794972', '0565495025');
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number)
values ('Nile', 'Sorvino', '524373', '0553851011');
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number)
values ('Goldie', 'Sharp', '721174', '0511319061');
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number)
values ('Dick', 'Worrell', '234675', '0521704423');
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number)
values ('Mark', 'Basinger', '693576', '0564293034');
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number)
values ('Gates', 'Dukakis', '618977', '0542956447');
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number)
values ('Ozzy', 'Eldard', '622878', '0557236330');
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number)
values ('Ray', 'Laurie', '682179', '0532152062');
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number)
values ('Chazz', 'Houston', '916780', '0573221335');
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number)
values ('Cloris', 'Venora', '472281', '0582443873');
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number)
values ('Kyle', 'Boone', '956682', '0543421726');
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number)
values ('Kurt', 'Thorton', '428283', '0533204092');
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number)
values ('Robert', 'Beckinsale', '367784', '0551149688');
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number)
values ('Terry', 'Cagle', '344385', '0567664284');
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number)
values ('Gene', 'Houston', '437486', '0531747541');
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number)
values ('Hope', 'Morton', '923487', '0546721721');
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number)
values ('Sal', 'Getty', '366788', '0542692760');
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number)
values ('Donna', 'Viterelli', '743489', '0584207006');
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number)
values ('Amy', 'Devine', '737690', '0522424158');
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number)
values ('Frederic', 'Bradford', '357891', '0535211561');
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number)
values ('Alfie', 'Foley', '227592', '0574693100');
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number)
values ('Winona', 'Miller', '651893', '0532622886');
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number)
values ('Brendan', 'Harary', '475694', '0534091600');
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number)
values ('Chazz', 'Phoenix', '578595', '0523787156');
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number)
values ('Hikaru', 'Johansson', '433496', '0518894590');
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number)
values ('Chely', 'urban', '471297', '0583522885');
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number)
values ('Howie', 'Orbit', '596298', '0574071050');
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number)
values ('King', 'Gore', '697999', '0524020177');
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number)
values ('Mandy', 'Head', '9727100', '0542849296');
commit;
prompt 100 records loaded
prompt Loading CLASS...
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Justice Listings', 456, ' John Smith', ' 0501235015');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Rights Listings', 457, ' Jane Doe', ' 0501235016');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Policy Listings', 458, ' Emily Johnson', ' 0501235017');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Legislation Listings', 459, ' Michael Brown', ' 0501235018');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Advocacy Group Listings', 460, ' Jessica Davis', ' 0501235019');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Union Listings', 461, ' Daniel Garcia', ' 0501235020');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Association Listings', 462, ' Sarah Martinez', ' 0501235021');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Organization Listings', 463, ' David Hernandez', ' 0501235022');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Conference Listings', 464, ' Ashley Lopez', ' 0501235023');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Symposium Listings', 465, ' Christopher Wilson', ' 0501235024');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Journal Listings', 466, ' Amanda Lewis', ' 0501235025');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Magazine Listings', 467, ' Joshua Lee', ' 0501235026');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Blog Listings', 468, ' Megan Walker', ' 0501235027');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Vlog Listings', 469, ' Andrew Hall', ' 0501235028');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Podcast Listings', 470, ' Elizabeth Young', ' 0501235029');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Website Listings', 471, ' Ryan King', ' 0501235030');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance App Listings', 472, ' Nicole Wright', ' 0501235031');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Game Listings', 473, ' Brandon Scott', ' 0501235032');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Software Listings', 474, ' Samantha Green', ' 0501235033');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Equipment Listings', 475, ' Matthew Adams', ' 0501235034');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Supply Listings', 476, ' Lauren Baker', ' 0501235035');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Costume Listings', 477, ' Tyler Gonzalez', ' 0501235036');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Shoe Listings', 478, ' Olivia Perez', ' 0501235037');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Accessory Listings', 479, ' James Roberts', ' 0501235038');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Prop Listings', 480, ' Sophia Thompson', ' 0501235039');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Set Listings', 481, ' Alexander Rivera', ' 0501235040');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Lighting Listings', 482, ' Ava Carter', ' 0501235041');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Sound Listings', 483, ' Daniel Torres', ' 0501235042');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Video Listings', 484, ' Isabella Ramirez', ' 0501235043');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Photography Listings', 485, ' Mason Nelson', ' 0501235044');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Live Streaming Listings', 486, ' Mia Howard', ' 0501235045');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Virtual Class Listings', 487, ' Ethan Wood', ' 0501235046');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Online Workshop Listings', 488, ' Lily Campbell', ' 0501235047');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Online Course Listings', 489, ' Jacob Rogers', ' 0501235048');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Online Tutorial Listings', 490, ' Avery Scott', ' 0501235049');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Online Resource Listings', 491, ' Michael Torres', ' 0501235050');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Online Community Listings', 492, ' Harper Young', ' 0501235051');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Online Forum Listings', 493, ' Alexander King', ' 0501235052');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Social Media Listings', 494, ' Benjamin Wright', ' 0501235053');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Influencer Listings', 495, ' Victoria Adams', ' 0501235054');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Challenge Listings', 496, ' Sebastian Lopez', ' 0501235055');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Trend Listings', 497, ' Gabriel Ramirez', ' 0501235056');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Meme Listings', 498, ' Grace Walker', ' 0501235057');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Viral Video Listings', 499, ' Evelyn Hernandez', ' 0501235058');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Flash Mob Listings', 500, ' Jack White', ' 0501235059');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Crowdsourcing Listings', 501, ' Madison Martin', ' 0501235060');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Collaboration Listings', 502, ' James Clark', ' 0501235061');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Partnership Listings', 503, ' Abigail Rodriguez', ' 0501235062');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Sponsorship Listings', 504, ' Emily Lewis', ' 0501235063');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Brand Ambassador Listings', 505, ' Henry Walker', ' 0501235064');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Merchandise Listings', 506, ' Amelia Hall', ' 0501235065');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Fan Club Listings', 507, ' Daniel Hill', ' 0501235066');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Meetup Listings', 508, ' Ella Allen', ' 0501235067');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Networking Event Listings', 509, ' Oliver Young', ' 0501235068');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Industry Event Listings', 510, ' Sofia Wright', ' 0501235069');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Career Fair Listings', 511, ' Lucas Scott', ' 0501235070');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Job Board Listings', 512, ' Isabella Green', ' 0501235071');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Audition Listings', 513, ' Mason Baker', ' 0501235072');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Gig Listings', 514, ' Charlotte Perez', ' 0501235073');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Contract Listings', 515, ' Aiden Nelson', ' 0501235074');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Collaboration Listings', 516, ' Harper Carter', ' 0501235075');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Residency Listings', 517, ' James Hernandez', ' 0501235076');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Grant Listings', 518, ' Liam King', ' 0501235077');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Fellowship Listings', 519, ' Mia Torres', ' 0501235078');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Scholarship Listings', 520, ' Olivia Wright', ' 0501235079');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Award Listings', 521, ' Noah Martinez', ' 0501235080');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Funding Listings', 522, ' Chloe Lewis', ' 0501235081');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Donation Listings', 523, ' Lucas Hall', ' 0501235082');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Sponsorship Listings', 524, ' Mila Scott', ' 0501235083');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Volunteer Listings', 525, ' Elijah Young', ' 0501235084');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Outreach Listings', 526, ' Mason Harris', ' 0501235085');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Engagement Listings', 527, ' Olivia Johnson', ' 0501235086');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Accessibility Listings', 528, ' Ethan Garcia', ' 0501235087');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Inclusion Listings', 529, ' Sophia Lee', ' 0501235088');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Diversity Listings', 530, ' Aiden Gonzalez', ' 0501235089');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Equity Listings', 531, ' Isabella White', ' 0501235090');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Justice Listings', 532, ' James Thompson', ' 0501235091');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Rights Listings', 533, ' Amelia Rodriguez', ' 0501235092');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Policy Listings', 534, ' Benjamin Martinez', ' 0501235093');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Legislation Listings', 535, ' Emily Hernandez', ' 0501235094');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Advocacy Group Listings', 536, ' Oliver King', ' 0501235095');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Union Listings', 537, ' Sophia Brown', ' 0501235096');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Association Listings', 538, ' Aiden Wilson', ' 0501235097');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Organization Listings', 539, ' Mia Wright', ' 0501235098');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Conference Listings', 540, ' Harper Green', ' 0501235099');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Symposium Listings', 541, ' Liam Harris', ' 0501235100');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Journal Listings', 542, ' James Clark', ' 0501235101');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Magazine Listings', 543, ' Olivia Rodriguez', ' 0501235102');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Blog Listings', 544, ' Isabella Martinez', ' 0501235103');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Vlog Listings', 545, ' Benjamin Johnson', ' 0501235104');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Podcast Listings', 546, ' Emily Lopez', ' 0501235105');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Website Listings', 547, ' Mason White', ' 0501235106');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance App Listings', 548, ' Sophia Allen', ' 0501235107');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Game Listings', 549, ' Aiden Young', ' 0501235108');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Software Listings', 550, ' James Scott', ' 0501235109');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Equipment Listings', 551, ' Olivia Lewis', ' 0501235110');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Supply Listings', 552, ' Amelia Hernandez', ' 0501235111');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Costume Listings', 553, ' Liam Hall', ' 0501235112');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Shoe Listings', 554, ' Mia Baker', ' 0501235113');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Accessory Listings', 555, ' Aiden Gonzalez', ' 0501235114');
commit;
prompt 100 records committed...
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Prop Listings', 556, ' Sophia Brown', ' 0501235115');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Set Listings', 557, ' Liam Martinez', ' 0501235116');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Lighting Listings', 558, ' Ava Gonzalez', ' 0501235117');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Sound Listings', 559, ' James Clark', ' 0501235118');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Video Listings', 560, ' Olivia Wright', ' 0501235119');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Photography Listings', 561, ' Aiden Hall', ' 0501235120');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Live Streaming Listings', 562, ' Sophia Young', ' 0501235121');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Virtual Class Listings', 563, ' Benjamin Lee', ' 0501235122');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Online Workshop Listings', 564, ' Amelia Harris', ' 0501235123');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Online Course Listings', 565, ' James Wilson', ' 0501235124');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Online Tutorial Listings', 566, ' Mia Rodriguez', ' 0501235125');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Online Resource Listings', 567, ' Aiden Hernandez', ' 0501235126');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Online Community Listings', 568, ' Sophia King', ' 0501235127');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Online Forum Listings', 569, ' Benjamin Martinez', ' 0501235128');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Social Media Listings', 570, ' Emily Clark', ' 0501235129');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Influencer Listings', 571, ' James Allen', ' 0501235130');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Challenge Listings', 572, ' Olivia Wright', ' 0501235131');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Trend Listings', 573, ' Liam Brown', ' 0501235132');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Meme Listings', 574, ' Mia Hernandez', ' 0501235133');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Viral Video Listings', 575, ' Ava Gonzalez', ' 0501235134');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Flash Mob Listings', 576, ' James Martinez', ' 0501235135');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Crowdsourcing Listings', 577, ' Emily Harris', ' 0501235136');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Collaboration Listings', 578, ' Benjamin Lee', ' 0501235137');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Partnership Listings', 579, ' Sophia King', ' 0501235138');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Sponsorship Listings', 580, ' Aiden Clark', ' 0501235139');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Brand Ambassador Listings', 581, ' Olivia Martinez', ' 0501235140');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Merchandise Listings', 582, ' James Hernandez', ' 0501235141');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Fan Club Listings', 583, ' Sophia Wright', ' 0501235142');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Meetup Listings', 584, ' Liam Rodriguez', ' 0501235143');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Networking Event Listings', 585, ' Mia Gonzalez', ' 0501235144');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Industry Event Listings', 586, ' Ava Brown', ' 0501235145');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Career Fair Listings', 587, ' James Hall', ' 0501235146');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Job Board Listings', 588, ' Sophia Young', ' 0501235147');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Audition Listings', 589, ' Liam Hernandez', ' 0501235148');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Gig Listings', 590, ' Mia Martinez', ' 0501235149');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Contract Listings', 591, ' Aiden Clark', ' 0501235150');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Collaboration Listings', 592, ' Olivia Harris', ' 0501235151');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Residency Listings', 593, ' Benjamin Lee', ' 0501235152');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Grant Listings', 594, ' Sophia King', ' 0501235153');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Fellowship Listings', 595, ' James Martinez', ' 0501235154');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Scholarship Listings', 596, ' Emily Clark', ' 0501235155');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Award Listings', 597, ' Liam Hernandez', ' 0501235156');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Funding Listings', 598, ' Ava Gonzalez', ' 0501235157');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Donation Listings', 599, ' Sophia Wright', ' 0501235158');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Sponsorship Listings', 600, ' James Rodriguez', ' 0501235159');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Volunteer Listings', 601, ' Emily King', ' 0501235160');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Outreach Listings', 602, ' Liam Allen', ' 0501235161');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Engagement Listings', 603, ' Mia Martinez', ' 0501235162');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Accessibility Listings', 604, ' Sophia Harris', ' 0501235163');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Inclusion Listings', 605, ' James Lee', ' 0501235164');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Diversity Listings', 606, ' Ava Brown', ' 0501235165');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Equity Listings', 607, ' Olivia Hernandez', ' 0501235166');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Justice Listings', 608, ' Liam Gonzalez', ' 0501235167');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Rights Listings', 609, ' Sophia Martinez', ' 0501235168');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Policy Listings', 610, ' James Rodriguez', ' 0501235169');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Legislation Listings', 611, ' Emily King', ' 0501235170');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Advocacy Group Listings', 612, ' Liam Allen', ' 0501235171');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Union Listings', 613, ' Mia Harris', ' 0501235172');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Association Listings', 614, ' Sophia Clark', ' 0501235173');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Organization Listings', 615, ' James Martinez', ' 0501235174');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Conference Listings', 616, ' Ava Gonzalez', ' 0501235175');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Symposium Listings', 617, ' Liam Hernandez', ' 0501235176');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Journal Listings', 618, ' Olivia Brown', ' 0501235177');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Magazine Listings', 619, ' Sophia Hall', ' 0501235178');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Blog Listings', 620, ' James Young', ' 0501235179');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Vlog Listings', 621, ' Emily Harris', ' 0501235180');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Podcast Listings', 622, ' Liam Martinez', ' 0501235181');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Website Listings', 623, ' Ava Clark', ' 0501235182');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance App Listings', 624, ' Mia Gonzalez', ' 0501235183');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Game Listings', 625, ' Sophia Martinez', ' 0501235184');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Software Listings', 626, ' James King', ' 0501235185');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Equipment Listings', 627, ' Liam Allen', ' 0501235186');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Supply Listings', 628, ' Emily Hernandez', ' 0501235187');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Costume Listings', 629, ' Ava Brown', ' 0501235188');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Shoe Listings', 630, ' Sophia Harris', ' 0501235189');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Accessory Listings', 631, ' James Martinez', ' 0501235190');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Prop Listings', 632, ' Mia Young', ' 0501235191');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Set Listings', 633, ' Liam Clark', ' 0501235192');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Lighting Listings', 634, ' Olivia Gonzalez', ' 0501235193');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Sound Listings', 635, ' Sophia Martinez', ' 0501235194');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Video Listings', 636, ' James Brown', ' 0501235195');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Photography Listings', 637, ' Emily Hernandez', ' 0501235196');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Live Streaming Listings', 638, ' Liam Hall', ' 0501235197');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Virtual Class Listings', 639, ' Ava Rodriguez', ' 0501235198');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Online Workshop Listings', 640, ' Sophia Gonzalez', ' 0501235199');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Online Course Listings', 641, ' James Martinez', ' 0501235200');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Online Tutorial Listings', 642, ' Mia Brown', ' 0501235201');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Online Resource Listings', 643, ' Liam Harris', ' 0501235202');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Online Community Listings', 644, ' Emily Clark', ' 0501235203');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Online Forum Listings', 645, ' Sophia Martinez', ' 0501235204');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Social Media Listings', 646, ' James Young', ' 0501235205');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Influencer Listings', 647, ' Olivia Gonzalez', ' 0501235206');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Challenge Listings', 648, ' Liam Martinez', ' 0501235207');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Trend Listings', 649, ' Sophia King', ' 0501235208');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Meme Listings', 650, ' James Hernandez', ' 0501235209');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Viral Video Listings', 651, ' Emily Wright', ' 0501235210');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Flash Mob Listings', 652, ' Ava Harris', ' 0501235211');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Crowdsourcing Listings', 653, ' Liam Clark', ' 0501235212');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Collaboration Listings', 654, ' Mia Martinez', ' 0501235213');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Partnership Listings', 655, ' James Allen', ' 0501235214');
commit;
prompt 200 records committed...
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Sponsorship Listings', 656, ' Sophia Gonzalez', ' 0501235215');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Brand Ambassador Listings', 657, ' Olivia King', ' 0501235216');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Merchandise Listings', 658, ' Liam Rodriguez', ' 0501235217');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Fan Club Listings', 659, ' Emily Hernandez', ' 0501235218');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Meetup Listings', 660, ' James Brown', ' 0501235219');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Networking Event Listings', 661, ' Sophia Clark', ' 0501235220');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Industry Event Listings', 662, ' Liam Martinez', ' 0501235221');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Career Fair Listings', 663, ' Olivia King', ' 0501235222');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Job Board Listings', 664, ' James Young', ' 0501235223');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Audition Listings', 665, ' Mia Hernandez', ' 0501235224');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Gig Listings', 666, ' Liam Brown', ' 0501235225');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Contract Listings', 667, ' Sophia Rodriguez', ' 0501235226');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Collaboration Listings', 668, ' James Hall', ' 0501235227');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Residency Listings', 669, ' Olivia Wright', ' 0501235228');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Grant Listings', 670, ' Liam Gonzalez', ' 0501235229');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Fellowship Listings', 671, ' Emily Martinez', ' 0501235230');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Scholarship Listings', 672, ' James Clark', ' 0501235231');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Award Listings', 673, ' Sophia Hernandez', ' 0501235232');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Funding Listings', 674, ' Olivia Martinez', ' 0501235233');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Donation Listings', 675, ' Liam King', ' 0501235234');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Sponsorship Listings', 676, ' Emily Allen', ' 0501235235');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Volunteer Listings', 677, ' James Young', ' 0501235236');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Outreach Listings', 678, ' Sophia Rodriguez', ' 0501235237');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Engagement Listings', 679, ' Olivia Clark', ' 0501235238');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Accessibility Listings', 680, ' Liam Hernandez', ' 0501235239');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Inclusion Listings', 681, ' Emily Martinez', ' 0501235240');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Diversity Listings', 682, ' James Wright', ' 0501235241');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Equity Listings', 683, ' Sophia Brown', ' 0501235242');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Justice Listings', 684, ' Liam Hall', ' 0501235243');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Rights Listings', 685, ' Olivia Gonzalez', ' 0501235244');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Policy Listings', 686, ' Mia Young', ' 0501235245');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Legislation Listings', 687, ' James Clark', ' 0501235246');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Advocacy Group Listings', 688, ' Sophia Martinez', ' 0501235247');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Union Listings', 689, ' Emily Hernandez', ' 0501235248');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Association Listings', 690, ' Liam Wright', ' 0501235249');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Organization Listings', 691, ' Olivia Rodriguez', ' 0501235250');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Conference Listings', 692, ' James Brown', ' 0501235251');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Symposium Listings', 693, ' Sophia King', ' 0501235252');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Journal Listings', 694, ' Emily Gonzalez', ' 0501235253');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Magazine Listings', 695, ' Liam Martinez', ' 0501235254');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Blog Listings', 696, ' Mia Clark', ' 0501235255');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Vlog Listings', 697, ' James Hall', ' 0501235256');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Podcast Listings', 698, ' Olivia Brown', ' 0501235257');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Website Listings', 699, ' Liam Hernandez', ' 0501235258');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance App Listings', 700, ' Sophia Martinez', ' 0501235259');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Game Listings', 701, ' Emily Young', ' 0501235260');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Software Listings', 702, ' James Clark', ' 0501235261');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Equipment Listings', 703, ' Olivia Harris', ' 0501235262');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Supply Listings', 704, ' Liam Gonzalez', ' 0501235263');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Costume Listings', 705, ' Sophia Rodriguez', ' 0501235264');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Shoe Listings', 706, ' Emily Hall', ' 0501235265');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Accessory Listings', 707, ' James Brown', ' 0501235266');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Prop Listings', 708, ' Olivia King', ' 0501235267');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Set Listings', 709, ' Liam Martinez', ' 0501235268');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Lighting Listings', 710, ' Sophia Allen', ' 0501235269');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Sound Listings', 711, ' Emily Clark', ' 0501235270');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Video Listings', 712, ' James Wright', ' 0501235271');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Photography Listings', 713, ' Olivia Hernandez', ' 0501235272');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Live Streaming Listings', 714, ' Liam Rodriguez', ' 0501235273');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Virtual Class Listings', 715, ' Sophia Martinez', ' 0501235274');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Online Workshop Listings', 716, ' Emily Harris', ' 0501235275');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Online Course Listings', 717, ' James Young', ' 0501235276');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Online Tutorial Listings', 718, ' Olivia Gonzalez', ' 0501235277');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Online Resource Listings', 719, ' Liam Martinez', ' 0501235278');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Online Community Listings', 720, ' Sophia Clark', ' 0501235279');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Online Forum Listings', 721, ' Emily Hernandez', ' 0501235280');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Social Media Listings', 722, ' James Brown', ' 0501235281');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Influencer Listings', 723, ' Olivia Young', ' 0501235282');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Challenge Listings', 724, ' Liam King', ' 0501235283');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Trend Listings', 725, ' Sophia Martinez', ' 0501235284');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Meme Listings', 726, ' Emily Clark', ' 0501235285');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Viral Video Listings', 727, ' James Hall', ' 0501235286');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Flash Mob Listings', 728, ' Olivia Rodriguez', ' 0501235287');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Crowdsourcing Listings', 729, ' Liam Wright', ' 0501235288');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Collaboration Listings', 730, ' Sophia Hernandez', ' 0501235289');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Partnership Listings', 731, ' Emily King', ' 0501235290');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Sponsorship Listings', 732, ' James Martinez', ' 0501235291');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Brand Ambassador Listings', 733, ' Olivia Young', ' 0501235292');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Merchandise Listings', 734, ' Liam Brown', ' 0501235293');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Fan Club Listings', 735, ' Sophia Rodriguez', ' 0501235294');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Meetup Listings', 736, ' Emily Clark', ' 0501235295');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Networking Event Listings', 737, ' James Hernandez', ' 0501235296');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Industry Event Listings', 738, ' Olivia Gonzalez', ' 0501235297');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Career Fair Listings', 739, ' Liam Martinez', ' 0501235298');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Job Board Listings', 740, ' Sophia King', ' 0501235299');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Audition Listings', 741, ' Emily Hall', ' 0501235300');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Gig Listings', 742, ' James Brown', ' 0501235301');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Contract Listings', 743, ' Olivia Young', ' 0501235302');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Collaboration Listings', 744, ' Liam Wright', ' 0501235303');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Residency Listings', 745, ' Sophia Martinez', ' 0501235304');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Grant Listings', 746, ' Emily Harris', ' 0501235305');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Fellowship Listings', 747, ' Liam Thompson', ' 0501235306');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Scholarship Listings', 748, ' Sophia Davis', ' 0501235307');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Award Listings', 749, ' Olivia Wilson', ' 0501235308');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Funding Listings', 750, ' James Rodriguez', ' 0501235309');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Donation Listings', 751, ' Emily Clark', ' 0501235310');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Sponsorship Listings', 752, ' Liam Hernandez', ' 0501235311');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Volunteer Listings', 753, ' Sophia Martinez', ' 0501235312');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Outreach Listings', 754, ' Olivia Young', ' 0501235313');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Engagement Listings', 755, ' James Brown', ' 0501235314');
commit;
prompt 300 records committed...
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Accessibility Listings', 756, ' Emily Hall', ' 0501235315');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Inclusion Listings', 757, ' Liam Wright', ' 0501235316');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Diversity Listings', 758, ' Sophia Hernandez', ' 0501235317');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Equity Listings', 759, ' Olivia Martinez', ' 0501235318');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Justice Listings', 760, ' James Thompson', ' 0501235319');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Rights Listings', 761, ' Emily Davis', ' 0501235320');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Policy Listings', 762, ' Liam Wilson', ' 0501235321');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Legislation Listings', 763, ' Sophia Thompson', ' 0501235322');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Advocacy Group Listings', 764, ' Olivia Johnson', ' 0501235323');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Union Listings', 765, ' James Garcia', ' 0501235324');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Association Listings', 766, ' Emily Hernandez', ' 0501235325');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Organization Listings', 767, ' Liam Martinez', ' 0501235326');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Conference Listings', 768, ' Sophia Clark', ' 0501235327');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Symposium Listings', 769, ' Olivia Brown', ' 0501235328');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Journal Listings', 770, ' James Young', ' 0501235329');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Magazine Listings', 771, ' Emily Harris', ' 0501235330');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Blog Listings', 772, ' Liam Rodriguez', ' 0501235331');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Vlog Listings', 773, ' Sophia Hall', ' 0501235332');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Podcast Listings', 774, ' Olivia Hernandez', ' 0501235333');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Website Listings', 775, ' James Wright', ' 0501235334');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance App Listings', 776, ' Emily Gonzalez', ' 0501235335');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Game Listings', 777, ' Liam Martinez', ' 0501235336');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Software Listings', 778, ' Sophia Young', ' 0501235337');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Equipment Listings', 779, ' Olivia Clark', ' 0501235338');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Supply Listings', 780, ' James Hernandez', ' 0501235339');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Costume Listings', 781, ' Emily Rodriguez', ' 0501235340');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Shoe Listings', 782, ' Liam Hall', ' 0501235341');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Accessory Listings', 783, ' Sophia Young', ' 0501235342');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Prop Listings', 784, ' Olivia Wright', ' 0501235343');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Set Listings', 785, ' James Brown', ' 0501235344');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Lighting Listings', 786, ' Emily Gonzalez', ' 0501235345');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Sound Listings', 787, ' Liam Clark', ' 0501235346');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Video Listings', 788, ' Sophia Hernandez', ' 0501235347');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Photography Listings', 789, ' Olivia Martinez', ' 0501235348');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Live Streaming Listings', 790, ' James Young', ' 0501235349');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Virtual Class Listings', 791, ' Emily Harris', ' 0501235350');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Online Workshop Listings', 792, ' Liam Rodriguez', ' 0501235351');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Online Course Listings', 793, ' Sophia Hall', ' 0501235352');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Online Tutorial Listings', 794, ' Olivia Clark', ' 0501235353');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Online Resource Listings', 795, ' James Hernandez', ' 0501235354');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Online Community Listings', 796, ' Emily Wright', ' 0501235355');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Online Forum Listings', 797, ' Liam Brown', ' 0501235356');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Social Media Listings', 798, ' Sophia Rodriguez', ' 0501235357');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Influencer Listings', 799, ' Olivia Martinez', ' 0501235358');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Challenge Listings', 800, ' James Thompson', ' 0501235359');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Trend Listings', 801, ' Emily Davis', ' 0501235360');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Meme Listings', 802, ' Liam Wilson', ' 0501235361');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Viral Video Listings', 803, ' Sophia Thompson', ' 0501235362');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Flash Mob Listings', 804, ' Olivia Johnson', ' 0501235363');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Crowdsourcing Listings', 805, ' James Garcia', ' 0501235364');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Collaboration Listings', 806, ' Emily Hernandez', ' 0501235365');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Partnership Listings', 807, ' Liam Martinez', ' 0501235366');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Sponsorship Listings', 808, ' Sophia Clark', ' 0501235367');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Brand Ambassador Listings', 809, ' Olivia Brown', ' 0501235368');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Merchandise Listings', 810, ' James Young', ' 0501235369');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Fan Club Listings', 811, ' Emily Gonzalez', ' 0501235370');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Meetup Listings', 812, ' Liam Rodriguez', ' 0501235371');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Networking Event Listings', 813, ' Sophia Hall', ' 0501235372');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Industry Event Listings', 814, ' Olivia Clark', ' 0501235373');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Career Fair Listings', 815, ' James Hernandez', ' 0501235374');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Job Board Listings', 816, ' Emily Wright', ' 0501235375');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Audition Listings', 817, ' Liam Brown', ' 0501235376');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Gig Listings', 818, ' Sophia Rodriguez', ' 0501235377');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Contract Listings', 819, ' Olivia Martinez', ' 0501235378');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Collaboration Listings', 820, ' James Thompson', ' 0501235379');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Residency Listings', 821, ' Emily Davis', ' 0501235380');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Grant Listings', 822, ' Liam Wilson', ' 0501235381');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Fellowship Listings', 823, ' Sophia Thompson', ' 0501235382');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Scholarship Listings', 824, ' Olivia Johnson', ' 0501235383');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Award Listings', 825, ' James Garcia', ' 0501235384');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Funding Listings', 826, ' Emily Hernandez', ' 0501235385');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Donation Listings', 827, ' Liam Martinez', ' 0501235386');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Sponsorship Listings', 828, ' Sophia Clark', ' 0501235387');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Volunteer Listings', 829, ' Olivia Brown', ' 0501235388');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Outreach Listings', 830, ' James Young', ' 0501235389');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Engagement Listings', 831, ' Emily Gonzalez', ' 0501235390');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Accessibility Listings', 832, ' Liam Rodriguez', ' 0501235391');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Inclusion Listings', 833, ' Sophia Hall', ' 0501235392');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Diversity Listings', 834, ' Olivia Clark', ' 0501235393');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Equity Listings', 835, ' James Hernandez', ' 0501235394');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Justice Listings', 836, ' Emily Wright', ' 0501235395');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Rights Listings', 837, ' Liam Brown', ' 0501235396');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Policy Listings', 838, ' Sophia Rodriguez', ' 0501235397');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Legislation Listings', 839, ' Olivia Martinez', ' 0501235398');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Advocacy Group Listings', 840, ' James Thompson', ' 0501235399');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Union Listings', 841, ' Emily Davis', ' 0501235400');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Association Listings', 842, ' Liam Wilson', ' 0501235401');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Organization Listings', 843, ' Sophia Thompson', ' 0501235402');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Conference Listings', 844, ' Olivia Johnson', ' 0501235403');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Symposium Listings', 845, ' James Garcia', ' 0501235404');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Journal Listings', 846, ' Emily Hernandez', ' 0501235405');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Magazine Listings', 847, ' Liam Martinez', ' 0501235406');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Blog Listings', 848, ' Sophia Clark', ' 0501235407');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Vlog Listings', 849, ' Olivia Brown', ' 0501235408');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Podcast Listings', 850, ' James Young', ' 0501235409');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Website Listings', 851, ' Emily Gonzalez', ' 0501235410');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance App Listings', 852, ' Liam Rodriguez', ' 0501235411');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Game Listings', 853, ' Sophia Hall', ' 0501235412');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Software Listings', 854, ' Olivia Clark', ' 0501235413');
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Equipment Listings', 855, ' James Hernandez', ' 0501235414');
commit;
prompt 400 records committed...
insert into CLASS (class_name, class_id, guide, guide_phone)
values ('Dance Supply Listings', 856, ' Emily Wright', ' 0501235415');
commit;
prompt 401 records loaded
prompt Loading GROUPS...
insert into GROUPS (group_id, group_name, age_group, kteacher_id, hour, class_day, class_id)
values (1, 'Johnette', 2, '428283', 16, 'THURSDAY', 507);
insert into GROUPS (group_id, group_name, age_group, kteacher_id, hour, class_day, class_id)
values (2, 'Spike', 6, '678542', 17, 'FRUDAY', 829);
insert into GROUPS (group_id, group_name, age_group, kteacher_id, hour, class_day, class_id)
values (3, 'Trick', 9, '51274', 14, 'TUESDAY', 856);
insert into GROUPS (group_id, group_name, age_group, kteacher_id, hour, class_day, class_id)
values (4, 'Kyra', 3, '241345', 15, 'WEDNESDAY', 742);
insert into GROUPS (group_id, group_name, age_group, kteacher_id, hour, class_day, class_id)
values (5, 'Ethan', 5, '517314', 13, 'WEDNESDAY', 745);
insert into GROUPS (group_id, group_name, age_group, kteacher_id, hour, class_day, class_id)
values (6, 'Leslie', 6, '719535', 16, 'WEDNESDAY', 725);
insert into GROUPS (group_id, group_name, age_group, kteacher_id, hour, class_day, class_id)
values (7, 'Ben', 4, '367784', 16, 'WEDNESDAY', 823);
insert into GROUPS (group_id, group_name, age_group, kteacher_id, hour, class_day, class_id)
values (8, 'Casey', 6, '574911', 17, 'SUNDAY', 616);
insert into GROUPS (group_id, group_name, age_group, kteacher_id, hour, class_day, class_id)
values (9, 'Famke', 3, '9727100', 15, 'THURSDAY', 701);
insert into GROUPS (group_id, group_name, age_group, kteacher_id, hour, class_day, class_id)
values (10, 'Heath', 10, '163546', 17, 'TUESDAY', 672);
insert into GROUPS (group_id, group_name, age_group, kteacher_id, hour, class_day, class_id)
values (11, 'Dennis', 8, '792747', 13, 'MONDAY', 599);
insert into GROUPS (group_id, group_name, age_group, kteacher_id, hour, class_day, class_id)
values (12, 'Johnnie', 2, '524373', 13, 'TUESDAY', 811);
insert into GROUPS (group_id, group_name, age_group, kteacher_id, hour, class_day, class_id)
values (13, 'Andrew', 9, '578595', 14, 'SUNDAY', 481);
insert into GROUPS (group_id, group_name, age_group, kteacher_id, hour, class_day, class_id)
values (14, 'Holly', 4, '82426', 13, 'TUESDAY', 646);
insert into GROUPS (group_id, group_name, age_group, kteacher_id, hour, class_day, class_id)
values (15, 'Desmond', 5, '191553', 17, 'FRUDAY', 801);
insert into GROUPS (group_id, group_name, age_group, kteacher_id, hour, class_day, class_id)
values (16, 'Sander', 3, '871418', 13, 'MONDAY', 470);
insert into GROUPS (group_id, group_name, age_group, kteacher_id, hour, class_day, class_id)
values (17, 'Bonnie', 7, '916780', 15, 'FRUDAY', 654);
insert into GROUPS (group_id, group_name, age_group, kteacher_id, hour, class_day, class_id)
values (18, 'Pelvic', 8, '975225', 16, 'THURSDAY', 635);
insert into GROUPS (group_id, group_name, age_group, kteacher_id, hour, class_day, class_id)
values (19, 'Sissy', 2, '959755', 15, 'TUESDAY', 460);
insert into GROUPS (group_id, group_name, age_group, kteacher_id, hour, class_day, class_id)
values (20, 'Claire', 4, '955449', 14, 'TUESDAY', 490);
insert into GROUPS (group_id, group_name, age_group, kteacher_id, hour, class_day, class_id)
values (21, 'Penelope', 9, '355739', 15, 'FRUDAY', 750);
insert into GROUPS (group_id, group_name, age_group, kteacher_id, hour, class_day, class_id)
values (22, 'Todd', 6, '411438', 17, 'TUESDAY', 545);
insert into GROUPS (group_id, group_name, age_group, kteacher_id, hour, class_day, class_id)
values (23, 'Ozzy', 4, '433496', 17, 'WEDNESDAY', 799);
insert into GROUPS (group_id, group_name, age_group, kteacher_id, hour, class_day, class_id)
values (24, 'Trini', 8, '357891', 15, 'SUNDAY', 786);
insert into GROUPS (group_id, group_name, age_group, kteacher_id, hour, class_day, class_id)
values (25, 'Sara', 10, '314334', 16, 'TUESDAY', 487);
insert into GROUPS (group_id, group_name, age_group, kteacher_id, hour, class_day, class_id)
values (26, 'Bryan', 3, '238110', 13, 'THURSDAY', 635);
insert into GROUPS (group_id, group_name, age_group, kteacher_id, hour, class_day, class_id)
values (27, 'Marc', 6, '15318', 14, 'THURSDAY', 508);
insert into GROUPS (group_id, group_name, age_group, kteacher_id, hour, class_day, class_id)
values (28, 'James', 6, '191553', 15, 'WEDNESDAY', 486);
insert into GROUPS (group_id, group_name, age_group, kteacher_id, hour, class_day, class_id)
values (29, 'Don', 9, '916780', 14, 'WEDNESDAY', 523);
insert into GROUPS (group_id, group_name, age_group, kteacher_id, hour, class_day, class_id)
values (30, 'Julia', 4, '9727100', 15, 'SUNDAY', 474);
insert into GROUPS (group_id, group_name, age_group, kteacher_id, hour, class_day, class_id)
values (31, 'Julio', 2, '572323', 14, 'SUNDAY', 569);
insert into GROUPS (group_id, group_name, age_group, kteacher_id, hour, class_day, class_id)
values (32, 'Olympia', 7, '235933', 17, 'SUNDAY', 656);
insert into GROUPS (group_id, group_name, age_group, kteacher_id, hour, class_day, class_id)
values (33, 'Rebecca', 3, '314334', 16, 'FRUDAY', 733);
insert into GROUPS (group_id, group_name, age_group, kteacher_id, hour, class_day, class_id)
values (34, 'Reese', 5, '916780', 17, 'WEDNESDAY', 822);
insert into GROUPS (group_id, group_name, age_group, kteacher_id, hour, class_day, class_id)
values (35, 'Avril', 5, '916780', 15, 'MONDAY', 586);
insert into GROUPS (group_id, group_name, age_group, kteacher_id, hour, class_day, class_id)
values (36, 'Campbell', 6, '19732', 16, 'SUNDAY', 738);
insert into GROUPS (group_id, group_name, age_group, kteacher_id, hour, class_day, class_id)
values (37, 'Rory', 3, '437486', 14, 'THURSDAY', 803);
insert into GROUPS (group_id, group_name, age_group, kteacher_id, hour, class_day, class_id)
values (38, 'Nigel', 6, '82426', 16, 'FRUDAY', 834);
insert into GROUPS (group_id, group_name, age_group, kteacher_id, hour, class_day, class_id)
values (39, 'Rawlins', 2, '568551', 13, 'WEDNESDAY', 650);
insert into GROUPS (group_id, group_name, age_group, kteacher_id, hour, class_day, class_id)
values (40, 'Eileen', 8, '151720', 17, 'FRUDAY', 723);
insert into GROUPS (group_id, group_name, age_group, kteacher_id, hour, class_day, class_id)
values (41, 'Jarvis', 4, '191553', 13, 'THURSDAY', 765);
insert into GROUPS (group_id, group_name, age_group, kteacher_id, hour, class_day, class_id)
values (42, 'Lila', 4, '568551', 17, 'THURSDAY', 597);
insert into GROUPS (group_id, group_name, age_group, kteacher_id, hour, class_day, class_id)
values (43, 'Kurtwood', 3, '363963', 17, 'SUNDAY', 729);
insert into GROUPS (group_id, group_name, age_group, kteacher_id, hour, class_day, class_id)
values (44, 'Marina', 2, '155428', 13, 'MONDAY', 647);
insert into GROUPS (group_id, group_name, age_group, kteacher_id, hour, class_day, class_id)
values (45, 'Zooey', 2, '737690', 17, 'WEDNESDAY', 640);
insert into GROUPS (group_id, group_name, age_group, kteacher_id, hour, class_day, class_id)
values (46, 'Spencer', 5, '227592', 13, 'FRUDAY', 586);
insert into GROUPS (group_id, group_name, age_group, kteacher_id, hour, class_day, class_id)
values (47, 'Susan', 2, '264432', 14, 'MONDAY', 783);
insert into GROUPS (group_id, group_name, age_group, kteacher_id, hour, class_day, class_id)
values (48, 'Raymond', 9, '367784', 13, 'THURSDAY', 606);
insert into GROUPS (group_id, group_name, age_group, kteacher_id, hour, class_day, class_id)
values (49, 'Kitty', 2, '475694', 16, 'THURSDAY', 820);
insert into GROUPS (group_id, group_name, age_group, kteacher_id, hour, class_day, class_id)
values (50, 'Beth', 4, '568551', 17, 'SUNDAY', 845);
commit;
prompt 50 records loaded
prompt Loading CHILDREN...
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Frances', 'Lerner', '142341', to_date('16-12-2012', 'dd-mm-yyyy'), 'Frances', '0554495143', '31st Street', 42);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Chad', 'Van Damme', '553762', to_date('26-04-2021', 'dd-mm-yyyy'), 'Chad', '0508672962', '46 Bloomington Stree', 20);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Roscoe', 'Lonsdale', '485513', to_date('11-06-2020', 'dd-mm-yyyy'), 'Roscoe', '0513927528', '61 Nanaimo Street', 42);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Bradley', 'Crimson', '764244', to_date('28-01-2019', 'dd-mm-yyyy'), 'Bradley', '0539108186', '18 Sarsgaard Street', 8);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Petula', 'Summer', '967935', to_date('12-03-2021', 'dd-mm-yyyy'), 'Petula', '0561879033', '37 Dushku Road', 32);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Holly', 'Carmen', '693396', to_date('20-01-2021', 'dd-mm-yyyy'), 'Holly', '0544162690', '13 Whitley Drive', 26);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Rhona', 'McKellen', '169697', to_date('17-03-2021', 'dd-mm-yyyy'), 'Rhona', '0573618630', '97 Hedaya Road', 24);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Benjamin', 'Klein', '293198', to_date('29-08-2017', 'dd-mm-yyyy'), 'Benjamin', '0561924672', '50 Beals Road', 17);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Ike', 'Pepper', '755639', to_date('03-07-2014', 'dd-mm-yyyy'), 'Ike', '0517277947', '84 Allison Ave', 29);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Holland', 'Palmieri', '7716810', to_date('11-09-2021', 'dd-mm-yyyy'), 'Holland', '0518400150', '60 The Woodlands', 39);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Timothy', 'Englund', '2126911', to_date('15-03-2016', 'dd-mm-yyyy'), 'Timothy', '0577740922', '68 Richie Ave', 9);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Powers', 'Hopkins', '6965212', to_date('26-03-2013', 'dd-mm-yyyy'), 'Powers', '0524952434', '99 Burke Street', 45);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Natasha', 'Roy Parnell', '9887213', to_date('12-02-2016', 'dd-mm-yyyy'), 'Natasha', '0519060777', '42 Debra Ave', 19);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Mac', 'Scorsese', '3944314', to_date('01-07-2015', 'dd-mm-yyyy'), 'Mac', '0563455306', '92nd Street', 21);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Cevin', 'Utada', '3346515', to_date('02-02-2017', 'dd-mm-yyyy'), 'Cevin', '0566262106', '63rd Street', 21);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Red', 'McElhone', '7314116', to_date('23-01-2012', 'dd-mm-yyyy'), 'Red', '0502587459', '15 North bethesda Dr', 34);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Wayne', 'Pitney', '1356717', to_date('29-09-2016', 'dd-mm-yyyy'), 'Wayne', '0525511296', '38 Rochester Road', 14);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Tommy', 'Rivers', '1145418', to_date('03-11-2018', 'dd-mm-yyyy'), 'Tommy', '0532602705', '901 Germantown Stree', 44);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Chantי', 'Brock', '9557819', to_date('30-11-2016', 'dd-mm-yyyy'), 'Chantי', '0522315820', '85 Fukui Drive', 49);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Patrick', 'Branagh', '9152620', to_date('14-10-2013', 'dd-mm-yyyy'), 'Patrick', '0557094095', '36 Birkenhead Ave', 9);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Judy', 'Gugino', '8721221', to_date('28-02-2016', 'dd-mm-yyyy'), 'Judy', '0538018096', '26 Gilbert Road', 29);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Toni', 'Remar', '7951322', to_date('04-04-2013', 'dd-mm-yyyy'), 'Toni', '0514994047', '93 Miyazaki Ave', 14);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Spike', 'Stuart', '1245923', to_date('08-11-2017', 'dd-mm-yyyy'), 'Spike', '0524633772', '56 Haggard Street', 35);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Latin', 'Li', '9142124', to_date('20-01-2017', 'dd-mm-yyyy'), 'Latin', '0578999950', '18 Mount Laurel Stre', 7);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Ricardo', 'Beck', '5893125', to_date('06-01-2017', 'dd-mm-yyyy'), 'Ricardo', '0502732448', '20 Apple Blvd', 6);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Martha', 'Heatherly', '3473726', to_date('24-11-2021', 'dd-mm-yyyy'), 'Martha', '0519532481', '164 Berry Road', 7);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Lindsay', 'Hanley', '3568527', to_date('30-04-2019', 'dd-mm-yyyy'), 'Lindsay', '0528823089', '45 Concordville Stre', 10);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Marlon', 'Marx', '8535728', to_date('29-04-2014', 'dd-mm-yyyy'), 'Marlon', '0577210556', '42 Stone Mountain Av', 37);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Anjelica', 'Supernaw', '2752529', to_date('25-08-2015', 'dd-mm-yyyy'), 'Anjelica', '0579914020', '89 Linda Road', 40);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Nikki', 'Sandoval', '2295730', to_date('10-07-2013', 'dd-mm-yyyy'), 'Nikki', '0545390936', '28 Sigourney Drive', 6);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Kevn', 'Williamson', '2347231', to_date('04-01-2021', 'dd-mm-yyyy'), 'Kevn', '0566403828', '90 Ramis Street', 42);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Garry', 'Joli', '4469332', to_date('20-02-2013', 'dd-mm-yyyy'), 'Garry', '0566279796', '13 Alicia Blvd', 35);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Allison', 'Costa', '2224433', to_date('29-12-2021', 'dd-mm-yyyy'), 'Allison', '0558949982', '44 Raul Ave', 21);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Gene', 'Alexander', '5698334', to_date('21-07-2016', 'dd-mm-yyyy'), 'Gene', '0555931928', '75 Nugent Road', 48);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Naomi', 'Nielsen', '8189935', to_date('20-01-2017', 'dd-mm-yyyy'), 'Naomi', '0522872488', '93rd Street', 41);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Tilda', 'Wong', '2269136', to_date('15-05-2015', 'dd-mm-yyyy'), 'Tilda', '0522018252', '77 Atkinson Street', 6);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Gavin', 'Taha', '3946837', to_date('07-07-2018', 'dd-mm-yyyy'), 'Gavin', '0528848677', '41 Dunaway Road', 42);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Holly', 'Brown', '1746138', to_date('04-11-2021', 'dd-mm-yyyy'), 'Holly', '0524890184', '2 Night Street', 18);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Rosco', 'Zeta-Jones', '8686439', to_date('09-12-2014', 'dd-mm-yyyy'), 'Rosco', '0573456939', '714 Robert Ave', 50);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Bridget', 'Wells', '7275540', to_date('29-12-2021', 'dd-mm-yyyy'), 'Bridget', '0547849549', '19 Lapointe Street', 20);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Kurt', 'Horizon', '2665941', to_date('22-06-2015', 'dd-mm-yyyy'), 'Kurt', '0528295297', '346 Armin', 19);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Rickie', 'DeLuise', '7651142', to_date('04-04-2014', 'dd-mm-yyyy'), 'Rickie', '0505030519', '65 Maebashi', 38);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Radney', 'Astin', '2626143', to_date('19-11-2019', 'dd-mm-yyyy'), 'Radney', '0563886708', '14 Cage Street', 47);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Mitchell', 'Jeter', '6583344', to_date('06-12-2016', 'dd-mm-yyyy'), 'Mitchell', '0543896279', '984 Jessee Street', 35);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Rodney', 'Moody', '1336845', to_date('19-11-2017', 'dd-mm-yyyy'), 'Rodney', '0524600332', '57 Penders Street', 34);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Don', 'Rhymes', '5377846', to_date('22-08-2018', 'dd-mm-yyyy'), 'Don', '0556584239', '16 Ned Road', 3);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Cliff', 'Chesnutt', '3786647', to_date('26-12-2012', 'dd-mm-yyyy'), 'Cliff', '0544163233', '640 Maureen', 41);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Machine', 'Willard', '7448648', to_date('22-08-2019', 'dd-mm-yyyy'), 'Machine', '0568224144', '39 Hanley Road', 38);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Gene', 'Deschanel', '8535949', to_date('02-03-2019', 'dd-mm-yyyy'), 'Gene', '0543604957', '62 Collin Road', 50);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Cledus', 'Pride', '5437550', to_date('29-08-2017', 'dd-mm-yyyy'), 'Cledus', '0573849887', '24 Craven Street', 49);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Miguel', 'Meyer', '2275751', to_date('21-05-2014', 'dd-mm-yyyy'), 'Miguel', '0508590600', '323 Williamson Road', 39);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Frances', 'Oakenfold', '3838852', to_date('28-12-2021', 'dd-mm-yyyy'), 'Frances', '0535583424', '709 MacPherson Stree', 36);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Owen', 'Aaron', '4594453', to_date('12-05-2012', 'dd-mm-yyyy'), 'Owen', '0576599720', '94 Winans Street', 40);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Bernard', 'Zappacosta', '2399654', to_date('18-07-2014', 'dd-mm-yyyy'), 'Bernard', '0538818129', '11 Debi Road', 15);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Gilbert', 'Mohr', '7155655', to_date('08-09-2017', 'dd-mm-yyyy'), 'Gilbert', '0515429321', '76 Davidson Street', 43);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Rob', 'Vincent', '4315256', to_date('21-07-2020', 'dd-mm-yyyy'), 'Rob', '0558164982', '1 Lavigne Street', 40);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Leo', 'Lynn', '7447757', to_date('11-03-2016', 'dd-mm-yyyy'), 'Leo', '0524687593', '54 Sampson Blvd', 7);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Judge', 'Sepulveda', '4918358', to_date('09-12-2019', 'dd-mm-yyyy'), 'Judge', '0576941073', '93rd Street', 9);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('King', 'Steagall', '9131759', to_date('02-02-2016', 'dd-mm-yyyy'), 'King', '0528270869', '3 Curfman Ave', 33);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Max', 'Liu', '9411860', to_date('04-12-2018', 'dd-mm-yyyy'), 'Max', '0569762605', '76 Jesus Road', 9);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Don', 'Rodgers', '1649261', to_date('07-12-2017', 'dd-mm-yyyy'), 'Don', '0525857677', '5 Burmester Drive', 6);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Omar', 'Carrington', '7459762', to_date('04-11-2020', 'dd-mm-yyyy'), 'Omar', '0502750337', '58 Deejay Blvd', 41);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Heath', 'Raye', '4747963', to_date('15-12-2020', 'dd-mm-yyyy'), 'Heath', '0537285106', '17 Sedaka Drive', 13);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Kurtwood', 'Irving', '8974464', to_date('23-04-2016', 'dd-mm-yyyy'), 'Kurtwood', '0528184514', '55 El-Saher Road', 26);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Chrissie', 'Jamal', '1246365', to_date('08-05-2018', 'dd-mm-yyyy'), 'Chrissie', '0553106461', '43 Newcastle upon Ty', 22);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Jamie', 'Archer', '5864866', to_date('27-06-2012', 'dd-mm-yyyy'), 'Jamie', '0525417421', '56 Seatle Street', 30);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Miko', 'Price', '1335767', to_date('31-08-2013', 'dd-mm-yyyy'), 'Miko', '0568936276', '23 urban Ave', 26);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Tramaine', 'Berkoff', '5161368', to_date('24-06-2020', 'dd-mm-yyyy'), 'Tramaine', '0548104582', '229 LaMond Ave', 4);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Liv', 'Child', '6417369', to_date('05-07-2014', 'dd-mm-yyyy'), 'Liv', '0518601948', '2 Smyrna Ave', 22);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Gena', 'Brooke', '3587670', to_date('28-03-2020', 'dd-mm-yyyy'), 'Gena', '0527378774', '74 Nagano Road', 47);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Maura', 'Herndon', '9556271', to_date('30-09-2012', 'dd-mm-yyyy'), 'Maura', '0509878949', '22nd Street', 11);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Burton', 'Ammons', '1477972', to_date('26-04-2018', 'dd-mm-yyyy'), 'Burton', '0567401706', '40 Myers Street', 40);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Stevie', 'Wincott', '3529473', to_date('23-05-2012', 'dd-mm-yyyy'), 'Stevie', '0578841824', '87 Cara Road', 24);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Denise', 'Applegate', '6439574', to_date('16-08-2020', 'dd-mm-yyyy'), 'Denise', '0543531873', '9 Lipnicki Ave', 36);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Alessandro', 'Geldof', '1679575', to_date('08-08-2012', 'dd-mm-yyyy'), 'Alessandro', '0527952947', '477 Obfelden Street', 42);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Suzi', 'Tyler', '4324676', to_date('03-11-2014', 'dd-mm-yyyy'), 'Suzi', '0528314855', '89 Harrelson Blvd', 34);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Owen', 'Carnes', '4313377', to_date('08-05-2016', 'dd-mm-yyyy'), 'Owen', '0565849676', '68 Sledge Road', 41);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Miriam', 'Leto', '1969778', to_date('31-12-2018', 'dd-mm-yyyy'), 'Miriam', '0562895552', '51 Moreno Valley Ave', 35);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Rene', 'Zappacosta', '3862879', to_date('22-06-2012', 'dd-mm-yyyy'), 'Rene', '0512232248', '88 Quentin Street', 43);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Andie', 'Chandler', '2782380', to_date('20-11-2012', 'dd-mm-yyyy'), 'Andie', '0556346309', '621 Luzern Drive', 40);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Carolyn', 'Flack', '2246281', to_date('22-10-2013', 'dd-mm-yyyy'), 'Carolyn', '0525115693', '92 Horace Street', 46);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Pierce', 'Palmieri', '7597882', to_date('08-12-2015', 'dd-mm-yyyy'), 'Pierce', '0563762484', '758 Doug Street', 11);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Nile', 'Crudup', '9583183', to_date('23-10-2016', 'dd-mm-yyyy'), 'Nile', '0532776602', '2 Liu Road', 42);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Moe', 'Robinson', '5644684', to_date('14-11-2014', 'dd-mm-yyyy'), 'Moe', '0572556925', '141 Lois Ave', 29);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Bridget', 'Furay', '5661285', to_date('25-11-2014', 'dd-mm-yyyy'), 'Bridget', '0533571502', '32 Rueben Street', 12);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Crispin', 'Moriarty', '9335286', to_date('05-05-2017', 'dd-mm-yyyy'), 'Crispin', '0569553652', '68 Phillippe Blvd', 47);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Balthazar', 'Guzman', '9129487', to_date('28-03-2019', 'dd-mm-yyyy'), 'Balthazar', '0557656654', '518 Milford', 18);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Uma', 'Ferrer', '5898988', to_date('06-05-2019', 'dd-mm-yyyy'), 'Uma', '0529417380', '22nd Street', 28);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Holly', 'Vai', '4241789', to_date('14-02-2014', 'dd-mm-yyyy'), 'Holly', '0575071819', '12nd Street', 33);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Kenneth', 'Mulroney', '5759490', to_date('16-06-2018', 'dd-mm-yyyy'), 'Kenneth', '0502999979', '16 Stanley Ave', 28);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Alicia', 'MacLachlan', '9132391', to_date('19-11-2014', 'dd-mm-yyyy'), 'Alicia', '0523996539', '149 Holbrook Street', 24);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Viggo', 'Myers', '7355792', to_date('09-07-2015', 'dd-mm-yyyy'), 'Viggo', '0533699561', '34 Whoopi Ave', 4);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Lorraine', 'Caviezel', '2883393', to_date('27-07-2013', 'dd-mm-yyyy'), 'Lorraine', '0522844960', '43 Rifkin', 20);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Adrien', 'Ranger', '3126694', to_date('22-03-2016', 'dd-mm-yyyy'), 'Adrien', '0557738378', '43 Suzanne Road', 47);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Horace', 'Marsden', '9198295', to_date('03-04-2013', 'dd-mm-yyyy'), 'Horace', '0516068964', '42nd Street', 27);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Jet', 'McLean', '2449496', to_date('27-10-2012', 'dd-mm-yyyy'), 'Jet', '0552318535', '67 Harriet Street', 15);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Helen', 'Latifah', '1252597', to_date('31-12-2015', 'dd-mm-yyyy'), 'Helen', '0546078152', '65 Eugene Road', 30);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Rip', 'Neil', '1254198', to_date('08-06-2019', 'dd-mm-yyyy'), 'Rip', '0575845116', '69 Mablethorpe Stree', 28);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Eddie', 'Thurman', '6571399', to_date('12-09-2016', 'dd-mm-yyyy'), 'Eddie', '0556262770', '128 Sobieski Drive', 36);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Nina', 'Caan', '11649100', to_date('11-02-2014', 'dd-mm-yyyy'), 'Nina', '0563601883', '57 Def Ave', 44);
commit;
prompt 100 records committed...
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Chloe', 'Numan', '65785101', to_date('01-07-2018', 'dd-mm-yyyy'), 'Chloe', '0555371750', '38 Mapo-gu Drive', 6);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Manu', 'Bacharach', '53372102', to_date('01-05-2017', 'dd-mm-yyyy'), 'Manu', '0556360643', '79 Germantown Road', 12);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Buffy', 'Fogerty', '45412103', to_date('30-01-2019', 'dd-mm-yyyy'), 'Buffy', '0524300969', '17 Morales Road', 17);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Charlie', 'Armstrong', '19545104', to_date('22-03-2016', 'dd-mm-yyyy'), 'Charlie', '0559286428', '705 Suvari Street', 45);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Chely', 'Blaine', '66725105', to_date('09-03-2021', 'dd-mm-yyyy'), 'Chely', '0528900563', '3 Finney Street', 15);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Philip', 'Chaplin', '65973106', to_date('18-12-2016', 'dd-mm-yyyy'), 'Philip', '0502077667', '33 Hayek Drive', 1);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Loretta', 'Coughlan', '75427107', to_date('31-01-2016', 'dd-mm-yyyy'), 'Loretta', '0561876903', '22 Bekescsaba Street', 28);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Gary', 'O''Connor', '77343108', to_date('14-10-2012', 'dd-mm-yyyy'), 'Gary', '0564882213', '760 Palmer Street', 27);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Kieran', 'Roberts', '86283109', to_date('14-03-2014', 'dd-mm-yyyy'), 'Kieran', '0544164067', '11 Sorvino Road', 23);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Rupert', 'De Niro', '17434110', to_date('11-03-2019', 'dd-mm-yyyy'), 'Rupert', '0557753873', '510 Schiff Ave', 30);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Milla', 'Tomei', '11891111', to_date('12-02-2013', 'dd-mm-yyyy'), 'Milla', '0563588081', '12nd Street', 38);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Halle', 'Ribisi', '82919112', to_date('16-12-2013', 'dd-mm-yyyy'), 'Halle', '0576045665', '43rd Street', 42);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Gaby', 'Russell', '74612113', to_date('10-10-2016', 'dd-mm-yyyy'), 'Gaby', '0566290366', '1 Zellweger Road', 33);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Marina', 'Bush', '13913114', to_date('12-10-2015', 'dd-mm-yyyy'), 'Marina', '0533232905', '20 Merillee Street', 3);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Julianna', 'Allen', '44373115', to_date('06-10-2014', 'dd-mm-yyyy'), 'Julianna', '0517871244', '1 Holeman Street', 15);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Freddie', 'Tanon', '61258116', to_date('24-12-2016', 'dd-mm-yyyy'), 'Freddie', '0537260387', '817 Holden Drive', 1);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Jose', 'Carlisle', '84417117', to_date('14-03-2015', 'dd-mm-yyyy'), 'Jose', '0557680042', '43rd Street', 40);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Crispin', 'Blackmore', '39727118', to_date('06-07-2013', 'dd-mm-yyyy'), 'Crispin', '0507457930', '83 Blair Drive', 50);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Parker', 'Woodward', '66725119', to_date('11-08-2019', 'dd-mm-yyyy'), 'Parker', '0513381975', '19 Scarlett Drive', 49);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Lea', 'Lynskey', '47299120', to_date('08-03-2018', 'dd-mm-yyyy'), 'Lea', '0507280594', '995 Harsum', 29);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Edwin', 'Hagerty', '32675121', to_date('21-07-2021', 'dd-mm-yyyy'), 'Edwin', '0562486272', '63 O''Sullivan Road', 41);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Manu', 'Elizabeth', '76919122', to_date('05-03-2013', 'dd-mm-yyyy'), 'Manu', '0568603953', '268 Hank Blvd', 24);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Mia', 'Caviezel', '26726123', to_date('09-12-2020', 'dd-mm-yyyy'), 'Mia', '0517136219', '72nd Street', 28);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Hilton', 'Dushku', '41981124', to_date('24-12-2016', 'dd-mm-yyyy'), 'Hilton', '0537628983', '85 Ernie Street', 34);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Vondie', 'Ellis', '35298125', to_date('23-12-2014', 'dd-mm-yyyy'), 'Vondie', '0504246209', '94 Marina Drive', 1);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Loreena', 'Brody', '74957126', to_date('09-07-2019', 'dd-mm-yyyy'), 'Loreena', '0509494577', '813 Whoopi Road', 30);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Blair', 'Dean', '27592127', to_date('07-10-2018', 'dd-mm-yyyy'), 'Blair', '0567968427', '97 Mae Street', 45);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Marley', 'Balk', '11428128', to_date('28-11-2017', 'dd-mm-yyyy'), 'Marley', '0533802136', '29 Irvine Drive', 15);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('David', 'Sedaka', '13888129', to_date('28-11-2017', 'dd-mm-yyyy'), 'David', '0572153504', '10 Delta Ave', 19);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Goldie', 'Bale', '55714130', to_date('10-07-2021', 'dd-mm-yyyy'), 'Goldie', '0534054767', '96 Kelli Drive', 17);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Janeane', 'Holeman', '86487131', to_date('18-02-2020', 'dd-mm-yyyy'), 'Janeane', '0576317883', '49 Hunter Ave', 9);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Emma', 'Woods', '12921132', to_date('15-01-2014', 'dd-mm-yyyy'), 'Emma', '0562921627', '37 Hershey Street', 2);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Michael', 'Chung', '43769133', to_date('15-05-2015', 'dd-mm-yyyy'), 'Michael', '0555779108', '680 Jeffreys Road', 12);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Nickel', 'Levy', '84414134', to_date('07-10-2015', 'dd-mm-yyyy'), 'Nickel', '0522776551', '50 Springfield Ave', 23);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Illeana', 'Lipnicki', '25452135', to_date('11-09-2018', 'dd-mm-yyyy'), 'Illeana', '0519261625', '27 Detmer Blvd', 31);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Stanley', 'Washington', '87733136', to_date('18-01-2021', 'dd-mm-yyyy'), 'Stanley', '0555651703', '90 Seann Blvd', 49);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Salma', 'Weaving', '38585137', to_date('12-05-2013', 'dd-mm-yyyy'), 'Salma', '0564006064', '21 Kimball Drive', 7);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Fats', 'Luongo', '35518138', to_date('28-07-2012', 'dd-mm-yyyy'), 'Fats', '0512913458', '74 Nightingale', 4);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Kevn', 'Tripplehorn', '71932139', to_date('28-08-2021', 'dd-mm-yyyy'), 'Kevn', '0506638627', '53 Javon Road', 36);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Daryle', 'Askew', '19346140', to_date('13-03-2019', 'dd-mm-yyyy'), 'Daryle', '0563264114', '93rd Street', 29);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Mae', 'England', '52793141', to_date('30-11-2018', 'dd-mm-yyyy'), 'Mae', '0509368614', '1 Swayze Drive', 11);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Terence', 'Austin', '66885142', to_date('09-11-2019', 'dd-mm-yyyy'), 'Terence', '0569969909', '33 Trejo Street', 43);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Marina', 'Bratt', '16497143', to_date('16-10-2016', 'dd-mm-yyyy'), 'Marina', '0505482892', '805 Keanu Road', 30);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Wesley', 'Checker', '56862144', to_date('12-11-2020', 'dd-mm-yyyy'), 'Wesley', '0508010023', '29 Marc Blvd', 2);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Lisa', 'Glenn', '91575145', to_date('22-10-2021', 'dd-mm-yyyy'), 'Lisa', '0549539721', '73 Burrows Ave', 40);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Lloyd', 'Johnson', '33876146', to_date('16-03-2013', 'dd-mm-yyyy'), 'Lloyd', '0548160049', '2 Supernaw Drive', 24);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Vern', 'Hirsch', '57516147', to_date('11-02-2016', 'dd-mm-yyyy'), 'Vern', '0579514293', '32 Mann Road', 28);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Marina', 'Swinton', '71721148', to_date('14-08-2013', 'dd-mm-yyyy'), 'Marina', '0514807020', '84 Vienna', 5);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Bobbi', 'Klugh', '98635149', to_date('05-07-2012', 'dd-mm-yyyy'), 'Bobbi', '0548238757', '23 Ringwood Blvd', 31);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Joey', 'Whitwam', '82221150', to_date('11-01-2020', 'dd-mm-yyyy'), 'Joey', '0565644691', '44 Austin Street', 22);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Ray', 'Albright', '91713151', to_date('24-08-2016', 'dd-mm-yyyy'), 'Ray', '0545348995', '462 Hanks Ave', 34);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Donna', 'Diffie', '97969152', to_date('03-12-2013', 'dd-mm-yyyy'), 'Donna', '0564277351', '79 Jimmie Road', 17);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Luke', 'Carter', '62377153', to_date('27-12-2019', 'dd-mm-yyyy'), 'Luke', '0515355764', '21 Irving Ave', 23);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Charlton', 'McIntosh', '67435154', to_date('19-05-2014', 'dd-mm-yyyy'), 'Charlton', '0518302145', '48 Vanderbijlpark', 34);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Alec', 'Van Der Beek', '21731155', to_date('16-01-2015', 'dd-mm-yyyy'), 'Alec', '0509230811', '87 Lexington Drive', 8);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('April', 'Kershaw', '22312156', to_date('22-09-2021', 'dd-mm-yyyy'), 'April', '0529443317', '23rd Street', 11);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Javon', 'Pollack', '98111157', to_date('09-06-2017', 'dd-mm-yyyy'), 'Javon', '0513178637', '514 Reynolds Blvd', 50);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Rhona', 'Bracco', '52767158', to_date('28-02-2015', 'dd-mm-yyyy'), 'Rhona', '0556071365', '35 Austin Street', 15);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Ann', 'Moreno', '82994159', to_date('23-09-2020', 'dd-mm-yyyy'), 'Ann', '0503703186', '89 Park Ridge Road', 35);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Meredith', 'McFadden', '92386160', to_date('11-08-2013', 'dd-mm-yyyy'), 'Meredith', '0576726308', '75 Chapeco', 26);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Teena', 'Harrison', '54676161', to_date('23-09-2017', 'dd-mm-yyyy'), 'Teena', '0562881291', '93rd Street', 33);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Nigel', 'Pleasure', '98696162', to_date('02-12-2014', 'dd-mm-yyyy'), 'Nigel', '0548289463', '92nd Street', 12);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Josh', 'Hackman', '82559163', to_date('04-11-2019', 'dd-mm-yyyy'), 'Josh', '0519128108', '12nd Street', 35);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Terence', 'Stallone', '13641164', to_date('02-04-2017', 'dd-mm-yyyy'), 'Terence', '0568483368', '25 Prague Blvd', 49);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Patty', 'Levine', '83251165', to_date('29-09-2014', 'dd-mm-yyyy'), 'Patty', '0528300502', '91 Wade Drive', 18);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Shelby', 'Green', '95486166', to_date('27-09-2021', 'dd-mm-yyyy'), 'Shelby', '0516692943', '25 Colton Road', 14);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Davy', 'Geldof', '19747167', to_date('27-12-2019', 'dd-mm-yyyy'), 'Davy', '0543211645', '57 Irvine Drive', 26);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Harold', 'Finney', '55616168', to_date('17-10-2018', 'dd-mm-yyyy'), 'Harold', '0532785693', '73 Wood Drive', 23);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Pam', 'Hanley', '15442169', to_date('16-12-2014', 'dd-mm-yyyy'), 'Pam', '0553609353', '18 Loveland Road', 3);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Sally', 'King', '86641170', to_date('22-06-2020', 'dd-mm-yyyy'), 'Sally', '0569520154', '12 Kiefer Blvd', 25);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Christian', 'Emmett', '49849171', to_date('26-10-2021', 'dd-mm-yyyy'), 'Christian', '0512003906', '22 Mitchell Road', 6);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Colleen', 'Jolie', '73444172', to_date('30-01-2018', 'dd-mm-yyyy'), 'Colleen', '0554381289', '769 Tilda Drive', 10);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Solomon', 'Wheel', '62611173', to_date('10-11-2016', 'dd-mm-yyyy'), 'Solomon', '0539482677', '61 Dutton Road', 1);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Ron', 'Ponty', '83524174', to_date('29-05-2015', 'dd-mm-yyyy'), 'Ron', '0544438179', '236 Hewitt Street', 41);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Rik', 'Streep', '34617175', to_date('10-06-2012', 'dd-mm-yyyy'), 'Rik', '0509294097', '339 Highton Street', 41);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Spencer', 'Weir', '81192176', to_date('05-05-2020', 'dd-mm-yyyy'), 'Spencer', '0518574399', '32 Antonio Road', 3);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Linda', 'Tolkan', '29278177', to_date('06-05-2018', 'dd-mm-yyyy'), 'Linda', '0505444963', '4 Carrington', 38);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Curt', 'Charles', '96995178', to_date('29-01-2015', 'dd-mm-yyyy'), 'Curt', '0565357654', '61 Grand-mere Street', 32);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Matthew', 'Stiers', '31984179', to_date('04-07-2018', 'dd-mm-yyyy'), 'Matthew', '0559868442', '51 Kyle Drive', 7);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Patti', 'Emmett', '74866180', to_date('07-05-2014', 'dd-mm-yyyy'), 'Patti', '0576823180', '59 Tomlin Street', 43);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Carole', 'Nielsen', '35177181', to_date('14-03-2019', 'dd-mm-yyyy'), 'Carole', '0554310050', '41 Paisley Ave', 11);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Jude', 'Shearer', '57174182', to_date('05-05-2014', 'dd-mm-yyyy'), 'Jude', '0573878934', '96 Weiland Street', 45);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('CeCe', 'O''Connor', '35947183', to_date('03-08-2016', 'dd-mm-yyyy'), 'CeCe', '0508760887', '35 Winans Road', 1);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Davy', 'Dempsey', '61418184', to_date('24-04-2020', 'dd-mm-yyyy'), 'Davy', '0546183525', '487 Chappelle Street', 4);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Armand', 'Hatchet', '44579185', to_date('18-10-2015', 'dd-mm-yyyy'), 'Armand', '0549644747', '121 Harsum Street', 23);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Rebecca', 'Conners', '12938186', to_date('01-08-2021', 'dd-mm-yyyy'), 'Rebecca', '0573381790', '61 Schiavelli', 6);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Grace', 'Arquette', '35882187', to_date('03-08-2012', 'dd-mm-yyyy'), 'Grace', '0514830268', '824 Emily Road', 33);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Ozzy', 'Witherspoon', '73664188', to_date('04-08-2016', 'dd-mm-yyyy'), 'Ozzy', '0526964067', '84 Kuopio Road', 11);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Lin', 'Bening', '99774189', to_date('28-04-2013', 'dd-mm-yyyy'), 'Lin', '0567077501', '62nd Street', 8);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Buffy', 'Dawson', '59939190', to_date('19-07-2020', 'dd-mm-yyyy'), 'Buffy', '0559321199', '25 Silverdale Road', 1);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Max', 'Durning', '97447191', to_date('28-07-2020', 'dd-mm-yyyy'), 'Max', '0568661633', '80 Vega Drive', 20);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Humberto', 'Cazale', '53474192', to_date('11-01-2021', 'dd-mm-yyyy'), 'Humberto', '0566595071', '493 Dafoe Street', 16);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Jill', 'Brock', '44342193', to_date('26-11-2015', 'dd-mm-yyyy'), 'Jill', '0552330877', '98 Kuopio Blvd', 24);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Victoria', 'Hong', '73444194', to_date('20-10-2016', 'dd-mm-yyyy'), 'Victoria', '0529521595', '90 Laws Drive', 17);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Ralph', 'Mattea', '48533195', to_date('27-04-2013', 'dd-mm-yyyy'), 'Ralph', '0542260982', '64 Patillo Road', 14);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Rutger', 'Foley', '11331196', to_date('29-03-2012', 'dd-mm-yyyy'), 'Rutger', '0503921088', '16 Aiken Blvd', 48);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Randall', 'Broderick', '99895197', to_date('25-04-2016', 'dd-mm-yyyy'), 'Randall', '0503058686', '71 Rebecca', 45);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Boz', 'Blige', '41967198', to_date('02-09-2017', 'dd-mm-yyyy'), 'Boz', '0573120753', '6 Borgnine Road', 34);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Katrin', 'Armstrong', '27843199', to_date('16-04-2015', 'dd-mm-yyyy'), 'Katrin', '0522689238', '16 McDowell Road', 13);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Lindsey', 'Kutcher', '64137200', to_date('28-06-2016', 'dd-mm-yyyy'), 'Lindsey', '0564664333', '832 Zappacosta Ave', 9);
commit;
prompt 200 records committed...
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Kazem', 'Roy Parnell', '89188201', to_date('05-11-2015', 'dd-mm-yyyy'), 'Kazem', '0538792324', '97 Bogguss', 42);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('William', 'Quinlan', '88114202', to_date('27-02-2013', 'dd-mm-yyyy'), 'William', '0576417354', '41 Streep Road', 33);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Dionne', 'Kilmer', '27461203', to_date('19-03-2013', 'dd-mm-yyyy'), 'Dionne', '0513093867', '8 Thomas Street', 14);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Cate', 'Purefoy', '56985204', to_date('30-09-2014', 'dd-mm-yyyy'), 'Cate', '0543702154', '76 Herbie Street', 32);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Chely', 'Conroy', '16355205', to_date('06-12-2021', 'dd-mm-yyyy'), 'Chely', '0522099615', '784 Fraser Drive', 34);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Bradley', 'Child', '57739206', to_date('15-11-2014', 'dd-mm-yyyy'), 'Bradley', '0501915537', '3 Eder Blvd', 49);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Ricardo', 'Dench', '73239207', to_date('02-05-2019', 'dd-mm-yyyy'), 'Ricardo', '0518859076', '429 Belles Road', 36);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Jean', 'Idol', '26827208', to_date('17-08-2013', 'dd-mm-yyyy'), 'Jean', '0568917802', '99 Robinson Road', 37);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Rosco', 'Sarandon', '21413209', to_date('08-11-2021', 'dd-mm-yyyy'), 'Rosco', '0573534158', '61st Street', 18);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Daryle', 'Rea', '26891210', to_date('25-04-2012', 'dd-mm-yyyy'), 'Daryle', '0554539318', '14 Fonda Drive', 11);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Daniel', 'Hoffman', '58131211', to_date('12-12-2013', 'dd-mm-yyyy'), 'Daniel', '0564752097', '73 Lang Road', 34);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Noah', 'Vassar', '36879212', to_date('23-03-2016', 'dd-mm-yyyy'), 'Noah', '0526147003', '82nd Street', 33);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Crystal', 'Fisher', '43814213', to_date('08-03-2021', 'dd-mm-yyyy'), 'Crystal', '0567127863', '84 Hamilton Drive', 48);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Selma', 'Northam', '88413214', to_date('03-12-2017', 'dd-mm-yyyy'), 'Selma', '0537541703', '78 Fisher Road', 48);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Daryle', 'Nugent', '25545215', to_date('22-06-2012', 'dd-mm-yyyy'), 'Daryle', '0528807682', '91 Cyndi Road', 24);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Oded', 'Mifune', '63928216', to_date('27-03-2019', 'dd-mm-yyyy'), 'Oded', '0578485956', '47 Shirley Drive', 28);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Mekhi', 'Renfro', '41529217', to_date('08-02-2021', 'dd-mm-yyyy'), 'Mekhi', '0578205247', '50 Spiner Street', 16);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Roscoe', 'Lange', '78636218', to_date('08-10-2012', 'dd-mm-yyyy'), 'Roscoe', '0548473066', '777 Rispoli Road', 4);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Chely', 'Thornton', '81552219', to_date('07-12-2019', 'dd-mm-yyyy'), 'Chely', '0553225836', '2 Wen Drive', 44);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Jean', 'Bedelia', '57811220', to_date('12-01-2018', 'dd-mm-yyyy'), 'Jean', '0513226443', '49 Jeroen Road', 38);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Wang', 'Zane', '55492221', to_date('23-08-2017', 'dd-mm-yyyy'), 'Wang', '0523389610', '72 Platt Street', 11);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Maria', 'Colton', '33593222', to_date('15-07-2012', 'dd-mm-yyyy'), 'Maria', '0509108813', '68 Herzlia Street', 14);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Nina', 'Geldof', '35286223', to_date('26-09-2018', 'dd-mm-yyyy'), 'Nina', '0513198334', '644 Sutherland Stree', 45);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Samantha', 'Quinones', '19252224', to_date('06-10-2014', 'dd-mm-yyyy'), 'Samantha', '0559428485', '1 Trevino Street', 19);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Giovanni', 'Serbedzija', '81798225', to_date('17-03-2021', 'dd-mm-yyyy'), 'Giovanni', '0543133823', '49 Branch', 24);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Nick', 'Doucette', '73177226', to_date('10-12-2021', 'dd-mm-yyyy'), 'Nick', '0572913649', '83rd Street', 29);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Seth', 'Abraham', '72282227', to_date('25-02-2018', 'dd-mm-yyyy'), 'Seth', '0508004762', '306 Boorem Drive', 21);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Domingo', 'Cantrell', '76878228', to_date('14-01-2014', 'dd-mm-yyyy'), 'Domingo', '0576232351', '80 Hunter Drive', 28);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Vincent', 'Assante', '88763229', to_date('30-03-2018', 'dd-mm-yyyy'), 'Vincent', '0543285763', '73 Kylie Road', 26);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Colleen', 'Gellar', '13958230', to_date('02-10-2012', 'dd-mm-yyyy'), 'Colleen', '0579262453', '366 Vista Drive', 4);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Val', 'Wolf', '53852231', to_date('04-10-2015', 'dd-mm-yyyy'), 'Val', '0513554340', '73rd Street', 49);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Lucy', 'Foster', '35986232', to_date('30-09-2016', 'dd-mm-yyyy'), 'Lucy', '0503119967', '79 Treat Road', 42);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Curtis', 'Pfeiffer', '99283233', to_date('10-03-2021', 'dd-mm-yyyy'), 'Curtis', '0571862989', '14 Lawrence Drive', 8);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Pablo', 'Tierney', '43412234', to_date('18-08-2015', 'dd-mm-yyyy'), 'Pablo', '0527892495', '73 Mira', 8);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Whoopi', 'Atkins', '53437235', to_date('05-10-2016', 'dd-mm-yyyy'), 'Whoopi', '0508539171', '93 Charlie Street', 12);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Kathleen', 'Wakeling', '32519236', to_date('21-11-2013', 'dd-mm-yyyy'), 'Kathleen', '0518528157', '9 Bartlett Road', 28);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Treat', 'Womack', '54172237', to_date('23-12-2021', 'dd-mm-yyyy'), 'Treat', '0504378922', '73rd Street', 24);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Neve', 'Woods', '54252238', to_date('23-12-2021', 'dd-mm-yyyy'), 'Neve', '0573186643', '77 Jane', 42);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Sally', 'Levy', '95474239', to_date('24-10-2015', 'dd-mm-yyyy'), 'Sally', '0537767724', '21st Street', 8);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Wally', 'Bridges', '92746240', to_date('13-09-2018', 'dd-mm-yyyy'), 'Wally', '0574538315', '370 Brittany Drive', 40);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Rufus', 'Hopper', '79277241', to_date('23-11-2015', 'dd-mm-yyyy'), 'Rufus', '0577880812', '42nd Street', 12);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('George', 'Bacon', '75935242', to_date('31-10-2020', 'dd-mm-yyyy'), 'George', '0519812789', '69 Giovanni Road', 30);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Clint', 'Atkins', '95122243', to_date('19-11-2016', 'dd-mm-yyyy'), 'Clint', '0558178312', '99 Radney Road', 11);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Ralph', 'Stills', '77117244', to_date('15-01-2016', 'dd-mm-yyyy'), 'Ralph', '0572914652', '56 Brock Blvd', 20);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Rachel', 'Caldwell', '45949245', to_date('26-04-2012', 'dd-mm-yyyy'), 'Rachel', '0525716389', '82nd Street', 35);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Stephanie', 'Bailey', '43542246', to_date('30-07-2015', 'dd-mm-yyyy'), 'Stephanie', '0505947195', '60 Juliet Drive', 2);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Wesley', 'Cronin', '18327247', to_date('04-10-2018', 'dd-mm-yyyy'), 'Wesley', '0576433911', '66 Nigel Road', 28);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Rade', 'Conway', '27544248', to_date('25-10-2013', 'dd-mm-yyyy'), 'Rade', '0543713932', '77 Bailey Road', 6);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Kenneth', 'Huston', '61574249', to_date('05-02-2012', 'dd-mm-yyyy'), 'Kenneth', '0512803265', '76 Roanoke Street', 9);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Thelma', 'White', '21136250', to_date('24-01-2015', 'dd-mm-yyyy'), 'Thelma', '0549784020', '2 Fort Saskatchewan ', 18);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Michael', 'Creek', '61636251', to_date('21-10-2018', 'dd-mm-yyyy'), 'Michael', '0535281078', '26 Natacha Drive', 3);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Celia', 'Yulin', '56411252', to_date('18-01-2020', 'dd-mm-yyyy'), 'Celia', '0553806733', '340 Wade Street', 28);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Patricia', 'Paquin', '62427253', to_date('20-11-2019', 'dd-mm-yyyy'), 'Patricia', '0555875287', '85 Kenneth Ave', 38);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Adina', 'Theron', '56845254', to_date('09-07-2013', 'dd-mm-yyyy'), 'Adina', '0534153077', '2 Miko', 35);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Vendetta', 'Frakes', '33365255', to_date('22-09-2019', 'dd-mm-yyyy'), 'Vendetta', '0546172855', '82nd Street', 31);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Brad', 'Cooper', '34361256', to_date('12-11-2012', 'dd-mm-yyyy'), 'Brad', '0538166445', '17 Fornacette Blvd', 24);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Nicolas', 'Benson', '73535257', to_date('17-04-2019', 'dd-mm-yyyy'), 'Nicolas', '0506468354', '6 Nelson Road', 12);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Jonny Lee', 'McDonnell', '12737258', to_date('16-09-2014', 'dd-mm-yyyy'), 'Jonny Lee', '0572581098', '644 Milton Keynes Ro', 50);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Donna', 'Skerritt', '41815259', to_date('25-08-2013', 'dd-mm-yyyy'), 'Donna', '0508647124', '51 Salzburg Ave', 42);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Lois', 'Gano', '67585260', to_date('01-02-2015', 'dd-mm-yyyy'), 'Lois', '0509133316', '16 Vern Street', 48);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Ozzy', 'Sedaka', '39328261', to_date('21-04-2018', 'dd-mm-yyyy'), 'Ozzy', '0575138037', '88 Aidan Street', 32);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Ned', 'Meniketti', '36869262', to_date('20-08-2015', 'dd-mm-yyyy'), 'Ned', '0547643117', '16 Golden Road', 8);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Will', 'Benoit', '89622263', to_date('22-05-2014', 'dd-mm-yyyy'), 'Will', '0512805864', '81 Roberts Blvd', 17);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('James', 'Crouse', '37186264', to_date('07-09-2013', 'dd-mm-yyyy'), 'James', '0523940079', '23 Leoni Road', 12);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Nikka', 'Henriksen', '92281265', to_date('31-03-2012', 'dd-mm-yyyy'), 'Nikka', '0538054467', '97 Exeter Street', 1);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Victoria', 'Horton', '63558266', to_date('07-11-2012', 'dd-mm-yyyy'), 'Victoria', '0552013667', '909 Dean Road', 5);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Gordon', 'Clarkson', '51988267', to_date('27-02-2012', 'dd-mm-yyyy'), 'Gordon', '0548879707', '31 Quinn Drive', 16);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Clay', 'Copeland', '46743268', to_date('12-06-2019', 'dd-mm-yyyy'), 'Clay', '0539760230', '51 Colton Ave', 20);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Danni', 'Hiatt', '47672269', to_date('06-01-2021', 'dd-mm-yyyy'), 'Danni', '0539763120', '80 Szazhalombatta', 24);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('France', 'Wahlberg', '31729270', to_date('16-08-2019', 'dd-mm-yyyy'), 'France', '0505799255', '22 Horsham Drive', 19);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Gina', 'Tripplehorn', '99283271', to_date('08-04-2012', 'dd-mm-yyyy'), 'Gina', '0502986180', '23rd Street', 49);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Mindy', 'Tate', '37718272', to_date('26-02-2016', 'dd-mm-yyyy'), 'Mindy', '0506596793', '33rd Street', 33);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Lionel', 'Kershaw', '92335273', to_date('17-02-2018', 'dd-mm-yyyy'), 'Lionel', '0572455003', '65 Clayton Blvd', 10);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Giancarlo', 'Tempest', '73363274', to_date('31-05-2017', 'dd-mm-yyyy'), 'Giancarlo', '0555906928', '68 Cobbs Road', 45);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Clea', 'Fichtner', '33852275', to_date('15-10-2016', 'dd-mm-yyyy'), 'Clea', '0536298431', '780 Teena Road', 11);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Jon', 'Winger', '46457276', to_date('03-10-2019', 'dd-mm-yyyy'), 'Jon', '0525898117', '11 Hex Street', 26);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Gordie', 'Briscoe', '42829277', to_date('01-05-2016', 'dd-mm-yyyy'), 'Gordie', '0512310863', '84 Studi', 2);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Martha', 'Allison', '75864278', to_date('18-11-2021', 'dd-mm-yyyy'), 'Martha', '0536590099', '53rd Street', 27);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Thora', 'Linney', '43741279', to_date('29-03-2013', 'dd-mm-yyyy'), 'Thora', '0529688779', '970 Lahr Road', 20);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Jessica', 'Collins', '49715280', to_date('28-04-2013', 'dd-mm-yyyy'), 'Jessica', '0537917859', '7 Ruffalo Street', 16);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Ricardo', 'Garfunkel', '83241281', to_date('02-09-2017', 'dd-mm-yyyy'), 'Ricardo', '0535434179', '389 Jacksonville Str', 3);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Eileen', 'Arnold', '17188282', to_date('24-08-2018', 'dd-mm-yyyy'), 'Eileen', '0548365835', '43rd Street', 8);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Pablo', 'de Lancie', '81818283', to_date('16-05-2014', 'dd-mm-yyyy'), 'Pablo', '0551960360', '18 Fredericia Street', 30);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Ike', 'Curtis-Hall', '59541284', to_date('05-05-2017', 'dd-mm-yyyy'), 'Ike', '0517293492', '61 Dennis Ave', 29);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Julia', 'D''Onofrio', '59187285', to_date('15-09-2014', 'dd-mm-yyyy'), 'Julia', '0576195626', '19 Popper', 35);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Claude', 'Cleese', '98384286', to_date('19-12-2012', 'dd-mm-yyyy'), 'Claude', '0516645975', '58 Adina Road', 1);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Kenny', 'Winter', '26667287', to_date('31-08-2020', 'dd-mm-yyyy'), 'Kenny', '0514105492', '1 Lennix Street', 34);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Chely', 'Ronstadt', '42718288', to_date('16-07-2020', 'dd-mm-yyyy'), 'Chely', '0532131511', '72 Gallagher Ave', 24);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Deborah', 'Pitney', '25746289', to_date('02-07-2012', 'dd-mm-yyyy'), 'Deborah', '0552166394', '30 Root Road', 49);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Jon', 'Lewis', '88327290', to_date('23-11-2012', 'dd-mm-yyyy'), 'Jon', '0513654943', '56 Michaels', 15);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Graham', 'Bell', '47964291', to_date('02-03-2015', 'dd-mm-yyyy'), 'Graham', '0503954343', '31 Lithgow Drive', 22);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Taylor', 'Hannah', '15289292', to_date('02-10-2018', 'dd-mm-yyyy'), 'Taylor', '0503583151', '31st Street', 4);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Donna', 'Askew', '82546293', to_date('26-12-2021', 'dd-mm-yyyy'), 'Donna', '0553572117', '53 Bates', 11);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Curt', 'Wainwright', '56298294', to_date('15-04-2021', 'dd-mm-yyyy'), 'Curt', '0538484457', '43 Frampton Drive', 24);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Luis', 'Whitley', '25761295', to_date('16-03-2019', 'dd-mm-yyyy'), 'Luis', '0576178389', '96 Raitt Road', 15);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Kylie', 'McElhone', '65871296', to_date('08-07-2021', 'dd-mm-yyyy'), 'Kylie', '0547370185', '67 Morrison Road', 15);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Praga', 'Oldman', '49948297', to_date('09-12-2019', 'dd-mm-yyyy'), 'Praga', '0548941809', '21 Conroy Street', 44);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Jann', 'Harris', '94125298', to_date('01-01-2019', 'dd-mm-yyyy'), 'Jann', '0567454863', '363 Rosario Drive', 46);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Alannah', 'Carr', '62161299', to_date('14-10-2012', 'dd-mm-yyyy'), 'Alannah', '0538619439', '45 Moorer Drive', 1);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Christine', 'Zappacosta', '72844300', to_date('14-08-2017', 'dd-mm-yyyy'), 'Christine', '0516283776', '81st Street', 38);
commit;
prompt 300 records committed...
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Olympia', 'Torn', '35399301', to_date('21-05-2012', 'dd-mm-yyyy'), 'Olympia', '0577455097', '161 Mandrell Ave', 32);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Campbell', 'Jones', '47539302', to_date('02-06-2015', 'dd-mm-yyyy'), 'Campbell', '0566358650', '68 Laredo', 15);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Carol', 'Dillon', '92678303', to_date('18-01-2017', 'dd-mm-yyyy'), 'Carol', '0502209205', '94 Vai Blvd', 3);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Elizabeth', 'Bacharach', '45521304', to_date('23-10-2021', 'dd-mm-yyyy'), 'Elizabeth', '0536137784', '37 Faye Road', 13);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Ritchie', 'McDormand', '87311305', to_date('30-09-2021', 'dd-mm-yyyy'), 'Ritchie', '0551970985', '16 James Drive', 11);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Merle', 'Blair', '48233306', to_date('07-08-2021', 'dd-mm-yyyy'), 'Merle', '0558961330', '154 Rains Street', 20);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Edward', 'Ball', '61658307', to_date('16-02-2019', 'dd-mm-yyyy'), 'Edward', '0577826945', '71 Tooele Ave', 40);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Bridget', 'Sherman', '89735308', to_date('16-02-2020', 'dd-mm-yyyy'), 'Bridget', '0569564458', '54 Ruth Street', 12);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Scott', 'Danes', '14323309', to_date('21-10-2014', 'dd-mm-yyyy'), 'Scott', '0548797726', '83 Springfield Road', 7);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Sandra', 'Noseworthy', '23381310', to_date('27-01-2013', 'dd-mm-yyyy'), 'Sandra', '0531848390', '22 Kurtz Drive', 34);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Xander', 'Tomei', '16976311', to_date('20-11-2018', 'dd-mm-yyyy'), 'Xander', '0547440561', '66 Nanaimo Drive', 35);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Roger', 'Joli', '46886312', to_date('15-06-2021', 'dd-mm-yyyy'), 'Roger', '0522232054', '53 O''Hara Road', 4);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Lesley', 'Stevenson', '48498313', to_date('06-01-2017', 'dd-mm-yyyy'), 'Lesley', '0506388779', '291 Stiers Drive', 49);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Marina', 'Cetera', '89397314', to_date('30-08-2018', 'dd-mm-yyyy'), 'Marina', '0525778327', '53 Rooker Road', 43);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Cameron', 'Craig', '77721315', to_date('16-07-2016', 'dd-mm-yyyy'), 'Cameron', '0515738126', '29 Vassar Ave', 28);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Annette', 'Davis', '62956316', to_date('08-10-2018', 'dd-mm-yyyy'), 'Annette', '0507448376', '74 Rueben Ave', 48);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Whoopi', 'Borden', '98732317', to_date('27-03-2018', 'dd-mm-yyyy'), 'Whoopi', '0506282617', '40 Lecanto', 36);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Garland', 'Quaid', '28533318', to_date('10-05-2021', 'dd-mm-yyyy'), 'Garland', '0509108865', '28 Ball Street', 42);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Sona', 'McKennitt', '29348319', to_date('24-12-2017', 'dd-mm-yyyy'), 'Sona', '0548224414', '130 Vienna Drive', 23);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Tzi', 'Frost', '15522320', to_date('19-05-2020', 'dd-mm-yyyy'), 'Tzi', '0564386107', '8 Tsu Street', 4);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Walter', 'Starr', '18233321', to_date('09-08-2013', 'dd-mm-yyyy'), 'Walter', '0549947996', '328 Lauper Street', 6);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Natacha', 'Jones', '52211322', to_date('13-11-2014', 'dd-mm-yyyy'), 'Natacha', '0557730838', '571 Lillard Street', 39);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Franz', 'Checker', '32812323', to_date('12-01-2020', 'dd-mm-yyyy'), 'Franz', '0566877711', '889 Holden Street', 15);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Vince', 'Carrere', '47234324', to_date('24-10-2015', 'dd-mm-yyyy'), 'Vince', '0575359946', '35 Winans Ave', 16);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Ivan', 'Beckham', '65381325', to_date('23-01-2017', 'dd-mm-yyyy'), 'Ivan', '0533385280', '55 Cary Street', 32);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Delbert', 'Osmond', '36246326', to_date('03-12-2018', 'dd-mm-yyyy'), 'Delbert', '0556091232', '25 Albertina Drive', 45);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Carole', 'Van Damme', '25827327', to_date('05-07-2017', 'dd-mm-yyyy'), 'Carole', '0548324266', '2 Wallace Blvd', 26);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Christine', 'Curtis', '75928328', to_date('08-02-2013', 'dd-mm-yyyy'), 'Christine', '0564728429', '70 Hauer Blvd', 14);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Lennie', 'Loring', '31356329', to_date('30-12-2019', 'dd-mm-yyyy'), 'Lennie', '0568941558', '41 Jonny Lee', 35);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Lila', 'Suchet', '88244330', to_date('04-09-2015', 'dd-mm-yyyy'), 'Lila', '0555010851', '51 Hector', 40);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Fairuza', 'Epps', '23763331', to_date('06-12-2021', 'dd-mm-yyyy'), 'Fairuza', '0523827615', '63 Detmer Drive', 7);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Candice', 'Newman', '86719332', to_date('18-09-2020', 'dd-mm-yyyy'), 'Candice', '0576829928', '84 Sandra Street', 40);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Josh', 'Vaughn', '59124333', to_date('21-04-2013', 'dd-mm-yyyy'), 'Josh', '0564937380', '17 Massagno Drive', 41);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Millie', 'Boone', '25379334', to_date('23-03-2017', 'dd-mm-yyyy'), 'Millie', '0522481819', '48 Tempest Ave', 42);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Gailard', 'Scott', '48441335', to_date('15-10-2019', 'dd-mm-yyyy'), 'Gailard', '0564477309', '700 Yulin Road', 11);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Lara', 'Boothe', '87634336', to_date('05-12-2021', 'dd-mm-yyyy'), 'Lara', '0518353483', '57 Utsunomiya Ave', 37);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Talvin', 'Ponty', '12134337', to_date('29-06-2020', 'dd-mm-yyyy'), 'Talvin', '0543149410', '86 Santiago', 11);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Kirsten', 'Arquette', '16564338', to_date('02-09-2013', 'dd-mm-yyyy'), 'Kirsten', '0501922471', '72 Jonny Road', 42);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Lance', 'Anderson', '97214339', to_date('09-09-2012', 'dd-mm-yyyy'), 'Lance', '0549258169', '23 Weisberg', 50);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Remy', 'Griffith', '14232340', to_date('21-09-2018', 'dd-mm-yyyy'), 'Remy', '0542953028', '693 Parish Drive', 32);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Cole', 'Ermey', '68683341', to_date('15-05-2018', 'dd-mm-yyyy'), 'Cole', '0518459714', '84 Diffie Blvd', 19);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Geena', 'Foster', '49999342', to_date('28-10-2015', 'dd-mm-yyyy'), 'Geena', '0545729161', '35 Williams Ave', 48);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Benicio', 'Redgrave', '43243343', to_date('22-06-2016', 'dd-mm-yyyy'), 'Benicio', '0536744027', '68 Cesena Blvd', 46);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Jack', 'Basinger', '41664344', to_date('24-08-2012', 'dd-mm-yyyy'), 'Jack', '0548466233', '62nd Street', 46);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Ruth', 'Cantrell', '32239345', to_date('16-08-2016', 'dd-mm-yyyy'), 'Ruth', '0515972010', '61 Flanagan Road', 7);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Patricia', 'Ticotin', '19137346', to_date('05-05-2017', 'dd-mm-yyyy'), 'Patricia', '0528794372', '50 McCoy Road', 12);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('David', 'Shorter', '44961347', to_date('09-11-2015', 'dd-mm-yyyy'), 'David', '0553352974', '54 Burke Street', 49);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Will', 'Arquette', '67758348', to_date('29-07-2020', 'dd-mm-yyyy'), 'Will', '0535225143', '63 Santa Rosa Blvd', 36);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Cherry', 'Haynes', '56689349', to_date('20-08-2014', 'dd-mm-yyyy'), 'Cherry', '0506994092', '38 Hart Blvd', 18);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Angie', 'Begley', '84655350', to_date('18-01-2015', 'dd-mm-yyyy'), 'Angie', '0573502681', '688 Chapeco', 20);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Anthony', 'Carlton', '99838351', to_date('10-03-2019', 'dd-mm-yyyy'), 'Anthony', '0525261935', '36 Haynes Street', 38);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Elias', 'Snow', '58424352', to_date('07-08-2017', 'dd-mm-yyyy'), 'Elias', '0538017884', '12nd Street', 32);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Kristin', 'Avalon', '73813353', to_date('28-04-2021', 'dd-mm-yyyy'), 'Kristin', '0549312153', '91 Ismaning Drive', 18);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Timothy', 'Rankin', '33436354', to_date('16-11-2021', 'dd-mm-yyyy'), 'Timothy', '0546532330', '93rd Street', 32);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Trace', 'Fichtner', '84743355', to_date('21-08-2021', 'dd-mm-yyyy'), 'Trace', '0557086380', '100 Meerbusch Street', 21);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Natalie', 'Preston', '89461356', to_date('02-06-2018', 'dd-mm-yyyy'), 'Natalie', '0549490546', '84 Roger Drive', 46);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Demi', 'Astin', '65543357', to_date('20-11-2019', 'dd-mm-yyyy'), 'Demi', '0579822799', '17 Storrington Stree', 13);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Lindsey', 'Sossamon', '39532358', to_date('09-03-2015', 'dd-mm-yyyy'), 'Lindsey', '0546074995', '94 Arquette Drive', 20);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Gord', 'Tennison', '32553359', to_date('24-11-2015', 'dd-mm-yyyy'), 'Gord', '0535945876', '42 Macht Street', 37);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('CeCe', 'Cantrell', '48686360', to_date('30-01-2017', 'dd-mm-yyyy'), 'CeCe', '0549043582', '17 Ness Road', 24);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Marty', 'Malone', '32443361', to_date('12-01-2012', 'dd-mm-yyyy'), 'Marty', '0567558610', '61st Street', 18);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Rickie', 'Clark', '25335362', to_date('12-02-2013', 'dd-mm-yyyy'), 'Rickie', '0563753994', '22 Barnett Drive', 6);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Noah', 'Moraz', '63956363', to_date('22-07-2017', 'dd-mm-yyyy'), 'Noah', '0519683032', '698 Spector Road', 48);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Suzi', 'Gaines', '73879364', to_date('30-07-2017', 'dd-mm-yyyy'), 'Suzi', '0525992697', '80 San Mateo Ave', 50);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Diamond', 'Winwood', '93528365', to_date('01-05-2016', 'dd-mm-yyyy'), 'Diamond', '0565997187', '258 Rubinek Street', 42);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Marianne', 'Raye', '91724366', to_date('31-08-2013', 'dd-mm-yyyy'), 'Marianne', '0513911351', '786 Kim Road', 6);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Christian', 'Weiss', '22113367', to_date('23-06-2015', 'dd-mm-yyyy'), 'Christian', '0554407407', '1 Patricia Street', 20);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Walter', 'Diaz', '21529368', to_date('27-10-2021', 'dd-mm-yyyy'), 'Walter', '0517992514', '68 Ramis Street', 48);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Will', 'Palmer', '63718369', to_date('22-03-2018', 'dd-mm-yyyy'), 'Will', '0522382423', '5 Rosanna Road', 39);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Claire', 'Janney', '19113370', to_date('07-05-2017', 'dd-mm-yyyy'), 'Claire', '0567500612', '34 Emmerich Drive', 36);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Thora', 'Moody', '42243371', to_date('15-03-2020', 'dd-mm-yyyy'), 'Thora', '0506033896', '29 Assante Road', 11);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Rene', 'Rivers', '25983372', to_date('29-12-2017', 'dd-mm-yyyy'), 'Rene', '0563409197', '619 Armand Blvd', 7);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Chi', 'Irons', '73412373', to_date('15-11-2012', 'dd-mm-yyyy'), 'Chi', '0535882220', '33 Charlize Drive', 20);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Trick', 'Glenn', '83167374', to_date('29-11-2014', 'dd-mm-yyyy'), 'Trick', '0574796520', '776 Ricardo Drive', 29);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Jason', 'Gates', '76477375', to_date('19-11-2013', 'dd-mm-yyyy'), 'Jason', '0578505764', '880 Buenos Aires Dri', 12);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Carlene', 'Eckhart', '76466376', to_date('26-03-2012', 'dd-mm-yyyy'), 'Carlene', '0573601346', '47 Sparrows Point St', 22);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Judd', 'Rains', '19612377', to_date('31-12-2015', 'dd-mm-yyyy'), 'Judd', '0526213135', '79 Fierstein Road', 34);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Bette', 'Winwood', '22861378', to_date('04-10-2017', 'dd-mm-yyyy'), 'Bette', '0558084249', '16 Dourif Road', 11);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Kevin', 'Phoenix', '51672379', to_date('15-03-2013', 'dd-mm-yyyy'), 'Kevin', '0518143121', '87 Maidstone Street', 13);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Javon', 'Galecki', '48222380', to_date('08-02-2021', 'dd-mm-yyyy'), 'Javon', '0532007170', '862 Peter Street', 32);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Adrien', 'Squier', '93277381', to_date('08-10-2019', 'dd-mm-yyyy'), 'Adrien', '0512458283', '419 Kimball Street', 29);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Christine', 'Lewis', '43533382', to_date('14-08-2020', 'dd-mm-yyyy'), 'Christine', '0546683115', '626 Dreieich Drive', 19);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Kimberly', 'Starr', '19637383', to_date('31-07-2016', 'dd-mm-yyyy'), 'Kimberly', '0526653276', '77 Shizuoka Drive', 9);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Ivan', 'Rauhofer', '44878384', to_date('24-08-2016', 'dd-mm-yyyy'), 'Ivan', '0519046626', '12 Rio Street', 4);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Linda', 'Iglesias', '36796385', to_date('12-08-2016', 'dd-mm-yyyy'), 'Linda', '0535254691', '91 Murray Street', 38);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Chazz', 'Merchant', '57423386', to_date('02-05-2016', 'dd-mm-yyyy'), 'Chazz', '0502690333', '73 Doug Drive', 26);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Alana', 'Navarro', '78748387', to_date('10-04-2014', 'dd-mm-yyyy'), 'Alana', '0544519952', '23 Bracknell Drive', 32);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Temuera', 'Franks', '32978388', to_date('18-09-2021', 'dd-mm-yyyy'), 'Temuera', '0569330503', '18 Wallace Street', 25);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Bette', 'Makeba', '47431389', to_date('09-06-2018', 'dd-mm-yyyy'), 'Bette', '0513152521', '27 Delafield Street', 22);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Chrissie', 'Torn', '62588390', to_date('30-04-2017', 'dd-mm-yyyy'), 'Chrissie', '0562752000', '30 Aida Street', 13);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Thomas', 'Daniels', '64487391', to_date('23-10-2021', 'dd-mm-yyyy'), 'Thomas', '0536633016', '100 Feliciano Road', 15);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Woody', 'Blair', '55951392', to_date('01-11-2015', 'dd-mm-yyyy'), 'Woody', '0503855211', '3 Gailard Road', 49);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Freddy', 'Singletary', '24417393', to_date('14-08-2021', 'dd-mm-yyyy'), 'Freddy', '0565323108', '41 Sandra Street', 14);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Harold', 'Borgnine', '17982394', to_date('23-07-2013', 'dd-mm-yyyy'), 'Harold', '0564969105', '498 von Sydow Road', 19);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Brent', 'Venora', '97419395', to_date('16-03-2014', 'dd-mm-yyyy'), 'Brent', '0514555309', '75 Conley Drive', 42);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Ronny', 'Mathis', '51821396', to_date('09-12-2013', 'dd-mm-yyyy'), 'Ronny', '0535997930', '26 Hall Drive', 48);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Adina', 'Rockwell', '58355397', to_date('24-06-2015', 'dd-mm-yyyy'), 'Adina', '0528558888', '63 Praga Drive', 6);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Austin', 'Navarro', '79429398', to_date('07-06-2012', 'dd-mm-yyyy'), 'Austin', '0545446688', '79 Richmond Hill', 13);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('France', 'Beatty', '97428399', to_date('04-08-2014', 'dd-mm-yyyy'), 'France', '0542428036', '69 Rhames Street', 40);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Sheena', 'Doucette', '54292400', to_date('27-11-2021', 'dd-mm-yyyy'), 'Sheena', '0515443055', '94 Stamp Street', 43);
commit;
prompt 400 records committed...
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Maggie', 'Branagh', '65272401', to_date('09-04-2019', 'dd-mm-yyyy'), 'Maggie', '0548930103', '40 Holeman Street', 20);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Leonardo', 'Van Der Beek', '59854402', to_date('02-11-2016', 'dd-mm-yyyy'), 'Leonardo', '0536523509', '29 Kleinenberg Ave', 8);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Trace', 'Maxwell', '46419403', to_date('12-09-2012', 'dd-mm-yyyy'), 'Trace', '0544583391', '20 Mortensen Road', 17);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Night', 'Sevenfold', '34823404', to_date('13-03-2020', 'dd-mm-yyyy'), 'Night', '0572067946', '1000 Eric', 40);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Jared', 'Hanks', '26224405', to_date('28-07-2018', 'dd-mm-yyyy'), 'Jared', '0526135838', '70 Solon Road', 34);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Samantha', 'Diddley', '77859406', to_date('27-02-2017', 'dd-mm-yyyy'), 'Samantha', '0507089375', '80 Arnold Drive', 47);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Fisher', 'Coolidge', '53377407', to_date('22-02-2019', 'dd-mm-yyyy'), 'Fisher', '0567119270', '47 Dern Road', 4);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Fairuza', 'Michael', '93743408', to_date('12-10-2015', 'dd-mm-yyyy'), 'Fairuza', '0529512258', '96 Harary Road', 13);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Terence', 'Heslov', '41955409', to_date('16-06-2016', 'dd-mm-yyyy'), 'Terence', '0515743134', '22 Natacha Street', 18);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Thelma', 'McCoy', '46327410', to_date('17-02-2019', 'dd-mm-yyyy'), 'Thelma', '0529864198', '775 McKennitt Ave', 48);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Donna', 'Dillon', '91665411', to_date('03-11-2020', 'dd-mm-yyyy'), 'Donna', '0516909462', '560 Addy Street', 28);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Raul', 'Holden', '48429412', to_date('07-01-2015', 'dd-mm-yyyy'), 'Raul', '0513644422', '524 Lesley Road', 43);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Allan', 'Nakai', '93851413', to_date('12-12-2019', 'dd-mm-yyyy'), 'Allan', '0518577231', '20 Gere Road', 2);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Adam', 'Clooney', '41775414', to_date('06-08-2016', 'dd-mm-yyyy'), 'Adam', '0563662267', '27 Tate Drive', 5);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Remy', 'Jackson', '93759415', to_date('14-02-2019', 'dd-mm-yyyy'), 'Remy', '0552922792', '42nd Street', 6);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Katie', 'D''Onofrio', '39795416', to_date('19-10-2021', 'dd-mm-yyyy'), 'Katie', '0563259752', '46 Akita Road', 21);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Rebeka', 'Ronstadt', '22254417', to_date('06-04-2014', 'dd-mm-yyyy'), 'Rebeka', '0504866866', '34 Mifune Street', 13);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Franco', 'Mollard', '61785418', to_date('22-01-2015', 'dd-mm-yyyy'), 'Franco', '0507426230', '118 Pitney Street', 21);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Lisa', 'Fraser', '68522419', to_date('22-11-2017', 'dd-mm-yyyy'), 'Lisa', '0537694479', '82 Brugherio Street', 30);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Pete', 'Ripley', '12456420', to_date('31-01-2016', 'dd-mm-yyyy'), 'Pete', '0517611292', '16 Denis', 30);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Christmas', 'Lovitz', '49984421', to_date('13-03-2016', 'dd-mm-yyyy'), 'Christmas', '0534480490', '544 Kitty Drive', 32);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Johnnie', 'Raitt', '16889422', to_date('01-04-2018', 'dd-mm-yyyy'), 'Johnnie', '0556665726', '76 Keith Road', 12);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Juliet', 'Emmett', '51857423', to_date('27-07-2017', 'dd-mm-yyyy'), 'Juliet', '0517273626', '89 Hanover Road', 27);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Alicia', 'Craddock', '21635424', to_date('29-08-2015', 'dd-mm-yyyy'), 'Alicia', '0513790791', '98 Pamela Blvd', 21);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Toni', 'Coverdale', '17773425', to_date('19-05-2019', 'dd-mm-yyyy'), 'Toni', '0536446511', '36 Sanders Street', 7);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Sharon', 'Zeta-Jones', '88764426', to_date('18-07-2019', 'dd-mm-yyyy'), 'Sharon', '0506283758', '100 Jay Drive', 42);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Ben', 'Polito', '82151427', to_date('06-09-2014', 'dd-mm-yyyy'), 'Ben', '0518127802', '43 Mitchell Road', 46);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Jarvis', 'Polito', '31614428', to_date('05-11-2018', 'dd-mm-yyyy'), 'Jarvis', '0517275846', '80 Sinead', 27);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('France', 'Williamson', '79176429', to_date('11-08-2020', 'dd-mm-yyyy'), 'France', '0546553393', '632 Hewett Road', 27);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Bret', 'Kadison', '76637430', to_date('07-04-2017', 'dd-mm-yyyy'), 'Bret', '0574915892', '952 Scott Road', 16);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('LeVar', 'Warburton', '99997431', to_date('17-01-2012', 'dd-mm-yyyy'), 'LeVar', '0569576050', '79 Oliver Ave', 23);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Patti', 'Lindo', '19613432', to_date('14-05-2019', 'dd-mm-yyyy'), 'Patti', '0553742545', '73 Cartlidge Street', 5);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Yaphet', 'Frakes', '97257433', to_date('19-12-2019', 'dd-mm-yyyy'), 'Yaphet', '0579445742', '428 Oak park Road', 15);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Jeffrey', 'Cantrell', '15896434', to_date('30-12-2015', 'dd-mm-yyyy'), 'Jeffrey', '0525073146', '65 Conway Street', 20);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Robby', 'Bale', '34915435', to_date('11-07-2019', 'dd-mm-yyyy'), 'Robby', '0546048357', '13 Annandale Blvd', 9);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Cheech', 'Reinhold', '56276436', to_date('12-03-2012', 'dd-mm-yyyy'), 'Cheech', '0564482178', '95 Toni Blvd', 28);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Faye', 'Presley', '34738437', to_date('17-04-2013', 'dd-mm-yyyy'), 'Faye', '0516715724', '52 Cape town Ave', 43);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Lou', 'Lewis', '56314438', to_date('11-06-2015', 'dd-mm-yyyy'), 'Lou', '0535369983', '58 Pitney Road', 47);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Jackson', 'Archer', '68978439', to_date('07-09-2012', 'dd-mm-yyyy'), 'Jackson', '0567495041', '12 Askew Blvd', 6);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Parker', 'Rhodes', '72238440', to_date('19-07-2013', 'dd-mm-yyyy'), 'Parker', '0534083414', '4 Richardson Ave', 43);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Sarah', 'Hong', '18643441', to_date('25-07-2015', 'dd-mm-yyyy'), 'Sarah', '0535589002', '41 Idle Street', 32);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Bill', 'Del Toro', '73283442', to_date('18-06-2012', 'dd-mm-yyyy'), 'Bill', '0517231407', '79 Berlin Drive', 45);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Sharon', 'Williamson', '78743443', to_date('19-02-2017', 'dd-mm-yyyy'), 'Sharon', '0508699999', '17 Betty Road', 45);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Adina', 'Irons', '38524444', to_date('29-06-2018', 'dd-mm-yyyy'), 'Adina', '0534373652', '49 Charlie Road', 40);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Dennis', 'Marx', '49743445', to_date('19-12-2016', 'dd-mm-yyyy'), 'Dennis', '0577968995', '797 Neustadt Road', 32);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Gina', 'Danger', '98223446', to_date('15-01-2017', 'dd-mm-yyyy'), 'Gina', '0579079021', '9 Buddy Ave', 23);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Bernard', 'Biel', '64283447', to_date('06-12-2017', 'dd-mm-yyyy'), 'Bernard', '0506423565', '55 Kyoto Street', 23);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Gates', 'Pleasence', '45868448', to_date('21-02-2013', 'dd-mm-yyyy'), 'Gates', '0547806585', '81 Liquid Ave', 17);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Gilbert', 'Keener', '57243449', to_date('07-10-2017', 'dd-mm-yyyy'), 'Gilbert', '0553344816', '779 Theron Street', 26);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Liv', 'Hannah', '56333450', to_date('29-10-2017', 'dd-mm-yyyy'), 'Liv', '0513799273', '95 Bonneville Street', 31);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Maggie', 'Conlee', '69147451', to_date('21-07-2018', 'dd-mm-yyyy'), 'Maggie', '0568425658', '4 O''Sullivan Blvd', 4);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Don', 'Bush', '26725452', to_date('30-12-2020', 'dd-mm-yyyy'), 'Don', '0554775763', '87 Fariq Blvd', 7);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Joshua', 'Warburton', '91829453', to_date('27-07-2012', 'dd-mm-yyyy'), 'Joshua', '0571968042', '24 Columbia Street', 47);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Bo', 'Smith', '17211454', to_date('05-05-2014', 'dd-mm-yyyy'), 'Bo', '0533434988', '25 Neeson Ave', 32);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Coley', 'Norton', '57941455', to_date('10-12-2013', 'dd-mm-yyyy'), 'Coley', '0555574823', '43 McCready Street', 48);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Trini', 'Alda', '65325456', to_date('23-05-2020', 'dd-mm-yyyy'), 'Trini', '0529125257', '379 Penn Drive', 33);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Matthew', 'Woodward', '49487457', to_date('15-01-2019', 'dd-mm-yyyy'), 'Matthew', '0529964669', '51 Blige Street', 30);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Franz', 'Madsen', '62334458', to_date('19-04-2019', 'dd-mm-yyyy'), 'Franz', '0573913206', '95 Sweeney Ave', 42);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Elias', 'Goldwyn', '61731459', to_date('07-08-2012', 'dd-mm-yyyy'), 'Elias', '0517324333', '17 Warren Street', 28);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Burt', 'Smurfit', '38658460', to_date('25-10-2016', 'dd-mm-yyyy'), 'Burt', '0549217413', '14 Charles Road', 25);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Jonatha', 'Paige', '68644461', to_date('25-01-2015', 'dd-mm-yyyy'), 'Jonatha', '0567384959', '258 Clinton Street', 11);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Trick', 'Kinski', '96152462', to_date('23-01-2016', 'dd-mm-yyyy'), 'Trick', '0507425545', '92nd Street', 20);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Rachid', 'Borden', '32348463', to_date('05-03-2021', 'dd-mm-yyyy'), 'Rachid', '0562106653', '10 Rozenburg Road', 23);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Wang', 'Schwimmer', '99646464', to_date('03-06-2015', 'dd-mm-yyyy'), 'Wang', '0543184085', '174 Halfway house Bl', 46);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Lauren', 'Speaks', '97778465', to_date('01-10-2014', 'dd-mm-yyyy'), 'Lauren', '0515611293', '29 Maintenon Drive', 13);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Eugene', 'Neeson', '46685466', to_date('24-04-2013', 'dd-mm-yyyy'), 'Eugene', '0507931335', '24 Stanford Road', 17);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Hilton', 'Christie', '52473467', to_date('07-04-2021', 'dd-mm-yyyy'), 'Hilton', '0525673191', '59 Temuera Street', 16);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Tal', 'Wine', '66899468', to_date('18-09-2014', 'dd-mm-yyyy'), 'Tal', '0547186749', '441 Jesse Street', 33);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Neil', 'De Niro', '15477469', to_date('11-05-2019', 'dd-mm-yyyy'), 'Neil', '0574166743', '62nd Street', 25);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Joshua', 'Def', '15716470', to_date('16-04-2013', 'dd-mm-yyyy'), 'Joshua', '0543334670', '14 Hunter Street', 3);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Nils', 'Michael', '43963471', to_date('19-07-2013', 'dd-mm-yyyy'), 'Nils', '0576229347', '100 Lbeck Street', 46);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Julie', 'Katt', '29565472', to_date('02-05-2019', 'dd-mm-yyyy'), 'Julie', '0575537798', '70 Herdecke Road', 25);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Marc', 'Coe', '16147473', to_date('28-11-2015', 'dd-mm-yyyy'), 'Marc', '0548413429', '62nd Street', 5);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Judi', 'Phoenix', '89116474', to_date('23-02-2014', 'dd-mm-yyyy'), 'Judi', '0558618671', '37 Potter Road', 13);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Powers', 'Griffin', '36299475', to_date('11-01-2020', 'dd-mm-yyyy'), 'Powers', '0554928448', '8 Ethan Street', 11);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Candice', 'Cusack', '91384476', to_date('12-01-2014', 'dd-mm-yyyy'), 'Candice', '0525064068', '45 Doncaster Street', 9);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Judge', 'Moore', '46761477', to_date('31-01-2018', 'dd-mm-yyyy'), 'Judge', '0565233597', '772 Moe Blvd', 10);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Frederic', 'Atkins', '37611478', to_date('03-09-2016', 'dd-mm-yyyy'), 'Frederic', '0533960729', '94 Stuermer Street', 19);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('James', 'Kinney', '81634479', to_date('06-04-2020', 'dd-mm-yyyy'), 'James', '0576398220', '569 Istanbul Ave', 26);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Martha', 'Gray', '77891480', to_date('06-10-2014', 'dd-mm-yyyy'), 'Martha', '0576412742', '63 Canberra Street', 46);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Rutger', 'Playboys', '34169481', to_date('26-09-2018', 'dd-mm-yyyy'), 'Rutger', '0535389591', '64 Royersford Drive', 31);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Randy', 'Dickinson', '82385482', to_date('25-09-2013', 'dd-mm-yyyy'), 'Randy', '0555864232', '99 Randy Drive', 3);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Trini', 'Hawthorne', '35799483', to_date('06-01-2015', 'dd-mm-yyyy'), 'Trini', '0515942302', '58 Alex Drive', 18);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Hookah', 'Lachey', '69675484', to_date('03-03-2014', 'dd-mm-yyyy'), 'Hookah', '0513462084', '50 Laguna Bbeach Str', 11);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Arturo', 'Keaton', '43364485', to_date('15-02-2013', 'dd-mm-yyyy'), 'Arturo', '0535167750', '62 Torn Street', 5);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Radney', 'Paxton', '17941486', to_date('15-04-2016', 'dd-mm-yyyy'), 'Radney', '0514635849', '23 Salt Lake City St', 19);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Hal', 'Dale', '58629487', to_date('21-12-2016', 'dd-mm-yyyy'), 'Hal', '0536669878', '8 Martin Ave', 5);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Marc', 'Azaria', '93719488', to_date('26-03-2014', 'dd-mm-yyyy'), 'Marc', '0564366931', '994 Irkutsk Road', 29);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Colm', 'Heslov', '66987489', to_date('23-11-2018', 'dd-mm-yyyy'), 'Colm', '0576518637', '51 Tal Ave', 28);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Rebeka', 'Finn', '52123490', to_date('06-09-2015', 'dd-mm-yyyy'), 'Rebeka', '0546324385', '20 Allan Ave', 21);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Owen', 'Gibbons', '57815491', to_date('02-11-2021', 'dd-mm-yyyy'), 'Owen', '0506469725', '62 Bruce Blvd', 41);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Carlos', 'Gallant', '55647492', to_date('04-06-2013', 'dd-mm-yyyy'), 'Carlos', '0549254967', '658 Chestnut Road', 19);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Yaphet', 'Washington', '65871493', to_date('22-03-2021', 'dd-mm-yyyy'), 'Yaphet', '0506417253', '71 Saxon Road', 15);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Liv', 'Orbit', '18847494', to_date('28-09-2012', 'dd-mm-yyyy'), 'Liv', '0567316662', '41st Street', 20);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Thomas', 'Gleeson', '16396495', to_date('29-09-2013', 'dd-mm-yyyy'), 'Thomas', '0569560242', '21st Street', 5);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Crispin', 'Colton', '98139496', to_date('09-06-2013', 'dd-mm-yyyy'), 'Crispin', '0526925279', '81 Weiss Street', 44);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Carrie', 'Schneider', '75116497', to_date('12-02-2012', 'dd-mm-yyyy'), 'Carrie', '0503227764', '91st Street', 1);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Lari', 'Eckhart', '45444498', to_date('14-01-2015', 'dd-mm-yyyy'), 'Lari', '0507657311', '588 Cummings Ave', 42);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Nikka', 'Pride', '16651499', to_date('05-09-2019', 'dd-mm-yyyy'), 'Nikka', '0553304520', '110 Drew Drive', 34);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Teri', 'Posey', '98224500', to_date('01-11-2021', 'dd-mm-yyyy'), 'Teri', '0526335033', '728 Milla Street', 43);
commit;
prompt 500 records committed...
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Larry', 'Pierce', '41421501', to_date('28-09-2018', 'dd-mm-yyyy'), 'Larry', '0557631420', '14 Milpitas Street', 11);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Jean-Luc', 'Ferrer', '73585502', to_date('18-11-2013', 'dd-mm-yyyy'), 'Jean-Luc', '0502913191', '435 Costello Drive', 2);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Danni', 'Feliciano', '71992503', to_date('17-12-2020', 'dd-mm-yyyy'), 'Danni', '0518892659', '82 Chely Blvd', 28);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Jeff', 'Liu', '48988504', to_date('07-11-2013', 'dd-mm-yyyy'), 'Jeff', '0574160186', '31 Lavigne Road', 6);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Ming-Na', 'Tinsley', '39164505', to_date('04-08-2017', 'dd-mm-yyyy'), 'Ming-Na', '0535849912', '86 Slater Street', 42);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Cathy', 'Waite', '55283506', to_date('15-09-2014', 'dd-mm-yyyy'), 'Cathy', '0507031026', '88 Schwarzenegger St', 36);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Nina', 'Prowse', '46822507', to_date('28-03-2017', 'dd-mm-yyyy'), 'Nina', '0533965872', '78 Squier Blvd', 26);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Cameron', 'Rossellini', '15196508', to_date('17-04-2013', 'dd-mm-yyyy'), 'Cameron', '0566678500', '39 Hudson Street', 45);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Diamond', 'McDonald', '79422509', to_date('09-11-2016', 'dd-mm-yyyy'), 'Diamond', '0568796931', '7 Glen Road', 6);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Connie', 'Henriksen', '41926510', to_date('10-11-2019', 'dd-mm-yyyy'), 'Connie', '0559176373', '96 Stallone Road', 15);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Franz', 'Makeba', '28481511', to_date('21-06-2016', 'dd-mm-yyyy'), 'Franz', '0556512742', '100 Jean Street', 49);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Peter', 'Spiner', '83381512', to_date('15-05-2020', 'dd-mm-yyyy'), 'Peter', '0545584006', '67 Runcorn', 38);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Kevn', 'Sampson', '31475513', to_date('06-02-2021', 'dd-mm-yyyy'), 'Kevn', '0574903197', '335 Herne Street', 35);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Ming-Na', 'Child', '55899514', to_date('14-10-2019', 'dd-mm-yyyy'), 'Ming-Na', '0515731046', '337 Maxwell Drive', 43);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Avenged', 'Belushi', '16693515', to_date('13-03-2017', 'dd-mm-yyyy'), 'Avenged', '0512669668', '73rd Street', 9);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Shannon', 'Clarkson', '44778516', to_date('27-01-2014', 'dd-mm-yyyy'), 'Shannon', '0514829181', '90 Chorzףw Street', 2);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Armin', 'Patrick', '29691517', to_date('05-12-2013', 'dd-mm-yyyy'), 'Armin', '0545748250', '66 Roma Road', 44);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Ramsey', 'Culkin', '48165518', to_date('18-07-2017', 'dd-mm-yyyy'), 'Ramsey', '0562998430', '36 Hagar Street', 11);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Angelina', 'Crystal', '74715519', to_date('03-03-2018', 'dd-mm-yyyy'), 'Angelina', '0535590709', '72nd Street', 28);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Trini', 'Eckhart', '67811520', to_date('26-06-2020', 'dd-mm-yyyy'), 'Trini', '0538740619', '60 Nicholas Blvd', 47);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Spencer', 'Stoltz', '25657521', to_date('03-02-2020', 'dd-mm-yyyy'), 'Spencer', '0554004370', '70 Kloten Blvd', 29);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('George', 'Maxwell', '94455522', to_date('25-12-2013', 'dd-mm-yyyy'), 'George', '0559986352', '440 Kiefer Road', 41);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Roy', 'Watson', '48743523', to_date('11-02-2016', 'dd-mm-yyyy'), 'Roy', '0578714606', '908 Donald Street', 20);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Winona', 'Fierstein', '64884524', to_date('21-02-2013', 'dd-mm-yyyy'), 'Winona', '0524033151', '990 Williamson Ave', 27);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Lynette', 'Cheadle', '67235525', to_date('07-08-2018', 'dd-mm-yyyy'), 'Lynette', '0527848126', '7 Gough Ave', 15);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Joaquim', 'Torres', '28815526', to_date('11-07-2019', 'dd-mm-yyyy'), 'Joaquim', '0532266258', '93 Posener Road', 42);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Lindsay', 'McGriff', '96138527', to_date('27-04-2012', 'dd-mm-yyyy'), 'Lindsay', '0575390090', '23rd Street', 44);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Nicholas', 'Palmieri', '46197528', to_date('30-04-2019', 'dd-mm-yyyy'), 'Nicholas', '0517666226', '23 Huntington Beach ', 6);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Alfred', 'Fogerty', '69593529', to_date('25-10-2017', 'dd-mm-yyyy'), 'Alfred', '0569112797', '33 Kochi Road', 36);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Rueben', 'Farrow', '23264530', to_date('16-10-2012', 'dd-mm-yyyy'), 'Rueben', '0508752030', '99 Rowlands Blvd', 11);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Stewart', 'Cherry', '41942531', to_date('28-02-2015', 'dd-mm-yyyy'), 'Stewart', '0529540702', '83 Gena Street', 15);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Seann', 'Berkeley', '69524532', to_date('02-02-2015', 'dd-mm-yyyy'), 'Seann', '0523798608', '41 Pressly Blvd', 13);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Miriam', 'Gatlin', '78419533', to_date('17-03-2015', 'dd-mm-yyyy'), 'Miriam', '0579308145', '512 Lynskey Road', 40);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Bonnie', 'Schneider', '97451534', to_date('31-01-2019', 'dd-mm-yyyy'), 'Bonnie', '0525887886', '85 Osborne Drive', 13);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Chalee', 'Bruce', '92933535', to_date('14-12-2019', 'dd-mm-yyyy'), 'Chalee', '0559595062', '86 Susan Ave', 47);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Christina', 'Owen', '85446536', to_date('26-10-2014', 'dd-mm-yyyy'), 'Christina', '0556270115', '72 Bandy Blvd', 15);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Rodney', 'Hayek', '57753537', to_date('04-12-2016', 'dd-mm-yyyy'), 'Rodney', '0528488444', '17 Holliday Ave', 42);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Ali', 'Mantegna', '66928538', to_date('19-03-2017', 'dd-mm-yyyy'), 'Ali', '0528585471', '91 Lubbock Drive', 28);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Hal', 'Wiedlin', '29281539', to_date('25-03-2014', 'dd-mm-yyyy'), 'Hal', '0519408899', '26 Michaels Ave', 2);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Cate', 'Amos', '61525540', to_date('29-02-2016', 'dd-mm-yyyy'), 'Cate', '0533972187', '72 Goldie Road', 2);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Wade', 'Shue', '42469541', to_date('23-12-2020', 'dd-mm-yyyy'), 'Wade', '0514849306', '88 Redondo beach Roa', 1);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Jamie', 'Rossellini', '25478542', to_date('28-01-2012', 'dd-mm-yyyy'), 'Jamie', '0543181942', '94 Maura Drive', 8);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Irene', 'Arkenstone', '28917543', to_date('11-04-2015', 'dd-mm-yyyy'), 'Irene', '0568083773', '14 Hector', 18);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Frederic', 'Utada', '35579544', to_date('22-02-2016', 'dd-mm-yyyy'), 'Frederic', '0576065592', '94 Laurence Road', 16);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Karen', 'Spacey', '39491545', to_date('20-02-2021', 'dd-mm-yyyy'), 'Karen', '0553399756', '22nd Street', 28);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Diamond', 'Jeter', '93954546', to_date('28-09-2013', 'dd-mm-yyyy'), 'Diamond', '0567823295', '3 Carradine Drive', 38);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Vertical', 'Shand', '39877547', to_date('06-09-2018', 'dd-mm-yyyy'), 'Vertical', '0533813725', '19 Chloe Street', 32);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Maria', 'Sirtis', '23859548', to_date('27-06-2020', 'dd-mm-yyyy'), 'Maria', '0527571873', '54 Byrd Road', 28);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Jill', 'Crewson', '72452549', to_date('14-10-2012', 'dd-mm-yyyy'), 'Jill', '0503118608', '81 Cervine Street', 31);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Andrea', 'Whitmore', '53223550', to_date('21-10-2012', 'dd-mm-yyyy'), 'Andrea', '0506182292', '477 Playboys Ave', 26);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Simon', 'Byrne', '99816551', to_date('15-07-2012', 'dd-mm-yyyy'), 'Simon', '0574856605', '74 Patty Road', 28);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Shannyn', 'Choice', '81887552', to_date('08-04-2017', 'dd-mm-yyyy'), 'Shannyn', '0558581921', '35 Pelvic Road', 37);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Tanya', 'Blanchett', '75793553', to_date('17-09-2012', 'dd-mm-yyyy'), 'Tanya', '0515286554', '96 Purefoy Street', 17);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Neil', 'Hanks', '54915554', to_date('25-11-2017', 'dd-mm-yyyy'), 'Neil', '0569736346', '92 Kitty Street', 46);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Charles', 'Paul', '46669555', to_date('01-11-2020', 'dd-mm-yyyy'), 'Charles', '0539327473', '81 Tsettos Ave', 32);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Grant', 'Newton', '36915556', to_date('11-02-2012', 'dd-mm-yyyy'), 'Grant', '0529164932', '61st Street', 24);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Eugene', 'Laws', '25439557', to_date('25-08-2016', 'dd-mm-yyyy'), 'Eugene', '0535869427', '93 William Road', 11);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Joanna', 'Parish', '33562558', to_date('23-09-2014', 'dd-mm-yyyy'), 'Joanna', '0506138923', '336 Hobson', 10);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Jody', 'Aglukark', '95896559', to_date('02-08-2012', 'dd-mm-yyyy'), 'Jody', '0552815956', '66 Frederic Blvd', 30);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Denise', 'Ali', '17157560', to_date('14-06-2019', 'dd-mm-yyyy'), 'Denise', '0515125229', '100 Lecanto Ave', 4);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Crystal', 'Meyer', '48453561', to_date('03-07-2016', 'dd-mm-yyyy'), 'Crystal', '0577038049', '932 Oro', 18);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Shawn', 'Begley', '22817562', to_date('28-05-2012', 'dd-mm-yyyy'), 'Shawn', '0563115425', '14 Gates Ave', 26);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Stewart', 'MacIsaac', '71876563', to_date('01-05-2015', 'dd-mm-yyyy'), 'Stewart', '0579634921', '72nd Street', 32);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Isaiah', 'Crow', '49851564', to_date('06-08-2017', 'dd-mm-yyyy'), 'Isaiah', '0507940754', '23 Kצln Road', 25);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Betty', 'Cartlidge', '65377565', to_date('19-05-2013', 'dd-mm-yyyy'), 'Betty', '0556017626', '539 Benet Road', 19);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Clay', 'Chappelle', '56125566', to_date('30-08-2012', 'dd-mm-yyyy'), 'Clay', '0567517590', '646 Braugher Drive', 41);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Alannah', 'Fariq', '62735567', to_date('15-07-2015', 'dd-mm-yyyy'), 'Alannah', '0578409576', '80 Bartlett Drive', 1);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Buffy', 'Benson', '42123568', to_date('18-12-2017', 'dd-mm-yyyy'), 'Buffy', '0508018933', '43rd Street', 26);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Clay', 'Spine', '33411569', to_date('26-07-2015', 'dd-mm-yyyy'), 'Clay', '0577359058', '10 Lowe Road', 36);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Charlize', 'Rauhofer', '18519570', to_date('08-09-2017', 'dd-mm-yyyy'), 'Charlize', '0563387486', '786 Tualatin', 31);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Marlon', 'Weiss', '43257571', to_date('03-09-2013', 'dd-mm-yyyy'), 'Marlon', '0527962066', '1 Ford Street', 49);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Rufus', 'White', '35289572', to_date('10-12-2019', 'dd-mm-yyyy'), 'Rufus', '0544407399', '43 Port Macquarie Bl', 4);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Chrissie', 'Macy', '16275573', to_date('08-11-2013', 'dd-mm-yyyy'), 'Chrissie', '0526562069', '146 Van Helden Road', 19);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Shawn', 'Tankard', '79454574', to_date('25-11-2015', 'dd-mm-yyyy'), 'Shawn', '0528902845', '69 Juan Street', 7);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Patti', 'Galecki', '21195575', to_date('24-06-2013', 'dd-mm-yyyy'), 'Patti', '0552532256', '66 Fierstein Drive', 19);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Lance', 'Gershon', '95769576', to_date('19-09-2020', 'dd-mm-yyyy'), 'Lance', '0507218976', '73 Gaynor Street', 35);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Natasha', 'Nicholas', '29558577', to_date('26-05-2020', 'dd-mm-yyyy'), 'Natasha', '0553092730', '55 Griggs Ave', 46);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Taylor', 'Pitney', '32266578', to_date('26-09-2012', 'dd-mm-yyyy'), 'Taylor', '0578586266', '613 Ponce Road', 48);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Holly', 'Street', '71479579', to_date('13-04-2017', 'dd-mm-yyyy'), 'Holly', '0555705967', '69 Denzel Blvd', 31);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Kiefer', 'Lewin', '78265580', to_date('03-11-2018', 'dd-mm-yyyy'), 'Kiefer', '0532173393', '91 Kattan Street', 27);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Lou', 'Trevino', '71641581', to_date('24-09-2018', 'dd-mm-yyyy'), 'Lou', '0543780519', '83 Mary Street', 22);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Betty', 'Posey', '22997583', to_date('25-06-2016', 'dd-mm-yyyy'), 'Betty', '0558433799', '90 Tilda Road', 48);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Freddy', 'Lillard', '68113584', to_date('19-09-2017', 'dd-mm-yyyy'), 'Freddy', '0572157783', '781 Andrae Street', 39);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Davey', 'Griffith', '59249585', to_date('07-01-2016', 'dd-mm-yyyy'), 'Davey', '0519389538', '17 Burwood East Road', 27);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Vanessa', 'Branch', '63289586', to_date('21-01-2019', 'dd-mm-yyyy'), 'Vanessa', '0558644843', '472 Popper Road', 24);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Howie', 'Ranger', '49568587', to_date('22-07-2014', 'dd-mm-yyyy'), 'Howie', '0529773324', '14 Reid Blvd', 20);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Judge', 'Coolidge', '12732588', to_date('04-11-2020', 'dd-mm-yyyy'), 'Judge', '0522069641', '241 Zane Drive', 18);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Tanya', 'Spears', '47665589', to_date('27-11-2015', 'dd-mm-yyyy'), 'Tanya', '0542345259', '651 Brittany Street', 42);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Alfred', 'Gray', '29679590', to_date('21-04-2021', 'dd-mm-yyyy'), 'Alfred', '0504494698', '5 Wiedlin Blvd', 35);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Andy', 'Metcalf', '31341591', to_date('07-12-2017', 'dd-mm-yyyy'), 'Andy', '0562700882', '26 Kleinenberg Blvd', 11);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Grace', 'Devine', '12612592', to_date('02-06-2014', 'dd-mm-yyyy'), 'Grace', '0537220525', '64 Henry Street', 5);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Tcheky', 'Chaykin', '14239593', to_date('11-01-2015', 'dd-mm-yyyy'), 'Tcheky', '0567255073', '49 Rhett Street', 8);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Roy', 'Clayton', '31792594', to_date('08-11-2018', 'dd-mm-yyyy'), 'Roy', '0526616525', '52 Santorso Street', 29);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Marlon', 'Hart', '79912595', to_date('16-03-2020', 'dd-mm-yyyy'), 'Marlon', '0532159304', '26 Doug Road', 32);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Edward', 'Harris', '38785596', to_date('10-10-2020', 'dd-mm-yyyy'), 'Edward', '0533304462', '61st Street', 24);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Charlie', 'Badalucco', '25983597', to_date('26-11-2017', 'dd-mm-yyyy'), 'Charlie', '0527471343', '60 Gilberto Road', 17);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Aida', 'Nolte', '18167598', to_date('02-05-2020', 'dd-mm-yyyy'), 'Aida', '0579527941', '39 Sean Road', 14);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Praga', 'Ryder', '44844600', to_date('16-07-2012', 'dd-mm-yyyy'), 'Praga', '0547358205', '11st Street', 37);
commit;
prompt 598 records loaded
prompt Loading MEAL...
insert into MEAL (day, description, meal_id)
values ('Monday', ' Chicken and cheese sliders', 1);
insert into MEAL (day, description, meal_id)
values ('Sunday', ' Cheese and crackers', 4);
insert into MEAL (day, description, meal_id)
values ('Tuesday', ' Veggie and cream cheese pita pockets', 5);
insert into MEAL (day, description, meal_id)
values ('Thursday', ' Macaroni and cheese', 6);
insert into MEAL (day, description, meal_id)
values ('Tuesday', ' Cheese and bacon potato skins', 7);
insert into MEAL (day, description, meal_id)
values ('Sunday', ' Cheese and bacon stuffed mushrooms', 9);
insert into MEAL (day, description, meal_id)
values ('Friday', ' Veggie and cream cheese pizza slices', 13);
insert into MEAL (day, description, meal_id)
values ('Wednesday', ' Chicken and vegetable baguette slices', 15);
insert into MEAL (day, description, meal_id)
values ('Tuesday', ' Turkey and cranberry croissants', 16);
insert into MEAL (day, description, meal_id)
values ('Tuesday', ' Cheese and ham baguette slices', 18);
insert into MEAL (day, description, meal_id)
values ('Tuesday', ' Mini tuna melts', 19);
insert into MEAL (day, description, meal_id)
values ('Thursday', ' Cheese and tomato croissants', 22);
insert into MEAL (day, description, meal_id)
values ('Wednesday', ' Chicken and vegetable skewers', 26);
insert into MEAL (day, description, meal_id)
values ('Sunday', ' Turkey and avocado wraps', 30);
insert into MEAL (day, description, meal_id)
values ('Wednesday', ' Mini meatballs', 31);
insert into MEAL (day, description, meal_id)
values ('Friday', ' Veggie and cream cheese pinwheels', 36);
insert into MEAL (day, description, meal_id)
values ('Sunday', ' Veggie and hummus wraps', 37);
insert into MEAL (day, description, meal_id)
values ('Sunday', ' Chicken and vegetable pitas', 38);
insert into MEAL (day, description, meal_id)
values ('Thursday', ' Banana bread slices', 39);
insert into MEAL (day, description, meal_id)
values ('Sunday', ' Cheese and ham turnovers', 42);
insert into MEAL (day, description, meal_id)
values ('Sunday', ' Apple slices with caramel dip', 44);
insert into MEAL (day, description, meal_id)
values ('Tuesday', ' Turkey and cheese pinwheels', 45);
insert into MEAL (day, description, meal_id)
values ('Thursday', ' Cheese and ham bagel melts', 46);
insert into MEAL (day, description, meal_id)
values ('Monday', ' Turkey and cranberry sandwiches', 47);
insert into MEAL (day, description, meal_id)
values ('Friday', ' Cheese and olive focaccia slices', 48);
insert into MEAL (day, description, meal_id)
values ('Thursday', ' Turkey and cranberry salad paninis', 49);
insert into MEAL (day, description, meal_id)
values ('Wednesday', ' Turkey and cranberry puff pastry rolls', 50);
insert into MEAL (day, description, meal_id)
values ('Thursday', ' Ham and cheese sandwich', 51);
insert into MEAL (day, description, meal_id)
values ('Tuesday', ' Cheese and tomato bruschetta', 52);
insert into MEAL (day, description, meal_id)
values ('Monday', ' Cheese and bacon potato skins', 54);
insert into MEAL (day, description, meal_id)
values ('Thursday', ' Cheese and ham baguette rolls', 55);
insert into MEAL (day, description, meal_id)
values ('Thursday', ' Chicken and vegetable salad wraps', 57);
insert into MEAL (day, description, meal_id)
values ('Tuesday', ' Cheese and ham muffins', 58);
insert into MEAL (day, description, meal_id)
values ('Tuesday', ' Veggie sticks with hummus', 59);
insert into MEAL (day, description, meal_id)
values ('Monday', ' Chicken and vegetable flatbreads', 60);
insert into MEAL (day, description, meal_id)
values ('Friday', ' Cheese and ham salad rolls', 61);
insert into MEAL (day, description, meal_id)
values ('Thursday', ' Mini chicken paninis', 63);
insert into MEAL (day, description, meal_id)
values ('Sunday', ' Chicken salad sandwich', 66);
insert into MEAL (day, description, meal_id)
values ('Tuesday', ' Chicken nuggets', 67);
insert into MEAL (day, description, meal_id)
values ('Friday', ' Cheese and tomato focaccia slices', 68);
insert into MEAL (day, description, meal_id)
values ('Monday', ' Turkey and cheese stuffed bell peppers', 69);
insert into MEAL (day, description, meal_id)
values ('Friday', ' Mini chicken quesadillas', 70);
insert into MEAL (day, description, meal_id)
values ('Monday', ' Veggie and cream cheese salad rolls', 74);
insert into MEAL (day, description, meal_id)
values ('Friday', ' Veggie and cream cheese flatbread slices', 75);
insert into MEAL (day, description, meal_id)
values ('Wednesday', ' Cheese and ham wraps', 76);
insert into MEAL (day, description, meal_id)
values ('Friday', ' Veggie and cream cheese flatbreads', 77);
insert into MEAL (day, description, meal_id)
values ('Tuesday', ' Cheese and ham salad wraps', 78);
insert into MEAL (day, description, meal_id)
values ('Wednesday', ' Cheese and ham stuffed peppers', 79);
insert into MEAL (day, description, meal_id)
values ('Thursday', ' Veggie and cream cheese baguette slices', 80);
insert into MEAL (day, description, meal_id)
values ('Friday', ' Chicken and vegetable pasta salad', 81);
insert into MEAL (day, description, meal_id)
values ('Thursday', ' Peanut butter and jelly sandwich', 82);
insert into MEAL (day, description, meal_id)
values ('Wednesday', ' Veggie and cream cheese cucumber boats', 83);
insert into MEAL (day, description, meal_id)
values ('Wednesday', ' Fruit and cheese skewers', 86);
insert into MEAL (day, description, meal_id)
values ('Sunday', ' Veggie omelette squares', 87);
insert into MEAL (day, description, meal_id)
values ('Monday', ' Turkey and cranberry salad pitas', 91);
insert into MEAL (day, description, meal_id)
values ('Tuesday', ' Turkey and cranberry muffins', 95);
insert into MEAL (day, description, meal_id)
values ('Friday', ' Hummus and cucumber sandwiches', 96);
insert into MEAL (day, description, meal_id)
values ('Sunday', ' Turkey and cheese toasties', 97);
insert into MEAL (day, description, meal_id)
values ('Thursday', ' Apples with peanut butter', 98);
insert into MEAL (day, description, meal_id)
values ('Wednesday', ' Cheese and ham croissants', 99);
insert into MEAL (day, description, meal_id)
values ('Wednesday', ' Cheese and ham stuffed chicken breasts', 100);
insert into MEAL (day, description, meal_id)
values ('Sunday', ' Mini chicken pitas', 101);
insert into MEAL (day, description, meal_id)
values ('Friday', ' Turkey and cranberry pita pockets', 104);
insert into MEAL (day, description, meal_id)
values ('Monday', ' Cheese and ham paninis', 105);
insert into MEAL (day, description, meal_id)
values ('Tuesday', ' Mini vegetable burgers', 106);
insert into MEAL (day, description, meal_id)
values ('Monday', ' Turkey and cranberry pizza slices', 107);
insert into MEAL (day, description, meal_id)
values ('Thursday', ' Turkey and cranberry croissants', 108);
insert into MEAL (day, description, meal_id)
values ('Sunday', ' Mini chicken kebabs', 109);
insert into MEAL (day, description, meal_id)
values ('Tuesday', ' Grilled cheese sandwich', 110);
insert into MEAL (day, description, meal_id)
values ('Friday', ' Turkey and cranberry bagel melts', 112);
insert into MEAL (day, description, meal_id)
values ('Friday', ' Veggie and cream cheese croissants', 114);
insert into MEAL (day, description, meal_id)
values ('Sunday', ' Cheese and ham crescent rolls', 115);
insert into MEAL (day, description, meal_id)
values ('Wednesday', ' Fruit and yogurt smoothies', 116);
insert into MEAL (day, description, meal_id)
values ('Wednesday', ' Mini tuna sandwiches', 117);
insert into MEAL (day, description, meal_id)
values ('Thursday', ' Veggie and cream cheese sushi rolls', 120);
insert into MEAL (day, description, meal_id)
values ('Sunday', ' Chicken and vegetable flatbread wraps', 122);
insert into MEAL (day, description, meal_id)
values ('Wednesday', ' Turkey and cranberry stuffed acorn squash', 123);
insert into MEAL (day, description, meal_id)
values ('Monday', ' Veggie and cream cheese toasties', 124);
insert into MEAL (day, description, meal_id)
values ('Friday', ' Veggie and cream cheese crackers', 125);
insert into MEAL (day, description, meal_id)
values ('Tuesday', ' Cheese and tomato pizza rolls', 126);
insert into MEAL (day, description, meal_id)
values ('Monday', ' Mini pizza muffins', 128);
insert into MEAL (day, description, meal_id)
values ('Thursday', ' Veggie and cream cheese sandwiches', 130);
insert into MEAL (day, description, meal_id)
values ('Sunday', ' Turkey and cranberry pinwheels', 131);
insert into MEAL (day, description, meal_id)
values ('Sunday', ' Grilled chicken Caesar wraps', 132);
insert into MEAL (day, description, meal_id)
values ('Monday', ' Cheese and ham pita bread pockets', 136);
insert into MEAL (day, description, meal_id)
values ('Monday', ' Cheese and spinach pastry swirls', 138);
insert into MEAL (day, description, meal_id)
values ('Friday', ' Cheese and tomato salad wraps', 141);
insert into MEAL (day, description, meal_id)
values ('Monday', ' Veggie and cream cheese wraps', 142);
insert into MEAL (day, description, meal_id)
values ('Sunday', ' Mini caprese skewers', 145);
insert into MEAL (day, description, meal_id)
values ('Thursday', ' Cheese and tomato bruschetta', 149);
insert into MEAL (day, description, meal_id)
values ('Monday', ' Veggie and cream cheese pizza slices', 150);
insert into MEAL (day, description, meal_id)
values ('Thursday', ' Cheese and tomato salad rolls', 151);
insert into MEAL (day, description, meal_id)
values ('Sunday', ' Mini chicken muffins', 152);
insert into MEAL (day, description, meal_id)
values ('Monday', ' Cheese and ham toasties', 153);
insert into MEAL (day, description, meal_id)
values ('Monday', ' Pretzel sticks with cheese dip', 156);
insert into MEAL (day, description, meal_id)
values ('Monday', ' Mini chicken muffins', 158);
insert into MEAL (day, description, meal_id)
values ('Wednesday', ' Veggie and cream cheese croissants', 159);
insert into MEAL (day, description, meal_id)
values ('Wednesday', ' Turkey and cranberry baguettes', 161);
insert into MEAL (day, description, meal_id)
values ('Sunday', ' Veggie and cream cheese English muffin melts', 162);
insert into MEAL (day, description, meal_id)
values ('Monday', ' Turkey and cheese baguettes', 164);
commit;
prompt 100 records committed...
insert into MEAL (day, description, meal_id)
values ('Friday', ' Veggie and cream cheese bagels', 165);
insert into MEAL (day, description, meal_id)
values ('Wednesday', ' Tortilla chips with salsa and guacamole', 166);
insert into MEAL (day, description, meal_id)
values ('Sunday', ' Chicken and vegetable baguettes', 169);
insert into MEAL (day, description, meal_id)
values ('Monday', ' Mini chicken flatbreads', 170);
insert into MEAL (day, description, meal_id)
values ('Friday', ' Chicken Caesar salad wraps', 173);
insert into MEAL (day, description, meal_id)
values ('Tuesday', ' Turkey and cheese muffins', 174);
insert into MEAL (day, description, meal_id)
values ('Monday', ' Turkey and cranberry wrap', 176);
insert into MEAL (day, description, meal_id)
values ('Thursday', ' Applesauce cups', 177);
insert into MEAL (day, description, meal_id)
values ('Wednesday', ' Pita chips with hummus', 178);
insert into MEAL (day, description, meal_id)
values ('Wednesday', ' Fruit salad', 180);
insert into MEAL (day, description, meal_id)
values ('Tuesday', ' Cheese and ham crostini', 181);
insert into MEAL (day, description, meal_id)
values ('Friday', ' Chicken and vegetable potstickers', 182);
insert into MEAL (day, description, meal_id)
values ('Thursday', ' Mini quiches', 184);
insert into MEAL (day, description, meal_id)
values ('Sunday', ' Veggie frittata squares', 185);
insert into MEAL (day, description, meal_id)
values ('Monday', ' Yogurt with granola', 186);
insert into MEAL (day, description, meal_id)
values ('Wednesday', ' Turkey and cranberry wraps', 188);
insert into MEAL (day, description, meal_id)
values ('Sunday', ' Turkey and cranberry puff pastry parcels', 189);
insert into MEAL (day, description, meal_id)
values ('Sunday', ' Veggie and cream cheese crostini', 190);
insert into MEAL (day, description, meal_id)
values ('Wednesday', ' Veggie and cream cheese salad pitas', 192);
insert into MEAL (day, description, meal_id)
values ('Wednesday', ' Veggie and cream cheese puff pastry rolls', 193);
insert into MEAL (day, description, meal_id)
values ('Wednesday', ' Turkey and cheese pita pockets', 194);
insert into MEAL (day, description, meal_id)
values ('Monday', ' Cheese and spinach stuffed chicken thighs', 195);
insert into MEAL (day, description, meal_id)
values ('Wednesday', ' Mini muffins', 196);
insert into MEAL (day, description, meal_id)
values ('Thursday', ' Cheese and ham pinwheels', 197);
insert into MEAL (day, description, meal_id)
values ('Tuesday', ' Chicken and vegetable quesadillas', 200);
insert into MEAL (day, description, meal_id)
values ('Monday', ' Mini chicken tacos', 203);
insert into MEAL (day, description, meal_id)
values ('Tuesday', ' Veggie and cream cheese pizza slices', 204);
insert into MEAL (day, description, meal_id)
values ('Sunday', ' Cheese and tomato pita bread', 205);
insert into MEAL (day, description, meal_id)
values ('Friday', ' Tuna salad sandwich', 207);
insert into MEAL (day, description, meal_id)
values ('Sunday', ' Smoothies with fruit and yogurt', 208);
insert into MEAL (day, description, meal_id)
values ('Tuesday', ' Mini corn dogs', 209);
insert into MEAL (day, description, meal_id)
values ('Wednesday', ' Turkey and cranberry salad rolls', 210);
insert into MEAL (day, description, meal_id)
values ('Wednesday', ' Cheese and tomato skewers', 211);
insert into MEAL (day, description, meal_id)
values ('Sunday', ' Veggie and cream cheese English muffins', 213);
insert into MEAL (day, description, meal_id)
values ('Monday', ' Mini vegetable spring rolls', 215);
insert into MEAL (day, description, meal_id)
values ('Thursday', ' Turkey and cranberry pizza rolls', 217);
insert into MEAL (day, description, meal_id)
values ('Monday', ' Turkey and cranberry muffins', 218);
insert into MEAL (day, description, meal_id)
values ('Tuesday', ' Banana and chocolate chip muffins', 219);
insert into MEAL (day, description, meal_id)
values ('Tuesday', ' Veggie and cream cheese pizza rolls', 221);
insert into MEAL (day, description, meal_id)
values ('Sunday', ' Turkey and cheese bagel bites', 222);
insert into MEAL (day, description, meal_id)
values ('Tuesday', ' Pita bread with tzatziki dip', 224);
insert into MEAL (day, description, meal_id)
values ('Sunday', ' Cheese and tomato wraps', 226);
insert into MEAL (day, description, meal_id)
values ('Wednesday', ' Fruit and yogurt parfaits', 228);
commit;
prompt 143 records loaded
prompt Loading INVITATION...
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (11, to_date('27-01-2016', 'dd-mm-yyyy'), 38, 46);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (9, to_date('10-09-2007', 'dd-mm-yyyy'), 3, 150);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (13, to_date('02-06-2005', 'dd-mm-yyyy'), 13, 15);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (5, to_date('14-03-2005', 'dd-mm-yyyy'), 39, 114);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (13, to_date('01-12-2008', 'dd-mm-yyyy'), 13, 123);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (24, to_date('18-11-2005', 'dd-mm-yyyy'), 11, 125);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (14, to_date('29-11-2005', 'dd-mm-yyyy'), 49, 194);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (15, to_date('05-07-2020', 'dd-mm-yyyy'), 40, 100);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (11, to_date('14-08-2005', 'dd-mm-yyyy'), 36, 178);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (11, to_date('05-03-2010', 'dd-mm-yyyy'), 17, 180);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (9, to_date('11-03-2019', 'dd-mm-yyyy'), 21, 186);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (7, to_date('18-09-2010', 'dd-mm-yyyy'), 22, 107);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (9, to_date('30-12-2012', 'dd-mm-yyyy'), 21, 149);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (9, to_date('17-02-2018', 'dd-mm-yyyy'), 2, 116);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (14, to_date('30-12-2016', 'dd-mm-yyyy'), 48, 177);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (14, to_date('18-03-2008', 'dd-mm-yyyy'), 4, 30);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (8, to_date('08-08-2011', 'dd-mm-yyyy'), 31, 31);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (7, to_date('06-05-2019', 'dd-mm-yyyy'), 22, 176);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (10, to_date('03-12-2005', 'dd-mm-yyyy'), 23, 176);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (11, to_date('12-06-2014', 'dd-mm-yyyy'), 36, 200);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (6, to_date('12-05-2019', 'dd-mm-yyyy'), 25, 197);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (7, to_date('24-11-2012', 'dd-mm-yyyy'), 44, 104);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (8, to_date('14-09-2010', 'dd-mm-yyyy'), 16, 219);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (5, to_date('29-07-2004', 'dd-mm-yyyy'), 39, 95);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (11, to_date('07-05-2022', 'dd-mm-yyyy'), 46, 77);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (8, to_date('08-08-2023', 'dd-mm-yyyy'), 31, 82);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (9, to_date('12-06-2018', 'dd-mm-yyyy'), 2, 109);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (9, to_date('21-08-2005', 'dd-mm-yyyy'), 14, 5);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (11, to_date('08-04-2011', 'dd-mm-yyyy'), 9, 96);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (24, to_date('12-05-2018', 'dd-mm-yyyy'), 11, 69);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (15, to_date('19-02-2006', 'dd-mm-yyyy'), 40, 120);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (9, to_date('07-08-2019', 'dd-mm-yyyy'), 21, 221);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (14, to_date('12-07-2003', 'dd-mm-yyyy'), 35, 117);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (11, to_date('12-08-2003', 'dd-mm-yyyy'), 41, 97);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (9, to_date('20-08-2011', 'dd-mm-yyyy'), 14, 6);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (11, to_date('14-05-2019', 'dd-mm-yyyy'), 9, 106);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (15, to_date('20-06-2023', 'dd-mm-yyyy'), 40, 226);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (11, to_date('26-10-2009', 'dd-mm-yyyy'), 9, 145);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (10, to_date('20-10-2022', 'dd-mm-yyyy'), 23, 193);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (13, to_date('13-10-2010', 'dd-mm-yyyy'), 13, 59);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (13, to_date('19-04-2012', 'dd-mm-yyyy'), 18, 96);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (23, to_date('10-12-2019', 'dd-mm-yyyy'), 42, 98);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (9, to_date('23-03-2007', 'dd-mm-yyyy'), 27, 197);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (9, to_date('24-07-2009', 'dd-mm-yyyy'), 14, 66);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (14, to_date('11-02-2018', 'dd-mm-yyyy'), 34, 141);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (23, to_date('29-12-2006', 'dd-mm-yyyy'), 42, 37);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (13, to_date('13-08-2008', 'dd-mm-yyyy'), 13, 162);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (6, to_date('20-02-2021', 'dd-mm-yyyy'), 25, 6);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (11, to_date('23-06-2022', 'dd-mm-yyyy'), 17, 39);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (22, to_date('16-12-2022', 'dd-mm-yyyy'), 28, 9);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (12, to_date('07-07-2008', 'dd-mm-yyyy'), 1, 30);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (14, to_date('09-09-2003', 'dd-mm-yyyy'), 19, 4);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (11, to_date('18-02-2013', 'dd-mm-yyyy'), 9, 185);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (11, to_date('30-07-2010', 'dd-mm-yyyy'), 41, 7);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (7, to_date('26-10-2018', 'dd-mm-yyyy'), 22, 164);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (17, to_date('01-05-2015', 'dd-mm-yyyy'), 24, 182);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (11, to_date('14-02-2009', 'dd-mm-yyyy'), 8, 108);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (7, to_date('01-06-2018', 'dd-mm-yyyy'), 22, 36);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (11, to_date('01-10-2007', 'dd-mm-yyyy'), 8, 189);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (7, to_date('30-05-2018', 'dd-mm-yyyy'), 44, 114);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (13, to_date('15-07-2011', 'dd-mm-yyyy'), 18, 196);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (18, to_date('20-09-2010', 'dd-mm-yyyy'), 15, 174);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (5, to_date('08-09-2013', 'dd-mm-yyyy'), 10, 57);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (11, to_date('13-10-2004', 'dd-mm-yyyy'), 9, 153);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (11, to_date('28-05-2012', 'dd-mm-yyyy'), 45, 19);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (9, to_date('14-08-2009', 'dd-mm-yyyy'), 2, 91);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (17, to_date('10-02-2010', 'dd-mm-yyyy'), 6, 132);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (8, to_date('20-04-2009', 'dd-mm-yyyy'), 31, 208);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (11, to_date('26-01-2016', 'dd-mm-yyyy'), 45, 67);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (11, to_date('18-06-2013', 'dd-mm-yyyy'), 45, 63);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (12, to_date('26-03-2014', 'dd-mm-yyyy'), 12, 138);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (9, to_date('24-12-2003', 'dd-mm-yyyy'), 5, 122);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (14, to_date('30-08-2011', 'dd-mm-yyyy'), 34, 224);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (11, to_date('01-06-2022', 'dd-mm-yyyy'), 30, 76);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (18, to_date('10-01-2013', 'dd-mm-yyyy'), 15, 97);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (14, to_date('11-07-2006', 'dd-mm-yyyy'), 49, 87);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (14, to_date('16-08-2008', 'dd-mm-yyyy'), 4, 99);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (10, to_date('10-08-2003', 'dd-mm-yyyy'), 23, 81);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (7, to_date('10-09-2020', 'dd-mm-yyyy'), 22, 222);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (11, to_date('10-03-2007', 'dd-mm-yyyy'), 38, 80);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (12, to_date('26-05-2021', 'dd-mm-yyyy'), 29, 141);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (14, to_date('28-05-2011', 'dd-mm-yyyy'), 35, 190);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (22, to_date('01-11-2019', 'dd-mm-yyyy'), 28, 15);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (7, to_date('19-02-2016', 'dd-mm-yyyy'), 22, 101);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (15, to_date('23-08-2020', 'dd-mm-yyyy'), 26, 49);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (9, to_date('11-09-2011', 'dd-mm-yyyy'), 3, 77);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (11, to_date('03-11-2005', 'dd-mm-yyyy'), 8, 106);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (14, to_date('16-10-2013', 'dd-mm-yyyy'), 35, 61);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (5, to_date('26-08-2020', 'dd-mm-yyyy'), 39, 195);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (14, to_date('05-03-2014', 'dd-mm-yyyy'), 49, 159);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (18, to_date('03-04-2023', 'dd-mm-yyyy'), 15, 42);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (11, to_date('23-11-2011', 'dd-mm-yyyy'), 30, 74);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (11, to_date('14-11-2015', 'dd-mm-yyyy'), 17, 138);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (7, to_date('16-01-2009', 'dd-mm-yyyy'), 50, 44);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (6, to_date('15-02-2004', 'dd-mm-yyyy'), 25, 60);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (9, to_date('19-02-2018', 'dd-mm-yyyy'), 5, 132);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (9, to_date('08-08-2009', 'dd-mm-yyyy'), 3, 78);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (7, to_date('23-08-2007', 'dd-mm-yyyy'), 50, 142);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (13, to_date('28-08-2021', 'dd-mm-yyyy'), 18, 186);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (15, to_date('08-09-2017', 'dd-mm-yyyy'), 40, 9);
commit;
prompt 100 records committed...
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (18, to_date('20-05-2005', 'dd-mm-yyyy'), 20, 124);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (23, to_date('11-11-2008', 'dd-mm-yyyy'), 42, 204);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (18, to_date('06-08-2023', 'dd-mm-yyyy'), 20, 169);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (23, to_date('22-12-2005', 'dd-mm-yyyy'), 42, 105);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (19, to_date('17-07-2004', 'dd-mm-yyyy'), 32, 126);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (14, to_date('09-06-2012', 'dd-mm-yyyy'), 49, 108);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (8, to_date('08-03-2005', 'dd-mm-yyyy'), 31, 184);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (11, to_date('24-06-2007', 'dd-mm-yyyy'), 17, 68);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (5, to_date('22-12-2016', 'dd-mm-yyyy'), 10, 114);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (9, to_date('27-05-2016', 'dd-mm-yyyy'), 27, 7);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (11, to_date('01-09-2011', 'dd-mm-yyyy'), 17, 158);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (13, to_date('15-06-2020', 'dd-mm-yyyy'), 18, 128);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (11, to_date('22-02-2013', 'dd-mm-yyyy'), 9, 70);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (5, to_date('04-05-2004', 'dd-mm-yyyy'), 39, 192);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (17, to_date('01-11-2021', 'dd-mm-yyyy'), 6, 52);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (6, to_date('24-10-2023', 'dd-mm-yyyy'), 37, 120);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (11, to_date('13-03-2017', 'dd-mm-yyyy'), 38, 205);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (12, to_date('02-09-2021', 'dd-mm-yyyy'), 7, 150);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (5, to_date('08-09-2003', 'dd-mm-yyyy'), 39, 78);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (8, to_date('14-01-2011', 'dd-mm-yyyy'), 16, 208);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (11, to_date('19-10-2010', 'dd-mm-yyyy'), 46, 217);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (11, to_date('08-03-2014', 'dd-mm-yyyy'), 36, 108);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (9, to_date('08-01-2018', 'dd-mm-yyyy'), 5, 210);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (11, to_date('05-06-2021', 'dd-mm-yyyy'), 46, 215);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (11, to_date('06-05-2003', 'dd-mm-yyyy'), 46, 156);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (11, to_date('02-04-2013', 'dd-mm-yyyy'), 17, 54);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (7, to_date('03-11-2022', 'dd-mm-yyyy'), 44, 69);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (14, to_date('13-09-2003', 'dd-mm-yyyy'), 19, 188);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (17, to_date('13-12-2018', 'dd-mm-yyyy'), 24, 188);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (12, to_date('22-08-2020', 'dd-mm-yyyy'), 1, 166);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (12, to_date('06-01-2022', 'dd-mm-yyyy'), 7, 117);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (6, to_date('12-11-2016', 'dd-mm-yyyy'), 37, 36);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (22, to_date('14-07-2021', 'dd-mm-yyyy'), 28, 125);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (13, to_date('07-11-2019', 'dd-mm-yyyy'), 18, 219);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (13, to_date('31-08-2005', 'dd-mm-yyyy'), 18, 209);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (15, to_date('29-12-2020', 'dd-mm-yyyy'), 26, 228);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (18, to_date('20-04-2022', 'dd-mm-yyyy'), 15, 45);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (11, to_date('10-11-2005', 'dd-mm-yyyy'), 46, 112);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (13, to_date('19-01-2008', 'dd-mm-yyyy'), 18, 58);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (10, to_date('16-02-2021', 'dd-mm-yyyy'), 23, 131);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (6, to_date('20-02-2023', 'dd-mm-yyyy'), 25, 151);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (14, to_date('25-08-2008', 'dd-mm-yyyy'), 48, 150);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (11, to_date('16-01-2021', 'dd-mm-yyyy'), 17, 61);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (14, to_date('01-06-2017', 'dd-mm-yyyy'), 35, 218);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (18, to_date('10-01-2010', 'dd-mm-yyyy'), 20, 96);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (12, to_date('04-03-2023', 'dd-mm-yyyy'), 7, 106);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (5, to_date('14-03-2013', 'dd-mm-yyyy'), 10, 173);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (18, to_date('21-04-2020', 'dd-mm-yyyy'), 20, 203);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (9, to_date('29-12-2023', 'dd-mm-yyyy'), 47, 37);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (11, to_date('21-12-2005', 'dd-mm-yyyy'), 41, 50);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (5, to_date('06-05-2004', 'dd-mm-yyyy'), 10, 125);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (9, to_date('24-03-2011', 'dd-mm-yyyy'), 3, 152);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (13, to_date('26-04-2019', 'dd-mm-yyyy'), 13, 22);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (11, to_date('27-09-2008', 'dd-mm-yyyy'), 41, 26);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (11, to_date('28-07-2015', 'dd-mm-yyyy'), 36, 16);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (13, to_date('07-12-2006', 'dd-mm-yyyy'), 18, 74);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (18, to_date('17-12-2011', 'dd-mm-yyyy'), 20, 177);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (14, to_date('25-09-2010', 'dd-mm-yyyy'), 34, 86);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (6, to_date('18-08-2011', 'dd-mm-yyyy'), 25, 213);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (9, to_date('10-01-2023', 'dd-mm-yyyy'), 2, 193);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (9, to_date('14-07-2018', 'dd-mm-yyyy'), 2, 126);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (9, to_date('21-04-2004', 'dd-mm-yyyy'), 2, 162);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (14, to_date('02-04-2021', 'dd-mm-yyyy'), 4, 50);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (8, to_date('05-07-2010', 'dd-mm-yyyy'), 16, 55);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (14, to_date('09-04-2005', 'dd-mm-yyyy'), 35, 224);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (15, to_date('13-12-2010', 'dd-mm-yyyy'), 26, 1);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (11, to_date('12-12-2016', 'dd-mm-yyyy'), 45, 136);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (23, to_date('19-06-2012', 'dd-mm-yyyy'), 42, 170);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (11, to_date('25-10-2008', 'dd-mm-yyyy'), 38, 165);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (22, to_date('17-08-2004', 'dd-mm-yyyy'), 28, 164);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (14, to_date('09-03-2023', 'dd-mm-yyyy'), 49, 37);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (9, to_date('29-02-2016', 'dd-mm-yyyy'), 47, 68);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (9, to_date('17-10-2007', 'dd-mm-yyyy'), 14, 180);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (6, to_date('29-03-2018', 'dd-mm-yyyy'), 37, 48);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (14, to_date('17-02-2003', 'dd-mm-yyyy'), 34, 181);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (11, to_date('05-03-2010', 'dd-mm-yyyy'), 45, 58);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (11, to_date('25-06-2011', 'dd-mm-yyyy'), 17, 49);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (9, to_date('17-07-2021', 'dd-mm-yyyy'), 47, 13);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (7, to_date('26-04-2003', 'dd-mm-yyyy'), 50, 97);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (18, to_date('15-05-2005', 'dd-mm-yyyy'), 20, 213);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (7, to_date('25-01-2018', 'dd-mm-yyyy'), 22, 116);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (11, to_date('19-11-2003', 'dd-mm-yyyy'), 46, 42);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (14, to_date('07-11-2011', 'dd-mm-yyyy'), 34, 101);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (13, to_date('12-10-2014', 'dd-mm-yyyy'), 18, 68);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (13, to_date('01-04-2004', 'dd-mm-yyyy'), 18, 82);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (17, to_date('09-07-2007', 'dd-mm-yyyy'), 24, 26);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (22, to_date('11-02-2020', 'dd-mm-yyyy'), 28, 51);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (7, to_date('05-10-2013', 'dd-mm-yyyy'), 50, 38);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (11, to_date('20-03-2008', 'dd-mm-yyyy'), 9, 138);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (24, to_date('05-06-2009', 'dd-mm-yyyy'), 11, 211);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (22, to_date('09-01-2006', 'dd-mm-yyyy'), 28, 79);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (22, to_date('19-12-2011', 'dd-mm-yyyy'), 28, 115);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (14, to_date('10-04-2016', 'dd-mm-yyyy'), 34, 75);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (6, to_date('29-10-2016', 'dd-mm-yyyy'), 25, 130);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (11, to_date('03-05-2003', 'dd-mm-yyyy'), 45, 47);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (11, to_date('18-12-2016', 'dd-mm-yyyy'), 8, 169);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (9, to_date('12-08-2019', 'dd-mm-yyyy'), 5, 141);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (24, to_date('19-11-2011', 'dd-mm-yyyy'), 11, 158);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (11, to_date('07-07-2006', 'dd-mm-yyyy'), 17, 207);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (11, to_date('17-08-2010', 'dd-mm-yyyy'), 36, 60);
commit;
prompt 200 records committed...
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (14, to_date('29-12-2003', 'dd-mm-yyyy'), 49, 83);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (8, to_date('02-04-2016', 'dd-mm-yyyy'), 16, 18);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (11, to_date('02-03-2012', 'dd-mm-yyyy'), 38, 161);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (17, to_date('12-07-2022', 'dd-mm-yyyy'), 6, 110);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (7, to_date('20-05-2018', 'dd-mm-yyyy'), 44, 30);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (7, to_date('21-06-2005', 'dd-mm-yyyy'), 22, 87);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (9, to_date('21-02-2020', 'dd-mm-yyyy'), 14, 98);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('01-01-2023', 'dd-mm-yyyy'), 2, 194);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('01-01-2023', 'dd-mm-yyyy'), 1, 59);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('01-01-2023', 'dd-mm-yyyy'), 3, 115);
commit;
prompt 210 records loaded
prompt Enabling foreign key constraints for GROUPS...
alter table GROUPS enable constraint SYS_C007322;
alter table GROUPS enable constraint SYS_C007323;
prompt Enabling foreign key constraints for CHILDREN...
alter table CHILDREN enable constraint SYS_C007333;
prompt Enabling foreign key constraints for INVITATION...
alter table INVITATION enable constraint SYS_C007328;
alter table INVITATION enable constraint SYS_C007329;
prompt Enabling triggers for KINDERGARTEN_TEACHER...
alter table KINDERGARTEN_TEACHER enable all triggers;
prompt Enabling triggers for CLASS...
alter table CLASS enable all triggers;
prompt Enabling triggers for GROUPS...
alter table GROUPS enable all triggers;
prompt Enabling triggers for CHILDREN...
alter table CHILDREN enable all triggers;
prompt Enabling triggers for MEAL...
alter table MEAL enable all triggers;
prompt Enabling triggers for INVITATION...
alter table INVITATION enable all triggers;
set feedback on
set define on
prompt Done.
