USE bookcrossing;
SELECT b.author AS auther, count(*) AS count
FROM books_partitioned b JOIN ratings r ON (b.isbn = r.isbn) AND r.rating > 3
GROUP BY b.author
ORDER BY count DESC
LIMIT 100;


