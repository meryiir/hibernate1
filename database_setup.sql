-- Database setup script for Hibernate application
-- Run this script in MySQL to create the database and user

-- Create the database
CREATE DATABASE IF NOT EXISTS `hibernate1` CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- Create a user (optional - you can use root if you prefer)
-- CREATE USER 'hibernate_user'@'localhost' IDENTIFIED BY 'hibernate_password';
-- GRANT ALL PRIVILEGES ON `hibernate1`.* TO 'hibernate_user'@'localhost';
-- FLUSH PRIVILEGES;

-- Use the database
USE `hibernate1`;

-- The tables will be automatically created by Hibernate when you run the application
-- Tables created will be:
-- - salles (id, code)
-- - machine (id, ref, dateAchat, salle_id)

SELECT 'Database setup completed successfully!' as status;
