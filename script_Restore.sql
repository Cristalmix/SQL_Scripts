-- Para ver la estructura de archivos y los nombres lógicos de estos dentro del backup
RESTORE FILELISTONLY
FROM DISK = 'D:\BackUpYourBaackUpFile.bak'
GO

-- luego, colocar los nombres lógicos acá

----Make Database to single user Mode
ALTER DATABASE YourDB
SET SINGLE_USER WITH
ROLLBACK IMMEDIATE
 
----Restore Database
RESTORE DATABASE YourDB
FROM DISK = 'D:\BackUpYourBaackUpFile.bak'
WITH MOVE 'YourMDFLogicalName' TO 'D:\DataYourMDFFile.mdf',
MOVE 'YourLDFLogicalName' TO 'D:\DataYourLDFFile.ldf'
 
ALTER DATABASE YourDB SET MULTI_USER
GO