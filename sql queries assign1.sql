
-- Task 2: Create a list with series name, book title and book number

SELECT seriesname, booktitle, booknumber
FROM books;


-- Task 3: To determine how many comics are double in the database

SELECT seriesname, booktitle, booknumber, COUNT(*) AS double_count
FROM books
WHERE booknumber IS NOT NULL
GROUP BY seriesname, booktitle, booknumber
HAVING COUNT(*) > 1;