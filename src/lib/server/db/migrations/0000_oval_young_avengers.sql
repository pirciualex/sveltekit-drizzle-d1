CREATE TABLE `users` (
	`id` text PRIMARY KEY DEFAULT (lower(hex(randomblob(4))) || '-' || lower(hex(randomblob(2))) || '-4' || substr(lower(hex(randomblob(2))),2) || '-' || substr('89ab',abs(random()) % 4 + 1, 1) || substr(lower(hex(randomblob(2))),2) || '-' || lower(hex(randomblob(6)))) NOT NULL,
	`email` text NOT NULL,
	`first_name` text NOT NULL,
	`last_name` text NOT NULL,
	`profile_picture` text,
	`created_at` text DEFAULT CURRENT_TIMESTAMP,
	`updated_at` text DEFAULT CURRENT_TIMESTAMP
);

CREATE TRIGGER IF NOT EXISTS update_users_updated_at
    BEFORE UPDATE
    ON users
    FOR EACH ROW
BEGIN
UPDATE users SET updated_at = CURRENT_TIMESTAMP WHERE id = old.id;
END;

INSERT INTO users (email, first_name, last_name, profile_picture)
VALUES
('jaylen_kinlaw10@hotmail.com', 'Josefa', 'Kinlaw', 'https://www.fakepersongenerator.com/Face/female/female1022641768615.jpg'),
('trent.wolbert90@hotmail.com', 'Trent', 'Wolbert', 'https://www.fakepersongenerator.com/Face/male/male2017108403223346.jpg'),
('loricharles2000@yahoo.com', 'Lori', 'Charles', 'https://www.fakepersongenerator.com/Face/female/female20121023516177430.jpg'),
('gregory_bernal69@gmail.com', 'Gregory', 'Bernal', 'https://www.fakepersongenerator.com/Face/male/male1085194268372.jpg');
