-- Add the book 'The Pragmatic Programmer', and add yourself as a member. Check out 'The Pragmatic Programmer'. Use your query from question 1 to verify that you have checked it out. Also, provide the SQL used to update the database.

-- Add book 'The Pragmatic Programmer'
INSERT INTO book (title) VALUES ("The Pragmatic Programmer");

-- Add myself as a member
INSERT INTO member (name) VALUES ("Adam Zemmoura");

-- Check out the 'Pragmatic Programmer'
INSERT INTO checkout_item (member_id, book_id) VALUES (
  (SELECT id FROM member WHERE name = "Adam Zemmoura"),
  (SELECT id FROM book WHERE title = "The Pragmatic Programmer")
);

-- Use your query from question 1 to verify that you have checked it out
SELECT member.name
FROM member
INNER JOIN checkout_item ON member.id = checkout_item.member_id
INNER JOIN book ON book.id = checkout_item.book_id
WHERE book.title = "The Pragmatic Programmer";
