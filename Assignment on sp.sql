CREATE TABLE [dbo].[Student](
	[ID] [int] NULL,
	[RollNo] [int] NULL,
	[Sname] [varchar](20) NULL,
	[CollegeName] [varchar](20) NULL,
	[MobileNo] [varchar](20) NULL,
	[PercentageMarks] [decimal](5, 2) NULL
) ON [PRIMARY]
GO

INSERT INTO Student values(1,12,'ABC','TSEC','1234567890',85.00);
INSERT INTO Student values(2,13,'XYZ','VESP','9812378452',80.00);

SELECT * from Student

/*****For GET request******/

CREATE PROCEDURE sp_student AS
BEGIN
	Select * from Student;			
END
GO

EXEC sp_student

/*****For POST request******/

CREATE proc [dbo].[sp_student_post] 
(@ID int,
	@RollNo int,
	@Sname varchar(20),
	@CollegeName varchar(20),
	@MobileNo varchar(20),
	@PercentageMarks decimal(5,2))
	AS 
	BEGIN 
		INSERT INTO Student(ID,RollNo,Sname,CollegeName,MobileNo,PercentageMarks)
		values(@ID,@RollNo,@Sname,@CollegeName,@MobileNo,@PercentageMarks)
	END

Exec sp_student_post 3,431,'Rani','TSEC','9087654321',85.00







