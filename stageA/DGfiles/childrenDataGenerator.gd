
[General]
Version=1

[Preferences]
Username=
Password=2233
Database=
DateFormat=
CommitCount=0
CommitDelay=0
InitScript=

[Table]
Owner=SYSTEM
Name=CHILDREN
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
Name=CHILD_ID
Type=VARCHAR2
Size=15
Data=[1111] + Sequence(1)
Master=

[Record]
Name=DATE_OF_BIRTH
Type=DATE
Size=
Data=
Master=

[Record]
Name=PARENT_NAME
Type=VARCHAR2
Size=15
Data=FirstName
Master=

[Record]
Name=PHONE_NUMBER
Type=VARCHAR2
Size=10
Data=Random(0, 0) + Random(5,5) + Random(0,7) + Random(2349876,9999999)
Master=

[Record]
Name=ADDRESS
Type=VARCHAR2
Size=20
Data=Address1
Master=

[Record]
Name=GROUP_ID
Type=NUMBER
Size=
Data=List(select group_id from groups)
Master=

