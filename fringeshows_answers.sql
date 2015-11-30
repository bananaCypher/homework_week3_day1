-- =====[ Set up ]=====
DROP TABLE shows;
DROP TABLE times;
DROP TABLE users;
DROP TABLE shows_users;

CREATE TABLE "shows" ("id" serial8 primary key, "created_at" date, "name" varchar(255), "price" decimal);
INSERT INTO "shows" VALUES (1, '2015-08-23 20:09:41.969902', 'Le Haggis', 12.99);
INSERT INTO "shows" VALUES (2, '2015-08-23 20:09:41.972179', 'Shitfaced Shakespeare', 16.50);
INSERT INTO "shows" VALUES (3, '2015-08-23 20:09:41.972999', 'Camille O''Sullivan', 17.99);
INSERT INTO "shows" VALUES (4, '2015-08-23 20:09:41.971545', 'Game of Thrones - The Musical', 16.50);
INSERT INTO "shows" VALUES (5, '2015-08-23 20:09:41.975610', 'Paul Dabek Mischief ', 12.99);
INSERT INTO "shows" VALUES (6, '2015-08-23 20:09:41.979784', 'Joe Stilgoe: Songs on Film â€“ The Sequel', 16.50);
INSERT INTO "shows" VALUES (7, '2015-08-23 20:09:41.981653', 'Aaabeduation â€“ A Magic Show', 17.99);
INSERT INTO "shows" VALUES (8, '2015-08-23 20:09:41.983556', 'Edinburgh Royal Tattoo', 32.99);
INSERT INTO "shows" VALUES (9, '2015-08-23 20:09:41.987003', 'Best of Burlesque', 7.99);
INSERT INTO "shows" VALUES (10, '2015-08-23 20:09:41.989455', 'Two become One', 8.50);
INSERT INTO "shows" VALUES (11, '2015-08-23 20:09:41.991271', 'Urinetown', 8.50);
INSERT INTO "shows" VALUES (12, '2015-08-23 20:09:41.992358', 'Two girls, one cup of comedy', 6.00);
INSERT INTO "shows" VALUES (13, '2015-08-23 20:09:41.996721', 'Balletronics', 32.00);


CREATE TABLE "times" ("id" serial8 primary key, "time" varchar(255), "show_id" int2);
INSERT INTO "times" (time, show_id) VALUES ('13:30', 1);
INSERT INTO "times" (time, show_id) VALUES ('19:30', 2);
INSERT INTO "times" (time, show_id) VALUES ('17:15', 3);
INSERT INTO "times" (time, show_id) VALUES ('19:30', 4);
INSERT INTO "times" (time, show_id) VALUES ('12:45', 5);
INSERT INTO "times" (time, show_id) VALUES ('17:15', 6);
INSERT INTO "times" (time, show_id) VALUES ('12:45', 7);
INSERT INTO "times" (time, show_id) VALUES ('22:00', 8);
INSERT INTO "times" (time, show_id) VALUES ('19:30', 9);
INSERT INTO "times" (time, show_id) VALUES ('14:15', 10);
INSERT INTO "times" (time, show_id) VALUES ('20:00', 11);
INSERT INTO "times" (time, show_id) VALUES ('12:45', 12);
INSERT INTO "times" (time, show_id) VALUES ('20:00', 13);


CREATE TABLE "users" ("id" serial8 primary key, "name" varchar(255));
INSERT INTO "users" (name) VALUES ('Rick Henri'), ('Jay Chetty'), ('Keith Douglas');

INSERT INTO "users" (name) VALUES
('Callum Dougan'),
('Andrew Insley'),
('Daniel Gillespie'),
('Bethany Fraser'),
('Nick Ridell'),
('Evelyn Utterson'),
('Sky Su'),
('Nicholas Hill'),
('Michael McLeod'),
('Callum Hogg'),
('Chris Sloan'),
('Gary Carmichael'),
('Oscar Brooks'),
('Ross Galloway'),
('Paul MacLean'),
('Stuart Ramsay'),
('Peter Forbes'),
('Euan Walls'),
('Aine Dunphy');

CREATE TABLE "shows_users" ("id" serial8 primary key, "show_id" int8, "user_id" int8);
INSERT INTO "shows_users" (show_id, user_id) VALUES (1, 1);
INSERT INTO "shows_users" (show_id, user_id) VALUES (1, 2);
INSERT INTO "shows_users" (show_id, user_id) VALUES (1, 5);
INSERT INTO "shows_users" (show_id, user_id) VALUES (1, 7);
INSERT INTO "shows_users" (show_id, user_id) VALUES (1, 8);
INSERT INTO "shows_users" (show_id, user_id) VALUES (1, 10);
INSERT INTO "shows_users" (show_id, user_id) VALUES (1, 12);
INSERT INTO "shows_users" (show_id, user_id) VALUES (1, 16);
INSERT INTO "shows_users" (show_id, user_id) VALUES (1, 17);
INSERT INTO "shows_users" (show_id, user_id) VALUES (2, 3);
INSERT INTO "shows_users" (show_id, user_id) VALUES (2, 4);
INSERT INTO "shows_users" (show_id, user_id) VALUES (2, 6);
INSERT INTO "shows_users" (show_id, user_id) VALUES (2, 7);
INSERT INTO "shows_users" (show_id, user_id) VALUES (2, 9);
INSERT INTO "shows_users" (show_id, user_id) VALUES (2, 11);
INSERT INTO "shows_users" (show_id, user_id) VALUES (2, 14);
INSERT INTO "shows_users" (show_id, user_id) VALUES (3, 1);
INSERT INTO "shows_users" (show_id, user_id) VALUES (3, 3);
INSERT INTO "shows_users" (show_id, user_id) VALUES (3, 5);
INSERT INTO "shows_users" (show_id, user_id) VALUES (3, 8);
INSERT INTO "shows_users" (show_id, user_id) VALUES (3, 9);
INSERT INTO "shows_users" (show_id, user_id) VALUES (3, 13);
INSERT INTO "shows_users" (show_id, user_id) VALUES (3, 15);
INSERT INTO "shows_users" (show_id, user_id) VALUES (4, 3);
INSERT INTO "shows_users" (show_id, user_id) VALUES (4, 9);
INSERT INTO "shows_users" (show_id, user_id) VALUES (4, 10);
INSERT INTO "shows_users" (show_id, user_id) VALUES (4, 12);
INSERT INTO "shows_users" (show_id, user_id) VALUES (4, 14);
INSERT INTO "shows_users" (show_id, user_id) VALUES (5, 2);
INSERT INTO "shows_users" (show_id, user_id) VALUES (5, 6);
INSERT INTO "shows_users" (show_id, user_id) VALUES (5, 9);
INSERT INTO "shows_users" (show_id, user_id) VALUES (5, 10);
INSERT INTO "shows_users" (show_id, user_id) VALUES (6, 11);
INSERT INTO "shows_users" (show_id, user_id) VALUES (6, 12);
INSERT INTO "shows_users" (show_id, user_id) VALUES (6, 13);
INSERT INTO "shows_users" (show_id, user_id) VALUES (6, 16);
INSERT INTO "shows_users" (show_id, user_id) VALUES (6, 17);
INSERT INTO "shows_users" (show_id, user_id) VALUES (7, 2);
INSERT INTO "shows_users" (show_id, user_id) VALUES (7, 4);
INSERT INTO "shows_users" (show_id, user_id) VALUES (7, 6);
INSERT INTO "shows_users" (show_id, user_id) VALUES (7, 7);
INSERT INTO "shows_users" (show_id, user_id) VALUES (7, 8);
INSERT INTO "shows_users" (show_id, user_id) VALUES (7, 11);
INSERT INTO "shows_users" (show_id, user_id) VALUES (7, 15);
INSERT INTO "shows_users" (show_id, user_id) VALUES (7, 17);
INSERT INTO "shows_users" (show_id, user_id) VALUES (8, 1);
INSERT INTO "shows_users" (show_id, user_id) VALUES (8, 3);
INSERT INTO "shows_users" (show_id, user_id) VALUES (8, 5);
INSERT INTO "shows_users" (show_id, user_id) VALUES (8, 9);
INSERT INTO "shows_users" (show_id, user_id) VALUES (8, 10);
INSERT INTO "shows_users" (show_id, user_id) VALUES (8, 12);
INSERT INTO "shows_users" (show_id, user_id) VALUES (8, 14);
INSERT INTO "shows_users" (show_id, user_id) VALUES (8, 15);
INSERT INTO "shows_users" (show_id, user_id) VALUES (9, 3);
INSERT INTO "shows_users" (show_id, user_id) VALUES (9, 7);
INSERT INTO "shows_users" (show_id, user_id) VALUES (9, 13);
INSERT INTO "shows_users" (show_id, user_id) VALUES (9, 17);
INSERT INTO "shows_users" (show_id, user_id) VALUES (10, 1);
INSERT INTO "shows_users" (show_id, user_id) VALUES (10, 2);
INSERT INTO "shows_users" (show_id, user_id) VALUES (10, 9);
INSERT INTO "shows_users" (show_id, user_id) VALUES (10, 12);
INSERT INTO "shows_users" (show_id, user_id) VALUES (10, 14);
INSERT INTO "shows_users" (show_id, user_id) VALUES (10, 16);
INSERT INTO "shows_users" (show_id, user_id) VALUES (11, 4);
INSERT INTO "shows_users" (show_id, user_id) VALUES (11, 11);
INSERT INTO "shows_users" (show_id, user_id) VALUES (11, 10);
INSERT INTO "shows_users" (show_id, user_id) VALUES (11, 13);
INSERT INTO "shows_users" (show_id, user_id) VALUES (11, 16);
INSERT INTO "shows_users" (show_id, user_id) VALUES (12, 2);
INSERT INTO "shows_users" (show_id, user_id) VALUES (12, 4);
INSERT INTO "shows_users" (show_id, user_id) VALUES (12, 5);
INSERT INTO "shows_users" (show_id, user_id) VALUES (12, 8);
INSERT INTO "shows_users" (show_id, user_id) VALUES (12, 11);
INSERT INTO "shows_users" (show_id, user_id) VALUES (13, 1);
INSERT INTO "shows_users" (show_id, user_id) VALUES (13, 3);
INSERT INTO "shows_users" (show_id, user_id) VALUES (13, 6);
INSERT INTO "shows_users" (show_id, user_id) VALUES (13, 8);
INSERT INTO "shows_users" (show_id, user_id) VALUES (13, 9);
INSERT INTO "shows_users" (show_id, user_id) VALUES (13, 12);
INSERT INTO "shows_users" (show_id, user_id) VALUES (13, 15);
INSERT INTO "shows_users" (show_id, user_id) VALUES (13, 17);
\echo ''
\echo ''
-- ===================




-- ==[ Section 1 ]==
\echo '==[ Section 1 ]=='
-- 1. Select the names of all users.
\echo '1. Select the names of all users.'
SELECT name FROM users;

-- 2. Select the names of all shows that cost less than £15.
\echo '2. Select the names of all shows that cost less than £15.'
SELECT name FROM shows WHERE price > 15;

-- 3. Insert a user with the name "Val Gibson" into the users table.
\echo '3. Insert a user with the name "Val Gibson" into the users table.'
INSERT INTO users (name) VALUES ('Val Gibson');

-- 4. Select the id of the user with your name.
\echo '4. Select the id of the user with your name.'
SELECT name FROM users WHERE name = 'Callum Hogg'; 

-- 5. Insert a record that Val Gibson wants to attend the show "Two girls, one cup of comedy".
\echo '5. Insert a record that Val Gibson wants to attend the show "Two girls, one cup of comedy".'
INSERT INTO shows_users (show_id, user_id) VALUES ((SELECT id FROM shows WHERE name = 'Two girls, one cup of comedy'), (SELECT id FROM users WHERE name = 'Val Gibson'));

-- 6. Updates the name of the "Val Gibson" user to be "Valerie Gibson".
\echo '6. Updates the name of the "Val Gibson" user to be "Valerie Gibson".'
UPDATE users SET (name) = ('Valerie Gibson') WHERE name = 'Val Gibson';

-- 7. Deletes the user with the name 'Valerie Gibson'.
\echo '7. Deletes the user with the name \'Valerie Gibson\'.'
DELETE FROM users WHERE name = 'Valerie Gibson';

-- 8. Deletes the shows for the user you just deleted.
\echo '8. Deletes the shows for the user you just deleted.'
DELETE FROM shows_users WHERE user_id = 23; --Couldn't think of a better way to reference the deleted user so used the ID directly
\echo ''
\echo ''




-- ==[ Section 2 ]==
\echo '==[ Section 2 ]=='
-- 1. Select the names and prices of all shows, ordered by price in ascending order.
\echo '1. Select the names and prices of all shows, ordered by price in ascending order.'
SELECT name, price FROM shows ORDER BY price ASC;

-- 2. Select the average price of all shows.
\echo '2. Select the average price of all shows.'
SELECT avg(price) FROM shows;

-- 3. Select the price of the least expensive show.
\echo '3. Select the price of the least expensive show.'
SELECT min(price) FROM shows;

-- 4. Select the sum of the price of all shows.
\echo '4. Select the sum of the price of all shows.'
SELECT sum(price) FROM shows;

-- 5. Select the sum of the price of all shows whose prices is less than £20.
\echo '5. Select the sum of the price of all shows whose prices is less than £20.'
SELECT sum(price) FROM shows WHERE price < 20;

-- 6. Select the name and price of the most expensive show.
\echo '6. Select the name and price of the most expensive show.'
SELECT name, price FROM shows WHERE price = (SELECT max(price) FROM shows);

-- 7. Select the name and price of the second from cheapest show.
\echo '7. Select the name and price of the second from cheapest show.'
SELECT name, price FROM shows ORDER BY price ASC LIMIT 1 OFFSET 1;

-- 8. Select the names of all users whose names start with the letter "N".
\echo '8. Select the names of all users whose names start with the letter "N".'
SELECT name FROM users WHERE name LIKE 'N%';

-- 9. Select the names of users whose names contain "mi".
\echo '9. Select the names of users whose names contain "mi".'
SELECT name FROM users WHERE name LIKE '%mi%';
\echo ''
\echo ''




-- ==[ Section 3 ]==
\echo '==[ Section 3 ]=='
-- 1. Select the time for the Edinburgh Royal Tattoo.
\echo '1. Select the time for the Edinburgh Royal Tattoo.'
SELECT times.time FROM times INNER JOIN shows ON (times.show_id = shows.id) WHERE shows.name = 'Edinburgh Royal Tattoo';

-- 2. Select the number of users who want to see "Shitfaced Shakespeare".
\echo '2. Select the number of users who want to see "Shitfaced Shakespeare".'
SELECT count(*) FROM shows_users INNER JOIN shows ON (shows_users.show_id = shows.id) WHERE shows.name = 'Shitfaced Shakespeare';

-- 3. Select all of the user names and the count of shows they're going to see.
\echo '3. Select all of the user names and the count of shows they\'re going to see.'
SELECT users.name, count(shows_users.show_id) FROM shows_users INNER JOIN users ON (users.id = shows_users.user_id) GROUP BY users.name;

-- 4. SELECT all users who are going to a show at 17:15.
\echo '4. SELECT all users who are going to a show at 17:15.'
SELECT DISTINCT users.name FROM shows_users INNER JOIN users ON (shows_users.user_id = users.id) INNER JOIN times ON (shows_users.show_id = times.show_id) WHERE times.time = '17:15';
-- Absent minded me booked tickets to go to 2 seperate shows at 17:15, so I have used DISTINCT