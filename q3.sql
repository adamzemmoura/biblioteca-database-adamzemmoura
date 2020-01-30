-- What books and movies aren't checked out?

SELECT movie.title
FROM movie
LEFT OUTER JOIN checkout_item ON checkout_item.movie_id = movie.id
WHERE checkout_item.member_id IS NULL
UNION
SELECT book.title
FROM book
LEFT OUTER JOIN checkout_item ON checkout_item.book_id = book.id
WHERE checkout_item.member_id IS NULL;
