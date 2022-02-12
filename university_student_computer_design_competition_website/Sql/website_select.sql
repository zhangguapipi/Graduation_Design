USE website;

-- 清除表数据
truncate table `users`;

-- 查询数据
SELECT * FROM groups;
SELECT * FROM users;
SELECT * FROM contests;
SELECT * FROM messages;
SELECT * FROM scores;

SELECT message_id,title,time,state,`name` FROM messages INNER JOIN users ON messages.sender = users.user_id WHERE recipient = 2 ORDER BY state,time DESC
 

SELECT message_id,title,time FROM messages WHERE recipient=1 ORDER BY time DESC
SELECT COUNT(*) FROM messages
INNER JOIN users  ON scores.contestant,scores.judge = users.user_id
 WHERE recipient=2 ORDER BY time DESC
 
 UPDATE  messages SET state=TRUE  WHERE message_id  = 33
 
UPDATE  messages SET state=TRUE  WHERE message_id IN(
SELECT message_id,recipient,title,text,sender,time,state,`name` FROM messages
 INNER JOIN users  ON messages.recipient=users.user_id
 WHERE message_id=31);

SELECT message_id,title FROM messages WHERE recipient=1 ORDER BY time DESC LIMIT 5;

SELECT * FROM messages LIMIT 0,10;

SELECT scores.contest_id as '好家伙' FROM `scores` inner join `contests` ON scores.contest_id = contests.contest_id  WHERE contestant = 12;

SELECT users.name as contestant FROM `scores` 
SELECT scores_id,state,scores.contest_id,name FROM `scores` 
SELECT * FROM `scores` 
left join `users`  ON scores.contestant,scores.judge = users.user_id AS '1' AND scores.judge=users.user_id AS '2'
-- inner join`contests`ON scores.contest_id =contests.contest_id  
WHERE scores_id = 34 GROUP BY scores_id;

SELECT * FROM scores WHERE contest_id = 1 ORDER BY result DESC

select * from scores where contest_id = 5
select count(result) ranking from scores where result > 78 AND contest_id = 3
select count(*) ranking from scores where result IS NULL AND contest_id = 5

select contest_title from scores inner join contests ON scores.contest_id = contests.contest_id WHERE result IS NOT NULL AND contestant = 7

SELECT scores_id,text,result,u1.`name` 'contestant',u2.`name` 'judge',c.contest_title
 FROM scores 
 INNER JOIN users u1 ON u1.user_id=scores.contestant
 INNER JOIN users u2 ON u2.user_id=scores.judge
 INNER JOIN contests c ON c.contest_id=scores.contest_id
 WHERE scores_id = 34

SELECT scores_id,scores.contest_id,text,result,u1.`name` 'contestant',u2.`name` 'judge',c.contest_title 
FROM scores 
INNER JOIN users u1 ON u1.user_id=scores.contestant 
INNER JOIN users u2 ON u2.user_id=scores.judge 
INNER JOIN contests c ON c.contest_id=scores.contest_id 
WHERE scores_id = 15

SELECT * FROM (scores s,users u,contests c) 
WHERE s.contestant=u.user_id 
AND s.judge=u.user_id
AND scores_id = 1

SELECT   scores_id,contest_title   FROM scores           inner join `contests` ON scores.contest_id = contests.contest_id WHERE contestant = 7
SELECT * FROM scores WHERE (user_id = 7)
-- 
SELECT * FROM `contests` inner join groups g ON users.group_id = g.group_id WHERE group_id = 4;

-- 用户表外连查询（用户组名）
SELECT * FROM users inner join `groups` ON users.group_id = `groups`.group_id;

SELECT user_id, name, sex, birthday, school, address, phone, email, users.group_id, password, group_name, encoding FROM users inner join groups ON users.group_id = groups.group_id;

SELECT COUNT(*) FROM users INNER JOIN groups ON users.group_id = groups.group_id;

SELECT * FROM groups WHERE encoding = 'YVN1U' AND group_id NOT IN ('1','2','3');

SELECT * FROM users LIMIT 10,5

SELECT * FROM users u inner join groups g ON u.group_id = g.group_id order by user_id LIMIT 5

SELECT * FROM users inner join groups ON users.group_id = groups.group_id order users

SELECT COUNT(*) FROM (SELECT users.* groups.group_name FROM users INNER JOIN groups ON users.group_id = groups.group_id GROUP BY user_id) TOTAL

SELECT user_id,name,sex,birthday,school,address,phone,email,group_id,password FROM users WHERE (phone = '' OR email = '13886961359@q.com') and password = '13886961359'
-- 学生查询自己报名的比赛
-- SELECT scores_id,contest_title,promulgator FROM scores inner join contests ON enter.contest_id = contests.contest_id WHERE contestant = 7

SELECT COUNT(*) AS total FROM users INNER JOIN groups ON users.group_id = groups.group_id

SELECT * FROM users inner join groups ON users.group_id = groups.group_id order by user_id LIMIT 5

INSERT INTO `groups` VALUES (DEFAULT,'asd','OY6TT');SELECT LAST_INSERT_ID();

INSERT INTO `groups` VALUES ('1','352');

INSERT INTO groups(group_name,encoding) VALUES ('141','31542');

SELECT name,group_name,contest_title,contest_text,start_time,end_time FROM contests c,groups g,users u WHERE c.promulgator=u.user_id AND c.group_id=g.group_id AND contest_id='2'

SELECT COUNT( * ) FROM scores WHERE (contest_id = 2 AND contestant = 11)
SELECT COUNT( * ) FROM scores WHERE (contest_id = 5 AND contestant = 11)
INSERT INTO scores  ( contest_id, contestant )  VALUES  ( '2', '11' )


SELECT contest_id,contest_title,name,reg_start_time,reg_end_time FROM contests c,users u WHERE c.promulgator=u.user_id LIMIT 8,4