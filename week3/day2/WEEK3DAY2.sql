USE DBA;
CREATE TABLE Userinfo(
EmailId  VARCHAR(100)		PRIMARY KEY,
UserName VARCHAR(50)		CHECK (LEN(UserName)BETWEEN 1 AND 50),
Role	 VARCHAR(50)		CHECK(Role IN ('Admin', 'Participant')),
Password VARCHAR(50)		CHECK(LEN(Password)BETWEEN 6 AND 20)
)


CREATE TABLE EventDetails(
 Event_Id			INT				PRIMARY KEY,
 Event_Name			VARCHAR(50)		CHECK(LEN(Event_Name)BETWEEN 1 AND 50),
 Event_Category		VARCHAR(50)		CHECK(LEN( Event_Category)BETWEEN 1 AND 50),
 EventDate          datetime		NOT NULL,
 Description		VARCHAR(100)		NULL,
 Status				VARCHAR(50)		CHECK(Status IN ('Active', 'Inactive'))
 )

 CREATE TABLE SpeakerDetails(
 Speaker_id		INT			PRIMARY KEY,
 Speaker_Name	VARCHAR(50)	CHECK(LEN(Speaker_Name)BETWEEN 1 AND 50),

 )
 CREATE TABLE SessionInfo(
	Session_Id		INT				PRIMARY KEY,
	Event_Id		INT				NOT NULL,
	Session_Title	VARCHAR(50)		CHECK(LEN(Session_Title)BETWEEN 1 AND 50),
	Speaker_id      INT				NOT NULL,
	Description		VARCHAR(100)	NULL,
	Session_Start   DATETIME		NOT NULL,
	Session_End     DATETIME		NOT NULL,
	Session_Url     VARCHAR(50),
	FOREIGN KEY(Event_Id) REFERENCES EventDetails(Event_Id),
	FOREIGN KEY (Speaker_id) REFERENCES SpeakerDetails(Speaker_id)

 )

 CREATE TABLE ParticipantEventDetails(
	Id						INT				PRIMARY KEY,
	Participant_EmailId		VARCHAR(100)	NOT NULL,
	Event_Id				INT				NOT NULL,
	Session_Id				INT				NOT NULL,
	Is_Attended				BIT				CHECK(Is_Attended IN ('Yes','No')),

	FOREIGN KEY (Participant_EmailId) REFERENCES Userinfo(EmailId),
	FOREIGN KEY (Event_Id) REFERENCES EventDetails(Event_Id),
	FOREIGN KEY	(Session_Id) REFERENCES SessionInfo(Session_Id)

 )
 
