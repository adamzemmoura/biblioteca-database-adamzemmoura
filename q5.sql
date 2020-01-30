-- Who has checked out more than 1 item?
--Tip: Research the GROUP BY syntax.

SELECT name
FROM member
INNER JOIN checkout_item ON checkout_item.member_id = member.id
GROUP BY name HAVING COUNT(name) > 1;
