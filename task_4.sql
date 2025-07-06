-- Use the alx_book_store database
USE alx_book_store;

-- Print the full description of the 'Books' table
-- by querying the INFORMATION_SCHEMA.COLUMNS table.
-- This approach avoids using DESCRIBE or EXPLAIN statements.

SELECT
    COLUMN_NAME,
    COLUMN_TYPE,
    IS_NULLABLE,
    COLUMN_KEY,
    COLUMN_DEFAULT,
    EXTRA
FROM
    INFORMATION_SCHEMA.COLUMNS
WHERE
    TABLE_SCHEMA = 'alx_book_store' AND TABLE_NAME = 'Books'
ORDER BY
    ORDINAL_POSITION;
