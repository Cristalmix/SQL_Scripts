USE master
GO

SELECT l.name AS NombreUsuario, p.type_desc AS TipoUsuario, p.is_disabled, createdate AS FechaCreacion, p.modify_date FechaModif, denylogin, hasaccess AS AccesoServidor, sysadmin, securityadmin, serveradmin, setupadmin, processadmin, diskadmin, dbcreator, bulkadmin
FROM sys.syslogins AS l
	 INNER JOIN sys.server_principals AS p ON l.sid = p.sid
WHERE sysadmin = 1
ORDER BY 1 ASC