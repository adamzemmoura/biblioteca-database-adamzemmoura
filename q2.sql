-- How many people have not checked out anything

SELECT COUNT(member.id)
FROM member
LEFT JOIN checkout_item
ON member.id = checkout_item.member_id
WHERE checkout_item.book_id IS NULL
AND checkout_item.movie_id IS NULL;
