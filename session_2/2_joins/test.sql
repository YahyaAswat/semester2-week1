.mode table
.headers on

-- SELECT Content FROM posts WHERE Deleted=true;
-- SELECT username FROM users WHERE username LIKE 'b%'

-- 3. Find all posts and the usernames of those who posted them whose content contains the word "small".
-- SELECT username, content FROM users JOIN posts on users.id=posts.user_id WHERE content LIKE '%small%';

-- 4. Return each non-deleted post and the username of the person who wrote in, in date order.
-- SELECT users.username, content, deleted, posts.created_on FROM users JOIN posts on users.id=posts.user_id WHERE deleted=False ORDER BY posts.created_on


-- 5. For each user, return their username and the total number of posts they have made.
-- SELECT username, COUNT(*) FROM users JOIN posts on users.id=posts.user_id GROUP BY posts.user_id ORDER BY COUNT(*)

-- 6. Modify the previous query to return only users who have authored more than 10 posts.
-- SELECT username, COUNT(*) AS 'Number Of Posts' FROM users JOIN posts on users.id=posts.user_id GROUP BY posts.user_id HAVING COUNT(*) >10 ORDER BY COUNT(*) 

-- 7. For each user, return their username and the number of users they follow, including users who follow no one.
-- SELECT username, COUNT(*) FROM users JOIN follows on users.id=follows.following_user_id GROUP BY users.id

-- 8. List the top 5 most-followed users.

-- 9. Return a list showing the username of the follower and the username of the followed user for each follow relationship.
-- 10. For a given user (christopherprice), return all non-deleted posts written by users they follow, ordered from most recent to oldest.
SELECT content WHERE username='christopherprice'