prompt PL/SQL Developer import file
prompt Created on יום ראשון 02 יוני 2024 by M0538
set feedback off
set define off
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
  group_size  INTEGER,
  kteacher_id VARCHAR2(15),
  hour        INTEGER not null,
  class_day   VARCHAR2(15) not null,
  class_id    INTEGER not null
)
;
alter table GROUPS
  add primary key (GROUP_ID);
alter table GROUPS
  add foreign key (CLASS_ID)
  references CLASS (CLASS_ID);

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
  description VARCHAR2(60),
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
  add foreign key (GROUP_ID)
  references GROUPS (GROUP_ID);
alter table INVITATION
  add foreign key (MEAL_ID)
  references MEAL (MEAL_ID);

prompt Creating KINDERGARTEN_TEACHER...
create table KINDERGARTEN_TEACHER
(
  first_name   VARCHAR2(15),
  last_name    VARCHAR2(15),
  kteacher_id  VARCHAR2(15) not null,
  phone_number VARCHAR2(10),
  group_id     INTEGER not null
)
;
alter table KINDERGARTEN_TEACHER
  add primary key (KTEACHER_ID);
alter table KINDERGARTEN_TEACHER
  add foreign key (GROUP_ID)
  references GROUPS (GROUP_ID);

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
prompt Disabling triggers for KINDERGARTEN_TEACHER...
alter table KINDERGARTEN_TEACHER disable all triggers;
prompt Disabling foreign key constraints for GROUPS...
alter table GROUPS disable constraint SYS_C007153;
prompt Disabling foreign key constraints for CHILDREN...
alter table CHILDREN disable constraint SYS_C007168;
prompt Disabling foreign key constraints for INVITATION...
alter table INVITATION disable constraint SYS_C007187;
alter table INVITATION disable constraint SYS_C007188;
prompt Disabling foreign key constraints for KINDERGARTEN_TEACHER...
alter table KINDERGARTEN_TEACHER disable constraint SYS_C007176;
prompt Deleting KINDERGARTEN_TEACHER...
delete from KINDERGARTEN_TEACHER;
commit;
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
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (1, 'Alessandro', 6, 7, null, 14, 'Friday', 706);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (2, 'Harris', 11, 7, null, 14, 'Thursday', 528);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (3, 'Christian', 10, 4, null, 17, 'Tuesday', 593);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (4, 'Jonny Lee', 10, 5, null, 13, 'Thursday', 642);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (5, 'Ben', 7, 7, null, 14, 'Sunday', 728);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (6, 'Kylie', 4, 3, null, 13, 'Tuesday', 744);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (7, 'Rachid', 11, 3, null, 15, 'Wednesday', 539);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (8, 'Charlie', 8, 6, null, 15, 'Tuesday', 800);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (9, 'Stellan', 4, 4, null, 16, 'Thursday', 537);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (10, 'Jena', 12, 4, null, 17, 'Sunday', 727);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (11, 'Regina', 4, 3, null, 15, 'Tuesday', 507);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (12, 'George', 5, 6, null, 17, 'Wednesday', 653);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (13, 'Bette', 6, 6, null, 17, 'Sunday', 806);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (14, 'Lesley', 7, 4, null, 14, 'Friday', 780);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (15, 'Eddie', 5, 3, null, 17, 'Sunday', 587);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (16, 'Embeth', 7, 3, null, 17, 'Monday', 532);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (17, 'Hal', 6, 3, null, 17, 'Tuesday', 493);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (18, 'Lance', 10, 3, null, 13, 'Sunday', 773);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (19, 'Tzi', 9, 5, null, 17, 'Monday', 637);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (20, 'Sissy', 4, 5, null, 14, 'Tuesday', 560);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (21, 'Thomas', 6, 7, null, 17, 'Wednesday', 812);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (22, 'Penelope', 4, 5, null, 16, 'Friday', 845);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (23, 'Adam', 7, 7, null, 15, 'Friday', 760);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (24, 'Mindy', 5, 7, null, 17, 'Friday', 762);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (25, 'Percy', 9, 7, null, 15, 'Wednesday', 821);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (26, 'Cornell', 5, 4, null, 13, 'Tuesday', 727);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (27, 'Kirsten', 6, 7, null, 17, 'Sunday', 611);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (28, 'Charles', 6, 7, null, 15, 'Friday', 598);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (29, 'Shannon', 7, 6, null, 17, 'Sunday', 640);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (30, 'Olympia', 12, 7, null, 15, 'Monday', 489);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (31, 'Toni', 4, 7, null, 17, 'Monday', 724);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (32, 'Gran', 7, 6, null, 14, 'Sunday', 726);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (33, 'Freda', 10, 5, null, 13, 'Sunday', 694);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (34, 'Kylie', 4, 7, null, 14, 'Tuesday', 711);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (35, 'Bob', 4, 5, null, 14, 'Tuesday', 667);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (36, 'Ryan', 11, 6, null, 16, 'Monday', 587);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (37, 'William', 9, 6, null, 16, 'Sunday', 576);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (38, 'Albert', 9, 4, null, 13, 'Thursday', 482);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (39, 'Edgar', 4, 4, null, 16, 'Monday', 820);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (40, 'Ronny', 6, 3, null, 13, 'Friday', 612);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (41, 'Diamond', 8, 5, null, 16, 'Tuesday', 741);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (42, 'Shawn', 6, 7, null, 14, 'Monday', 825);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (43, 'Viggo', 6, 7, null, 17, 'Friday', 579);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (44, 'Roger', 8, 6, null, 16, 'Thursday', 663);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (45, 'Garland', 11, 6, null, 16, 'Sunday', 621);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (46, 'Loren', 8, 6, null, 15, 'Tuesday', 738);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (47, 'Judy', 12, 4, null, 17, 'Monday', 585);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (48, 'Jodie', 11, 5, null, 17, 'Friday', 684);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (49, 'Merrilee', 11, 4, null, 14, 'Tuesday', 768);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (50, 'Daryle', 5, 7, null, 15, 'Sunday', 676);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (51, 'Geraldine', 4, 3, null, 16, 'Sunday', 579);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (52, 'Natacha', 11, 7, null, 13, 'Thursday', 797);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (53, 'Samantha', 7, 6, null, 13, 'Wednesday', 617);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (54, 'Janeane', 6, 3, null, 15, 'Sunday', 639);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (55, 'Johnette', 11, 5, null, 15, 'Monday', 479);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (56, 'Demi', 12, 7, null, 15, 'Thursday', 805);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (57, 'Meryl', 6, 4, null, 15, 'Thursday', 683);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (58, 'Tanya', 10, 5, null, 16, 'Thursday', 503);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (59, 'Ellen', 5, 6, null, 16, 'Thursday', 686);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (60, 'Hikaru', 4, 3, null, 17, 'Wednesday', 726);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (61, 'Lizzy', 6, 6, null, 16, 'Tuesday', 772);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (62, 'Bill', 9, 4, null, 16, 'Wednesday', 562);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (63, 'Julie', 12, 7, null, 15, 'Sunday', 810);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (64, 'Chuck', 10, 5, null, 13, 'Friday', 762);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (65, 'Jena', 12, 6, null, 15, 'Wednesday', 626);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (66, 'Candice', 12, 7, null, 14, 'Tuesday', 704);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (67, 'Robby', 5, 5, null, 15, 'Sunday', 826);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (68, 'Nicolas', 9, 5, null, 15, 'Tuesday', 673);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (69, 'Meredith', 8, 4, null, 15, 'Thursday', 586);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (70, 'Dwight', 10, 4, null, 13, 'Sunday', 605);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (71, 'Gino', 6, 4, null, 13, 'Tuesday', 655);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (72, 'Wallace', 10, 7, null, 14, 'Wednesday', 596);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (73, 'Gene', 10, 6, null, 15, 'Thursday', 688);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (74, 'Jodie', 6, 7, null, 15, 'Monday', 555);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (75, 'Wade', 9, 6, null, 14, 'Monday', 562);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (76, 'Simon', 6, 7, null, 14, 'Tuesday', 474);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (77, 'Gaby', 6, 6, null, 17, 'Sunday', 575);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (78, 'Glen', 6, 6, null, 16, 'Sunday', 505);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (79, 'Graham', 5, 5, null, 16, 'Wednesday', 791);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (80, 'Leelee', 8, 6, null, 17, 'Monday', 521);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (81, 'Sal', 5, 5, null, 17, 'Thursday', 640);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (82, 'Kathy', 11, 5, null, 17, 'Wednesday', 540);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (83, 'Ted', 9, 3, null, 13, 'Tuesday', 816);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (84, 'Cameron', 8, 5, null, 14, 'Monday', 704);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (85, 'Cameron', 9, 7, null, 13, 'Sunday', 795);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (86, 'Albertina', 8, 5, null, 14, 'Thursday', 775);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (87, 'Joy', 7, 3, null, 13, 'Monday', 618);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (88, 'Lou', 8, 4, null, 14, 'Monday', 853);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (89, 'Owen', 5, 7, null, 17, 'Friday', 856);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (90, 'Henry', 8, 6, null, 13, 'Sunday', 676);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (91, 'Suzy', 12, 7, null, 14, 'Wednesday', 794);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (92, 'Debra', 11, 6, null, 16, 'Friday', 598);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (93, 'Ronny', 6, 3, null, 16, 'Thursday', 567);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (94, 'Parker', 7, 5, null, 17, 'Sunday', 615);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (95, 'Garry', 12, 6, null, 17, 'Wednesday', 681);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (96, 'Burton', 11, 5, null, 16, 'Thursday', 731);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (97, 'Betty', 8, 3, null, 15, 'Tuesday', 837);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (98, 'Gary', 10, 7, null, 17, 'Monday', 836);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (99, 'Isaiah', 8, 6, null, 13, 'Tuesday', 512);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (100, 'Brothers', 7, 6, null, 16, 'Tuesday', 784);
commit;
prompt 100 records committed...
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (101, 'Linda', 9, 5, null, 15, 'Thursday', 606);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (102, 'Helen', 4, 3, null, 15, 'Thursday', 651);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (103, 'Dustin', 7, 3, null, 14, 'Friday', 798);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (104, 'Arnold', 5, 3, null, 16, 'Tuesday', 846);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (105, 'Goran', 8, 3, null, 16, 'Wednesday', 540);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (106, 'Derek', 5, 4, null, 17, 'Tuesday', 671);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (107, 'Darius', 5, 6, null, 17, 'Tuesday', 523);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (108, 'Goran', 8, 4, null, 15, 'Wednesday', 797);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (109, 'Thomas', 11, 7, null, 15, 'Wednesday', 742);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (110, 'Red', 8, 5, null, 15, 'Thursday', 847);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (111, 'Jerry', 9, 5, null, 15, 'Thursday', 585);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (112, 'Rodney', 9, 6, null, 15, 'Tuesday', 564);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (113, 'Jody', 11, 7, null, 15, 'Tuesday', 498);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (114, 'Diane', 12, 7, null, 17, 'Monday', 745);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (115, 'Hector', 4, 6, null, 13, 'Tuesday', 838);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (116, 'Rodney', 4, 7, null, 14, 'Thursday', 614);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (117, 'Sylvester', 11, 5, null, 15, 'Sunday', 844);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (118, 'Earl', 5, 7, null, 13, 'Sunday', 841);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (119, 'Taylor', 8, 4, null, 16, 'Thursday', 780);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (120, 'Rod', 5, 4, null, 13, 'Monday', 653);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (121, 'Robbie', 9, 4, null, 16, 'Monday', 751);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (122, 'Elizabeth', 11, 4, null, 14, 'Tuesday', 849);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (123, 'Isabella', 11, 7, null, 14, 'Thursday', 651);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (124, 'Carrie', 11, 6, null, 16, 'Tuesday', 573);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (125, 'Ashton', 4, 6, null, 16, 'Friday', 549);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (126, 'Denny', 10, 7, null, 16, 'Monday', 662);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (127, 'Mandy', 11, 5, null, 17, 'Thursday', 567);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (128, 'Barbara', 4, 6, null, 16, 'Thursday', 804);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (129, 'Gwyneth', 4, 3, null, 16, 'Sunday', 564);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (130, 'Marianne', 8, 5, null, 15, 'Friday', 731);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (131, 'Derek', 9, 5, null, 15, 'Tuesday', 469);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (132, 'Garth', 6, 5, null, 16, 'Tuesday', 501);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (133, 'Liam', 11, 7, null, 14, 'Friday', 585);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (134, 'Penelope', 7, 5, null, 16, 'Thursday', 659);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (135, 'Juice', 5, 4, null, 17, 'Sunday', 504);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (136, 'Percy', 12, 7, null, 16, 'Friday', 759);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (137, 'Phil', 5, 6, null, 13, 'Friday', 557);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (138, 'Joey', 5, 3, null, 16, 'Tuesday', 824);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (139, 'Gabrielle', 5, 3, null, 16, 'Friday', 632);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (140, 'Grace', 12, 4, null, 17, 'Tuesday', 838);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (141, 'Denny', 4, 7, null, 17, 'Sunday', 495);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (142, 'Annette', 12, 5, null, 15, 'Wednesday', 627);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (143, 'Lara', 6, 6, null, 13, 'Friday', 647);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (144, 'Patti', 9, 4, null, 17, 'Tuesday', 635);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (145, 'Ed', 9, 4, null, 17, 'Friday', 829);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (146, 'Kathy', 10, 6, null, 14, 'Sunday', 564);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (147, 'Night', 4, 6, null, 16, 'Friday', 639);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (148, 'Naomi', 7, 6, null, 15, 'Tuesday', 560);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (149, 'Manu', 12, 7, null, 13, 'Sunday', 765);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (150, 'Chalee', 6, 7, null, 16, 'Monday', 526);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (151, 'Sissy', 10, 4, null, 13, 'Wednesday', 670);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (152, 'Dar', 8, 4, null, 13, 'Thursday', 852);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (153, 'Tyrone', 12, 4, null, 15, 'Tuesday', 681);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (154, 'Johnny', 12, 4, null, 13, 'Monday', 721);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (155, 'Boz', 4, 5, null, 15, 'Friday', 476);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (156, 'Ronny', 10, 7, null, 16, 'Sunday', 708);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (157, 'Amanda', 12, 5, null, 16, 'Monday', 542);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (158, 'Harrison', 12, 5, null, 16, 'Thursday', 816);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (159, 'Rebeka', 11, 3, null, 13, 'Friday', 800);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (160, 'Cherry', 12, 7, null, 17, 'Sunday', 852);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (161, 'Nancy', 8, 4, null, 14, 'Wednesday', 744);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (162, 'Nanci', 10, 7, null, 15, 'Monday', 518);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (163, 'Sheryl', 10, 5, null, 16, 'Tuesday', 738);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (164, 'Susan', 6, 7, null, 16, 'Sunday', 710);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (165, 'Miko', 8, 5, null, 13, 'Sunday', 572);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (166, 'Vickie', 9, 7, null, 16, 'Wednesday', 770);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (167, 'Red', 4, 4, null, 17, 'Tuesday', 730);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (168, 'Willem', 12, 6, null, 14, 'Tuesday', 629);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (169, 'Debi', 5, 3, null, 16, 'Wednesday', 702);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (170, 'Mika', 12, 7, null, 15, 'Sunday', 766);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (171, 'Danni', 4, 5, null, 13, 'Monday', 754);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (172, 'Demi', 4, 5, null, 16, 'Wednesday', 706);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (173, 'Madeleine', 10, 5, null, 14, 'Thursday', 509);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (174, 'Lindsey', 9, 3, null, 14, 'Thursday', 809);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (175, 'Nicky', 8, 4, null, 16, 'Monday', 556);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (176, 'Bo', 5, 3, null, 14, 'Thursday', 653);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (177, 'Drew', 10, 6, null, 14, 'Tuesday', 617);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (178, 'Martha', 12, 4, null, 14, 'Friday', 576);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (179, 'Brothers', 10, 5, null, 17, 'Wednesday', 712);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (180, 'Suzanne', 12, 3, null, 15, 'Monday', 676);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (181, 'Teri', 8, 7, null, 14, 'Wednesday', 654);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (182, 'Tamala', 4, 5, null, 16, 'Monday', 822);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (183, 'Paul', 12, 3, null, 14, 'Wednesday', 494);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (184, 'Gilbert', 8, 7, null, 17, 'Wednesday', 593);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (185, 'Jude', 9, 3, null, 16, 'Sunday', 655);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (186, 'Brooke', 10, 5, null, 17, 'Thursday', 495);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (187, 'Johnny', 7, 3, null, 16, 'Friday', 587);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (188, 'Edie', 7, 5, null, 17, 'Friday', 762);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (189, 'Nicholas', 4, 3, null, 17, 'Sunday', 470);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (190, 'Danny', 4, 6, null, 17, 'Wednesday', 492);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (191, 'Kelly', 7, 6, null, 16, 'Tuesday', 607);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (192, 'Pierce', 9, 7, null, 14, 'Tuesday', 845);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (193, 'Minnie', 12, 5, null, 14, 'Friday', 812);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (194, 'Julianne', 7, 4, null, 17, 'Wednesday', 826);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (195, 'Chantי', 10, 5, null, 16, 'Friday', 662);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (196, 'Lucy', 4, 7, null, 17, 'Wednesday', 792);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (197, 'Chely', 12, 6, null, 16, 'Wednesday', 715);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (198, 'Stephanie', 6, 6, null, 14, 'Friday', 823);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (199, 'Carrie', 6, 7, null, 13, 'Wednesday', 529);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (200, 'Vivica', 11, 4, null, 13, 'Thursday', 853);
commit;
prompt 200 records committed...
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (201, 'Nikki', 6, 7, null, 16, 'Monday', 634);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (202, 'Loren', 6, 7, null, 13, 'Wednesday', 750);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (203, 'Albertina', 10, 4, null, 17, 'Tuesday', 456);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (204, 'Leo', 12, 6, null, 14, 'Wednesday', 609);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (205, 'Maxine', 10, 7, null, 17, 'Monday', 758);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (206, 'Andrew', 4, 4, null, 14, 'Friday', 458);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (207, 'Diane', 10, 3, null, 13, 'Tuesday', 795);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (208, 'Sander', 8, 4, null, 16, 'Thursday', 638);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (209, 'Nicholas', 5, 7, null, 16, 'Thursday', 549);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (210, 'Claire', 8, 4, null, 14, 'Friday', 659);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (211, 'Andy', 6, 6, null, 13, 'Sunday', 849);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (212, 'Salma', 12, 3, null, 13, 'Sunday', 795);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (213, 'Ozzy', 12, 3, null, 14, 'Wednesday', 713);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (214, 'Alfred', 12, 6, null, 17, 'Monday', 817);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (215, 'Casey', 5, 3, null, 15, 'Tuesday', 557);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (216, 'Andie', 12, 5, null, 13, 'Wednesday', 723);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (217, 'Wally', 9, 5, null, 15, 'Tuesday', 787);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (218, 'Liv', 4, 4, null, 16, 'Friday', 475);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (219, 'Franz', 8, 7, null, 16, 'Tuesday', 600);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (220, 'Nastassja', 11, 3, null, 17, 'Sunday', 592);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (221, 'France', 7, 3, null, 15, 'Tuesday', 758);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (222, 'Allison', 9, 6, null, 16, 'Thursday', 806);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (223, 'Penelope', 4, 5, null, 17, 'Friday', 520);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (224, 'Juliette', 12, 7, null, 17, 'Monday', 854);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (225, 'Dabney', 12, 6, null, 14, 'Tuesday', 705);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (226, 'Diamond', 7, 6, null, 15, 'Thursday', 778);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (227, 'Cherry', 6, 7, null, 14, 'Sunday', 484);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (228, 'Joanna', 12, 7, null, 17, 'Thursday', 631);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (229, 'Lloyd', 4, 6, null, 13, 'Sunday', 463);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (230, 'Mary-Louise', 11, 6, null, 13, 'Friday', 756);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (231, 'Ray', 11, 4, null, 14, 'Wednesday', 658);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (232, 'Carrie-Anne', 12, 7, null, 13, 'Friday', 726);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (233, 'Jake', 7, 7, null, 17, 'Wednesday', 516);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (234, 'Edgar', 6, 6, null, 15, 'Monday', 726);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (235, 'Charlie', 12, 7, null, 17, 'Tuesday', 609);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (236, 'Corey', 11, 3, null, 14, 'Tuesday', 456);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (237, 'Coley', 8, 4, null, 15, 'Sunday', 514);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (238, 'Glen', 10, 3, null, 16, 'Wednesday', 740);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (239, 'Nikki', 11, 7, null, 13, 'Friday', 741);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (240, 'Emily', 11, 7, null, 15, 'Wednesday', 714);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (241, 'Brittany', 10, 5, null, 13, 'Sunday', 612);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (242, 'Wendy', 8, 3, null, 17, 'Friday', 788);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (243, 'Darius', 7, 7, null, 13, 'Tuesday', 541);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (244, 'Connie', 10, 3, null, 15, 'Tuesday', 851);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (245, 'Davy', 4, 7, null, 16, 'Sunday', 839);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (246, 'Denise', 8, 7, null, 13, 'Monday', 499);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (247, 'Tcheky', 10, 3, null, 15, 'Tuesday', 464);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (248, 'Gena', 7, 7, null, 16, 'Monday', 588);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (249, 'Donna', 12, 5, null, 16, 'Thursday', 485);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (250, 'Kitty', 6, 3, null, 16, 'Thursday', 662);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (251, 'Merle', 10, 5, null, 15, 'Sunday', 634);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (252, 'Lenny', 8, 4, null, 15, 'Monday', 557);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (253, 'Gailard', 8, 5, null, 15, 'Wednesday', 728);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (254, 'Hector', 7, 4, null, 15, 'Wednesday', 571);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (255, 'Mickey', 11, 7, null, 15, 'Monday', 770);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (256, 'Don', 8, 4, null, 16, 'Thursday', 649);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (257, 'Jake', 4, 5, null, 13, 'Thursday', 459);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (258, 'Herbie', 4, 5, null, 16, 'Tuesday', 803);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (259, 'Dennis', 12, 7, null, 14, 'Tuesday', 547);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (260, 'Rachid', 5, 4, null, 13, 'Monday', 610);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (261, 'Pam', 8, 6, null, 16, 'Monday', 566);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (262, 'Leelee', 12, 7, null, 13, 'Wednesday', 610);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (263, 'Davey', 6, 6, null, 17, 'Thursday', 770);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (264, 'Cherry', 11, 4, null, 14, 'Tuesday', 845);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (265, 'Remy', 11, 4, null, 16, 'Tuesday', 610);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (266, 'Veruca', 5, 6, null, 14, 'Wednesday', 748);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (267, 'Doug', 5, 4, null, 14, 'Friday', 578);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (268, 'Deborah', 5, 3, null, 14, 'Monday', 655);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (269, 'Gladys', 8, 4, null, 17, 'Friday', 753);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (270, 'Neil', 9, 7, null, 14, 'Sunday', 516);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (271, 'Teri', 10, 7, null, 13, 'Sunday', 676);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (272, 'Steve', 8, 6, null, 14, 'Sunday', 698);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (273, 'Delroy', 5, 4, null, 17, 'Wednesday', 492);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (274, 'CeCe', 7, 3, null, 13, 'Wednesday', 640);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (275, 'Lorraine', 12, 4, null, 16, 'Thursday', 584);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (276, 'Salma', 10, 6, null, 14, 'Monday', 474);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (277, 'Richard', 12, 4, null, 15, 'Thursday', 630);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (278, 'Kieran', 11, 7, null, 15, 'Wednesday', 760);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (279, 'Crystal', 6, 3, null, 16, 'Wednesday', 721);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (280, 'Liam', 6, 7, null, 16, 'Wednesday', 835);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (281, 'Helen', 5, 6, null, 14, 'Wednesday', 463);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (282, 'Samuel', 9, 3, null, 16, 'Tuesday', 756);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (283, 'Pete', 6, 6, null, 15, 'Sunday', 505);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (284, 'Louise', 12, 4, null, 15, 'Tuesday', 716);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (285, 'Jose', 10, 5, null, 16, 'Wednesday', 603);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (286, 'Ben', 7, 5, null, 17, 'Friday', 701);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (287, 'Mint', 10, 6, null, 13, 'Thursday', 485);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (288, 'Chad', 11, 7, null, 13, 'Friday', 502);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (289, 'Neve', 5, 4, null, 15, 'Friday', 612);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (290, 'Matthew', 11, 3, null, 16, 'Tuesday', 627);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (291, 'Viggo', 10, 4, null, 15, 'Thursday', 492);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (292, 'April', 8, 3, null, 13, 'Tuesday', 813);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (293, 'Meryl', 10, 4, null, 17, 'Friday', 671);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (294, 'Eileen', 11, 5, null, 17, 'Wednesday', 524);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (295, 'Connie', 7, 7, null, 17, 'Monday', 621);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (296, 'Wendy', 12, 3, null, 17, 'Thursday', 704);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (297, 'Katrin', 5, 5, null, 15, 'Sunday', 476);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (298, 'Collin', 10, 4, null, 16, 'Thursday', 566);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (299, 'Denny', 10, 7, null, 16, 'Monday', 632);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (300, 'Adam', 10, 4, null, 16, 'Wednesday', 512);
commit;
prompt 300 records committed...
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (301, 'Judi', 7, 6, null, 17, 'Wednesday', 547);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (302, 'Julianne', 10, 3, null, 16, 'Wednesday', 755);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (303, 'Teena', 11, 5, null, 15, 'Sunday', 579);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (304, 'Jackie', 7, 4, null, 13, 'Thursday', 513);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (305, 'Bette', 7, 6, null, 16, 'Wednesday', 776);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (306, 'Vickie', 10, 3, null, 17, 'Tuesday', 794);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (307, 'Henry', 10, 3, null, 17, 'Tuesday', 668);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (308, 'Veruca', 9, 3, null, 17, 'Sunday', 601);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (309, 'Carol', 4, 5, null, 16, 'Sunday', 586);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (310, 'Carrie', 12, 5, null, 15, 'Thursday', 587);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (311, 'Gordon', 9, 4, null, 15, 'Sunday', 731);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (312, 'Ernest', 7, 5, null, 16, 'Tuesday', 606);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (313, 'Nastassja', 9, 4, null, 14, 'Wednesday', 733);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (314, 'Molly', 12, 6, null, 17, 'Monday', 561);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (315, 'Chad', 11, 6, null, 13, 'Monday', 532);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (316, 'Praga', 4, 4, null, 13, 'Tuesday', 826);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (317, 'Peabo', 6, 5, null, 14, 'Sunday', 710);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (318, 'Chaka', 11, 5, null, 13, 'Wednesday', 612);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (319, 'Jonny Lee', 6, 3, null, 17, 'Wednesday', 496);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (320, 'Lee', 10, 4, null, 13, 'Wednesday', 785);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (321, 'Murray', 9, 7, null, 17, 'Friday', 598);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (322, 'Tim', 8, 5, null, 17, 'Tuesday', 478);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (323, 'Connie', 10, 3, null, 14, 'Monday', 463);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (324, 'Brent', 11, 7, null, 17, 'Tuesday', 622);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (325, 'Marlon', 4, 3, null, 15, 'Thursday', 528);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (326, 'Meg', 10, 4, null, 16, 'Wednesday', 738);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (327, 'Ned', 4, 5, null, 15, 'Monday', 466);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (328, 'Robbie', 7, 7, null, 15, 'Wednesday', 700);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (329, 'Kyle', 11, 4, null, 15, 'Friday', 575);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (330, 'Nora', 9, 3, null, 16, 'Thursday', 834);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (331, 'Denzel', 8, 6, null, 15, 'Wednesday', 737);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (332, 'Cameron', 7, 4, null, 16, 'Monday', 639);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (333, 'Cornell', 6, 5, null, 13, 'Thursday', 671);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (334, 'Jack', 9, 5, null, 13, 'Wednesday', 517);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (335, 'Aimee', 8, 3, null, 13, 'Wednesday', 531);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (336, 'Shannyn', 8, 7, null, 16, 'Monday', 579);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (337, 'Teena', 11, 4, null, 16, 'Friday', 548);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (338, 'Andrew', 8, 7, null, 16, 'Wednesday', 724);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (339, 'Austin', 6, 7, null, 15, 'Monday', 586);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (340, 'Trini', 10, 3, null, 14, 'Monday', 664);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (341, 'Carlos', 11, 7, null, 16, 'Friday', 506);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (342, 'Kyle', 6, 6, null, 16, 'Friday', 672);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (343, 'Alec', 11, 3, null, 16, 'Monday', 801);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (344, 'Gabriel', 12, 3, null, 14, 'Wednesday', 750);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (345, 'Patrick', 7, 4, null, 14, 'Sunday', 603);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (346, 'Isaiah', 5, 7, null, 14, 'Monday', 779);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (347, 'Mac', 6, 7, null, 14, 'Thursday', 732);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (348, 'Emilio', 11, 6, null, 17, 'Thursday', 745);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (349, 'Goran', 5, 3, null, 16, 'Wednesday', 670);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (350, 'Suzanne', 5, 5, null, 13, 'Thursday', 618);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (351, 'Yaphet', 5, 3, null, 14, 'Wednesday', 533);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (352, 'Brittany', 8, 3, null, 13, 'Sunday', 765);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (353, 'Domingo', 10, 6, null, 16, 'Friday', 755);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (354, 'Judge', 4, 6, null, 15, 'Thursday', 683);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (355, 'Xander', 8, 4, null, 15, 'Sunday', 702);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (356, 'Tori', 7, 6, null, 13, 'Monday', 721);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (357, 'Colleen', 6, 4, null, 14, 'Sunday', 787);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (358, 'Radney', 6, 6, null, 15, 'Tuesday', 791);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (359, 'Ving', 7, 5, null, 17, 'Tuesday', 661);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (360, 'Ashton', 7, 3, null, 17, 'Friday', 528);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (361, 'Avril', 4, 5, null, 17, 'Wednesday', 670);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (362, 'Leslie', 12, 7, null, 14, 'Friday', 702);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (363, 'Miguel', 7, 4, null, 17, 'Wednesday', 561);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (364, 'Jackson', 7, 6, null, 17, 'Friday', 541);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (365, 'Gates', 7, 3, null, 17, 'Wednesday', 799);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (366, 'Heather', 9, 5, null, 17, 'Friday', 569);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (367, 'Phoebe', 10, 7, null, 14, 'Sunday', 711);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (368, 'Judy', 4, 6, null, 16, 'Tuesday', 617);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (369, 'Dianne', 4, 5, null, 13, 'Thursday', 597);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (370, 'Collective', 11, 3, null, 13, 'Sunday', 810);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (371, 'Gates', 4, 4, null, 16, 'Monday', 632);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (372, 'Jody', 4, 5, null, 16, 'Wednesday', 595);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (373, 'Vanessa', 5, 6, null, 13, 'Wednesday', 690);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (374, 'Josh', 9, 3, null, 13, 'Thursday', 602);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (375, 'Andrea', 6, 3, null, 14, 'Wednesday', 534);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (376, 'Noah', 5, 4, null, 15, 'Thursday', 611);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (377, 'Goran', 7, 4, null, 16, 'Monday', 687);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (378, 'Nancy', 8, 6, null, 15, 'Tuesday', 611);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (379, 'Charlie', 10, 7, null, 17, 'Thursday', 823);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (380, 'Matt', 10, 4, null, 15, 'Sunday', 833);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (381, 'Rhea', 10, 5, null, 16, 'Tuesday', 608);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (382, 'Simon', 4, 5, null, 15, 'Friday', 733);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (383, 'James', 5, 4, null, 17, 'Thursday', 827);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (384, 'Miriam', 8, 3, null, 14, 'Friday', 615);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (385, 'Kurt', 4, 6, null, 15, 'Friday', 718);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (386, 'Petula', 11, 4, null, 15, 'Tuesday', 467);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (387, 'Noah', 8, 5, null, 14, 'Sunday', 752);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (388, 'Sarah', 8, 5, null, 13, 'Tuesday', 693);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (389, 'Celia', 6, 6, null, 17, 'Wednesday', 594);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (390, 'Alex', 5, 6, null, 14, 'Tuesday', 722);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (391, 'Keanu', 4, 5, null, 16, 'Sunday', 459);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (392, 'Jean-Claude', 6, 5, null, 13, 'Monday', 784);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (393, 'Lance', 4, 3, null, 17, 'Sunday', 621);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (394, 'Willie', 5, 3, null, 13, 'Thursday', 623);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (395, 'Charlize', 10, 5, null, 17, 'Sunday', 672);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (396, 'Willie', 6, 5, null, 14, 'Sunday', 628);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (397, 'Will', 7, 7, null, 13, 'Friday', 704);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (398, 'Lily', 10, 7, null, 16, 'Tuesday', 575);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (399, 'Veruca', 7, 7, null, 14, 'Sunday', 600);
insert into GROUPS (group_id, group_name, age_group, group_size, kteacher_id, hour, class_day, class_id)
values (400, 'Rene', 8, 3, null, 17, 'Monday', 848);
commit;
prompt 400 records loaded
prompt Loading CHILDREN...
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Joely', 'Sorvino', '16941', null, 'Joely', '0577652860', '672 Boulder', 299);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Ray', 'Nicholson', '26672', null, 'Ray', '0509541104', '33 Bello Street', 34);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Garry', 'Reynolds', '84613', null, 'Garry', '0506571832', '655 Joli Street', 264);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Mel', 'Voight', '92814', null, 'Mel', '0527440757', '41 Charles Street', 360);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Christina', 'Utada', '67855', null, 'Christina', '0566435699', '43 Miko Street', 99);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Danny', 'Van Damme', '92856', null, 'Danny', '0568006106', '27 Edmunds Road', 160);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('John', 'Jenkins', '58447', null, 'John', '0515892094', '157 Nickel Road', 387);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Viggo', 'Burke', '92798', null, 'Viggo', '0523951648', '48 Jean-Claude Drive', 270);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Mena', 'Chambers', '52799', null, 'Mena', '0558787386', '84 Iglesias Blvd', 132);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Colm', 'O''Neill', '385510', null, 'Colm', '0567678738', '19 Bernard Road', 347);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Glenn', 'Aiken', '994411', null, 'Glenn', '0516828902', '69 Lisbon', 290);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Kitty', 'Amos', '419312', null, 'Kitty', '0566677547', '63rd Street', 296);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Alannah', 'Swank', '477513', null, 'Alannah', '0542591806', '74 Teena Blvd', 241);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Luke', 'Kretschmann', '815914', null, 'Luke', '0562620188', '55 Saxon Street', 374);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Trick', 'Quinlan', '931915', null, 'Trick', '0508616704', '46 Dooley Road', 354);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Debbie', 'Boothe', '161316', null, 'Debbie', '0555352656', '70 Kuopio Road', 53);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Avril', 'Bacharach', '372817', null, 'Avril', '0535395402', '27 Palo Alto', 146);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Kyra', 'Bloch', '732818', null, 'Kyra', '0578692096', '53 Favreau Street', 172);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Anjelica', 'Camp', '955619', null, 'Anjelica', '0553976170', '32 Jackson Blvd', 351);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Bridget', 'McFadden', '556720', null, 'Bridget', '0568084206', '79 Forrest Road', 189);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Walter', 'Reiner', '657521', null, 'Walter', '0576191941', '77 Cobbs Street', 132);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Breckin', 'Reilly', '853722', null, 'Breckin', '0525881123', '60 Fonda Drive', 76);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Luke', 'Cummings', '645523', null, 'Luke', '0522782425', '3 Domino Blvd', 96);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Hector', 'Coward', '635924', null, 'Hector', '0573977342', '90 Dunn Street', 366);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Alicia', 'Garofalo', '993525', null, 'Alicia', '0515417151', '39 Bradley Road', 304);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Maceo', 'Blaine', '693226', null, 'Maceo', '0559479294', '684 Jamie Street', 163);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Taylor', 'Chan', '991127', null, 'Taylor', '0549186740', '39 Soroe Drive', 323);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Casey', 'Chambers', '538128', null, 'Casey', '0505955059', '20 Delroy', 379);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Chad', 'Giraldo', '756129', null, 'Chad', '0533945024', '132 Ozzy', 151);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Russell', 'Biehn', '542130', null, 'Russell', '0503025446', '33 Lithgow Street', 217);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Philip', 'Rowlands', '769831', null, 'Philip', '0534088813', '866 Stuermer Blvd', 215);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Roger', 'Witt', '492232', null, 'Roger', '0505300707', '68 Vai Ave', 314);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Stevie', 'Rodriguez', '581233', null, 'Stevie', '0549305817', '446 Ronstadt Drive', 355);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Fred', 'Peniston', '369234', null, 'Fred', '0513447277', '64 Art Road', 280);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Jody', 'Winans', '273335', null, 'Jody', '0543490190', '91 Benicio Road', 340);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Cheech', 'Allison', '945436', null, 'Cheech', '0522542059', '24 Bush Street', 212);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Cheryl', 'Tucker', '186437', null, 'Cheryl', '0575079838', '56 Barcelona Road', 126);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Sandra', 'Preston', '553838', null, 'Sandra', '0556628955', '18 Stocksbridge Stre', 35);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Claude', 'Satriani', '379839', null, 'Claude', '0568584199', '82 Emma Road', 158);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Lari', 'Ingram', '979940', null, 'Lari', '0505090325', '920 McCracken Road', 261);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Trace', 'Whitford', '227141', null, 'Trace', '0535838102', '62nd Street', 258);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Anna', 'Hersh', '338242', null, 'Anna', '0565070842', '48 Jamal Road', 327);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Patti', 'Boothe', '818443', null, 'Patti', '0529413580', '33 McLean Road', 263);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Kylie', 'Roberts', '898744', null, 'Kylie', '0537987071', '813 Lara Road', 10);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Jann', 'Swayze', '298845', null, 'Jann', '0505580804', '337 Cate Drive', 175);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Rade', 'Oakenfold', '945846', null, 'Rade', '0537499159', '76 Wong Street', 317);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Ashton', 'Robards', '891747', null, 'Ashton', '0524652234', '49 Everett Road', 275);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Clay', 'Hanks', '138848', null, 'Clay', '0513582013', '91 Green bay Street', 26);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Christine', 'Deschanel', '336449', null, 'Christine', '0565255507', '49 Shannyn', 117);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Alfie', 'Edmunds', '545450', null, 'Alfie', '0509793272', '54 Billerica Ave', 151);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Toshiro', 'Tolkan', '786551', null, 'Toshiro', '0577674159', '32 Charleston Road', 359);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Gary', 'Mahood', '657152', null, 'Gary', '0508404771', '28 Butler Road', 327);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Suzanne', 'Aykroyd', '315153', null, 'Suzanne', '0544738210', '33rd Street', 196);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Gene', 'Tsettos', '936954', null, 'Gene', '0549601019', '9 Bean Ave', 92);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Howard', 'Shaye', '344755', null, 'Howard', '0507201564', '63 Colman Blvd', 209);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Bruce', 'Cross', '141256', null, 'Bruce', '0566934440', '63rd Street', 262);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Suzi', 'Cheadle', '589157', null, 'Suzi', '0545679516', '16 Phillips Street', 254);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Rhett', 'Supernaw', '941958', null, 'Rhett', '0537774651', '4 Bean', 153);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Franco', 'De Almeida', '795559', null, 'Franco', '0553423856', '94 Kyle Blvd', 346);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Tanya', 'Reubens', '861560', null, 'Tanya', '0549313331', '13 Kurt Ave', 229);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Alfred', 'Chinlund', '119861', null, 'Alfred', '0549104795', '80 Daniels Road', 394);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Kathleen', 'Wine', '138962', null, 'Kathleen', '0559975345', '82 Bruxelles Road', 367);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Lennie', 'Gold', '687363', null, 'Lennie', '0516821334', '37 Kimball Drive', 92);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Gran', 'Fierstein', '662464', null, 'Gran', '0558315299', '18 Jonny Road', 37);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Bridgette', 'Perry', '828665', null, 'Bridgette', '0533244232', '94 Kinney Drive', 259);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Dan', 'Devine', '927666', null, 'Dan', '0539165268', '12 Graham Road', 103);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Deborah', 'Secada', '746767', null, 'Deborah', '0522828856', '917 Nina', 246);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Mae', 'McGill', '598868', null, 'Mae', '0566360918', '98 Guinness Blvd', 101);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Joshua', 'Balin', '355669', null, 'Joshua', '0578468341', '8 Kinnear Ave', 393);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Ernie', 'Christie', '551370', null, 'Ernie', '0543434360', '15 Sander Blvd', 185);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Eugene', 'Vaughan', '466771', null, 'Eugene', '0505901744', '17 Vondie Street', 336);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Colm', 'Almond', '559672', null, 'Colm', '0559648724', '28 Young Street', 374);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Rodney', 'Kane', '348473', null, 'Rodney', '0533944353', '124 Shocked', 93);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Claude', 'Coyote', '335174', null, 'Claude', '0556249774', '58 Speaks Street', 72);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Mickey', 'McCabe', '487475', null, 'Mickey', '0513354523', '91 Conners Street', 159);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Ralph', 'Whitley', '144576', null, 'Ralph', '0527034225', '22nd Street', 118);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Debi', 'Dourif', '719877', null, 'Debi', '0556022374', '89 Queen Street', 278);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Morris', 'Nightingale', '812578', null, 'Morris', '0557078621', '40 Chapel hill Road', 148);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Grace', 'Purefoy', '738379', null, 'Grace', '0579533243', '66 Tennison Road', 255);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Armand', 'Clarkson', '488480', null, 'Armand', '0505844638', '65 Irati Road', 395);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Rita', 'Bugnon', '452781', null, 'Rita', '0543258377', '72nd Street', 88);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Chrissie', 'Thorton', '741282', null, 'Chrissie', '0524700660', '50 Natacha Street', 305);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Illeana', 'Buscemi', '689683', null, 'Illeana', '0554641161', '50 Karlsruhe Drive', 341);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Rhett', 'Roy Parnell', '573684', null, 'Rhett', '0554698375', '878 Chambersburg Str', 196);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Jon', 'Adams', '867785', null, 'Jon', '0523234670', '91 Maury Drive', 273);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Davis', 'Scaggs', '973286', null, 'Davis', '0536057468', '37 Kaohsiung Street', 18);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Vickie', 'Vaughan', '893587', null, 'Vickie', '0513949875', '20 Gordon Road', 153);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Dabney', 'Rawls', '324588', null, 'Dabney', '0506893288', '73rd Street', 216);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Mika', 'Scorsese', '247789', null, 'Mika', '0536102036', '14 Atlanta Drive', 91);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Harold', 'Whitwam', '443990', null, 'Harold', '0513024490', '853 Bischofshofen Ro', 209);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Max', 'Dzundza', '198991', null, 'Max', '0502756241', '73 Zane Street', 369);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Salma', 'Beckham', '622792', null, 'Salma', '0542828567', '30 Tucson Street', 288);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Nancy', 'MacLachlan', '799593', null, 'Nancy', '0502944829', '69 Alana Blvd', 359);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Glen', 'Silverman', '725494', null, 'Glen', '0537596132', '163 Adelaide Road', 275);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Hope', 'Clooney', '317195', null, 'Hope', '0567588356', '665 Taipei Road', 101);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Irene', 'Patillo', '862296', null, 'Irene', '0538805793', '11st Street', 34);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Colin', 'Zellweger', '534897', null, 'Colin', '0515620466', '581 Connery Street', 321);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Jesse', 'Posey', '695798', null, 'Jesse', '0545210021', '87 Kinski Drive', 259);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Randall', 'Kilmer', '414899', null, 'Randall', '0555570770', '10 Plowright Street', 153);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Stewart', 'Garza', '9731100', null, 'Stewart', '0559517156', '17 McElhone Drive', 395);
commit;
prompt 100 records committed...
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Billy', 'Davison', '4431101', null, 'Billy', '0567054103', '92 Finn Blvd', 75);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Dabney', 'Eldard', '4856102', null, 'Dabney', '0532637591', '85 Charlottesville R', 117);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Bette', 'Maguire', '4835103', null, 'Bette', '0514327075', '54 Fornacette Blvd', 268);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Kay', 'Ruiz', '1387104', null, 'Kay', '0523692419', '2 Judd Drive', 259);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Cheech', 'Posener', '5837105', null, 'Cheech', '0542968510', '60 Amarillo Ave', 164);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Pete', 'Mantegna', '9425106', null, 'Pete', '0579763572', '45 Chinlund Road', 22);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Pierce', 'Hanley', '3212107', null, 'Pierce', '0559493336', '63 Wahlberg Street', 338);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Gabrielle', 'Miller', '2636108', null, 'Gabrielle', '0535362346', '631 Cameron Ave', 238);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Hugh', 'Spacey', '9162109', null, 'Hugh', '0566209765', '45 Payne Blvd', 347);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Pierce', 'Bacharach', '9625110', null, 'Pierce', '0569656727', '100 Coverdale Drive', 341);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Paula', 'Dalton', '7344111', null, 'Paula', '0579336725', '84 Duchovny Blvd', 206);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Edward', 'Browne', '5197112', null, 'Edward', '0544616570', '25 Tracy Road', 311);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Liev', 'Isaacs', '4355113', null, 'Liev', '0569825667', '27 Utrecht Blvd', 197);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Brenda', 'Gatlin', '5632114', null, 'Brenda', '0544008496', '8 Stiles Road', 78);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Michael', 'Peebles', '1758115', null, 'Michael', '0503777834', '49 Hyderabad Road', 303);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Yolanda', 'O''Sullivan', '3329116', null, 'Yolanda', '0552893146', '85 Crudup Street', 230);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Ray', 'Baez', '7599117', null, 'Ray', '0544427083', '98 Thurman', 127);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Beth', 'Drive', '2229118', null, 'Beth', '0559474892', '5 Curtis-Hall Road', 216);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Warren', 'Tolkan', '2145119', null, 'Warren', '0533655903', '486 Doncaster Blvd', 47);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Gates', 'Van Der Beek', '9884120', null, 'Gates', '0513880913', '100 Tilburg Road', 185);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Penelope', 'Pearce', '2183121', null, 'Penelope', '0524268173', '97 Pollak Blvd', 1);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Javon', 'McGill', '8623122', null, 'Javon', '0524775099', '922 Prague Road', 7);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Sammy', 'Blaine', '1386123', null, 'Sammy', '0538074674', '91 Berkshire Street', 126);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Miguel', 'Kutcher', '2439124', null, 'Miguel', '0573859548', '44 Imperioli Road', 202);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Matthew', 'Arkin', '7928125', null, 'Matthew', '0555015705', '49 Bristol Drive', 363);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Beth', 'Basinger', '2499126', null, 'Beth', '0562879087', '21 Buffalo Street', 230);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Wesley', 'Lapointe', '5568127', null, 'Wesley', '0525274313', '29 Lance Street', 242);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Famke', 'Westerberg', '4972128', null, 'Famke', '0547934229', '8 Kelly Drive', 179);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Rodney', 'Utada', '4774129', null, 'Rodney', '0523484278', '953 Loeb Ave', 130);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Elizabeth', 'Buscemi', '4238130', null, 'Elizabeth', '0508523380', '92 Thessaloniki Driv', 375);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('April', 'Carrack', '8755131', null, 'April', '0502982780', '13 Mathis Drive', 143);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Jean-Claude', 'Hyde', '5419132', null, 'Jean-Claude', '0554342943', '37 Allan Blvd', 231);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Charlton', 'Benoit', '7131133', null, 'Charlton', '0512455839', '53 Sanders Ave', 34);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Veruca', 'Williams', '4565134', null, 'Veruca', '0544268649', '12nd Street', 77);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Joey', 'Thewlis', '9249135', null, 'Joey', '0536368213', '32 Lee Drive', 57);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Taylor', 'Robbins', '3711136', null, 'Taylor', '0524553916', '999 North Point Road', 381);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Nikki', 'Gaynor', '2522137', null, 'Nikki', '0554815850', '78 Womack Drive', 22);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Ozzy', 'Fonda', '4284138', null, 'Ozzy', '0543773307', '2 Tooele Road', 318);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Willem', 'Patrick', '2596139', null, 'Willem', '0575971248', '32nd Street', 14);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Samuel', 'Johansen', '5742140', null, 'Samuel', '0559262046', '30 Lara Road', 22);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Lupe', 'Blossoms', '2647141', null, 'Lupe', '0556861131', '22 Reeves Road', 18);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Jann', 'Garofalo', '8857142', null, 'Jann', '0547206914', '60 Nathan Street', 264);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Morris', 'Payne', '3851143', null, 'Morris', '0526849072', '25 Cale Road', 247);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Leon', 'Ingram', '2884144', null, 'Leon', '0565691289', '75 Nashua Road', 153);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Penelope', 'Fiorentino', '1577145', null, 'Penelope', '0576425436', '88 Blair Ave', 353);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Heath', 'Rain', '7456146', null, 'Heath', '0503414142', '15 Glenn Road', 366);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Carl', 'Holden', '5581147', null, 'Carl', '0577953147', '3 Rowlands Road', 222);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Albert', 'Affleck', '4188148', null, 'Albert', '0513926217', '40 Dallas Street', 76);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Leo', 'Kimball', '3184149', null, 'Leo', '0504791488', '42 Zeta-Jones Street', 320);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Horace', 'Warren', '8559150', null, 'Horace', '0525506295', '42nd Street', 52);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Alan', 'Supernaw', '3783151', null, 'Alan', '0538555533', '33 Peachtree City Dr', 160);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Kazem', 'Haggard', '2769152', null, 'Kazem', '0555566555', '105 Jose Road', 160);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Charlton', 'Kutcher', '1497153', null, 'Charlton', '0532566300', '34 West Launceston S', 293);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Alicia', 'Idle', '2567154', null, 'Alicia', '0517752692', '8 Hazel Drive', 348);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Hector', 'Crow', '2138155', null, 'Hector', '0522569061', '93rd Street', 76);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Hazel', 'Phillips', '4834156', null, 'Hazel', '0559824393', '39 Crow Street', 37);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Benjamin', 'Liotta', '3255157', null, 'Benjamin', '0543772354', '84 Cornell Street', 232);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Edwin', 'Pigott-Smith', '5217158', null, 'Edwin', '0548894541', '78 Samuel Road', 222);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Breckin', 'Negbaur', '8797159', null, 'Breckin', '0559073343', '57 New Hyde Park Dri', 177);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Maxine', 'Beckinsale', '6944160', null, 'Maxine', '0529731382', '241 Judd', 279);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Tracy', 'Roberts', '4293161', null, 'Tracy', '0535701727', '85 Tlalpan Road', 197);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Rolando', 'Snow', '6328162', null, 'Rolando', '0502604393', '49 Bismarck Road', 33);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Tcheky', 'Cube', '7771163', null, 'Tcheky', '0539652907', '12 Bruneck Drive', 92);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Armand', 'Quinn', '7472164', null, 'Armand', '0563754991', '56 Phillippe Drive', 39);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Vincent', 'Delta', '1782165', null, 'Vincent', '0546483870', '53 Loretta Blvd', 52);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Philip', 'Butler', '6384166', null, 'Philip', '0526181225', '56 Cale Ave', 239);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Shannon', 'Smith', '2966167', null, 'Shannon', '0516305341', '11 Dean Road', 298);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Lois', 'Mahoney', '4568168', null, 'Lois', '0536315788', '372 Whitmore Road', 172);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Steven', 'Lithgow', '6931169', null, 'Steven', '0548107559', '100 Cuiabב Street', 27);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Wayman', 'Northam', '7855170', null, 'Wayman', '0537432233', '305 Copeland Street', 387);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Lila', 'Marie', '8119171', null, 'Lila', '0576663078', '29 Cara Drive', 260);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Julie', 'Olin', '1828172', null, 'Julie', '0526978189', '42nd Street', 157);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Terri', 'Holm', '6974173', null, 'Terri', '0523523287', '21 Stampley Street', 94);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Chi', 'Elliott', '8556174', null, 'Chi', '0516861716', '53 Hong Kong Street', 27);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Carrie-Anne', 'Bloch', '3374175', null, 'Carrie-Anne', '0517939594', '19 Phifer', 276);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Irene', 'Broza', '8115176', null, 'Irene', '0576976361', '69 Eliza Road', 319);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Lynette', 'Crosby', '4794177', null, 'Lynette', '0502397260', '10 Rascal Ave', 51);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Gran', 'Kane', '7151178', null, 'Gran', '0566489057', '84 Hatchet Road', 155);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Gino', 'Zellweger', '3362179', null, 'Gino', '0529684973', '615 Russell', 349);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Coley', 'Lofgren', '4134180', null, 'Coley', '0515291130', '355 Elvis', 274);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Steven', 'Reilly', '7846181', null, 'Steven', '0572506057', '63 Concordville', 160);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Nicky', 'Chao', '1199182', null, 'Nicky', '0507558311', '96 Berlin', 15);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Stevie', 'Weisberg', '3189183', null, 'Stevie', '0504100165', '62 Stevens Road', 117);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Ned', 'Katt', '3988184', null, 'Ned', '0564868847', '40 Marley Road', 191);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Javon', 'Nielsen', '6287185', null, 'Javon', '0542870002', '55 Foley Street', 350);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Selma', 'Cleary', '5252186', null, 'Selma', '0575081020', '82 Fairview Heights ', 304);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Annie', 'Satriani', '9375187', null, 'Annie', '0575144812', '54 Geneva Drive', 279);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Vondie', 'Mulroney', '7985188', null, 'Vondie', '0578341808', '32nd Street', 382);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Chloe', 'Harper', '4327189', null, 'Chloe', '0577443795', '90 Quinones Road', 160);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Adam', 'Peniston', '6913190', null, 'Adam', '0523505755', '70 Tamala Street', 242);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Will', 'Malkovich', '3861191', null, 'Will', '0537029492', '52 Marc', 105);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Lance', 'Balin', '7633192', null, 'Lance', '0514157025', '729 Jolie Drive', 378);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Holly', 'Li', '2977193', null, 'Holly', '0512917087', '21 Lesley Street', 74);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Eliza', 'Brown', '9512194', null, 'Eliza', '0556522878', '174 Maryville Ave', 239);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Willie', 'Morton', '9253195', null, 'Willie', '0502567922', '18 Lipnicki Drive', 150);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Brittany', 'Diesel', '2122196', null, 'Brittany', '0547425946', '14 Breckin Drive', 138);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Nelly', 'Lorenz', '5128197', null, 'Nelly', '0523922716', '3 Purefoy', 157);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Boyd', 'Lopez', '9954198', null, 'Boyd', '0524716895', '31st Street', 66);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Lorraine', 'Feore', '7389199', null, 'Lorraine', '0577578758', '32nd Street', 8);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Toshiro', 'Tennison', '7242200', null, 'Toshiro', '0517273544', '18 Wayne Road', 243);
commit;
prompt 200 records committed...
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Gerald', 'Hayes', '1647201', null, 'Gerald', '0556822597', '81 Molina Road', 179);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Warren', 'Rizzo', '4154202', null, 'Warren', '0515419172', '24 Wes Blvd', 379);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Loretta', 'Latifah', '7155203', null, 'Loretta', '0542604440', '364 Kozani Blvd', 250);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Christopher', 'Jenkins', '2752204', null, 'Christopher', '0557391444', '86 Carradine Road', 377);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Gran', 'Moss', '8881205', null, 'Gran', '0554034288', '3 Carrie-Anne Road', 341);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Allan', 'Hyde', '2139206', null, 'Allan', '0556371726', '69 Keith Road', 274);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Willie', 'Kershaw', '2463207', null, 'Willie', '0575467217', '78 Yaphet Street', 238);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Ming-Na', 'King', '5874208', null, 'Ming-Na', '0564099178', '40 Vaduz Street', 210);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Willie', 'Heron', '7768209', null, 'Willie', '0529647692', '823 Lizzy Blvd', 53);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Matt', 'Holmes', '4236210', null, 'Matt', '0546333748', '75 Belgrad Road', 207);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Edward', 'DeLuise', '9194211', null, 'Edward', '0563098533', '22 Diesel Road', 274);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Brent', 'Pastore', '4215212', null, 'Brent', '0553918974', '90 Eat World Street', 326);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Lionel', 'Bonham', '9912213', null, 'Lionel', '0574855482', '100 Goldberg Ave', 338);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Marina', 'Worrell', '3416214', null, 'Marina', '0577832070', '81 Changwon-si Road', 23);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Neneh', 'Young', '8475215', null, 'Neneh', '0509494724', '33rd Street', 290);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Raul', 'Sandoval', '9835216', null, 'Raul', '0506192368', '120 Hart Drive', 166);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Gates', 'Shue', '2854217', null, 'Gates', '0503113379', '95 McBride', 195);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Gord', 'Lewin', '3359218', null, 'Gord', '0502475932', '81st Street', 14);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Dom', 'Leary', '3189219', null, 'Dom', '0515275082', '21st Street', 87);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Juliana', 'Gibbons', '4599220', null, 'Juliana', '0569256294', '62nd Street', 239);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Nigel', 'Weisberg', '1731221', null, 'Nigel', '0549852104', '704 Kingsley Street', 86);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Claude', 'Driver', '9684222', null, 'Claude', '0539967908', '98 Summer', 372);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Emilio', 'Platt', '8173223', null, 'Emilio', '0575704197', '174 Sobieski Blvd', 57);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Lucy', 'Moss', '9391224', null, 'Lucy', '0505383766', '30 Harper Drive', 196);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Lari', 'Costello', '6254225', null, 'Lari', '0548431922', '429 Angie Drive', 31);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Joely', 'Swank', '6198226', null, 'Joely', '0566476770', '33 Fountain Hills Bl', 162);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Davey', 'Chestnut', '8873227', null, 'Davey', '0528944170', '85 Kinnear', 115);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Powers', 'Skerritt', '8267228', null, 'Powers', '0504945032', '73rd Street', 117);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Alfred', 'Shepard', '6831229', null, 'Alfred', '0524985314', '81 Smith Street', 125);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Peabo', 'Streep', '6362230', null, 'Peabo', '0549072255', '43rd Street', 356);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Rolando', 'Begley', '7669231', null, 'Rolando', '0576327598', '59 Connick Street', 115);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Nora', 'Springfield', '6616232', null, 'Nora', '0575821430', '52 Cocker Street', 132);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Jackson', 'Posey', '5185233', null, 'Jackson', '0526129772', '4 Phoenix Street', 33);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Leelee', 'Balin', '4844234', null, 'Leelee', '0505431047', '53 Lila Drive', 56);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Gabriel', 'Rosas', '4686235', null, 'Gabriel', '0578684417', '99 Karyo Street', 385);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Marisa', 'Frampton', '9855236', null, 'Marisa', '0523381333', '93 Schiff Drive', 90);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Christian', 'Boone', '5637237', null, 'Christian', '0534018296', '13 Rob Road', 45);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Faye', 'Dukakis', '2817238', null, 'Faye', '0507677065', '167 Adina Street', 45);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Glenn', 'Birch', '5459239', null, 'Glenn', '0524067003', '19 April Road', 189);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Bridget', 'Loveless', '5878240', null, 'Bridget', '0518786446', '74 Purley Road', 347);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Bebe', 'Keith', '6366241', null, 'Bebe', '0576943753', '24 Pearce Street', 55);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Marie', 'Thorton', '7526242', null, 'Marie', '0523703989', '451 Cherry', 81);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Lesley', 'Garfunkel', '5561243', null, 'Lesley', '0504655073', '52 Carolyn Road', 352);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Kim', 'Charles', '6321244', null, 'Kim', '0544773213', '36 Langella Road', 172);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Noah', 'Wilder', '3543245', null, 'Noah', '0577872040', '21st Street', 258);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Harriet', 'Gryner', '1518246', null, 'Harriet', '0514863970', '28 Sedaka', 97);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Petula', 'Olin', '1587247', null, 'Petula', '0575073611', '51 Howard Drive', 166);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Chantי', 'Doucette', '8176248', null, 'Chantי', '0553999490', '687 Greg Drive', 35);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Simon', 'Gallant', '7535249', null, 'Simon', '0513737682', '20 Vertical Drive', 136);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Kieran', 'De Niro', '5377250', null, 'Kieran', '0576056385', '22 Rory Drive', 304);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Chrissie', 'Harry', '4718251', null, 'Chrissie', '0575180066', '71st Street', 384);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Cary', 'Cohn', '6115252', null, 'Cary', '0545125743', '535 Davidson Road', 173);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Jaime', 'Frakes', '7124253', null, 'Jaime', '0545315434', '10 Bollensen', 40);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Toshiro', 'Kinnear', '5946254', null, 'Toshiro', '0506085802', '92nd Street', 17);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Remy', 'Webb', '4244255', null, 'Remy', '0553172044', '11 Raybon Street', 49);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Matthew', 'Shawn', '9271256', null, 'Matthew', '0523970342', '77 Frederic Road', 165);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Joy', 'Penders', '7447257', null, 'Joy', '0565667401', '11st Street', 118);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Lena', 'Griggs', '7983258', null, 'Lena', '0526135205', '126 Forest Park Road', 123);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Stockard', 'Pfeiffer', '2311259', null, 'Stockard', '0554768686', '31 Bham Street', 225);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Matthew', 'Kotto', '7395260', null, 'Matthew', '0559248820', '565 Tippe Drive', 348);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Garland', 'Hannah', '7565261', null, 'Garland', '0545067552', '25 Karlsruhe Blvd', 207);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Max', 'Wilkinson', '6553262', null, 'Max', '0569558701', '9 Payne Road', 266);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Rhys', 'Azaria', '3632263', null, 'Rhys', '0543639159', '93rd Street', 154);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Dave', 'Harris', '1843264', null, 'Dave', '0503262835', '42 Lillard Road', 23);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Ozzy', 'Parm', '7558265', null, 'Ozzy', '0552412030', '54 Tempe Drive', 172);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Natalie', 'Jay', '1181266', null, 'Natalie', '0577438795', '256 Coburn Road', 260);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Geoff', 'Paltrow', '7137267', null, 'Geoff', '0544522006', '74 Rod Street', 367);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Andrew', 'Lucien', '6271268', null, 'Andrew', '0563306212', '35 Boyd Road', 233);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Patty', 'McKennitt', '1524269', null, 'Patty', '0535590041', '67 Vega Road', 44);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Gates', 'Tilly', '7991270', null, 'Gates', '0503809864', '17 Bening Drive', 289);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Dermot', 'Rowlands', '3924271', null, 'Dermot', '0537539496', '100 Dysart Blvd', 317);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Art', 'Parm', '9133272', null, 'Art', '0546300297', '89 Murray Street', 306);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Jon', 'Nielsen', '3271273', null, 'Jon', '0508635070', '858 Jeff', 192);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Kelly', 'Carlton', '7534274', null, 'Kelly', '0529983226', '98 Vantaa Road', 201);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Burt', 'Benson', '9855275', null, 'Burt', '0533510336', '376 Phifer Road', 229);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('France', 'Heald', '3154276', null, 'France', '0578163390', '97 Ingram Road', 355);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Natalie', 'Forrest', '7465277', null, 'Natalie', '0513774064', '62nd Street', 395);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('April', 'Hartnett', '5515278', null, 'April', '0546307287', '83 Carlton Street', 364);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Junior', 'Chung', '3353279', null, 'Junior', '0509499704', '22 Rancho Palos Verd', 180);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Harris', 'Benet', '8826280', null, 'Harris', '0534893601', '41 Wilkinson Street', 351);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Taylor', 'Gill', '5151281', null, 'Taylor', '0565752619', '75 Vickie Blvd', 121);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Rose', 'Reeve', '1156282', null, 'Rose', '0574012826', '233 Robbie Street', 151);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Juan', 'Bell', '2972283', null, 'Juan', '0507303193', '87 Edwin Blvd', 271);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Allison', 'Osbourne', '1913284', null, 'Allison', '0543081603', '432 Oak park Drive', 240);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Hugh', 'Whitaker', '3122285', null, 'Hugh', '0543746037', '337 Rutger Road', 206);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Horace', 'Woodard', '6388286', null, 'Horace', '0548207126', '59 Darren Street', 351);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Hector', 'Cazale', '3244287', null, 'Hector', '0518652754', '47 Dourif Street', 18);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Benicio', 'Baker', '1413288', null, 'Benicio', '0547381416', '76 Bogguss Blvd', 59);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Kiefer', 'Epps', '4725289', null, 'Kiefer', '0565977036', '75 Duncan Road', 61);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Bobbi', 'Warwick', '7569290', null, 'Bobbi', '0557182394', '29 Hyderabad Street', 169);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Meryl', 'Stigers', '4835291', null, 'Meryl', '0533833749', '83rd Street', 56);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Joaquim', 'Portman', '5441292', null, 'Joaquim', '0579574074', '92 Di Savigliano Str', 78);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Loren', 'Fiorentino', '7242293', null, 'Loren', '0525044821', '70 Slater Blvd', 148);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Anjelica', 'Lennox', '4327294', null, 'Anjelica', '0565195873', '63 Balaban Road', 97);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Shirley', 'Dafoe', '9492295', null, 'Shirley', '0574938839', '96 Evanswood Road', 273);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Thin', 'Woodard', '8338296', null, 'Thin', '0544054371', '100 Warsaw Blvd', 95);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Tracy', 'Preston', '8671297', null, 'Tracy', '0526250707', '10 Douala Drive', 353);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Jean-Claude', 'Glover', '2792298', null, 'Jean-Claude', '0543810556', '24 Forrest Road', 287);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Larry', 'Child', '4769299', null, 'Larry', '0554720585', '344 Gallant Blvd', 80);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Katrin', 'Plimpton', '7649300', null, 'Katrin', '0524048377', '77 Hamburg Drive', 143);
commit;
prompt 300 records committed...
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Kirk', 'Duncan', '5969301', null, 'Kirk', '0575237605', '83 Corona Road', 393);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Jean-Claude', 'Suchet', '4967302', null, 'Jean-Claude', '0532865855', '52 Frederiksberg Roa', 94);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Ian', 'Baranski', '7628303', null, 'Ian', '0558796729', '67 Zwolle Road', 283);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Daniel', 'Breslin', '6227304', null, 'Daniel', '0517472567', '82 Place', 141);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Kevin', 'Gooding', '6558305', null, 'Kevin', '0506817285', '32nd Street', 42);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Larenz', 'Firth', '6195306', null, 'Larenz', '0579790582', '12 Larry Drive', 10);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Simon', 'Alexander', '9913307', null, 'Simon', '0535394475', '57 Jill', 210);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Ellen', 'Skaggs', '7848308', null, 'Ellen', '0528740989', '90 Suchet Road', 97);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Jean-Claude', 'McCormack', '9424309', null, 'Jean-Claude', '0515120664', '1 Shue', 311);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Tom', 'Saucedo', '3855310', null, 'Tom', '0506582799', '33 Durning Road', 321);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Joely', 'Breslin', '4792311', null, 'Joely', '0533008548', '10 Yomgok-dong Road', 37);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Sigourney', 'Watson', '3972312', null, 'Sigourney', '0559152008', '954 Vantaa Road', 381);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Sigourney', 'Jovovich', '4325313', null, 'Sigourney', '0556159920', '629 Balthazar Road', 250);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Maureen', 'Hagar', '5993314', null, 'Maureen', '0508510114', '29 Brugherio Drive', 157);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Lea', 'Lindo', '1512315', null, 'Lea', '0522525040', '26 Boone Street', 62);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Kristin', 'Holbrook', '3262316', null, 'Kristin', '0513732283', '29 Brock Road', 213);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Merrilee', 'Bancroft', '1864317', null, 'Merrilee', '0508480873', '39 Johnny Road', 315);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Tanya', 'Thornton', '7357318', null, 'Tanya', '0527169535', '33 Garr Road', 24);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Clive', 'Kidman', '7959319', null, 'Clive', '0573953984', '87 Santa Rosa Blvd', 274);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Ramsey', 'Colon', '2823320', null, 'Ramsey', '0536138588', '68 Osbourne Street', 230);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Will', 'Begley', '2163321', null, 'Will', '0553755800', '317 Phoebe', 383);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Carrie-Anne', 'Playboys', '6233322', null, 'Carrie-Anne', '0549832757', '66 Whitaker', 339);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Cary', 'Lithgow', '1348323', null, 'Cary', '0549882133', '31 Moss Drive', 217);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Clint', 'May', '8484324', null, 'Clint', '0556613458', '81 Hanley Street', 65);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Jonny', 'Vassar', '1446325', null, 'Jonny', '0548283601', '31 Assante Road', 205);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Toni', 'Harry', '9362326', null, 'Toni', '0573683115', '71st Street', 133);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Sydney', 'Hornsby', '2441327', null, 'Sydney', '0517390250', '23rd Street', 377);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Freddy', 'Jenkins', '7835328', null, 'Freddy', '0543133518', '83 Davis Road', 35);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Maceo', 'Plimpton', '5981329', null, 'Maceo', '0514136155', '2 Ty', 141);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('April', 'Silverman', '1181330', null, 'April', '0519139437', '313 Magnuson Drive', 77);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Jackie', 'Flanery', '7857331', null, 'Jackie', '0549674725', '84 Sursee Street', 3);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Ann', 'Rains', '1875332', null, 'Ann', '0572594623', '2 Clarence Drive', 369);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Rose', 'Hampton', '6618333', null, 'Rose', '0503031939', '37 Ryder Street', 350);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Mykelti', 'Supernaw', '4497334', null, 'Mykelti', '0556177072', '13rd Street', 299);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Parker', 'Davis', '2688335', null, 'Parker', '0503828213', '60 Amarillo Street', 285);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Crystal', 'Liu', '8598336', null, 'Crystal', '0555475639', '22 Murdock Street', 373);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Adam', 'Liotta', '2554337', null, 'Adam', '0576178988', '84 Imperioli Street', 331);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Marianne', 'Bergen', '1491338', null, 'Marianne', '0534089250', '44 Kattan Road', 172);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Brooke', 'Ontiveros', '6154339', null, 'Brooke', '0507476733', '51 Hiroshima Blvd', 80);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Pierce', 'Vai', '3812340', null, 'Pierce', '0506675755', '80 Adams', 160);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Nigel', 'Reinhold', '2425341', null, 'Nigel', '0566372138', '6 Rush Drive', 259);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Lindsey', 'Shearer', '3651342', null, 'Lindsey', '0579093014', '820 Sandra Road', 270);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Roddy', 'Connick', '2758343', null, 'Roddy', '0509649453', '9 Palma de Mallorca ', 315);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Harry', 'Tomei', '3288344', null, 'Harry', '0574225539', '219 Chambers Road', 182);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Miki', 'Marshall', '3287345', null, 'Miki', '0549475502', '620 Rubinek Street', 348);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Patricia', 'Dickinson', '4147346', null, 'Patricia', '0574418831', '708 Bryan Blvd', 69);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Rip', 'Thornton', '6868347', null, 'Rip', '0513168127', '100 Fierstein Road', 43);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Udo', 'Leigh', '7676348', null, 'Udo', '0504485465', '97 Bebe Road', 148);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Meredith', 'Bean', '9585349', null, 'Meredith', '0557647949', '49 Parker Drive', 75);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Omar', 'Del Toro', '1255350', null, 'Omar', '0509976593', '75 O''fallon Street', 153);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Frank', 'Paul', '6251351', null, 'Frank', '0508010747', '24 Gleeson Road', 336);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Sarah', 'Heald', '8423352', null, 'Sarah', '0509956560', '14 Postlethwaite Dri', 240);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Earl', 'Leoni', '8821353', null, 'Earl', '0554620808', '18 Sylvester Blvd', 247);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Tommy', 'Garr', '9692354', null, 'Tommy', '0562599505', '42 Echirolles Ave', 74);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Emerson', 'Witt', '2767355', null, 'Emerson', '0527375060', '32 Butner Blvd', 339);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Franco', 'Rodgers', '7656356', null, 'Franco', '0513421421', '43 Harry Road', 237);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Lila', 'Gibbons', '3965357', null, 'Lila', '0569657124', '68 Anchorage', 170);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Nelly', 'Hutton', '1396358', null, 'Nelly', '0518638725', '370 Hornsby Drive', 10);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Jodie', 'Michael', '5898359', null, 'Jodie', '0504451781', '20 Kelly Street', 345);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Bo', 'Ryan', '7362360', null, 'Bo', '0535332888', '65 Cazale Road', 36);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Ceili', 'Holeman', '9192361', null, 'Ceili', '0556017207', '87 Doug Street', 124);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Udo', 'Bale', '9169362', null, 'Udo', '0534086582', '19 Curry Blvd', 376);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Taye', 'Khan', '4686363', null, 'Taye', '0526812434', '71st Street', 197);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Marina', 'Whitley', '1383364', null, 'Marina', '0506080726', '18 Dean Street', 192);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Benjamin', 'Shepard', '2243365', null, 'Benjamin', '0567952526', '39 Jose Drive', 242);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Vern', 'Imperioli', '1834366', null, 'Vern', '0505612510', '444 Oslo Drive', 394);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Donna', 'Williams', '7743367', null, 'Donna', '0569375911', '94 Beatty Drive', 111);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Sinead', 'Mitchell', '3495368', null, 'Sinead', '0505407409', '88 Saint Paul Drive', 79);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Cornell', 'Carlisle', '4781369', null, 'Cornell', '0508655212', '90 Kanata Road', 164);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Mark', 'Caan', '9327370', null, 'Mark', '0527562336', '60 Perlman Road', 221);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Remy', 'Sayer', '8624371', null, 'Remy', '0545628598', '30 Yaphet Ave', 3);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Wally', 'Donelly', '2764372', null, 'Wally', '0527535950', '13 Amarillo Road', 174);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Rebeka', 'Wiedlin', '6496373', null, 'Rebeka', '0507028605', '71 Beverley Drive', 318);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Jodie', 'Keaton', '1689374', null, 'Jodie', '0552358802', '83 Gavin Street', 328);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Miko', 'Crimson', '2368375', null, 'Miko', '0519094046', '237 Collette Road', 126);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Rupert', 'Viterelli', '7431376', null, 'Rupert', '0503919671', '48 Liquid Street', 286);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Steve', 'Pierce', '3372377', null, 'Steve', '0564746108', '10 Plimpton Ave', 129);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Charlize', 'Summer', '8731378', null, 'Charlize', '0516180569', '69 Ingram Ave', 362);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Lea', 'Williamson', '2645379', null, 'Lea', '0516632272', '69 Kid Street', 202);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Vincent', 'Bancroft', '2573380', null, 'Vincent', '0528453752', '223 Willard Street', 24);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Christine', 'Weber', '5317381', null, 'Christine', '0559015235', '61st Street', 322);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Rich', 'Kimball', '3916382', null, 'Rich', '0504074610', '321 Solon Drive', 114);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Larry', 'Day', '8659383', null, 'Larry', '0523314769', '35 Kier Ave', 390);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Howard', 'Reinhold', '9199384', null, 'Howard', '0527626978', '12 Donovan Street', 286);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Katie', 'Clayton', '3943385', null, 'Katie', '0576772097', '17 Domino Street', 188);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Wes', 'Brody', '8934386', null, 'Wes', '0565371621', '12 Merrilee Street', 95);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Derrick', 'Wheel', '9917387', null, 'Derrick', '0577070111', '36 Holly Blvd', 215);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Alice', 'Warden', '2967388', null, 'Alice', '0563872818', '120 Simon Blvd', 4);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Julianna', 'Gellar', '3296389', null, 'Julianna', '0554465775', '12 Gyllenhaal Drive', 217);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Jarvis', 'Malone', '9357390', null, 'Jarvis', '0506868629', '58 Willie Road', 131);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Jerry', 'Osborne', '9677391', null, 'Jerry', '0528692450', '8 California Drive', 227);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Terri', 'Sandler', '4574392', null, 'Terri', '0508275802', '8 Steagall Drive', 321);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Chi', 'Kadison', '7853393', null, 'Chi', '0507999068', '924 Adamstown Drive', 92);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Juliana', 'Coe', '2352394', null, 'Juliana', '0576065054', '377 Taoyuan Blvd', 205);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Embeth', 'Driver', '9889395', null, 'Embeth', '0577348836', '98 Rock Blvd', 388);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Nora', 'Maguire', '7721396', null, 'Nora', '0517923783', '46 Duncan Street', 140);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Todd', 'Bright', '3131397', null, 'Todd', '0545187206', '83rd Street', 314);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Gord', 'Lynskey', '8788398', null, 'Gord', '0502584990', '53 Jamal Street', 369);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Ian', 'Monk', '5394399', null, 'Ian', '0532601737', '975 Darren Street', 347);
insert into CHILDREN (first_name, last_name, child_id, date_of_birth, parent_name, phone_number, address, group_id)
values ('Alana', 'Kirkwood', '9353400', null, 'Alana', '0564402415', '42 Halfway house Roa', 101);
commit;
prompt 400 records loaded
prompt Loading MEAL...
insert into MEAL (day, description, meal_id)
values ('Monday', ' Chicken and cheese sliders', 1);
insert into MEAL (day, description, meal_id)
values ('Friday', ' Rice cakes with tuna salad', 2);
insert into MEAL (day, description, meal_id)
values ('Friday', ' Turkey and cranberry salad slices', 3);
insert into MEAL (day, description, meal_id)
values ('Sunday', ' Cheese and crackers', 4);
insert into MEAL (day, description, meal_id)
values ('Tuesday', ' Veggie and cream cheese pita pockets', 5);
insert into MEAL (day, description, meal_id)
values ('Thursday', ' Macaroni and cheese', 6);
insert into MEAL (day, description, meal_id)
values ('Tuesday', ' Cheese and bacon potato skins', 7);
insert into MEAL (day, description, meal_id)
values ('Wednesday', ' Mini spinach and feta quiches', 8);
insert into MEAL (day, description, meal_id)
values ('Sunday', ' Cheese and bacon stuffed mushrooms', 9);
insert into MEAL (day, description, meal_id)
values ('Monday', ' Turkey and cheese potato skins', 10);
insert into MEAL (day, description, meal_id)
values ('Tuesday', ' Mini chicken chimichangas', 11);
insert into MEAL (day, description, meal_id)
values ('Thursday', ' Turkey and cheese biscuit sandwiches', 12);
insert into MEAL (day, description, meal_id)
values ('Friday', ' Veggie and cream cheese pizza slices', 13);
insert into MEAL (day, description, meal_id)
values ('Sunday', ' Turkey and cranberry flatbreads', 14);
insert into MEAL (day, description, meal_id)
values ('Wednesday', ' Chicken and vegetable baguette slices', 15);
insert into MEAL (day, description, meal_id)
values ('Tuesday', ' Turkey and cranberry croissants', 16);
insert into MEAL (day, description, meal_id)
values ('Monday', ' Chicken and vegetable pita pockets', 17);
insert into MEAL (day, description, meal_id)
values ('Tuesday', ' Cheese and ham baguette slices', 18);
insert into MEAL (day, description, meal_id)
values ('Tuesday', ' Mini tuna melts', 19);
insert into MEAL (day, description, meal_id)
values ('Thursday', ' Cheese and ham pastry pockets', 20);
insert into MEAL (day, description, meal_id)
values ('Wednesday', ' Mini meat and cheese platter', 21);
insert into MEAL (day, description, meal_id)
values ('Thursday', ' Cheese and tomato croissants', 22);
insert into MEAL (day, description, meal_id)
values ('Friday', ' Mini vegetable frittatas', 23);
insert into MEAL (day, description, meal_id)
values ('Friday', ' Mini chicken croissants', 24);
insert into MEAL (day, description, meal_id)
values ('Sunday', ' Turkey and cranberry puff pastry parcels', 25);
insert into MEAL (day, description, meal_id)
values ('Wednesday', ' Chicken and vegetable skewers', 26);
insert into MEAL (day, description, meal_id)
values ('Friday', ' Cheese and ham puff pastry parcels', 27);
insert into MEAL (day, description, meal_id)
values ('Wednesday', ' Ants on a log celery with peanut butter and raisins', 28);
insert into MEAL (day, description, meal_id)
values ('Tuesday', ' Turkey and cheese salad wraps', 29);
insert into MEAL (day, description, meal_id)
values ('Sunday', ' Turkey and avocado wraps', 30);
insert into MEAL (day, description, meal_id)
values ('Wednesday', ' Mini meatballs', 31);
insert into MEAL (day, description, meal_id)
values ('Tuesday', ' Cheese and ham salad rolls', 32);
insert into MEAL (day, description, meal_id)
values ('Tuesday', ' Turkey and cheese wraps', 33);
insert into MEAL (day, description, meal_id)
values ('Thursday', ' Cheese and ham flatbreads', 34);
insert into MEAL (day, description, meal_id)
values ('Monday', ' Rice crackers with cheese slices', 35);
insert into MEAL (day, description, meal_id)
values ('Friday', ' Veggie and cream cheese pinwheels', 36);
insert into MEAL (day, description, meal_id)
values ('Sunday', ' Veggie and hummus wraps', 37);
insert into MEAL (day, description, meal_id)
values ('Sunday', ' Chicken and vegetable pitas', 38);
insert into MEAL (day, description, meal_id)
values ('Thursday', ' Banana bread slices', 39);
insert into MEAL (day, description, meal_id)
values ('Wednesday', ' Waffle sticks with syrup for dipping', 40);
insert into MEAL (day, description, meal_id)
values ('Sunday', ' Cheese and tomato pita pockets', 41);
insert into MEAL (day, description, meal_id)
values ('Sunday', ' Cheese and ham turnovers', 42);
insert into MEAL (day, description, meal_id)
values ('Monday', ' Cheese and ham pizza slices', 43);
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
values ('Thursday', ' Cheese and ham pastry twists', 53);
insert into MEAL (day, description, meal_id)
values ('Monday', ' Cheese and bacon potato skins', 54);
insert into MEAL (day, description, meal_id)
values ('Thursday', ' Cheese and ham baguette rolls', 55);
insert into MEAL (day, description, meal_id)
values ('Tuesday', ' Cheese and ham salad wraps', 56);
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
values ('Friday', ' Mini vegetable quiches', 62);
insert into MEAL (day, description, meal_id)
values ('Thursday', ' Mini chicken paninis', 63);
insert into MEAL (day, description, meal_id)
values ('Monday', ' English muffin pizzas', 64);
insert into MEAL (day, description, meal_id)
values ('Sunday', ' Cheese and spinach triangles', 65);
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
values ('Friday', ' Cheese and tomato puff pastry parcels', 71);
insert into MEAL (day, description, meal_id)
values ('Tuesday', ' Mini chicken burgers', 72);
insert into MEAL (day, description, meal_id)
values ('Monday', ' Cheese and tomato bagels', 73);
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
values ('Friday', ' Chicken and vegetable pizza slices', 84);
insert into MEAL (day, description, meal_id)
values ('Sunday', ' Veggie fried rice', 85);
insert into MEAL (day, description, meal_id)
values ('Wednesday', ' Fruit and cheese skewers', 86);
insert into MEAL (day, description, meal_id)
values ('Sunday', ' Veggie omelette squares', 87);
insert into MEAL (day, description, meal_id)
values ('Monday', ' Veggie and cream cheese pinwheels', 88);
insert into MEAL (day, description, meal_id)
values ('Monday', ' Cheese and ham baguette slices', 89);
insert into MEAL (day, description, meal_id)
values ('Thursday', ' Turkey and cheese roll-ups', 90);
insert into MEAL (day, description, meal_id)
values ('Monday', ' Turkey and cranberry salad pitas', 91);
insert into MEAL (day, description, meal_id)
values ('Friday', ' Carrot and cucumber sticks with ranch dip', 92);
insert into MEAL (day, description, meal_id)
values ('Friday', ' Tomato and mozzarella skewers', 93);
insert into MEAL (day, description, meal_id)
values ('Tuesday', ' Cheese and broccoli bites', 94);
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
commit;
prompt 100 records committed...
insert into MEAL (day, description, meal_id)
values ('Sunday', ' Mini chicken pitas', 101);
insert into MEAL (day, description, meal_id)
values ('Monday', ' Cheese and tomato pita pockets', 102);
insert into MEAL (day, description, meal_id)
values ('Monday', ' Chicken and vegetable spring rolls', 103);
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
values ('Sunday', ' Cucumber sandwiches', 111);
insert into MEAL (day, description, meal_id)
values ('Friday', ' Turkey and cranberry bagel melts', 112);
insert into MEAL (day, description, meal_id)
values ('Wednesday', ' Veggie and cream cheese baguette rolls', 113);
insert into MEAL (day, description, meal_id)
values ('Friday', ' Veggie and cream cheese croissants', 114);
insert into MEAL (day, description, meal_id)
values ('Sunday', ' Cheese and ham crescent rolls', 115);
insert into MEAL (day, description, meal_id)
values ('Wednesday', ' Fruit and yogurt smoothies', 116);
insert into MEAL (day, description, meal_id)
values ('Wednesday', ' Mini tuna sandwiches', 117);
insert into MEAL (day, description, meal_id)
values ('Friday', ' Grilled vegetable paninis', 118);
insert into MEAL (day, description, meal_id)
values ('Sunday', ' Veggie', 119);
insert into MEAL (day, description, meal_id)
values ('Thursday', ' Veggie and cream cheese sushi rolls', 120);
insert into MEAL (day, description, meal_id)
values ('Friday', ' Pasta salad', 121);
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
values ('Wednesday', ' Veggie and cream cheese toasties', 127);
insert into MEAL (day, description, meal_id)
values ('Monday', ' Mini pizza muffins', 128);
insert into MEAL (day, description, meal_id)
values ('Monday', ' Chicken and vegetable skewers', 129);
insert into MEAL (day, description, meal_id)
values ('Thursday', ' Veggie and cream cheese sandwiches', 130);
insert into MEAL (day, description, meal_id)
values ('Sunday', ' Turkey and cranberry pinwheels', 131);
insert into MEAL (day, description, meal_id)
values ('Sunday', ' Grilled chicken Caesar wraps', 132);
insert into MEAL (day, description, meal_id)
values ('Tuesday', ' Mini chicken baguettes', 133);
insert into MEAL (day, description, meal_id)
values ('Tuesday', ' Veggie and cream cheese pizza pockets', 134);
insert into MEAL (day, description, meal_id)
values ('Thursday', ' Greek yogurt with honey and berries', 135);
insert into MEAL (day, description, meal_id)
values ('Monday', ' Cheese and ham pita bread pockets', 136);
insert into MEAL (day, description, meal_id)
values ('Friday', ' Turkey and cranberry salad wraps', 137);
insert into MEAL (day, description, meal_id)
values ('Monday', ' Cheese and spinach pastry swirls', 138);
insert into MEAL (day, description, meal_id)
values ('Friday', ' Veggie and cream cheese baguette slices', 139);
insert into MEAL (day, description, meal_id)
values ('Tuesday', ' Turkey and cheese sliders', 140);
insert into MEAL (day, description, meal_id)
values ('Friday', ' Cheese and tomato salad wraps', 141);
insert into MEAL (day, description, meal_id)
values ('Monday', ' Veggie and cream cheese wraps', 142);
insert into MEAL (day, description, meal_id)
values ('Friday', ' Veggie and cream cheese pita pockets', 143);
insert into MEAL (day, description, meal_id)
values ('Tuesday', ' Veggie and cream cheese salad wraps', 144);
insert into MEAL (day, description, meal_id)
values ('Sunday', ' Mini caprese skewers', 145);
insert into MEAL (day, description, meal_id)
values ('Friday', ' Cheese and spinach empanadas', 146);
insert into MEAL (day, description, meal_id)
values ('Friday', ' Cheese and pepperoni breadsticks', 147);
insert into MEAL (day, description, meal_id)
values ('Monday', ' Beef and cheese empanadas', 148);
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
values ('Monday', ' Cheese and tomato muffins', 154);
insert into MEAL (day, description, meal_id)
values ('Tuesday', ' Bagel with cream cheese', 155);
insert into MEAL (day, description, meal_id)
values ('Monday', ' Pretzel sticks with cheese dip', 156);
insert into MEAL (day, description, meal_id)
values ('Friday', ' Rice pudding cups', 157);
insert into MEAL (day, description, meal_id)
values ('Monday', ' Mini chicken muffins', 158);
insert into MEAL (day, description, meal_id)
values ('Wednesday', ' Veggie and cream cheese croissants', 159);
insert into MEAL (day, description, meal_id)
values ('Sunday', ' Cheese and spinach muffins', 160);
insert into MEAL (day, description, meal_id)
values ('Wednesday', ' Turkey and cranberry baguettes', 161);
insert into MEAL (day, description, meal_id)
values ('Sunday', ' Veggie and cream cheese English muffin melts', 162);
insert into MEAL (day, description, meal_id)
values ('Monday', ' Mini bagels with smoked salmon and cream cheese', 163);
insert into MEAL (day, description, meal_id)
values ('Monday', ' Turkey and cheese baguettes', 164);
insert into MEAL (day, description, meal_id)
values ('Friday', ' Veggie and cream cheese bagels', 165);
insert into MEAL (day, description, meal_id)
values ('Wednesday', ' Tortilla chips with salsa and guacamole', 166);
insert into MEAL (day, description, meal_id)
values ('Friday', ' Veggie and cream cheese muffins', 167);
insert into MEAL (day, description, meal_id)
values ('Friday', ' Mini sausage rolls', 168);
insert into MEAL (day, description, meal_id)
values ('Sunday', ' Chicken and vegetable baguettes', 169);
insert into MEAL (day, description, meal_id)
values ('Monday', ' Mini chicken flatbreads', 170);
insert into MEAL (day, description, meal_id)
values ('Thursday', ' Chicken and avocado wraps', 171);
insert into MEAL (day, description, meal_id)
values ('Sunday', ' Mini chicken wraps', 172);
insert into MEAL (day, description, meal_id)
values ('Friday', ' Chicken Caesar salad wraps', 173);
insert into MEAL (day, description, meal_id)
values ('Tuesday', ' Turkey and cheese muffins', 174);
insert into MEAL (day, description, meal_id)
values ('Tuesday', ' Chicken Caesar salad cups', 175);
insert into MEAL (day, description, meal_id)
values ('Monday', ' Turkey and cranberry wrap', 176);
insert into MEAL (day, description, meal_id)
values ('Thursday', ' Applesauce cups', 177);
insert into MEAL (day, description, meal_id)
values ('Wednesday', ' Pita chips with hummus', 178);
insert into MEAL (day, description, meal_id)
values ('Wednesday', ' Chicken and vegetable wraps', 179);
insert into MEAL (day, description, meal_id)
values ('Wednesday', ' Fruit salad', 180);
insert into MEAL (day, description, meal_id)
values ('Tuesday', ' Cheese and ham crostini', 181);
insert into MEAL (day, description, meal_id)
values ('Friday', ' Chicken and vegetable potstickers', 182);
insert into MEAL (day, description, meal_id)
values ('Thursday', ' Apple slices with almond butter', 183);
insert into MEAL (day, description, meal_id)
values ('Thursday', ' Mini quiches', 184);
insert into MEAL (day, description, meal_id)
values ('Sunday', ' Veggie frittata squares', 185);
insert into MEAL (day, description, meal_id)
values ('Monday', ' Yogurt with granola', 186);
insert into MEAL (day, description, meal_id)
values ('Tuesday', ' Turkey and cranberry pizza slices', 187);
insert into MEAL (day, description, meal_id)
values ('Wednesday', ' Turkey and cranberry wraps', 188);
insert into MEAL (day, description, meal_id)
values ('Sunday', ' Turkey and cranberry puff pastry parcels', 189);
insert into MEAL (day, description, meal_id)
values ('Sunday', ' Veggie and cream cheese crostini', 190);
insert into MEAL (day, description, meal_id)
values ('Monday', ' Mini tuna melts', 191);
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
values ('Wednesday', ' Cheese and broccoli muffins', 198);
insert into MEAL (day, description, meal_id)
values ('Thursday', ' Rice cakes with almond butte', 199);
insert into MEAL (day, description, meal_id)
values ('Tuesday', ' Chicken and vegetable quesadillas', 200);
commit;
prompt 200 records committed...
insert into MEAL (day, description, meal_id)
values ('Sunday', ' Cheese and tomato bruschetta bites', 201);
insert into MEAL (day, description, meal_id)
values ('Wednesday', ' Cheese and tomato toasties', 202);
insert into MEAL (day, description, meal_id)
values ('Monday', ' Mini chicken tacos', 203);
insert into MEAL (day, description, meal_id)
values ('Tuesday', ' Veggie and cream cheese pizza slices', 204);
insert into MEAL (day, description, meal_id)
values ('Sunday', ' Cheese and tomato pita bread', 205);
insert into MEAL (day, description, meal_id)
values ('Sunday', ' Chicken and vegetable rice paper rolls', 206);
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
values ('Monday', ' Mini chicken sandwiches', 212);
insert into MEAL (day, description, meal_id)
values ('Sunday', ' Veggie and cream cheese English muffins', 213);
insert into MEAL (day, description, meal_id)
values ('Monday', ' Egg salad sandwich', 214);
insert into MEAL (day, description, meal_id)
values ('Monday', ' Mini vegetable spring rolls', 215);
insert into MEAL (day, description, meal_id)
values ('Thursday', ' Veggie and cream cheese stuffed mushrooms', 216);
insert into MEAL (day, description, meal_id)
values ('Thursday', ' Turkey and cranberry pizza rolls', 217);
insert into MEAL (day, description, meal_id)
values ('Monday', ' Turkey and cranberry muffins', 218);
insert into MEAL (day, description, meal_id)
values ('Tuesday', ' Banana and chocolate chip muffins', 219);
insert into MEAL (day, description, meal_id)
values ('Thursday', ' Cheese and tomato tartlets', 220);
insert into MEAL (day, description, meal_id)
values ('Tuesday', ' Veggie and cream cheese pizza rolls', 221);
insert into MEAL (day, description, meal_id)
values ('Sunday', ' Turkey and cheese bagel bites', 222);
insert into MEAL (day, description, meal_id)
values ('Tuesday', ' Mini pizzas', 223);
insert into MEAL (day, description, meal_id)
values ('Tuesday', ' Pita bread with tzatziki dip', 224);
insert into MEAL (day, description, meal_id)
values ('Thursday', ' Cheese quesadillas', 225);
insert into MEAL (day, description, meal_id)
values ('Sunday', ' Cheese and tomato wraps', 226);
insert into MEAL (day, description, meal_id)
values ('Tuesday', ' Quesadillas', 227);
insert into MEAL (day, description, meal_id)
values ('Wednesday', ' Fruit and yogurt parfaits', 228);
insert into MEAL (day, description, meal_id)
values ('Sunday', ' Cheese and ham pizza rolls', 229);
insert into MEAL (day, description, meal_id)
values ('Sunday', ' Veggie and cream cheese sandwiches', 230);
commit;
prompt 230 records loaded
prompt Loading INVITATION...
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('09-06-2008', 'dd-mm-yyyy'), 351, 96);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('04-11-2009', 'dd-mm-yyyy'), 19, 162);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('15-09-2013', 'dd-mm-yyyy'), 234, 71);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('31-05-2021', 'dd-mm-yyyy'), 375, 70);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('26-02-2005', 'dd-mm-yyyy'), 125, 38);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('04-06-2018', 'dd-mm-yyyy'), 36, 173);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('02-04-2005', 'dd-mm-yyyy'), 115, 230);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('20-01-2010', 'dd-mm-yyyy'), 236, 34);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('05-08-2005', 'dd-mm-yyyy'), 366, 101);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('20-11-2009', 'dd-mm-yyyy'), 244, 94);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('07-11-2005', 'dd-mm-yyyy'), 135, 9);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('01-10-2018', 'dd-mm-yyyy'), 53, 15);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('29-06-2004', 'dd-mm-yyyy'), 399, 24);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('01-06-2017', 'dd-mm-yyyy'), 49, 131);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('15-07-2021', 'dd-mm-yyyy'), 245, 59);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('17-11-2019', 'dd-mm-yyyy'), 327, 176);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('09-03-2021', 'dd-mm-yyyy'), 75, 165);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('11-06-2019', 'dd-mm-yyyy'), 325, 2);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('22-08-2018', 'dd-mm-yyyy'), 366, 5);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('11-05-2009', 'dd-mm-yyyy'), 349, 141);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('17-05-2019', 'dd-mm-yyyy'), 115, 160);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('29-05-2007', 'dd-mm-yyyy'), 94, 160);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('23-11-2019', 'dd-mm-yyyy'), 68, 174);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('02-02-2017', 'dd-mm-yyyy'), 16, 157);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('13-07-2008', 'dd-mm-yyyy'), 85, 43);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('16-05-2018', 'dd-mm-yyyy'), 252, 48);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('12-03-2004', 'dd-mm-yyyy'), 347, 170);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('05-02-2016', 'dd-mm-yyyy'), 4, 53);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('25-04-2021', 'dd-mm-yyyy'), 173, 64);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('06-04-2017', 'dd-mm-yyyy'), 188, 51);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('25-06-2018', 'dd-mm-yyyy'), 5, 93);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('06-11-2016', 'dd-mm-yyyy'), 374, 137);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('25-07-2010', 'dd-mm-yyyy'), 106, 121);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('14-11-2022', 'dd-mm-yyyy'), 399, 19);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('21-07-2012', 'dd-mm-yyyy'), 47, 195);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('14-06-2008', 'dd-mm-yyyy'), 200, 185);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('16-11-2008', 'dd-mm-yyyy'), 270, 6);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('23-11-2015', 'dd-mm-yyyy'), 365, 1);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('01-11-2004', 'dd-mm-yyyy'), 387, 62);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('21-08-2022', 'dd-mm-yyyy'), 83, 94);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('18-10-2016', 'dd-mm-yyyy'), 188, 102);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('25-08-2012', 'dd-mm-yyyy'), 190, 94);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('23-04-2016', 'dd-mm-yyyy'), 85, 105);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('26-10-2013', 'dd-mm-yyyy'), 359, 65);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('31-01-2015', 'dd-mm-yyyy'), 12, 173);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('24-03-2021', 'dd-mm-yyyy'), 252, 86);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('13-03-2013', 'dd-mm-yyyy'), 14, 151);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('28-07-2009', 'dd-mm-yyyy'), 249, 93);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('31-08-2018', 'dd-mm-yyyy'), 388, 129);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('17-03-2022', 'dd-mm-yyyy'), 393, 69);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('04-02-2020', 'dd-mm-yyyy'), 157, 96);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('06-05-2004', 'dd-mm-yyyy'), 166, 220);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('01-03-2011', 'dd-mm-yyyy'), 143, 76);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('03-04-2016', 'dd-mm-yyyy'), 274, 44);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('19-08-2003', 'dd-mm-yyyy'), 251, 40);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('09-04-2019', 'dd-mm-yyyy'), 236, 33);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('02-03-2003', 'dd-mm-yyyy'), 164, 192);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('23-02-2018', 'dd-mm-yyyy'), 235, 42);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('10-11-2013', 'dd-mm-yyyy'), 183, 170);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('29-04-2021', 'dd-mm-yyyy'), 219, 133);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('03-08-2021', 'dd-mm-yyyy'), 305, 150);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('16-02-2008', 'dd-mm-yyyy'), 82, 50);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('17-12-2004', 'dd-mm-yyyy'), 234, 214);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('14-04-2009', 'dd-mm-yyyy'), 127, 55);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('24-10-2010', 'dd-mm-yyyy'), 298, 130);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('25-07-2003', 'dd-mm-yyyy'), 142, 7);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('18-12-2021', 'dd-mm-yyyy'), 188, 5);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('01-03-2012', 'dd-mm-yyyy'), 96, 54);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('13-06-2009', 'dd-mm-yyyy'), 116, 35);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('01-05-2020', 'dd-mm-yyyy'), 207, 177);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('14-07-2017', 'dd-mm-yyyy'), 11, 171);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('07-02-2003', 'dd-mm-yyyy'), 210, 211);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('26-11-2005', 'dd-mm-yyyy'), 138, 216);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('23-06-2013', 'dd-mm-yyyy'), 107, 224);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('02-02-2017', 'dd-mm-yyyy'), 99, 224);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('27-11-2009', 'dd-mm-yyyy'), 257, 23);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('10-02-2015', 'dd-mm-yyyy'), 383, 206);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('30-11-2017', 'dd-mm-yyyy'), 138, 167);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('09-10-2011', 'dd-mm-yyyy'), 8, 100);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('09-09-2015', 'dd-mm-yyyy'), 287, 91);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('04-02-2021', 'dd-mm-yyyy'), 166, 35);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('14-05-2022', 'dd-mm-yyyy'), 81, 41);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('20-12-2013', 'dd-mm-yyyy'), 273, 222);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('25-04-2004', 'dd-mm-yyyy'), 167, 217);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('22-03-2023', 'dd-mm-yyyy'), 27, 52);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('06-10-2017', 'dd-mm-yyyy'), 31, 185);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('21-07-2022', 'dd-mm-yyyy'), 14, 44);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('13-08-2006', 'dd-mm-yyyy'), 7, 13);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('24-04-2009', 'dd-mm-yyyy'), 296, 24);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('25-09-2015', 'dd-mm-yyyy'), 389, 11);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('25-11-2006', 'dd-mm-yyyy'), 346, 160);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('16-07-2008', 'dd-mm-yyyy'), 239, 115);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('29-12-2019', 'dd-mm-yyyy'), 346, 228);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('26-12-2005', 'dd-mm-yyyy'), 29, 46);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('29-05-2003', 'dd-mm-yyyy'), 92, 225);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('30-09-2007', 'dd-mm-yyyy'), 231, 111);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('05-12-2011', 'dd-mm-yyyy'), 292, 141);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('20-09-2015', 'dd-mm-yyyy'), 174, 173);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('08-02-2003', 'dd-mm-yyyy'), 9, 196);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('21-04-2006', 'dd-mm-yyyy'), 14, 138);
commit;
prompt 100 records committed...
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('25-10-2009', 'dd-mm-yyyy'), 193, 67);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('17-04-2019', 'dd-mm-yyyy'), 25, 112);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('06-07-2007', 'dd-mm-yyyy'), 225, 1);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('19-06-2005', 'dd-mm-yyyy'), 213, 53);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('21-04-2013', 'dd-mm-yyyy'), 311, 58);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('28-10-2018', 'dd-mm-yyyy'), 259, 12);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('20-11-2004', 'dd-mm-yyyy'), 111, 207);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('14-09-2010', 'dd-mm-yyyy'), 150, 39);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('12-03-2012', 'dd-mm-yyyy'), 86, 197);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('01-07-2012', 'dd-mm-yyyy'), 236, 198);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('03-07-2023', 'dd-mm-yyyy'), 272, 65);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('02-07-2018', 'dd-mm-yyyy'), 212, 114);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('11-08-2006', 'dd-mm-yyyy'), 377, 164);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('31-08-2013', 'dd-mm-yyyy'), 41, 101);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('07-08-2003', 'dd-mm-yyyy'), 82, 206);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('15-07-2003', 'dd-mm-yyyy'), 253, 227);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('20-12-2017', 'dd-mm-yyyy'), 37, 207);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('24-01-2016', 'dd-mm-yyyy'), 205, 159);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('12-02-2012', 'dd-mm-yyyy'), 259, 51);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('14-04-2014', 'dd-mm-yyyy'), 328, 121);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('18-12-2018', 'dd-mm-yyyy'), 368, 163);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('12-10-2015', 'dd-mm-yyyy'), 8, 137);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('05-06-2006', 'dd-mm-yyyy'), 86, 83);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('12-03-2007', 'dd-mm-yyyy'), 119, 70);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('14-11-2009', 'dd-mm-yyyy'), 313, 144);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('07-09-2016', 'dd-mm-yyyy'), 235, 87);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('08-08-2017', 'dd-mm-yyyy'), 192, 69);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('19-11-2020', 'dd-mm-yyyy'), 359, 201);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('23-11-2011', 'dd-mm-yyyy'), 145, 119);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('14-07-2014', 'dd-mm-yyyy'), 279, 36);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('25-12-2011', 'dd-mm-yyyy'), 293, 57);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('20-02-2016', 'dd-mm-yyyy'), 9, 53);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('19-05-2005', 'dd-mm-yyyy'), 312, 52);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('19-12-2022', 'dd-mm-yyyy'), 42, 124);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('04-01-2018', 'dd-mm-yyyy'), 197, 180);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('06-07-2014', 'dd-mm-yyyy'), 291, 113);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('06-02-2014', 'dd-mm-yyyy'), 187, 229);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('19-01-2021', 'dd-mm-yyyy'), 369, 182);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('19-09-2018', 'dd-mm-yyyy'), 87, 216);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('03-12-2018', 'dd-mm-yyyy'), 346, 222);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('29-11-2016', 'dd-mm-yyyy'), 378, 109);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('25-02-2022', 'dd-mm-yyyy'), 229, 107);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('23-03-2018', 'dd-mm-yyyy'), 181, 121);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('19-07-2023', 'dd-mm-yyyy'), 202, 129);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('17-07-2003', 'dd-mm-yyyy'), 369, 49);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('28-03-2007', 'dd-mm-yyyy'), 187, 139);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('23-02-2003', 'dd-mm-yyyy'), 383, 71);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('10-10-2005', 'dd-mm-yyyy'), 36, 192);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('13-04-2013', 'dd-mm-yyyy'), 127, 203);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('01-12-2016', 'dd-mm-yyyy'), 196, 221);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('08-11-2007', 'dd-mm-yyyy'), 220, 188);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('10-03-2008', 'dd-mm-yyyy'), 3, 51);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('26-10-2021', 'dd-mm-yyyy'), 50, 148);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('03-11-2008', 'dd-mm-yyyy'), 242, 191);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('12-11-2014', 'dd-mm-yyyy'), 285, 204);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('02-10-2003', 'dd-mm-yyyy'), 221, 31);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('10-07-2008', 'dd-mm-yyyy'), 103, 94);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('19-03-2016', 'dd-mm-yyyy'), 64, 96);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('01-12-2014', 'dd-mm-yyyy'), 75, 69);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('19-08-2019', 'dd-mm-yyyy'), 194, 13);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('22-11-2016', 'dd-mm-yyyy'), 296, 206);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('04-08-2014', 'dd-mm-yyyy'), 294, 196);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('01-06-2010', 'dd-mm-yyyy'), 56, 6);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('13-06-2013', 'dd-mm-yyyy'), 246, 180);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('28-12-2004', 'dd-mm-yyyy'), 368, 169);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('12-03-2022', 'dd-mm-yyyy'), 234, 60);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('10-05-2003', 'dd-mm-yyyy'), 227, 220);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('16-10-2008', 'dd-mm-yyyy'), 52, 94);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('01-02-2023', 'dd-mm-yyyy'), 225, 6);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('26-05-2019', 'dd-mm-yyyy'), 15, 124);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('05-12-2013', 'dd-mm-yyyy'), 25, 41);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('15-04-2015', 'dd-mm-yyyy'), 258, 182);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('08-03-2013', 'dd-mm-yyyy'), 161, 157);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('02-05-2013', 'dd-mm-yyyy'), 44, 31);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('19-08-2019', 'dd-mm-yyyy'), 41, 116);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('05-06-2006', 'dd-mm-yyyy'), 272, 94);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('13-08-2010', 'dd-mm-yyyy'), 83, 203);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('07-08-2016', 'dd-mm-yyyy'), 206, 50);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('30-04-2003', 'dd-mm-yyyy'), 31, 129);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('27-06-2019', 'dd-mm-yyyy'), 329, 165);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('24-09-2006', 'dd-mm-yyyy'), 359, 157);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('16-05-2019', 'dd-mm-yyyy'), 264, 152);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('08-01-2011', 'dd-mm-yyyy'), 42, 93);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('12-04-2005', 'dd-mm-yyyy'), 391, 35);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('09-05-2013', 'dd-mm-yyyy'), 96, 218);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('25-12-2013', 'dd-mm-yyyy'), 255, 186);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('12-09-2004', 'dd-mm-yyyy'), 11, 220);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('18-03-2015', 'dd-mm-yyyy'), 296, 161);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('13-09-2013', 'dd-mm-yyyy'), 35, 100);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('15-04-2010', 'dd-mm-yyyy'), 214, 3);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('03-03-2021', 'dd-mm-yyyy'), 222, 169);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('25-04-2020', 'dd-mm-yyyy'), 367, 29);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('12-11-2005', 'dd-mm-yyyy'), 115, 36);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('23-01-2013', 'dd-mm-yyyy'), 142, 202);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('16-07-2021', 'dd-mm-yyyy'), 191, 56);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('15-12-2009', 'dd-mm-yyyy'), 333, 144);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('13-06-2009', 'dd-mm-yyyy'), 335, 220);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('11-12-2017', 'dd-mm-yyyy'), 146, 122);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('17-08-2023', 'dd-mm-yyyy'), 111, 64);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('07-10-2010', 'dd-mm-yyyy'), 265, 112);
commit;
prompt 200 records committed...
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('02-01-2020', 'dd-mm-yyyy'), 231, 195);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('11-03-2009', 'dd-mm-yyyy'), 352, 24);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('15-07-2021', 'dd-mm-yyyy'), 7, 179);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('20-04-2022', 'dd-mm-yyyy'), 368, 141);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('15-01-2006', 'dd-mm-yyyy'), 27, 25);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('25-10-2010', 'dd-mm-yyyy'), 298, 165);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('29-10-2020', 'dd-mm-yyyy'), 318, 77);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('02-01-2018', 'dd-mm-yyyy'), 198, 185);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('21-09-2006', 'dd-mm-yyyy'), 155, 43);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('13-10-2016', 'dd-mm-yyyy'), 12, 116);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('01-01-2019', 'dd-mm-yyyy'), 59, 129);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('14-05-2018', 'dd-mm-yyyy'), 359, 221);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('21-07-2015', 'dd-mm-yyyy'), 7, 202);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('14-05-2009', 'dd-mm-yyyy'), 286, 137);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('23-03-2018', 'dd-mm-yyyy'), 62, 207);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('13-06-2017', 'dd-mm-yyyy'), 223, 174);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('24-08-2012', 'dd-mm-yyyy'), 34, 82);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('12-11-2006', 'dd-mm-yyyy'), 142, 12);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('15-07-2015', 'dd-mm-yyyy'), 64, 131);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('17-02-2011', 'dd-mm-yyyy'), 153, 85);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('01-06-2009', 'dd-mm-yyyy'), 223, 229);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('29-03-2003', 'dd-mm-yyyy'), 14, 28);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('15-12-2004', 'dd-mm-yyyy'), 135, 161);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('03-10-2023', 'dd-mm-yyyy'), 358, 82);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('20-09-2016', 'dd-mm-yyyy'), 94, 20);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('31-05-2003', 'dd-mm-yyyy'), 29, 90);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('23-03-2010', 'dd-mm-yyyy'), 222, 215);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('11-01-2014', 'dd-mm-yyyy'), 264, 165);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('05-11-2020', 'dd-mm-yyyy'), 233, 199);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('03-04-2006', 'dd-mm-yyyy'), 115, 151);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('05-02-2004', 'dd-mm-yyyy'), 86, 225);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('05-05-2008', 'dd-mm-yyyy'), 329, 177);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('20-11-2014', 'dd-mm-yyyy'), 307, 110);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('07-07-2023', 'dd-mm-yyyy'), 329, 135);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('06-06-2016', 'dd-mm-yyyy'), 20, 205);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('20-11-2016', 'dd-mm-yyyy'), 384, 90);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('23-04-2012', 'dd-mm-yyyy'), 182, 181);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('24-03-2018', 'dd-mm-yyyy'), 314, 120);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('23-06-2003', 'dd-mm-yyyy'), 30, 28);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('22-03-2007', 'dd-mm-yyyy'), 238, 157);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('10-11-2016', 'dd-mm-yyyy'), 80, 32);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('05-05-2008', 'dd-mm-yyyy'), 94, 220);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('13-02-2022', 'dd-mm-yyyy'), 50, 131);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('26-02-2005', 'dd-mm-yyyy'), 13, 46);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('24-01-2012', 'dd-mm-yyyy'), 206, 119);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('07-08-2019', 'dd-mm-yyyy'), 113, 134);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('07-01-2019', 'dd-mm-yyyy'), 286, 30);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('18-02-2020', 'dd-mm-yyyy'), 158, 53);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('10-12-2017', 'dd-mm-yyyy'), 373, 153);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('05-12-2017', 'dd-mm-yyyy'), 120, 215);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('09-10-2019', 'dd-mm-yyyy'), 59, 137);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('13-06-2022', 'dd-mm-yyyy'), 13, 189);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('08-10-2015', 'dd-mm-yyyy'), 261, 30);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('13-11-2019', 'dd-mm-yyyy'), 209, 216);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('14-09-2017', 'dd-mm-yyyy'), 35, 190);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('02-01-2016', 'dd-mm-yyyy'), 253, 113);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('29-11-2008', 'dd-mm-yyyy'), 238, 84);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('08-10-2017', 'dd-mm-yyyy'), 225, 10);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('30-10-2021', 'dd-mm-yyyy'), 20, 114);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('04-06-2003', 'dd-mm-yyyy'), 298, 194);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('24-02-2010', 'dd-mm-yyyy'), 376, 43);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('03-11-2012', 'dd-mm-yyyy'), 229, 145);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('19-01-2015', 'dd-mm-yyyy'), 204, 219);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('23-09-2023', 'dd-mm-yyyy'), 221, 125);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('19-12-2023', 'dd-mm-yyyy'), 191, 88);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('24-03-2013', 'dd-mm-yyyy'), 47, 205);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('27-09-2019', 'dd-mm-yyyy'), 231, 209);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('08-12-2006', 'dd-mm-yyyy'), 32, 78);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('22-09-2013', 'dd-mm-yyyy'), 137, 50);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('16-09-2006', 'dd-mm-yyyy'), 393, 101);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('03-03-2011', 'dd-mm-yyyy'), 180, 8);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('22-03-2014', 'dd-mm-yyyy'), 66, 21);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('25-09-2016', 'dd-mm-yyyy'), 396, 15);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('02-10-2006', 'dd-mm-yyyy'), 176, 56);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('09-07-2012', 'dd-mm-yyyy'), 38, 148);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('16-07-2009', 'dd-mm-yyyy'), 368, 5);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('06-08-2008', 'dd-mm-yyyy'), 181, 122);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('01-12-2023', 'dd-mm-yyyy'), 306, 171);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('19-05-2017', 'dd-mm-yyyy'), 343, 17);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('03-11-2014', 'dd-mm-yyyy'), 191, 145);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('09-05-2005', 'dd-mm-yyyy'), 88, 156);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('02-12-2008', 'dd-mm-yyyy'), 396, 38);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('10-12-2020', 'dd-mm-yyyy'), 382, 112);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('12-04-2015', 'dd-mm-yyyy'), 101, 221);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('23-04-2015', 'dd-mm-yyyy'), 136, 72);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('07-11-2007', 'dd-mm-yyyy'), 68, 100);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('28-05-2005', 'dd-mm-yyyy'), 25, 12);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('24-01-2015', 'dd-mm-yyyy'), 16, 49);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('03-08-2003', 'dd-mm-yyyy'), 211, 95);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('11-04-2019', 'dd-mm-yyyy'), 269, 47);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('17-03-2003', 'dd-mm-yyyy'), 171, 206);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('20-10-2019', 'dd-mm-yyyy'), 251, 197);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('01-10-2016', 'dd-mm-yyyy'), 166, 17);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('04-05-2014', 'dd-mm-yyyy'), 111, 203);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('07-02-2010', 'dd-mm-yyyy'), 97, 53);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('13-07-2020', 'dd-mm-yyyy'), 325, 170);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('18-01-2011', 'dd-mm-yyyy'), 84, 167);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('27-12-2018', 'dd-mm-yyyy'), 29, 154);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('01-04-2008', 'dd-mm-yyyy'), 78, 105);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('13-10-2017', 'dd-mm-yyyy'), 373, 200);
commit;
prompt 300 records committed...
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('26-02-2004', 'dd-mm-yyyy'), 156, 81);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('23-12-2015', 'dd-mm-yyyy'), 168, 230);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('13-10-2007', 'dd-mm-yyyy'), 177, 69);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('11-05-2003', 'dd-mm-yyyy'), 137, 191);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('09-06-2020', 'dd-mm-yyyy'), 94, 227);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('26-04-2017', 'dd-mm-yyyy'), 213, 215);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('23-07-2020', 'dd-mm-yyyy'), 164, 38);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('30-08-2011', 'dd-mm-yyyy'), 183, 7);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('13-02-2019', 'dd-mm-yyyy'), 112, 182);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('29-03-2012', 'dd-mm-yyyy'), 155, 75);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('22-01-2011', 'dd-mm-yyyy'), 69, 71);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('14-10-2021', 'dd-mm-yyyy'), 95, 60);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('15-11-2020', 'dd-mm-yyyy'), 12, 95);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('30-11-2004', 'dd-mm-yyyy'), 9, 194);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('03-08-2021', 'dd-mm-yyyy'), 127, 120);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('08-09-2021', 'dd-mm-yyyy'), 119, 48);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('22-09-2023', 'dd-mm-yyyy'), 193, 109);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('10-06-2004', 'dd-mm-yyyy'), 187, 46);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('22-04-2023', 'dd-mm-yyyy'), 219, 93);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('18-02-2005', 'dd-mm-yyyy'), 391, 220);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('13-04-2018', 'dd-mm-yyyy'), 133, 82);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('26-11-2023', 'dd-mm-yyyy'), 332, 31);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('19-09-2015', 'dd-mm-yyyy'), 171, 101);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('14-04-2013', 'dd-mm-yyyy'), 25, 142);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('10-09-2018', 'dd-mm-yyyy'), 361, 146);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('17-06-2003', 'dd-mm-yyyy'), 118, 228);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('18-08-2020', 'dd-mm-yyyy'), 3, 97);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('25-01-2023', 'dd-mm-yyyy'), 7, 126);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('30-10-2009', 'dd-mm-yyyy'), 47, 201);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('13-10-2018', 'dd-mm-yyyy'), 27, 222);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('07-10-2020', 'dd-mm-yyyy'), 107, 225);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('22-09-2014', 'dd-mm-yyyy'), 353, 210);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('12-08-2010', 'dd-mm-yyyy'), 63, 139);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('28-04-2007', 'dd-mm-yyyy'), 202, 87);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('12-06-2003', 'dd-mm-yyyy'), 235, 54);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('07-03-2010', 'dd-mm-yyyy'), 86, 110);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('14-06-2017', 'dd-mm-yyyy'), 222, 145);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('03-03-2014', 'dd-mm-yyyy'), 391, 112);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('07-02-2023', 'dd-mm-yyyy'), 275, 197);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('11-02-2005', 'dd-mm-yyyy'), 297, 197);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('29-03-2017', 'dd-mm-yyyy'), 336, 30);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('29-07-2011', 'dd-mm-yyyy'), 80, 168);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('26-07-2012', 'dd-mm-yyyy'), 304, 223);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('19-11-2016', 'dd-mm-yyyy'), 228, 163);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('28-05-2012', 'dd-mm-yyyy'), 30, 20);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('24-04-2010', 'dd-mm-yyyy'), 26, 106);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('11-04-2023', 'dd-mm-yyyy'), 291, 186);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('10-09-2013', 'dd-mm-yyyy'), 54, 117);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('08-11-2005', 'dd-mm-yyyy'), 332, 229);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('23-06-2010', 'dd-mm-yyyy'), 97, 112);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('03-12-2004', 'dd-mm-yyyy'), 334, 227);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('13-08-2020', 'dd-mm-yyyy'), 106, 216);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('04-12-2003', 'dd-mm-yyyy'), 181, 6);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('10-06-2016', 'dd-mm-yyyy'), 17, 226);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('27-03-2004', 'dd-mm-yyyy'), 19, 173);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('09-06-2010', 'dd-mm-yyyy'), 399, 2);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('25-08-2016', 'dd-mm-yyyy'), 275, 213);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('29-12-2009', 'dd-mm-yyyy'), 137, 153);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('13-10-2008', 'dd-mm-yyyy'), 367, 163);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('10-05-2011', 'dd-mm-yyyy'), 13, 100);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('25-11-2018', 'dd-mm-yyyy'), 394, 92);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('06-12-2011', 'dd-mm-yyyy'), 227, 50);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('09-02-2011', 'dd-mm-yyyy'), 370, 170);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('03-01-2008', 'dd-mm-yyyy'), 396, 213);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('31-03-2009', 'dd-mm-yyyy'), 37, 190);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('14-08-2010', 'dd-mm-yyyy'), 390, 89);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('22-07-2012', 'dd-mm-yyyy'), 176, 53);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('12-06-2015', 'dd-mm-yyyy'), 331, 87);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('24-08-2014', 'dd-mm-yyyy'), 285, 99);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('09-04-2003', 'dd-mm-yyyy'), 328, 55);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('16-07-2006', 'dd-mm-yyyy'), 324, 173);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('11-12-2017', 'dd-mm-yyyy'), 33, 32);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('18-03-2020', 'dd-mm-yyyy'), 146, 79);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('30-12-2022', 'dd-mm-yyyy'), 35, 111);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('08-03-2007', 'dd-mm-yyyy'), 98, 182);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('04-10-2015', 'dd-mm-yyyy'), 327, 187);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('22-09-2018', 'dd-mm-yyyy'), 287, 27);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('03-11-2008', 'dd-mm-yyyy'), 350, 206);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('29-07-2005', 'dd-mm-yyyy'), 179, 67);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('07-04-2008', 'dd-mm-yyyy'), 171, 73);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('31-08-2022', 'dd-mm-yyyy'), 11, 165);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('14-05-2011', 'dd-mm-yyyy'), 257, 39);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('15-01-2014', 'dd-mm-yyyy'), 95, 226);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('14-02-2020', 'dd-mm-yyyy'), 268, 29);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('31-10-2012', 'dd-mm-yyyy'), 187, 221);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('08-07-2013', 'dd-mm-yyyy'), 356, 182);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('26-02-2007', 'dd-mm-yyyy'), 222, 183);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('16-04-2009', 'dd-mm-yyyy'), 234, 215);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('12-12-2012', 'dd-mm-yyyy'), 179, 220);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('22-10-2016', 'dd-mm-yyyy'), 387, 175);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('19-06-2014', 'dd-mm-yyyy'), 241, 196);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('10-02-2005', 'dd-mm-yyyy'), 72, 29);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('25-09-2022', 'dd-mm-yyyy'), 98, 15);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('27-01-2019', 'dd-mm-yyyy'), 44, 57);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('10-02-2016', 'dd-mm-yyyy'), 24, 195);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('28-10-2010', 'dd-mm-yyyy'), 12, 199);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('10-05-2009', 'dd-mm-yyyy'), 212, 76);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('25-04-2019', 'dd-mm-yyyy'), 359, 109);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('14-10-2011', 'dd-mm-yyyy'), 227, 175);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('11-02-2008', 'dd-mm-yyyy'), 71, 146);
commit;
prompt 400 records committed...
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('15-04-2015', 'dd-mm-yyyy'), 244, 121);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('28-05-2022', 'dd-mm-yyyy'), 272, 98);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('06-10-2008', 'dd-mm-yyyy'), 372, 52);
insert into INVITATION (amount, invitation_date, group_id, meal_id)
values (null, to_date('27-08-2007', 'dd-mm-yyyy'), 392, 121);
commit;
prompt 404 records loaded
prompt Loading KINDERGARTEN_TEACHER...
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Jonatha', 'Bentley', '57221', '0579893042', 1);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Isaac', 'Broadbent', '89782', '0564228027', 2);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Fiona', 'Sledge', '18373', '0571163147', 3);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Gena', 'Diffie', '82684', '0514095936', 4);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Madeleine', 'Joli', '59865', '0532102551', 5);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Brendan', 'Beatty', '82756', '0571892446', 6);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Cheryl', 'Phoenix', '64447', '0522060187', 7);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Terry', 'McNeice', '26888', '0511059629', 8);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Alfred', 'Theron', '54199', '0532993881', 9);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Anita', 'Ness', '962710', '0582333979', 10);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Cheech', 'Branch', '522811', '0521589309', 11);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Curtis', 'Newton', '271512', '0573622520', 12);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Nicole', 'Quinlan', '347913', '0521727848', 13);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Brittany', 'Shawn', '125714', '0553185577', 14);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Chubby', 'McIntosh', '878115', '0522734859', 15);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Mitchell', 'Bean', '171816', '0523913388', 16);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Rhea', 'Bello', '696317', '0503559189', 17);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Busta', 'Tisdale', '524418', '0573904469', 18);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Timothy', 'Burstyn', '173219', '0504149043', 19);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Candice', 'Harry', '935420', '0581790285', 20);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Garth', 'Raitt', '569821', '0543097596', 21);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Pat', 'Wainwright', '432222', '0543079963', 22);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('George', 'Jordan', '997423', '0501149372', 23);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Ossie', 'Torn', '763824', '0575309708', 24);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Ned', 'Danger', '369325', '0558422490', 25);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Jackson', 'Kershaw', '788626', '0542585705', 26);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Halle', 'Tillis', '811227', '0583077618', 27);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Goran', 'Portman', '952828', '0512284045', 28);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Julio', 'Cooper', '714129', '0502053250', 29);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Helen', 'Lightfoot', '191530', '0542874213', 30);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Kyle', 'Irving', '996731', '0512647135', 31);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Ricardo', 'Choice', '369532', '0552676860', 32);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Austin', 'Zellweger', '131733', '0512785851', 33);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Pablo', 'Wiedlin', '117434', '0538243264', 34);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Sylvester', 'Ticotin', '789435', '0512755695', 35);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Buffy', 'Mars', '452536', '0542350296', 36);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Juliana', 'Whitman', '938237', '0553107361', 37);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Kylie', 'Cozier', '476938', '0582177979', 38);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Millie', 'Stigers', '264239', '0561863654', 39);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Brendan', 'Haggard', '775440', '0501584027', 40);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Embeth', 'Hoskins', '283841', '0501254948', 41);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Arnold', 'Arjona', '966442', '0522082140', 42);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Garry', 'Hong', '787743', '0562894704', 43);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Nickel', 'Hutch', '385344', '0582165684', 44);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Juliette', 'McNarland', '651545', '0514154953', 45);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Walter', 'Bacon', '413146', '0502935276', 46);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Goran', 'Ojeda', '476947', '0581770254', 47);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Luke', 'Price', '183748', '0562018051', 48);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Kelli', 'Goldblum', '329249', '0512805183', 49);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Pierce', 'Chesnutt', '562450', '0551602212', 50);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Kazem', 'Braugher', '578251', '0583757939', 51);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Petula', 'Goldwyn', '662352', '0544041982', 52);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Gabriel', 'Neuwirth', '294653', '0572642618', 53);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Vincent', 'Li', '433754', '0525731785', 54);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Max', 'Robards', '315855', '0582677001', 55);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Caroline', 'Spall', '537656', '0535511848', 56);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Harvey', 'Tippe', '155557', '0511607914', 57);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Rebecca', 'Reno', '949558', '0541365883', 58);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Bernard', 'Fichtner', '486759', '0574030178', 59);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Harriet', 'Shatner', '434860', '0551963525', 60);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Ashley', 'Chaplin', '739161', '0561737609', 61);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Jay', 'Isaak', '213262', '0518997667', 62);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Matt', 'Moody', '195563', '0554110250', 63);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Mary Beth', 'Soda', '626464', '0562460305', 64);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Mary-Louise', 'Turturro', '137265', '0532785475', 65);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Rosco', 'Allison', '619166', '0513959914', 66);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Bernard', 'Moraz', '871367', '0561251610', 67);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Grant', 'Renfro', '767168', '0552776704', 68);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Rip', 'Borden', '739469', '0573622303', 69);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Chad', 'Stallone', '919570', '0542669736', 70);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Domingo', 'Malone', '396571', '0572398655', 71);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('First', 'Cochran', '832372', '0514292521', 72);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Saul', 'Gyllenhaal', '326473', '0512831015', 73);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Larry', 'Sisto', '514674', '0582201821', 74);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Nathan', 'Ellis', '345775', '0501737600', 75);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Hikaru', 'Harris', '585576', '0581724882', 76);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('France', 'Sampson', '772277', '0582788665', 77);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Terry', 'Atkins', '767378', '0581607719', 78);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Shirley', 'Easton', '498879', '0541133804', 79);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Rosanna', 'Marsden', '165880', '0572180033', 80);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Cheryl', 'Shaw', '869781', '0536913372', 81);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Nora', 'Shalhoub', '763882', '0551421875', 82);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Thora', 'Loggia', '748183', '0523350807', 83);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Christmas', 'Derringer', '896584', '0541674582', 84);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Natascha', 'Houston', '274685', '0507904287', 85);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Robin', 'Gertner', '616186', '0573014690', 86);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Andie', 'De Niro', '773987', '0511731390', 87);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Kathleen', 'Blackmore', '564188', '0571550039', 88);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Salma', 'Starr', '962589', '0508249703', 89);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Jim', 'Charles', '614290', '0513873852', 90);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Edwin', 'Collie', '449791', '0572639911', 91);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Miko', 'Bates', '273992', '0523669416', 92);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Carole', 'Gracie', '697893', '0533829101', 93);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Elias', 'Eastwood', '577294', '0524203076', 94);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Brothers', 'Carlyle', '868395', '0551809048', 95);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Kate', 'Stoltz', '357296', '0581298247', 96);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Burton', 'Lithgow', '849497', '0584135587', 97);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Goldie', 'Macy', '443398', '0571258886', 98);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Irene', 'Tucci', '628199', '0581673085', 99);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Eileen', 'Pony', '5442100', '0531917617', 100);
commit;
prompt 100 records committed...
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Kazem', 'Niven', '2347101', '0553173799', 101);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Greg', 'Fichtner', '8381102', '0573464110', 102);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Albertina', 'Garner', '5332103', '0574063334', 103);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Zooey', 'Fehr', '1281104', '0553179465', 104);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Pelvic', 'Reinhold', '7799105', '0533627515', 105);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Patricia', 'Donovan', '3616106', '0532063943', 106);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Tamala', 'Stormare', '2259107', '0581332461', 107);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Aaron', 'Davies', '4677108', '0521963810', 108);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Chubby', 'Kinney', '4517109', '0572788058', 109);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Tramaine', 'Squier', '6262110', '0542786176', 110);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Stephen', 'Ferrer', '8278111', '0522564759', 111);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Henry', 'Plowright', '8324112', '0521880567', 112);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Regina', 'Scheider', '9744113', '0512268938', 113);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Richard', 'Stuart', '9186114', '0563030374', 114);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Stanley', 'Westerberg', '3263115', '0543191679', 115);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Mint', 'Mason', '4822116', '0586547576', 116);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Larenz', 'Mann', '7969117', '0544041208', 117);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Rutger', 'Eat World', '3144118', '0503084746', 118);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Praga', 'Apple', '1814119', '0571009685', 119);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Jet', 'Laurie', '5424120', '0543105400', 120);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Debi', 'Quinlan', '1788121', '0561372607', 121);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Renee', 'Howard', '6263122', '0512026485', 122);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Norm', 'Green', '3649123', '0572810351', 123);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Breckin', 'Rea', '1566124', '0581530182', 124);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Scott', 'Mitchell', '3839125', '0553294383', 125);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Ani', 'Parker', '4127126', '0572274948', 126);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Edward', 'Jovovich', '8417127', '0541649922', 127);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Lin', 'Winwood', '9491128', '0513645676', 128);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Nigel', 'Romijn-Stamos', '4375129', '0522473397', 129);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Derrick', 'Conners', '1795130', '0542875939', 130);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Oro', 'Vaughn', '9967131', '0541946973', 131);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Ed', 'Monk', '5867132', '0501679921', 132);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Russell', 'Ruiz', '7169133', '0532361156', 133);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Sylvester', 'Aaron', '5676134', '0501438836', 134);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Gavin', 'Zevon', '9194135', '0584037173', 135);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Talvin', 'Garber', '2756136', '0551895185', 136);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Danni', 'Shepard', '8157137', '0526227653', 137);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Campbell', 'Nivola', '4227138', '0502214901', 138);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Sander', 'Paquin', '7947139', '0521675098', 139);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Kurtwood', 'Uggams', '8727140', '0565878783', 140);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Hank', 'Blaine', '7264141', '0561802002', 141);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Forest', 'Shorter', '3563142', '0502543717', 142);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Rosie', 'Stevens', '7475143', '0542921655', 143);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Lenny', 'Lowe', '1623144', '0573965316', 144);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Nicky', 'Stiller', '5869145', '0513432478', 145);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Allison', 'Loggia', '2221146', '0512098447', 146);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Geoffrey', 'Cohn', '1584147', '0553259275', 147);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Rosario', 'Chappelle', '2922148', '0501509895', 148);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Daryle', 'Rudd', '5151149', '0502801849', 149);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Sheryl', 'Hughes', '1335150', '0565975679', 150);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Frank', 'May', '5261151', '0527567946', 151);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Rik', 'Glenn', '5462152', '0573058790', 152);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Stockard', 'Heche', '8377153', '0502911357', 153);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Hilton', 'Michaels', '8371154', '0501149257', 154);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Jerry', 'Wen', '3943155', '0563592359', 155);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Ricardo', 'Ledger', '2841156', '0523621805', 156);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Miko', 'Whitford', '1232157', '0514645427', 157);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Carlos', 'Merchant', '6473158', '0552062259', 158);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Miki', 'Greene', '7982159', '0543808875', 159);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Denis', 'Costa', '8911160', '0532155839', 160);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Sandra', 'Statham', '7247161', '0533092088', 161);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Melba', 'Preston', '9827162', '0532872482', 162);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Campbell', 'Borden', '8317163', '0538355761', 163);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Allan', 'Stuart', '8399164', '0567518463', 164);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Donna', 'Sledge', '3671165', '0522856568', 165);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Neneh', 'Pierce', '6625166', '0503127620', 166);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Rip', 'Moore', '1716167', '0565725414', 167);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Vondie', 'Bright', '3579168', '0578713510', 168);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Patty', 'Cale', '4245169', '0564510551', 169);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Isabella', 'Paymer', '9986170', '0582512886', 170);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Mira', 'Holden', '7686171', '0583834206', 171);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Denzel', 'Pollack', '1893172', '0509240717', 172);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Jerry', 'Dooley', '1563173', '0542843798', 173);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Kevin', 'Lattimore', '7239174', '0532317842', 174);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Harold', 'Goodman', '6277175', '0562492586', 175);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Shelby', 'Paquin', '9232176', '0573769741', 176);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Juliana', 'Sobieski', '5673177', '0532952065', 177);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Nicole', 'DiCaprio', '8565178', '0533952805', 178);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Julie', 'Colman', '4213179', '0561454897', 179);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Jay', 'Adams', '3269180', '0514103316', 180);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Fisher', 'Boone', '6525181', '0541426758', 181);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Wayman', 'Conley', '7992182', '0502232617', 182);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Jamie', 'McFadden', '6868183', '0523490512', 183);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Merle', 'Bates', '6719184', '0542930553', 184);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Joy', 'Adler', '2734185', '0581883095', 185);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Campbell', 'Williams', '9156186', '0502277748', 186);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Nils', 'Franks', '3892187', '0541537598', 187);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Carla', 'Crewson', '6819188', '0531926976', 188);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Curt', 'Pitt', '5473189', '0511035092', 189);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Cherry', 'Dawson', '1176190', '0523523680', 190);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Bob', 'Sinise', '5498191', '0544408823', 191);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Catherine', 'Randal', '1739192', '0583429498', 192);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Dennis', 'Dillon', '9347193', '0523774642', 193);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Wendy', 'Eldard', '5879194', '0516743529', 194);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Taryn', 'Amos', '6425195', '0581046519', 195);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Julianna', 'Child', '7443196', '0503186051', 196);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Juan', 'Hyde', '9143197', '0523113570', 197);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Vendetta', 'Henriksen', '2921198', '0523262425', 198);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Fairuza', 'Lennox', '3176199', '0581577782', 199);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Javon', 'Noseworthy', '7115200', '0521612516', 200);
commit;
prompt 200 records committed...
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Brian', 'Hatfield', '9142201', '0582236474', 201);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Lupe', 'Duchovny', '6422202', '0521579072', 202);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Ralph', 'Ball', '7575203', '0521368277', 203);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Lydia', 'Birch', '3668204', '0533516113', 204);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Claude', 'Venora', '1611205', '0531416545', 205);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Gilbert', 'O''Sullivan', '8484206', '0533273928', 206);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Jeremy', 'Harris', '8864207', '0581249299', 207);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Boyd', 'Arjona', '1294208', '0551993731', 208);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Uma', 'Secada', '5976209', '0501292895', 209);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Harry', 'Ponty', '4898210', '0512118413', 210);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Robin', 'Driver', '5163211', '0511478190', 211);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Laurie', 'Horizon', '3838212', '0512295262', 212);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Miles', 'Paltrow', '1362213', '0521051686', 213);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Junior', 'Carrington', '5445214', '0568912768', 214);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Bernie', 'Zeta-Jones', '9433215', '0551793925', 215);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Gary', 'Field', '4838216', '0554112596', 216);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Shannyn', 'Vincent', '8633217', '0579412432', 217);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Belinda', 'Baldwin', '3835218', '0512423802', 218);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Anne', 'Arnold', '2218219', '0571609890', 219);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Nicky', 'Tierney', '8221220', '0532375906', 220);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Heath', 'Hanks', '1985221', '0583191348', 221);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Alicia', 'Weiland', '7785222', '0583268722', 222);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Luis', 'Cassidy', '4865223', '0533693554', 223);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Coley', 'Chapman', '2494224', '0532265671', 224);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Richard', 'Morrison', '6244225', '0533376927', 225);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Timothy', 'Cochran', '3346226', '0551071819', 226);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Moe', 'Nakai', '7218227', '0554166827', 227);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Sally', 'Gore', '7883228', '0581233450', 228);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Julie', 'Holeman', '8832229', '0562658583', 229);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Carol', 'Garr', '4891230', '0521939644', 230);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Thomas', 'Depp', '5224231', '0543159492', 231);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Pam', 'Garfunkel', '3558232', '0582404579', 232);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Ernie', 'Newton', '7128233', '0521884454', 233);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Tanya', 'Leigh', '9257234', '0523399063', 234);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Rebeka', 'Roy Parnell', '1845235', '0581783323', 235);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Hal', 'Ponty', '3598236', '0513572705', 236);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Luke', 'Feliciano', '6756237', '0562679316', 237);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Rhona', 'Hayes', '9521238', '0511556401', 238);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Daryle', 'Shawn', '7568239', '0502593095', 239);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Dorry', 'Paul', '9743240', '0584100643', 240);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Chloe', 'Broadbent', '1125241', '0554284595', 241);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Rosie', 'Tucker', '6229242', '0524067755', 242);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Willie', 'Weber', '2658243', '0536598377', 243);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Juliana', 'Ward', '8351244', '0583893493', 244);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Henry', 'Biel', '4442245', '0573885269', 245);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('William', 'Cochran', '5291246', '0531088676', 246);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Kenny', 'Witt', '5488247', '0543880228', 247);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Jean', 'Barkin', '6251248', '0533281488', 248);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Chuck', 'Sirtis', '1263249', '0514236349', 249);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Madeline', 'Mazzello', '8786250', '0513963695', 250);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Darius', 'Tucci', '2112251', '0529828035', 251);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Isaiah', 'Winwood', '8456252', '0573388602', 252);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Graham', 'Rossellini', '9123253', '0581899966', 253);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Sharon', 'LaBelle', '1583254', '0573271328', 254);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Jude', 'Rhames', '1931255', '0521685735', 255);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Kris', 'Cole', '1854256', '0553119350', 256);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Omar', 'Wayans', '5767257', '0511827696', 257);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Howie', 'Wine', '3533258', '0571344949', 258);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Dwight', 'Bugnon', '1328259', '0503093718', 259);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Keanu', 'Nivola', '8999260', '0531092474', 260);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Keanu', 'Tempest', '6864261', '0522090915', 261);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Swoosie', 'Wright', '6477262', '0583285548', 262);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Annette', 'McGovern', '6379263', '0562497156', 263);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Lydia', 'Penders', '6937264', '0512606322', 264);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Leonardo', 'Cobbs', '1988265', '0546648568', 265);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Ron', 'Skerritt', '9354266', '0551567178', 266);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Lynette', 'Broza', '9529267', '0557836087', 267);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Larenz', 'Moss', '8761268', '0502196071', 268);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Willem', 'Reid', '7558269', '0524280981', 269);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Carl', 'Willard', '6219270', '0522167197', 270);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Bryan', 'Schneider', '7145271', '0547530215', 271);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Maury', 'Berkley', '5665272', '0561864401', 272);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Jarvis', 'Dzundza', '1447273', '0571663502', 273);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Brittany', 'Begley', '6761274', '0511180025', 274);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Xander', 'Bassett', '2244275', '0543367546', 275);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Robert', 'Gugino', '9281276', '0566124813', 276);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Roger', 'Winans', '1218277', '0583343985', 277);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Emm', 'Haslam', '5413278', '0583754099', 278);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Delroy', 'Womack', '4783279', '0522178117', 279);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Rickie', 'Kirkwood', '1689280', '0532478228', 280);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Red', 'McIntosh', '4664281', '0552532159', 281);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Garth', 'Miles', '7478282', '0561763499', 282);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Debby', 'Bright', '8762283', '0569505214', 283);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Graham', 'Baez', '4629284', '0551664152', 284);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Leelee', 'Weaver', '4543285', '0511783575', 285);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Avenged', 'Rhames', '8573286', '0532286782', 286);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('France', 'Jackson', '1245287', '0574203319', 287);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Lionel', 'Schwarzenegger', '6393288', '0542935324', 288);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Johnnie', 'Hurt', '6832289', '0551285897', 289);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Lena', 'Magnuson', '6787290', '0504138237', 290);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Parker', 'Shaye', '5917291', '0539044545', 291);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Clint', 'Johnson', '9726292', '0571451351', 292);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Ahmad', 'Delta', '1849293', '0583082759', 293);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Delroy', 'Caldwell', '7221294', '0546713203', 294);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Emerson', 'O''Connor', '2928295', '0522134686', 295);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Wesley', 'Malone', '8963296', '0562649414', 296);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Jackson', 'Jeffreys', '5581297', '0539204281', 297);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Ashton', 'Thornton', '9831298', '0522274954', 298);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Hank', 'Postlethwaite', '9495299', '0533729372', 299);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Graham', 'Bacon', '2814300', '0581561318', 300);
commit;
prompt 300 records committed...
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Susan', 'Wiest', '7472301', '0586517556', 301);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Salma', 'Westerberg', '4281302', '0523508021', 302);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Robby', 'Pierce', '9962303', '0563905642', 303);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Powers', 'Ruiz', '9448304', '0501692203', 304);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Frederic', 'Cobbs', '6689305', '0561405013', 305);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Juliette', 'McDormand', '7967306', '0503073476', 306);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Allison', 'Mantegna', '6511307', '0542918743', 307);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Franz', 'Porter', '6698308', '0582405756', 308);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Leelee', 'Hawthorne', '2278309', '0553336569', 309);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Jill', 'Cockburn', '2162310', '0563675855', 310);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Trini', 'Payton', '1728311', '0551913717', 311);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Kelli', 'Barkin', '2593312', '0515251544', 312);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Gabrielle', 'Gooding', '4358313', '0542861571', 313);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Bobbi', 'Holliday', '3526314', '0573452613', 314);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Glenn', 'Tennison', '7869315', '0539724108', 315);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Thora', 'Torres', '8256316', '0561858210', 316);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Marie', 'Crudup', '7966317', '0554246148', 317);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Donna', 'urban', '8393318', '0561432569', 318);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Selma', 'Crowell', '5684319', '0556473667', 319);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Ving', 'Gano', '3145320', '0544022813', 320);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Nikka', 'Lemmon', '3872321', '0563541326', 321);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Ron', 'Willard', '8761322', '0502944364', 322);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Jeanne', 'Joli', '5572323', '0562691053', 323);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Reese', 'Hoskins', '4155324', '0562071198', 324);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Nelly', 'Bacharach', '2162325', '0554087650', 325);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Frankie', 'Pigott-Smith', '5136326', '0501991447', 326);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Jude', 'Ramirez', '5148327', '0561397339', 327);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Busta', 'Aaron', '3449328', '0534038411', 328);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Malcolm', 'Eder', '8762329', '0511775257', 329);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Marie', 'McCain', '5496330', '0524083404', 330);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Julia', 'Mellencamp', '1669331', '0554179108', 331);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Garth', 'Hewett', '6962332', '0506248986', 332);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Boyd', 'Summer', '4762333', '0581693679', 333);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Olga', 'Coleman', '5617334', '0502396953', 334);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Demi', 'Cassel', '4828335', '0574134233', 335);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Howie', 'Quaid', '7396336', '0545933614', 336);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Merrilee', 'Spall', '3797337', '0533974326', 337);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Latin', 'Dean', '4715338', '0563273076', 338);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Larenz', 'Roth', '2759339', '0573305406', 339);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Arturo', 'Evett', '5713340', '0533133560', 340);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Jerry', 'Mac', '9341341', '0501152901', 341);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Roddy', 'Cagle', '6667342', '0504112647', 342);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Miko', 'Aykroyd', '3687343', '0548029572', 343);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Terry', 'Imperioli', '2851344', '0581609037', 344);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Millie', 'Lang', '1923345', '0573218176', 345);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Woody', 'Lemmon', '1344346', '0551012369', 346);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Carl', 'Tripplehorn', '9292347', '0561580723', 347);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Olympia', 'Plummer', '6615348', '0531519567', 348);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Joanna', 'Biel', '7992349', '0553181454', 349);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Gailard', 'Hughes', '2422350', '0542033350', 350);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Courtney', 'Ellis', '5693351', '0552949541', 351);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Marie', 'Dempsey', '4828352', '0501180834', 352);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Hope', 'Theron', '9417353', '0571360192', 353);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Sarah', 'Matheson', '5258354', '0533186899', 354);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Tracy', 'Taylor', '4738355', '0541743787', 355);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Karen', 'Kinney', '7613356', '0503786015', 356);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Lesley', 'Clayton', '3165357', '0573404681', 357);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Luke', 'Woodward', '3934358', '0539378414', 358);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Randall', 'Hatosy', '5568359', '0516832546', 359);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Jessica', 'Gary', '6931360', '0527676653', 360);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Chad', 'Newman', '1215361', '0523426320', 361);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Nikka', 'Azaria', '2591362', '0519845827', 362);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Lydia', 'Wilder', '2745363', '0561055739', 363);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Clea', 'Kidman', '8117364', '0563707691', 364);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Marianne', 'Nightingale', '4635365', '0553701347', 365);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Rade', 'Neil', '2824366', '0562417264', 366);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Lea', 'Wine', '4559367', '0553178042', 367);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Loren', 'Avital', '3592368', '0563406513', 368);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Jude', 'Osmond', '4773369', '0532326436', 369);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Anne', 'Vaughan', '5895370', '0516682191', 370);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Dick', 'DeGraw', '2114371', '0581760772', 371);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Goldie', 'Milsap', '2927372', '0582020568', 372);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Loreena', 'Underwood', '5657373', '0562835742', 373);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Treat', 'Burns', '3735374', '0571728491', 374);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Mandy', 'Cross', '9226375', '0571926191', 375);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Madeline', 'Melvin', '1574376', '0562406445', 376);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Tyrone', 'Orbit', '6754377', '0522189619', 377);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Hugh', 'Osment', '1991378', '0571849556', 378);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Etta', 'Zappacosta', '6724379', '0538905432', 379);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Mary', 'Rundgren', '6568380', '0511862037', 380);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Denzel', 'Gilley', '5586381', '0552139237', 381);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Illeana', 'Walken', '3112382', '0521347918', 382);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Manu', 'Colin Young', '7582383', '0502656677', 383);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Mili', 'Elizondo', '9684384', '0503155922', 384);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Nikka', 'Loveless', '4398385', '0553075523', 385);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Liquid', 'Vicious', '6454386', '0531512608', 386);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Billy', 'Fichtner', '1328387', '0561008901', 387);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Rade', 'Romijn-Stamos', '8431388', '0584211146', 388);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Rolando', 'Popper', '9586389', '0521023605', 389);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Red', 'Keeslar', '5341390', '0534391525', 390);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Kasey', 'Hughes', '3639391', '0571463460', 391);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Ned', 'Carrack', '7277392', '0567790471', 392);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Eileen', 'Shue', '7444393', '0532851934', 393);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Rosie', 'Norton', '9181394', '0532328523', 394);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Lou', 'Farrell', '7474395', '0552938161', 395);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Tcheky', 'Culkin', '6531396', '0543328833', 396);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Peter', 'Peterson', '8744397', '0573134781', 397);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Derek', 'Patrick', '9441398', '0583933568', 398);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Curt', 'Gough', '7917399', '0543849205', 399);
insert into KINDERGARTEN_TEACHER (first_name, last_name, kteacher_id, phone_number, group_id)
values ('Luke', 'Birch', '7611400', '0543779735', 400);
commit;
prompt 400 records loaded
prompt Enabling foreign key constraints for GROUPS...
alter table GROUPS enable constraint SYS_C007153;
prompt Enabling foreign key constraints for CHILDREN...
alter table CHILDREN enable constraint SYS_C007168;
prompt Enabling foreign key constraints for INVITATION...
alter table INVITATION enable constraint SYS_C007187;
alter table INVITATION enable constraint SYS_C007188;
prompt Enabling foreign key constraints for KINDERGARTEN_TEACHER...
alter table KINDERGARTEN_TEACHER enable constraint SYS_C007176;
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
prompt Enabling triggers for KINDERGARTEN_TEACHER...
alter table KINDERGARTEN_TEACHER enable all triggers;
set feedback on
set define on
prompt Done.
