--DML--
USE privatetutors
GO
DECLARE @newid INT
EXEC InstLocations 'MIRPUR', @newid OUTPUT
EXEC InstLocations 'DHANMONDI', @newid OUTPUT
EXEC InstLocations 'GULSHAN', @newid OUTPUT
EXEC InstLocations 'BANANI', @newid OUTPUT
EXEC InstLocations 'TAJGAO', @newid OUTPUT
EXEC InstLocations 'UTTARA', @newid OUTPUT
EXEC InstLocations 'RAMPURA', @newid OUTPUT
SELECT @newid
GO

GO

EXEC UpdateLocation 7,'MALIBAG'
GO 


EXEC deleteLocation 7
GO




EXEC InstClassLevel 'A-LEVEL', 1 
EXEC InstClassLevel  'HSC', 2
EXEC InstClassLevel  'SSC',3
EXEC InstClassLevel  'O-LEVEL', 4
GO



EXEC UpdateClassLevel 4,'JSC'
GO



EXEC deleteClassLevel 4
GO
DECLARE @newid INT
EXEC InstTutor 'Rahmatullah Muzahid', 01934675987, 01713000123, 'rmuzahid@gmail.com' ,1, @newid OUTPUT
EXEC InstTutor 'Kaiser Faisal', 01934612612, NULL, 'faisal@gmail.com', 2, @newid OUTPUT
EXEC InstTutor 'Azad Ahmed', 01751123123, 01673000123, NULL, 3, @newid OUTPUT
EXEC InstTutor 'MD Ahmed', 0175115123, 01673330123, NULL, 4, 4
SELECT @newid
GO

--update procedure--

EXEC UpdatetTutor 4,'AMNIN MAHMUD', 0182343745, NULL,NULL,4
GO
--delete procedure--

EXEC DeleteTutor 4
GO

EXEC Insttutorlocations 1,1
EXEC Insttutorlocations 2,2
EXEC Insttutorlocations 3,3
EXEC Insttutorlocations 4,1
EXEC Insttutorlocations 3,4
GO


EXEC Updatetutorlocations 3, 2
GO
--delete procedure--

EXEC deleteTutorLocations 4
--insert procedure-- 
GO
EXEC InstSubjects 101, 'Mathematics'
EXEC InstSubjects 102, 'Physics'
EXEC InstSubjects 103, 'Chemistry'
EXEC InstSubjects 155, 'ENGLISH'
GO



EXEC UpdateSubjects 155,'ENGLISH-2'
GO



EXEC deleteSubjects 155
GO


EXEC InstTutorSubjects 1,101
EXEC InstTutorSubjects 2,102
EXEC InstTutorSubjects 3,103
EXEC InstTutorSubjects 4,103

GO



EXEC UpdateTutorSubjects 4,102
GO


EXEC deleteTutorSubjects 4
GO


EXEC InstSubjectLimits 101,'ABID'
EXEC InstSubjectLimits 102,'SAID'
EXEC InstSubjectLimits 103,'NABIL'
EXEC InstSubjectLimits 121,'DALIM'

GO



EXEC UpdareSubjectLimits 121, 'FAHAD'
GO


EXEC deleteSubjectLimits 121
GO

