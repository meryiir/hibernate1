-- Script pour créer la base de données hibernate1
-- Exécutez ce script dans MySQL : mysql -u root < create_database.sql

CREATE DATABASE IF NOT EXISTS `hibernate1` CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- Utiliser la base de données
USE `hibernate1`;

-- Les tables seront créées automatiquement par Hibernate
-- Tables qui seront créées :
-- - salles (id, code)
-- - Machine (id, ref, dateAchat, salle_id)

SELECT 'Base de données hibernate1 créée avec succès!' as status;
