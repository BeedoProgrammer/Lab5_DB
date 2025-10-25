SELECT name FROM Library_Management_System.MEMBER WHERE join_date > '2000-09-01';

SELECT pub_id, name FROM Library_Management_System.PUBLISHER;

-- Or use <SELECT * FROM Library_Management_System.MEMBER WHERE join_date BETWEEN '1995-10-01' AND '2019-10-01';>
SELECT * FROM Library_Management_System.MEMBER WHERE join_date >= '1995-10-01' and join_date <= '2019-10-01';

SELECT * FROM Library_Management_System.BOOK WHERE pub_id = 2 OR (price >= 15 AND price <= 20);

SELECT * FROM Library_Management_System.BORROWING_BOOK WHERE member_id = 5;