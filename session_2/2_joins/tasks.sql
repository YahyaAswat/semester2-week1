-- Enable readable output format
.mode columns
.headers on

-- Instructions for students:
-- 1. Open SQLite in terminal: sqlite3 social.db
-- 2. Load this script: .read tasks.sql
-- 3. Exit SQLite: .exit

-- SELECT content from posts WHERE deleted == True

-- SELECT content, username FROM users JOIN posts on users.id = posts.user_id WHERE posts.content LIKE '%small%'

-- SELECT content, username FROM users JOIN posts on users.id=posts.user_id WHERE posts.deleted = False ORDER BY posts.created_on

-- SELECT username, COUNT(posts.id) FROM users JOIN posts ON users.id=posts.user_id GROUP BY users.username HAVING COUNT(posts.id) >10

SELECT username, COUNT(follows.following_user_id) AS following_count FROM users JOIN follows ON users.id=follows.following_user_id GROUP BY users.username