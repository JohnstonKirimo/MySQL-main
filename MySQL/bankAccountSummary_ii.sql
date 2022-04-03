/*
Write an SQL query to report the name and balance of users with a balance higher than 10000.
The balance of an account is equal to the sum of the amounts of all transactions involving that account.

Return the result table in any order.
*/

--solution
SELECT name, sum(amount) AS balance
FROM  Users natural join transactions
group by account
having sum(amount) > 10000;
