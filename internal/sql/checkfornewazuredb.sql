USE MASTER
--SELECT * FROM sys.dm_database_copies WHERE Partner_database = @NewName
SELECT session_activity_id FROM sys.dm_operation_status WHERE major_resource_id = @NewName AND operation = 'TERMINATE CONTINUOUS DATABASE COPY' AND state = 2;