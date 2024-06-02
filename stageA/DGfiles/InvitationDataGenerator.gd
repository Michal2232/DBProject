
[General]
Version=1

[Preferences]
Username=
Password=2888
Database=
DateFormat=dd-mm-yyyy
CommitCount=0
CommitDelay=0
InitScript=

[Table]
Owner=SYSTEM
Name=INVITATION
Count=405

[Record]
Name=AMOUNT
Type=NUMBER
Size=
Data=
Master=

[Record]
Name=INVITATION_DATE
Type=DATE
Size=
Data=Random(1/1/2003,1/1/2024)
Master=

[Record]
Name=GROUP_ID
Type=NUMBER
Size=
Data=List(select group_id from groups)
Master=

[Record]
Name=MEAL_ID
Type=NUMBER
Size=
Data=List(select meal_id from meal)
Master=

