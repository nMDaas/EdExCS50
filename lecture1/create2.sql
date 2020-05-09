----Get Username and Password from users----

SELECT * FROM users WHERE (username = username) AND (password = password);
#The second username and password is where the actual username and password would be substitued

----Withdrawing money----

SELECT balance FROM bank WHERE user_id = 1; ---> Does the user have $100?
UPDATE bank SET balance = balance - 100 user_id = 1;

BEGIN; ---> Begin transaction
COMMIT;
