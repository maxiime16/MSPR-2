-- Table Users
CREATE TABLE Users(
    id INTEGER PRIMARY KEY,
    first_name TEXT,
    last_name TEXT,
    email TEXT,
    password TEXT);

-- Créer les utilisateurs Enzo, Matthieu, Maxime et Alister avec des numéros de rue
INSERT INTO Users (first_name, last_name, email, password, address_city, address_postal_code, address_street) 
VALUES 
('Enzo', 'Dupont', 'enzo.dupont@example.com', 'motdepasse_enzo', 'Paris', '75001', '1 Rue de la Paix'),
('Matthieu', 'Martin', 'matthieu.martin@example.com', 'motdepasse_matthieu', 'Lyon', '69001', '2 Avenue des Arts'),
('Maxime', 'Durand', 'maxime.durand@example.com', 'motdepasse_maxime', 'Marseille', '13001', '3 Boulevard des Sciences'),
('Alister', 'Lefevre', 'alister.lefevre@example.com', 'motdepasse_alister', 'Bordeaux', '33000', '4 Place de la Liberte');