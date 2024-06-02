
[General]
Version=1

[Preferences]
Username=
Password=2141
Database=
DateFormat=
CommitCount=0
CommitDelay=0
InitScript=

[Table]
Owner=SYSTEM
Name=KINDERGARTEN_TEACHER
Count=400

[Record]
Name=FIRST_NAME
Type=VARCHAR2
Size=15
Data=FirstName
Master=

[Record]
Name=LAST_NAME
Type=VARCHAR2
Size=15
Data=LastName
Master=

[Record]
Name=KTEACHER_ID
Type=VARCHAR2
Size=15
Data=[1111] + Sequence(1)
Master=

[Record]
Name=PHONE_NUMBER
Type=VARCHAR2
Size=10
Data=Random(Min, Max) + Random(5, 5) + Random(0, 8) + Random(13423765, 9999999)
Master=

[Record]
Name=GROUP_ID
Type=NUMBER
Size=
Data=Sequence(1)
Master=

