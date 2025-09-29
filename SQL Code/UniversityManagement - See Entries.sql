DECLARE @sql NVARCHAR(MAX) = N'';

-- Build a list of SELECT statements for each table
SELECT @sql = @sql + 'SELECT ''[' + s.name + '].[' + t.name + ']'' AS TableName, * 
FROM [' + s.name + '].[' + t.name + '];' + CHAR(13) + CHAR(10)
FROM sys.tables t
JOIN sys.schemas s ON t.schema_id = s.schema_id
ORDER BY s.name, t.name;

-- Print for debugging
-- PRINT @sql;

-- Execute the batch
EXEC sp_executesql @sql;
