-- Use the alx_book_store database
USE alx_book_store;

-- Print the full description of the 'Books' table
-- by querying the INFORMATION_SCHEMA.COLUMNS table.
-- This approach avoids using DESCRIBE or EXPLAIN statements.


USE alx_book_store;

SELECT 
    COLUMN_NAME, 
    COLUMN_TYPE, 
    COLUMN_KEY, 
    EXTRA
FROM 
    INFORMATION_SCHEMA.COLUMNS
WHERE 
    TABLE_NAME = 'Books' AND TABLE_SCHEMA = 'alx_book_store';
