
[General]
Version=1

[Preferences]
Username=
Password=2828
Database=
DateFormat=
CommitCount=0
CommitDelay=0
InitScript=

[Table]
Owner=SYSTEM
Name=GROUPS
Count=400

[Record]
Name=GROUP_ID
Type=NUMBER
Size=4
Data=Sequence(1)
Master=

[Record]
Name=GROUP_NAME
Type=VARCHAR2
Size=20
Data=FirstName
Master=

[Record]
Name=AGE_GROUP
Type=NUMBER
Size=
Data=Random(4, 12)
Master=

[Record]
Name=GROUP_SIZE
Type=NUMBER
Size=
Data=Random(3, 7)
Master=

[Record]
Name=KTEACHER_ID
Type=VARCHAR2
Size=15
Data=
Master=

[Record]
Name=HOUR
Type=NUMBER
Size=
Data=Random(13, 17)
Master=

[Record]
Name=CLASS_DAY
Type=VARCHAR2
Size=15
Data=List('Sunday', 'Monday', 'Tuesday','Wednesday','Thursday','Friday')
Master=

[Record]
Name=CLASS_ID
Type=NUMBER
Size=
Data=List(select class_ID from class)
Master=

